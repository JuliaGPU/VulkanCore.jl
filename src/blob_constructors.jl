# A record that Clang gives the layout treatment -- a struct that transitively contains a
# union or a bitfield -- is emitted as a single `data::NTuple{N,UInt8}` field, so it loses
# the default constructor a field-wise struct would have had. That default converted its
# arguments; the generated replacement is strictly typed, so
#
#     VkClearAttachment(VK_IMAGE_ASPECT_COLOR_BIT, 0, clear_value)
#
# is a MethodError here and was fine before, for every caller that passes an enum where the
# field is its integer type, or an `Int` where it is a `UInt32`. That is a source break for
# code that never mentioned the union.
#
# So define the missing method: same body, no annotations. `setproperty!` on a `Ptr` stores
# through `Base.unsafe_store!`, which converts, so this is the same conversion the default
# constructor performed.
#
# Belongs in Clang.jl, which knows the field types outright. Doing it here keeps it to the
# bindings that need it and out of the generated files, which stay reproducible.

"""
The logical fields of a layout-blob record, in declaration order.

`propertynames` is defined on an instance rather than on the type, so this needs one; the
bytes are never read.
"""
function blob_propertynames(@nospecialize(T::DataType))
    buf = zeros(UInt8, sizeof(T))
    GC.@preserve buf propertynames(unsafe_load(Ptr{T}(pointer(buf))))
end

"""
Whether `T` is one of Clang's layout blobs: exactly one field, `data::NTuple{N,UInt8}`.
"""
function is_layout_blob(@nospecialize(T::DataType))
    isstructtype(T) && fieldcount(T) == 1 || return false
    fieldname(T, 1) === :data && fieldtype(T, 1) <: NTuple{N,UInt8} where {N}
end

let seen = Set{DataType}()
    for sym in names(@__MODULE__; all = true)
        isdefined(@__MODULE__, sym) || continue
        T = getfield(@__MODULE__, sym)
        T isa DataType && is_layout_blob(T) || continue
        # Several of these are reachable under an alias as well as their own name, and
        # defining the same method twice is a hard error while precompiling.
        T in seen && continue

        fields = blob_propertynames(T)
        # A union blob also has logical fields, but its constructors take ONE member value;
        # a struct blob's takes one argument per field. Only the latter lost a default
        # constructor, so match the arity to tell them apart.
        length(fields) > 1 && any(m -> m.nargs - 1 == length(fields), methods(T)) || continue
        push!(seen, T)

        args = [Symbol(:x, i) for i in eachindex(fields)]
        @eval function $sym($(args...))
            ref = Ref{$T}()
            ptr = Base.unsafe_convert(Ptr{$T}, ref)
            $((:(setproperty!(ptr, $(QuoteNode(f)), $a)) for (f, a) in zip(fields, args))...)
            ref[]
        end
    end
end
