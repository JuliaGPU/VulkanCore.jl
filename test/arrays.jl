
type VulkanBuffer{ElType}
    mem::api.VkDeviceMemory
    buffer::api.VkBuffer
    allocation_info::api.VkMemoryAllocateInfo
    size::Int
end
# we allow types as buffers, so eltype is a bit weird
Base.eltype{T}(v::VulkanBuffer{T}) = T
Base.eltype{T<:Array}(v::VulkanBuffer{T}) = eltype(T)

Base.length{T}(v::VulkanBuffer{T}) = div(v.size, sizeof(eltype(v)))
eltype_length(x) = 1
eltype_length{F<:FixedArray}(x::Type{F}) = length(F)
flattened_length{T}(v::VulkanBuffer{T}) = length(v) * eltype_length(eltype(v))


function get_descriptor(v::VulkanBuffer, offset=0, range=v.size)
    descriptor = create(Vector{api.VkDescriptorBufferInfo}, (
        :buffer, v.buffer,
        :offset, offset,
        :range , range
    ))
end

"""
Find the memory type index, which selects the properties of the memory to be allocated,
as well as the heap the memory will come from.
"""
function get_memory_type(device, typebits, properties)
    memory_types = device.physical_device.memory_properties.memoryTypes
	for i_int=0:31
		i = UInt32(i_int)
		if ((typebits & 1) == 1)
			if ((memory_types[i+1].propertyFlags & UInt32(properties)) == UInt32(properties))
				return i
			end
		end
		typebits >>= 1
	end
	error("Can't get no memory type!")
end
function allocate_memory(device, allocation_info_ref)
    mem_ref = Ref{api.VkDeviceMemory}()
    err = api.vkAllocateMemory(device, allocation_info_ref, C_NULL, mem_ref)
    check(err)
    mem_ref[]
end

function CreateBuffer(device, container, usage, allocators=C_NULL)
    CreateBuffer(device, allocators, (
        :size, sizeof(container),
        :usage, usage
    ))

end
function get_memory_requirements(device, buffer)
    mem_requirements_ref = Ref{api.VkMemoryRequirements}()
	api.vkGetBufferMemoryRequirements(device, buffer, mem_requirements_ref)
    mem_requirements_ref[]
end
function map_buffer(device, buffer::VulkanBuffer)
    data_ref = Ref{Ptr{Void}}(C_NULL)
    alloc_size =  buffer.allocation_info.allocationSize
	err = api.vkMapMemory(device, buffer.mem, 0, alloc_size, 0, data_ref)
    check(err)
    data_ref[]
end
function unmap_buffer(device, buffer::VulkanBuffer)
    api.vkUnmapMemory(device, buffer.mem)
end
function VulkanBuffer{T}(container::T, device, usage)
    println(T)
    !is_referencable(T) && error(
        "A Vulkan buffer needs to be able to get a reference to $T, which it can't.
        Try using an array or a mutable composite Type
    ")
    buffer = CreateBuffer(device, container, usage)

    mem_requirements = get_memory_requirements(device, buffer)
    memtypeindex = get_memory_type(
        device,
        mem_requirements.memoryTypeBits,
        api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
    )
    mem_alloc = create(Ref{api.VkMemoryAllocateInfo}, (
        :pNext, C_NULL,
        :memoryTypeIndex, memtypeindex,
        :allocationSize, mem_requirements.size
    ))
    mem = allocate_memory(device, mem_alloc)
    vkbuff = VulkanBuffer{T}(mem, buffer, mem_alloc[], sizeof(container))

    data_ptr = map_buffer(device, vkbuff)
    memcpy(data_ptr, container)
    unmap_buffer(device, vkbuff)

    err = api.vkBindBufferMemory(device, buffer, mem, 0)
    check(err)
    vkbuff
end

type2prefix{T<:AbstractFloat}(::Type{T}) = "SFLOAT"
type2prefix{T<:Integer}(::Type{T}) = "SINT"
type2prefix{T<:Unsigned}(::Type{T}) = "UINT"
function type2vkformt(T)
    len = length(T)
    ET = eltype(T)
    type2vkformt(len, ET)
end

function type2vkformt(len, ET)

end

type VertexArray

end

function setup_binding_description()
    VERTEX_BUFFER_BIND_ID = 0
    bindingDescriptions = create(Vector{api.VkVertexInputBindingDescription}, (
        :binding, VERTEX_BUFFER_BIND_ID,
        :stride, sizeof(Vertex{3, Float32}),
        :inputRate, api.VK_VERTEX_INPUT_RATE_VERTEX
    ))

    # Attribute descriptions
    # Describes memory layout and shader attribute locations
    # Location 0 : Position
    attributeDescriptions = create(Vector{api.VkVertexInputAttributeDescription}, (
            :binding, VERTEX_BUFFER_BIND_ID,
            :location, 0,
            :format, api.VK_FORMAT_R32G32B32_SFLOAT,
            :offset, 0,
        ),(
            :binding, VERTEX_BUFFER_BIND_ID,
            :location, 1,
            :format, api.VK_FORMAT_R32G32B32_SFLOAT,
            :offset, sizeof(Float32) * 3,
        ),(
            :binding, VERTEX_BUFFER_BIND_ID,
            :location, 2,
            :format, api.VK_FORMAT_R32G32B32_SFLOAT,
            :offset, sizeof(Float32) * 6,
        )
    )
    # Location 1 : Color
    # Assign to vertex buffer
    vi = create(Ref{api.VkPipelineVertexInputStateCreateInfo}, (
        :vertexBindingDescriptionCount, length(bindingDescriptions),
        :pVertexBindingDescriptions, bindingDescriptions,
        :vertexAttributeDescriptionCount, length(attributeDescriptions),
        :pVertexAttributeDescriptions, attributeDescriptions,
    ))
end
