# the c code is much easier to port if we can do setindex on Ref{CompositeType}

"""
Can we get a pointer to `T` savely?
True = yes, false = no!
"""
is_referencable{T<:DenseArray}(x::T) = true
is_referencable{T}(x::T) = !isimmutable(T)

"""
Creates a type `T` from keyword arguments referring to the fields.
Converts arrays and refs to pointers correctly and initialises missing keyword
arguments with 0/C_NULL.
"""
function create(T::DataType, kw_dict)
    fnames = fieldnames(T)
    args = ntuple(nfields(T)) do i
        FT = fieldtype(T, i)
        name = fnames[i]
        if haskey(kw_dict, name)
            value = kw_dict[name]
            delete!(kw_dict, name)
            return struct_convert(FT, value)
        end
        return default(FT)
    end
    if !isempty(kw_dict)
        error("Keyword arguments: $kw_dict are not supported for type $T")
    end
    T(args...)
end
function create(T::DataType; kw_args...)
    kw_dict = Dict{Symbol, Any}(kw_args)
    create(T, kw_dict)
end
"""
Creates a ref from type `T` from keyword arguments referring to the fields.
Converts arrays and refs to pointers correctly and initialises missing keyword
arguments with 0/C_NULL.
"""
function create_ref{T}(::Type{T}; kw_args...)
    Ref(create(T; kw_args...))
end

function create_ref{T}(::Type{T}, args...)
    fnames = fieldnames(T)
    args = ntuple(nfields(T)) do i
        FT = fieldtype(T, i)
        name = fnames[i]
        for (k,v) in args
            if k == name
                return struct_convert(FT, v)
            end
        end
        return default(FT)
    end
    Ref(T(args...))
end

function struct_convert(t, x)
	convert(t, x)
end
const refs = []
function struct_convert(t::Type{Ptr{Ptr{Cchar}}}, x::Vector{ASCIIString})
    push!(refs, x)
	ref = Ref{Ptr{Cchar}}(x)
    Base.unsafe_convert(t, ref)
end
function struct_convert(t::Type{Ptr{Cchar}}, x::AbstractString)
    push!(refs, x)
	asciistr = ascii(x)
    Base.unsafe_convert(Ptr{Cchar}, asciistr)
end
function struct_convert(t, x::Union{Array, Ref})
    push!(refs, x)
	Base.unsafe_convert(t, x)
end
"""
Returns the index corresponding to a field name
"""
function fieldname2index{T}(::Type{T}, field::Symbol)
	names = fieldnames(T)
	for i=1:nfields(T)
		if names[i] == field
			return i
		end
	end
	error("field $field not found in $(T)!")
end



function fieldptr{T}(ref::Array{T}, array_index::Integer, field::Symbol)
	i = fieldname2index(T, field)
	fieldptr(ref, array_index, i)
end
function fieldptr{T}(ref::Array{T}, array_index::Integer, field::Integer)
	ptr = Ptr{Int8}(pointer(ref, array_index))
	offset = fieldoffsets(T)[field]
	ptr += offset
	FT = fieldtype(T, field)
	Ptr{FT}(ptr)
end

function fieldptr{T}(ref::Ref{T}, field::Symbol)
	i = fieldname2index(T, field)
	fieldptr(ref, i)
end
"""
this should be named unsafe?
"""
function fieldptr{T}(ref::Ref{T}, field::Integer)
	ptr = Ptr{Int8}(Base.unsafe_convert(Ptr{T}, ref))
	offset = fieldoffsets(T)[field]
	ptr += offset
	FT = fieldtype(T, field)
	Ptr{FT}(ptr)
end
"""
Slow and silly setindex for fields.
"""
function Base.setindex!{T, X}(ref::Ref{T}, value::X, field::Symbol)
	i = fieldname2index(T, field)
	ref[i] = value
end
function Base.setindex!{T, X}(ref::Ref{T}, value::X, field::Integer)
	ptr = fieldptr(ref, field)
	FT = eltype(ptr)
	unsafe_store!(ptr, struct_convert(FT, value))
	value
end
"""
The same for arrays
"""
function Base.setindex!{T, X}(ref::Array{T}, value::X, array_index::Integer, field::Symbol)
	ptr = fieldptr(ref, array_index, field)
	unsafe_store!(ptr, struct_convert(eltype(ptr), value))
	value
end


function memcpy(destination::Union{Ptr, Array}, source::Union{Ptr, Array}, to_copy::Int)
	ccall(:memcpy, Void, (Ptr{Void}, Ptr{Void}, Csize_t), destination, source, to_copy)
end
function memcpy(destination::Array, source::Array)
	memcpy(destination, source, min(sizeof(destination), sizeof(source)))
end
function memcpy(destination, source::Array)
	memcpy(destination, source, sizeof(source))
end

function unsafe_pointer{T}(ref::Ref{T}, ptr_type=T)
	Base.unsafe_convert(Ptr{ptr_type}, ref)
end
function memcpy(destination, source::Array)
    println("olol? ", typeof(source))
	memcpy(destination, source, sizeof(source))
end
function memcpy{T}(destination, source::T)
    println("olol? ", T)
    isimmutable(T) && error("Type is immutable, meaning it can't be referenced")
    ptr = pointer_from_objref(source)
	memcpy(destination, ptr, sizeof(T))
end
function memcpy{T}(destination, source::Ref{T})
    println("olol? ", T)
    ptr = Base.unsafe_convert(Ptr{T}, source)
	memcpy(destination, ptr, sizeof(T))
end
"""
Checks the VkResult for errors
"""
function check(err::api.VkResult)
	if err != api.VK_SUCCESS
		error("Vulkan failed you. Why? $err")
	end
	err
end


print_type{T}(x::Ref{T}) = print_type(x[])
function print_type{T}(x::T)
    println(T.name.name)
    names =
    for name in fieldnames(T)
        println(name, " ", x.(name))
    end
end
