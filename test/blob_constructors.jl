# A record containing a union is emitted as a `data::NTuple{N,UInt8}` blob, which loses the
# default constructor a field-wise struct would have had. That one converted its arguments,
# so without a replacement this call is a MethodError -- a source break for callers that
# never mention the union. See src/blob_constructors.jl.
clear_value = VkClearValue(ntuple(_ -> 0x00, 16))

# An enum where the field is declared as its integer type, and an `Int` where it is `UInt32`.
@test VkClearAttachment(VK_IMAGE_ASPECT_COLOR_BIT, 0, clear_value) isa VkClearAttachment
@test VkClearAttachment(VK_IMAGE_ASPECT_COLOR_BIT, 0, clear_value) ==
      VkClearAttachment(VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), UInt32(0), clear_value)

# One whose layout the blob treatment actually corrected, with `Int` for `VkDeviceSize` and
# `UInt32`. Passing the declared types would pass with or without the constructor, so it
# would not pin anything.
addr = VkDeviceOrHostAddressConstKHR(UInt64(0))
converted = VkAccelerationStructureGeometryTrianglesDataKHR(
        VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR, C_NULL,
        VK_FORMAT_R32G32B32_SFLOAT, addr, 12, 3, VK_INDEX_TYPE_UINT32, addr, addr)
typed = VkAccelerationStructureGeometryTrianglesDataKHR(
        VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR, C_NULL,
        VK_FORMAT_R32G32B32_SFLOAT, addr, VkDeviceSize(12), UInt32(3), VK_INDEX_TYPE_UINT32,
        addr, addr)

@test all(name -> getproperty(converted, name) == getproperty(typed, name), propertynames(typed))

# Unions keep their own single-value constructors and must not gain an N-argument one.
@test all(m -> m.nargs - 1 <= 1, methods(VkClearValue))

# Converting arguments can allocate, so the destination must remain rooted.
struct CollectingUInt32
    value::UInt32
end
function Base.convert(::Type{UInt32}, x::CollectingUInt32)
    GC.gc()
    return x.value
end
attachment = VkClearAttachment(VK_IMAGE_ASPECT_COLOR_BIT, CollectingUInt32(7), clear_value)
@test attachment.aspectMask == UInt32(VK_IMAGE_ASPECT_COLOR_BIT)
@test attachment.colorAttachment == 7
@test attachment.clearValue == clear_value
