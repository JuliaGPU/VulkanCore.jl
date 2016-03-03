# the c code is much easier to port if we can do setindex on Ref{CompositeType}

"""
Returns the index corresponding to a field name
"""
function fieldname2index{T}(ref::Ref{T}, field::Symbol)
	names = fieldnames(T)
	for i=1:nfields(T)
		if names[i] == field
			return i
		end
	end
	error("field $field not found in $(T)!")
end

"""
Slow and silly setindex for fields.
"""
function Base.setindex!{T, X}(ref::Ref{T}, value::X, field::Symbol)
	i = fieldname2index(ref, field)
	ref[i] = value
end

function fieldptr{T}(ref::Ref{T}, field::Symbol)
	i = fieldname2index(ref, field)
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

function Base.setindex!{T, X}(ref::Ref{T}, value::X, field::Integer)
	ptr = fieldptr(ref, field)
	FT = eltype(ptr)
	unsafe_store!(ptr, FT(value))
	value
end


function memcpy(destination, source, to_copy)
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

"""
Checks the VkResult for errors
"""
function check(err::api.VkResult)
	if err != api.VK_SUCCESS
		error("Vulkan failed you. Why? $err")
	end
	err
end