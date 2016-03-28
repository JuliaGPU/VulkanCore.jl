module SPIRV

import Base.read

include("constants.jl")

const DEBUG_SCFG = false

## Converting from julia's unstrutctured CFG to SPIR-V's structured IR

# This is quite inefficient and incomplete, it is essentially doing
# repeated application of the so called "T1 and T2" transformations
# rules. The harder cases of those are not even done.

# It may handle most of what the normal julia lowering throws at it
# mostly by chance.
# In the future probably replace that by a proper algorithm that can
# at least all reducible control flow reasonably quickly. 

type SBlock
    ops :: Vector{Any}
end
type SSwitch
    branches :: Vector{SBlock}
    conditions :: Vector{Any}
    gotos :: Vector{Any}
end
type SLoop
    idx :: Int
    blk :: SBlock
end

function parse_structured(xs)
    current_block = SBlock([])
    current_label = 0
    blocks = Dict{Int,Any}()
    blocks[-1] = current_block
    for x in xs
        if isa(x,LineNumberNode)
            continue
        end
        if isa(x,Expr)
            x.head === :enter && error("exceptions are not supported")
            # check for more unsupported stuff
        end
        if isa(x,LabelNode)
            current_block === nothing || push!(current_block.ops, GotoNode(x.label))
            current_block = SBlock([])
            blocks[x.label] = current_block
        elseif isa(x,GotoNode) || isa(x,Expr) && x.head === :return
            if current_block !== nothing
                push!(current_block.ops, x)
                current_block = nothing
            end
        elseif isa(x,Expr) && x.head === :gotoifnot
            tbranch = SBlock([])
            fbranch = SBlock([])
            @show x
            sw = SSwitch([tbranch, fbranch], Any[x.args[1]], [Set(),Set()])
            push!(current_block.ops, sw)
            push!(fbranch.ops, GotoNode(x.args[2]))
            current_block = tbranch
        else
            if current_block !== nothing
                push!(current_block.ops, x)
            end
        end
    end
    blocks
end

function prepare!(d, tlb, block::SBlock)
    for op in block.ops[1:end-1]
        g = prepare!(d, tlb, op)
        @assert(isempty(g))
    end
    lop = last_op(block)
    if lop !== nothing
        return prepare!(d, tlb, lop)
    end
    Set()
end
function prepare!(d, tlb, n::GotoNode)
    v = get!(d, n.label, Dict())
    v[tlb] = get(v, tlb, 0) + 1
    Set{Any}([n.label])
end
function prepare!(d, tlb, sw::SSwitch)
    for (i,br) in enumerate(sw.branches)
        sw.gotos[i] = prepare!(d, tlb, br)
    end
    union(sw.gotos...)
end
function prepare!(d, tlb, sl::SLoop)
    prepare!(d, tlb, sl.blk)
end
prepare!(d, tlb, x) = Set()

# bunch of sanity checks
function check_invariants(blocks::Dict, final)
    if final && length(blocks) > 1
        error("more than one block")
    end
    for b in values(blocks)
        check_invariants(b, -1, final)
    end
end
function check_invariants(block::SBlock, loop_idx)
    for (i, op) in enumerate(block.ops)
        if isa(op, GotoNode)
            if final
                error("goto in final version")
            elseif i != length(block.ops)
                error("goto in non tail position")
            elseif loop_idx != -1
                error("goto in loop")
            end
        elseif isa(op, Expr) && (op.head === :continue || op.head === :break)
            if loop_idx == -1
                error("loop control flow outside a loop")
            elseif op.args[1] != loop_idx
                error("loop control flow not nested")
            end
        else
            check_invariants(op, loop_idx, final)
        end
    end
end
check_invariants(x, loop_idx, final) = nothing
function check_invariants(sw::SSwitch, loop_idx, final)
    if length(sw.branches) != length(sw.conditions)+1
        error("number of branches and conditions don't match")
    end
    for br in sw.branches
        check_invariants(br, loop_idx, final)
    end
end
function check_invariants(sl::SLoop, loop_idx, final)
    check_invariants(sl.blk, sl.idx, final)
end

function replace_gotos(b::SBlock, gotos, with)
    if isa(b.ops[end], GotoNode)
        lbl = b.ops[end].label
        idx = findfirst(gotos, lbl) 
        if idx != 0
            pop!(b.ops)
            if with[idx] !== nothing
                push!(b.ops, with[idx])
            end
        else
            error("Found unexpected goto $lbl while looking for gotos $gotos")
        end
    elseif isa(b.ops[end], SSwitch) || isa(b.ops[end], SLoop)
        replace_gotos(b.ops[end], gotos, with)
    end
end
function replace_gotos(b::SSwitch, goto, with)
    for br in b.branches
        replace_gotos(br, goto, with)
    end
end
function replace_gotos(sl::SLoop, goto, with)
    replace_gotos(sl.blk, goto, with)
end

last_op(b::SBlock) = isempty(b.ops) ? nothing : b.ops[end]
function elim_goto(block::SBlock, dest_lbl, dest_block, try_hard)
    found = false
    lop = last_op(block)
    
    if isa(lop, SSwitch)
        branches = find(i -> dest_lbl in lop.gotos[i], 1:length(lop.branches))
        if length(branches) == 0
            return false
        elseif length(branches) == 1
            return elim_goto(lop.branches[first(branches)], dest_lbl, dest_block, try_hard)
        else
            if length(union(lop.gotos[branches]...)) == 1
                replace_gotos(lop, (dest_lbl,), (nothing,))
                append!(block.ops, dest_block.ops)
                return true
            end
            if !try_hard
                return false
            else
                # in that case we should merge control flow anyway while introducing additional
                # state variables and conditionals after the merge point
                # maybe we can cheat here in some cases using the special "switch fallthrough" control flow construct
                error("not handled yet, conditional merge points are not in a nested pairing")
            end
        end
    elseif isa(lop, GotoNode) && lop.label == dest_lbl
        pop!(block.ops)
        append!(block.ops, dest_block.ops)
        return true
    end
    false
end

# the loop index is not necessary since loop control flow has
# strict nesting in spirv, however it's nice to keep it around
# to check that the restructurer is not producing complete garbage
global loop_index = 0
function elim_loop(blocks, block, lbl, try_hard)
    global loop_index

    post_loop = []
    
    lop = last_op(block)
    cont_expr = Expr(:continue, loop_index)
    break_expr = Expr(:break, loop_index)
    if isa(lop, SSwitch)
        gotos = union(lop.gotos...)
        @assert(lbl in gotos, "$lbl sould be in $gotos")
        pop!(gotos, lbl)
        if length(gotos) == 0
            replace_gotos(lop, (lbl,), (cont_expr,))
        elseif length(gotos) == 1
            replace_gotos(lop, (lbl,first(gotos)), (cont_expr, break_expr))
            push!(post_loop, GotoNode(first(gotos)))
        else
            if try_hard
                # same here, the naive approach is to introduce additional state and conditionals after loop exit
                # in some cases it might be possible to use the spirv continue block to avoid that
                error("not handled yet, more than one exit destination from loop")
            else
                return false
            end
        end
    elseif isa(lop, GotoNode)
        @assert(lop.label == lbl)
        pop!(block.ops)
        push!(block.ops, Expr(:continue, loop_index))
    end

    blocks[lbl] = SBlock(Any[SLoop(loop_index, block), post_loop...])
    loop_index += 1
    true
end

function prepare!(blocks)
    # TODO it is really not necessary to do this every iteration
    # we can instead update the info in place
    precs = Dict()
    for (lbl, blk) in blocks
        prepare!(precs, lbl, blk)
    end
    precs
end

function step!(blocks, try_hard)
    # if try_hard is false we only do "free" transforms that
    # cannot make anything worse
    local precs
    while true
        done = true
        precs = prepare!(blocks)
        for blk in keys(blocks)
            if blk != -1 && !(blk in keys(precs))
                done = false
                delete!(blocks, blk)
            end
        end
        done && break
    end
    stuck = true
    for (blk, preds) in precs
        if length(preds) != 1
            continue
        end
        pred = first(keys(preds))
        if elim_goto(blocks[pred], blk, blocks[blk], try_hard)
            DEBUG_SCFG && println("Eliminated goto $pred => $blk")
            delete!(blocks, blk)
            stuck = false
            break
        end
    end
    if stuck
        for (blk, preds) in precs
            if blk in keys(preds)
                if elim_loop(blocks, blocks[blk], blk, try_hard)
                    DEBUG_SCFG && println("Eliminated loop $blk")
                    stuck = false
                    break
                end
            end
        end
    end
    check_invariants(blocks, false)
    stuck
end

function print_struct(sw::SSwitch, ind)
    @assert(length(sw.branches) == 2)
    @assert(length(sw.conditions) == 1)
    istr = " "^ind
    println(istr, "switch")
    println(istr, "case (", sw.conditions[1], ") {", " ", sw.gotos[1]...)
    print_struct(sw.branches[1], ind+4)
    println(istr, "}")
    println(istr, "else {", " ", sw.gotos[2]...)
    print_struct(sw.branches[2], ind+4)
    print(istr, "}")
end

function print_struct(sl::SLoop, ind)
    istr = " "^ind
    println(istr, "loop (", sl.idx, ") {")
    print_struct(sl.blk, ind+4)
    print(istr, "}")
end

print_struct(x, ind) = print(" "^ind, x)
function print_struct(x::Expr, ind)
    istr = " "^ind
    if x.head === :break
        print(istr, "break ", x.args[1])
    elseif x.head === :continue
        print(istr, "continue ", x.args[1])
    else
        print(istr, x)
    end
end

function print_struct(blk::SBlock, ind)
    for op in blk.ops
        print_struct(op, ind)
        println()
    end
end

function print_struct(blocks::Dict)
    ks = sort(collect(keys(blocks)))
    for k in ks
        println("$k:")
        print_struct(blocks[k], 0)
        println()
    end
end

function julia_to_structured(lam)
    DEBUG_SCFG && Meta.show_sexpr(lam.args[3])
    blocks = parse_structured(lam.args[3].args)
    while true
        stuck = step!(blocks, false)
        if stuck
            stuck = step!(blocks, true)
        end
        if stuck
            break
        end
        if DEBUG_SCFG
            print_struct(blocks)
            println("=================")
        end
    end
    prepare!(blocks)
    if DEBUG_SCFG
        println("Done :")
        print_struct(blocks)
    end
    check_invariants(blocks, true)
    first(values(blocks))
end


## Some handling of the binary representation

immutable UnknownInsn
    opcode :: UInt16
    args :: Vector{UInt32}
end
Base.show(io::IO, i::UnknownInsn) = print(io, Ops[i.opcode], "(", join(map(string, i.args), ","), ")")
type Program
    version :: Tuple{Int, Int}
    generator :: UInt32
    header :: Vector{UnknownInsn} # let's not bother for now
    functions :: Vector
end
function Base.show(io::IO, p::Program)
    @printf(io, "SPIR-V program (v%d.%d)\n", p.version[1], p.version[2])
    @printf(io, "  generated by %#x\n", p.generator)
    println(io, "  header:")
    for h in p.header
        println(io, "  ", h)
    end
    println()
    for f in p.functions
        println(io, f)
        println()
    end
end
type Func
    result_type
    result
    control
    func_type
    body
end
function Base.show(io::IO, f::Func)
    @printf(io, "  function %#x %#x %#x %#x\n", f.result_type, f.result, f.control, f.func_type)
    for insn in f.body
        println(io, "    ", insn)
    end
end
function read(io::IO, ::Type{Program})
    magic = read(io, UInt32)
    if magic != 0x07230203
        error("invalid magic $magic")
    end
    _0, minor_version, major_version, _1 = read(io, UInt8, 4)
    if !(_0 == _1 == 0)
        error("invalid version")
    end
    generator_magic = read(io, UInt32)
    max_id = read(io, UInt32)
    reserved = read(io, UInt32)
    if reserved != 0
        error("reserved field used")
    end
    program = Program((major_version, minor_version), generator_magic, UnknownInsn[], [])
    functions = Dict()
    current_function = nothing
    while !eof(io)
        opcode = read(io, UInt16)
        n_words = read(io, UInt16)

        if current_function === nothing
            if opcode == OpFunction
                @assert(n_words == 5)
                current_function = Func(read(io,UInt32), read(io, UInt32), read(io, UInt32), read(io, UInt32), [])
                push!(program.functions, current_function)
            else
                push!(program.header, UnknownInsn(opcode, read(io, UInt32, n_words-1)))
            end
        else
            if opcode == OpFunctionEnd
                current_function = nothing
            else
                push!(current_function.body, UnknownInsn(opcode, read(io, UInt32, n_words-1)))
            end
        end
    end
    program
end


## Compilation

type CCtx
    last_id
    constants
    outputs # should be made per-function if we want to support more than one
    inputs # same
    locals # same
    types
    io_header :: IOBuffer
    io_bodies :: IOBuffer
end

# TODO make this configurable

immutable V4f
    x::Float32
    y::Float32
    z::Float32
    w::Float32
end
immutable V3f
    x::Float32
    y::Float32
    z::Float32
end
const VECTOR_TYPES = Set([V3f, V4f])

nextid(ctx::CCtx) = (ctx.last_id+=1; ctx.last_id)
function convert_type(ctx::CCtx, jt::ANY, sclass = -1)
    if !isleaftype(jt)
        error("tried to convert abstract type $jt")
    end
    if haskey(ctx.types, jt)
        return ctx.types[jt]
    end
    typ = -1
    if jt in VECTOR_TYPES
        nf = nfields(jt)
        ft = unique(map(x->fieldtype(jt,x), 1:nf))
        @assert(length(ft) == 1)
        spft = convert_type(ctx, ft[1])
        typ = nextid(ctx)
        hdr!(ctx, OpTypeVector, typ, spft, nf)
    elseif jt in (Float16, Float32, Float64)
        typ = nextid(ctx)
        hdr!(ctx, OpTypeFloat, typ, sizeof(jt)*8)
    elseif jt <: Ptr && isleaftype(jt.parameters[1])
        #TODO get rid of this crap
        @assert(sclass >= 0)
        typ = nextid(ctx)
        hdr!(ctx, OpTypePointer, typ, sclass, convert_type(ctx, jt.parameters[1]))
    elseif sizeof(jt) == 0
        typ = nextid(ctx)
        hdr!(ctx, OpTypeVoid, typ)
    elseif jt === Bool
        typ = nextid(ctx)
        hdr!(ctx, OpTypeBool, typ)
    end
    @assert(typ > 0, "could not assign type $jt")
    ctx.types[jt] = typ
    typ
end

function convert_ftype(ctx::CCtx, jargs::ANY, jret::ANY)
    ret = convert_type(ctx, jret)
    ft = nextid(ctx)
    op!(ctx, OpTypeFunction, ft, ret, map(jarg -> convert_type(ctx, jarg), jargs)...)
    ret, ft
end

function CCtx(lam)
    ctx = CCtx(0, Dict(), Dict(), Dict(), Dict(), Dict(), IOBuffer(), IOBuffer())
    ctx
end

function op!(io::IO, ctx::CCtx, opcode, args...)
    p = position(io)
    write(io, UInt16(opcode))
    write(io, UInt16(0xffff))
    for arg in args
        if isa(arg, ASCIIString)
            write(io, arg.data)
            write(io, 0x0)
            write(io, fill(0x0, 3 - ((length(arg.data)+1+3) % 4)))
        else
            write(io, UInt32(arg))
        end
    end
    p2 = position(io)
    seek(io, p + sizeof(UInt16))
    write(io, UInt16(div(p2-p, sizeof(UInt32))))
    seek(io, p2)
end
op!(ctx::CCtx, a...) = op!(ctx.io_bodies, ctx, a...)
hdr!(ctx::CCtx, a...) = op!(ctx.io_header, ctx, a...)

function static_eval(g :: GlobalRef)
    if isdefined(g.mod, g.name) && isconst(g.mod, g.name)
        getfield(g.mod, g.name)
    else
        error("not static $g")
    end
end
static_eval(n::Union{Int,UInt}) = n
static_eval(x) = error("not static $x")
static_eval(x::TopNode) = static_eval(GlobalRef(Base, x.name)) # ugh
function static_eval(x::Expr)
    T = expr_type(x)
    if T.name === Type.name && isa(T.parameters[1], Type)
        T.parameters[1]
    else
        error("not static $x")
    end
end
static_eval(x::QuoteNode) = x.value
expr_type(x::Expr) = x.typ
expr_type(x::SymbolNode) = x.typ

# marker builtins, the behavior is hardcoded
@noinline output!{T}(::Type{T}, loc::Int, ::T) = nothing
@noinline input{T}(::Type{T}, loc::Int) = ?::T # :(

function emit!(ctx, cst::Float32)
    id = nextid(ctx)
    hdr!(ctx, OpConstant, convert_type(ctx, typeof(cst)), id, reinterpret(UInt32, cst))
    id
end

function emit_label!(ctx)
    id = nextid(ctx)
    op!(ctx, OpLabel, id)
    id
end

function emit!(ctx, v :: SymbolNode)
    name = v.name
    t, id = ctx.locals[name]
    lid = nextid(ctx)
    op!(ctx, OpLoad, t, lid, id)
    lid
end

function get_input_output(ctx, sclass, Te, le)
    #TODO get rid of this shit
    location = static_eval(le)
    T = static_eval(Te)
    map = sclass == 1 ? ctx.inputs : ctx.outputs
    rt = convert_type(ctx, T)
    ptrt = convert_type(ctx, Ptr{T}, sclass)
    if haskey(map, location)
        # TODO check type is coherent
        map[location], rt, ptrt
    else
        id = nextid(ctx)
        map[location] = id
        hdr!(ctx, OpVariable, ptrt, id, sclass)
        id, rt, ptrt
    end
end

const SIMPLE_INTRINSICS =
    Dict(map(x -> getfield(Core.Intrinsics, x[1]) => x[2],
             [(:lt_float, OpFOrdLessThan),
              (:add_float, OpFAdd),
              (:mul_float, OpFMul)
              # TODO add everything here
              ]))
              
function emit_intrinsic!(ctx, e::Expr, restype = nothing)
    @assert(e.head === :call)
    f = static_eval(e.args[1])
    args = e.args[2:end]
    if f === Core.Intrinsics.box
        T = static_eval(args[1])
        emit_intrinsic!(ctx, args[2], T)
    elseif haskey(SIMPLE_INTRINSICS, f)
        id = nextid(ctx)
        if restype === nothing
            restype = expr_type(e)
        end
        op!(ctx, SIMPLE_INTRINSICS[f], convert_type(ctx, restype), id, map(a->emit!(ctx,a),e.args[2:end])...)
        id
    else
        error("unknown intrinsic $f")
    end
end

function emit!(ctx, e :: Expr)
    if e.head === :call
        f = static_eval(e.args[1])
        #args = map(a -> emit!(ctx, a), e.args[2:end])
        if f === output!
            var,_,_ = get_input_output(ctx, 3, e.args[2], e.args[3])
            op!(ctx, OpStore, var, emit!(ctx, e.args[4]))
            nothing
        elseif f === input
            var,vart,_ = get_input_output(ctx, 1, e.args[2], e.args[3])
            id = nextid(ctx)
            op!(ctx, OpLoad, vart, id, var)
            id            
        elseif f === Base.getfield
            T = expr_type(e.args[2])
            fld = static_eval(e.args[3])
            idx = if isa(fld, Int)
                fld
            else
                findfirst(fieldnames(T), fld)
            end
            @assert(idx > 0)
            id = nextid(ctx)
            op!(ctx, OpCompositeExtract, convert_type(ctx, T), id, emit!(ctx, e.args[2]), idx-1)
            id
        elseif isa(f, Core.IntrinsicFunction)
            emit_intrinsic!(ctx, e)
        else
            error("unknown $f")
        end
    elseif e.head === :return
        arg = emit!(ctx, e.args[1])
        if expr_type(e.args[1]) === Void
            op!(ctx, OpReturn)
        else
            error()
        end
    elseif e.head === :new
        T = static_eval(e.args[1])
        id = nextid(ctx)
        op!(ctx, OpCompositeConstruct, convert_type(ctx, T), id, map(a -> emit!(ctx, a), e.args[2:end])...)
        id
    elseif e.head === :(=)
        name = e.args[1]
        _, id = ctx.locals[name]
        op!(ctx, OpStore, id, emit!(ctx, e.args[2]))
    else
        error("unknown expr $e")
    end
end

function emit!(ctx, e :: SBlock)
    for op in e.ops
        emit!(ctx, op)
    end
end

function emit!(ctx, e :: SSwitch)
    @assert(length(e.conditions) == 1) # TODO actual switches
    cond_id = emit!(ctx, e.conditions[1])
    merge_id = nextid(ctx)
    tbranch_id = nextid(ctx)
    fbranch_id = nextid(ctx)
    op!(ctx, OpSelectionMerge, merge_id, 0#=???=#)
    op!(ctx, OpBranchConditional, cond_id, tbranch_id, fbranch_id)
    op!(ctx, OpLabel, tbranch_id)
    emit!(ctx, e.branches[1])
    op!(ctx, OpBranch, merge_id)
    op!(ctx, OpLabel, fbranch_id)
    emit!(ctx, e.branches[2])
    op!(ctx, OpBranch, merge_id)
    op!(ctx, OpLabel, merge_id)
end

###################



#= what it could end up looking like ???
module MyVerySimpleShader

immutable ViewUniform
    transform :: Mat4f
end
immutable VertexAttributes
    pos :: V3f
    color :: V3f
end
immutable FragmentAttributes
    color :: V3f
end

function vertex(view :: ViewUniform, v :: VertexAttributes)
    position!(view.transform * v4(v.pos, 1f0))
    FragmentAttributes(v.uv)
end

function fragment(f :: FragmentAttributes)
    color!(v4(f.color, 1f0))
end

end
=#

@inline color!(color::V4f, render_target = 0) = output!(V4f, render_target, color)
function frag0()
    color = input(V3f, 0)
    if color.x > 0.1f0
        color = V3f(color.x*10f0, 0f0, 0f0)
    end
    color!(V4f(color.x, color.y, color.z, 1f0))
end

function doit(f)
    open(f, "r") do io
        read(io, Program)
    end
end

function doit2(f,args)
    lam = code_typed(f, args)[1]
    ctx = CCtx(lam)
    
    blk = julia_to_structured(lam)
    print_struct(blk, 0)

    rt, ft = convert_ftype(ctx, (), Void)
    fid = nextid(ctx)
    op!(ctx, OpFunction, rt, fid, 0#=control=#, ft)

    emit_label!(ctx)

    argnames = lam.args[1][2:end]
    localinfo = lam.args[2][1][2:end]
    for (name,typ,_) in localinfo
        t = convert_type(ctx, typ)
        ptrt = convert_type(ctx, Ptr{typ}, 7)
        vid = nextid(ctx)
        op!(ctx, OpVariable, ptrt, vid, 7#=Function storage class=#)
        ctx.locals[name] = (t, vid)
    end
    
    emit!(ctx, blk)

    op!(ctx, OpFunctionEnd)

    ######
    
    io = open("out.spv", "w")
    ###
    write(io, UInt32(0x07230203)) # magic
    write(io, 0x0, 0x0, 0x1, 0x0) # version
    write(io, UInt32(0x696c756a)) # our magic
    write(io, UInt32(100)) # max id
    write(io, UInt32(0)) # zeros

    op!(io, ctx, OpCapability, 1) # TODO constants
    #op!(io, ctx, OpExtInstImport, nextid(ctx), "GLSL.std.450")
    op!(io, ctx, OpMemoryModel, 0, 1#=GLSL450=#) # TODO
    op!(io, ctx, OpEntryPoint, 4#=Fragment=#, fid, "main", values(ctx.outputs)..., values(ctx.inputs)...)
    
    # TODO OpExecutionMode
    #op!(io, ctx, OpExecutionMode, fid, 8#=OriginLowerLeft=#)
    
    for map in (ctx.outputs,ctx.inputs)
        for (loc,v) in map
            op!(io, ctx, OpDecorate, v, 30#=Decorate location=#, loc)
        end
    end
    ###
    seekstart(ctx.io_header)
    @show read(ctx.io_header)
    seekstart(ctx.io_header)
    write(io, ctx.io_header)
    seekstart(ctx.io_bodies)
    write(io, ctx.io_bodies)
    close(io)
#    emit!(ctx, blk)
    
end

end
