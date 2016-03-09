
type VulkanBuffer{T}
	mem::api.VkDeviceMemory
	buffer::api.VkBuffer
    allocation_info::api.VkMemoryAllocateInfo
	length::Int
end
Base.length(v::VulkanBuffer) = v.length
function get_memory_type(typebits, properties, deviceMemoryProperties)
	for i_int=0:31
		i = UInt32(i_int)
		if ((typebits & 1) == 1)
			if ((deviceMemoryProperties.memoryTypes[i+1].propertyFlags & UInt32(properties)) == UInt32(properties))
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

function CreateBuffer(device, array::Vector, usage, allocators=C_NULL)
    CreateBuffer(device, allocators;
        sType = api.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
        size = sizeof(array),
        usage = usage,
    )
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
function VulkanBuffer{T}(array::Vector{T}, device, deviceMemoryProperties, usage)

    buffer = CreateBuffer(device, array, usage)

    mem_requirements = get_memory_requirements(device, buffer)
    memtypeindex = get_memory_type(mem_requirements.memoryTypeBits, api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, deviceMemoryProperties)
    mem_alloc = create_ref(api.VkMemoryAllocateInfo,
        sType = api.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        pNext = C_NULL,
        memoryTypeIndex = memtypeindex,
        allocationSize = mem_requirements.size
    )
    mem = allocate_memory(device, mem_alloc)
    len = length(array)
    if T <: FixedArray
        len *= length(T)
    end
    vkbuff = VulkanBuffer{T}(mem, buffer, mem_alloc[], len)

    data_ptr = map_buffer(device, vkbuff)
    memcpy(data_ptr, array)
    unmap_buffer(device, vkbuff)

    err = api.vkBindBufferMemory(device, buffer, mem, 0)
    check(err)
    vkbuff
end


function setup_binding_description()
    VERTEX_BUFFER_BIND_ID = 0
    bindingDescriptions = [
        create(api.VkVertexInputBindingDescription,
            binding = VERTEX_BUFFER_BIND_ID,
            stride = sizeof(Vertex{3, Float32}),
            inputRate = api.VK_VERTEX_INPUT_RATE_VERTEX
        )
    ]

    # Attribute descriptions
    # Describes memory layout and shader attribute locations
    # Location 0 : Position
    attributeDescriptions = [
        create(api.VkVertexInputAttributeDescription,
            binding = VERTEX_BUFFER_BIND_ID,
            location = 0,
            format = api.VK_FORMAT_R32G32B32_SFLOAT,
            offset = 0,
        ),
        create(api.VkVertexInputAttributeDescription,
            binding = VERTEX_BUFFER_BIND_ID,
            location = 1,
            format = api.VK_FORMAT_R32G32B32_SFLOAT,
            offset = sizeof(Float32) * 3,
        ),
        create(api.VkVertexInputAttributeDescription,
            binding = VERTEX_BUFFER_BIND_ID,
            location = 2,
            format = api.VK_FORMAT_R32G32B32_SFLOAT,
            offset = sizeof(Float32) * 6,
        )
    ]
    # Location 1 : Color
    # Assign to vertex buffer
    vi = create_ref(api.VkPipelineVertexInputStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        pNext = C_NULL,
        vertexBindingDescriptionCount = length(bindingDescriptions),
        pVertexBindingDescriptions = bindingDescriptions,
        vertexAttributeDescriptionCount = length(attributeDescriptions),
        pVertexAttributeDescriptions = attributeDescriptions,
    )
end

immutable UniformBuffer
    buffer::api.VkBuffer
    memory::api.VkDeviceMemory
    descriptor::Ref{api.VkDescriptorBufferInfo}
end

immutable Camera
	projection::Mat4f0
	model::Mat4f0
    normal::Mat4f0
	view::Mat4f0
    ligthtpos::Vec3f0
end


function prepareUniformBuffers(device, deviceMemoryProperties)
    # Prepare and initialize uniform buffer containing shader uniforms
    # Vertex shader uniform buffer block

    # Create a new buffer
    buffer = CreateBuffer(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
        size = sizeof(Camera),
        usage = api.VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT,
    )
    # Get memory requirements including size, alignment and memory type
    memreqs_ref = Ref{api.VkMemoryRequirements}()

    api.vkGetBufferMemoryRequirements(device, buffer, memreqs_ref)
    memreqs = memreqs_ref[]
    allocation_info = create_ref(api.VkMemoryAllocateInfo,
        sType = api.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        allocationSize = memreqs.size,
        memoryTypeIndex = get_memory_type(
            memreqs.memoryTypeBits,
            api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT,
            deviceMemoryProperties
        )
    )
    # Allocate memory for the uniform buffer
    mem = allocate_memory(device, allocation_info)
    # Bind memory to buffer
    err = api.vkBindBufferMemory(device, buffer, mem, 0);
    check(err)
    # Store information in the uniform's descriptor
    descriptor = create_ref(api.VkDescriptorBufferInfo,
        buffer = buffer,
        offset = 0,
        range  = sizeof(Camera)
    )
    ubo = UniformBuffer(buffer, mem, descriptor)
    view = lookat(Vec3f0(2.5), Vec3f0(0), Vec3f0(0,1,0))
    camera = [Camera(
        perspectiveprojection(41f0, 1f0, 1f0, 256f0),
        eye(Mat4f0),
        eye(Mat4f0),
        #inv(transpose(view)),
        view,
        Vec3f0(0.0f0, 0.0f0, 2.5f0)
    )]
    updateUniformBuffers(camera, ubo)
    ubo
end


function updateUniformBuffers(camera, uniform_buffer)
    # Map uniform buffer and update it
    data_ref = Ref{Ptr{Void}}(Ptr{UInt8}(C_NULL))
    err = api.vkMapMemory(device, uniform_buffer.memory, 0, sizeof(camera), 0, data_ref)
    data = data_ref[]
    check(err)
    #ptr = Base.unsafe_convert(Ptr{Camera}, camera)
    memcpy(data, camera)
    api.vkUnmapMemory(device, uniform_buffer.memory)
end
