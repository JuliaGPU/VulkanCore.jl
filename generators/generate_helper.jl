using Vulkan

exportnames = names(Vulkan.api, true)
create_functions = filter(exportnames) do name
    startswith(string(name), "vkCreate") && isa(vk.api.(name), Function)
end
create_info_types = filter(exportnames) do name
    contains(string(name), "CreateInfo") && isa(vk.api.(name), DataType)
end



open(Pkg.dir("Vulkan","test", "helper.jl"), "w") do io
println(io, """
using Vulkan

function default{T}(::Type{T})
    args = [default(fieldtype(T, i)) for i=1:nfields(T)]
    T(args...)
end
default{T<:Enum}(::Type{T}) = typemin(T)
default{T<:Number}(::Type{T}) = zero(T)
default{T<:Ptr}(::Type{T}) = T(vk.api.VK_NULL_HANDLE)
default{N,T}(::Type{NTuple{N,T}}) = ntuple(x->zero(T), N)
""")
for elem in create_info_types
    typ = vk.api.(elem)
    names = []
    args = map(1:nfields(typ)) do i
        t = fieldtype(typ, i)
        name = fieldnames(typ)[i]
        push!(names, name)
        :($(name) = default($t))
    end
    conv_args = map(1:nfields(typ)) do i
        t = fieldtype(typ, i)
        name = fieldnames(typ)[i]
        :(struct_convert($t, $(name)))
    end
    no_vk = replace(string(elem), "Vk", "")
    expr = """
# constructor with automatic conversion
function $(no_vk)($(join(names, ", ")))
    api.$(elem)($(join(conv_args, ", ")))
end
    """
    println(io, expr)
    expr = """
# keyword argument constructor
function $(no_vk)(;$(join(args, ", ")))
    $(no_vk)($(join(names, ", ")))
end
    """
    println(io, expr)
    tname = replace(no_vk, "CreateInfo", "")
    tname = replace(tname, "KHR", "")
    tname = replace(tname, "EXT", "")
    creatorfun = findfirst(create_functions) do fun
        contains(string(fun), tname)
    end
    if creatorfun > 0
        crfun = create_functions[creatorfun]
        cfun = vk.api.(crfun)
        method = start(methods(cfun))
        tv, decls, file, line = Base.arg_decl_parts(method)
        func_arg_names = map(first, decls)
        func_args = filter(func_arg_names) do arg
            !contains(arg, "CreateInfo") && !startswith(arg, "p"*tname)
        end

        crfun_novk = replace(string(crfun), "vk", "")
        instance_name = "Vk"*replace(crfun_novk, "Create", "")
        create_args = map(func_arg_names) do arg
            if contains(arg, "CreateInfo")
                return :create_info
            end
            if startswith(arg, "p"*tname)
                return :instance_ptr
            end
            arg
        end
        expr = """
# constructor function for $crfun
function $(crfun_novk)($(join(func_args, ", "));kw_args...)
    create_info = Ref($(no_vk)(;kw_args...))
    instance_ptr = Ref{api.$instance_name}(api.VK_NULL_HANDLE)
    err = api.$(crfun)($(join(create_args, ", ")))
    check(err)
    instance_ptr[]
end
        """
        println(io, expr)
    end
end


end
