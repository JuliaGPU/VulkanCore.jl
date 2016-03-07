
typealias VKMem Ref{}
typealias VKBufferInfo Ref{}

type VulkanBuffer{T}
	mem::api.VkDeviceMemory
	buffer::api.VkBuffer
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

function VulkanBuffer{T}(array::Vector{T}, device, deviceMemoryProperties, usage)
    memAlloc = Ref{api.VkMemoryAllocateInfo}()
	memAlloc[:sType] = api.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
	memAlloc[:pNext] = C_NULL
	memAlloc[:allocationSize] = 0
	memAlloc[:memoryTypeIndex] = 0


    buff = CreateBuffer(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
        size = sizeof(array),
        usage = usage,
    )
    memReqs = Ref{api.VkMemoryRequirements}()
	api.vkGetBufferMemoryRequirements(device, buff, memReqs)
    println(memReqs[].size)
    memAlloc[:allocationSize] = memReqs[].size

	memtypeindex = get_memory_type(memReqs[].memoryTypeBits, api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, deviceMemoryProperties)
	memAlloc[:memoryTypeIndex] = memtypeindex
    mem_ref = Ref{Ptr{Void}}(C_NULL)
	err = api.vkAllocateMemory(device, memAlloc, C_NULL, mem_ref)
    check(err)
    mem = mem_ref[]
	data_ref = Ref{Ptr{Void}}(C_NULL)
	err = api.vkMapMemory(device, mem, 0, memAlloc[].allocationSize, 0, data_ref)
    data = data_ref[]
	check(err)
	memcpy(data, array)
	api.vkUnmapMemory(device, mem)
	err = api.vkBindBufferMemory(device, buff, mem, 0)
	check(err)
	VulkanBuffer{T}(mem, buff, length(array))
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
            binding = 0
        ),
        create(api.VkVertexInputAttributeDescription,
            binding = VERTEX_BUFFER_BIND_ID,
            location = 1,
            format = api.VK_FORMAT_R32G32B32_SFLOAT,
            offset = sizeof(Float32) * 3,
            binding = 0,
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

type Camera
	projection::Mat4f0
	model::Mat4f0
	view::Mat4f0
end

function allocate_memory(device, allocation_info)
    mem_ref = Ref{api.VkDeviceMemory}()
    err = api.vkAllocateMemory(device, allocation_info, C_NULL, mem_ref)
    check(err)
    mem_ref[]
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
    camera = Camera(
        eye(Mat4f0),
        eye(Mat4f0),
        eye(Mat4f0)
    )
    updateUniformBuffers(camera, ubo)
    ubo
end


function updateUniformBuffers(camera, uniform_buffer)
    # Update matrices
    camera.projection = perspectiveprojection(
        deg2rad(60.0f0), 1f0, 0.1f0, 256.0f0
    )

    camera.view = translationmatrix(Vec3f0(0.0f0, 0.0f0, 3f0))

    # Map uniform buffer and update it
    data_ref = Ref{Ptr{Void}}(Ptr{UInt8}(C_NULL))
    err = api.vkMapMemory(device, uniform_buffer.memory, 0, sizeof(Camera), 0, data_ref)
    data = data_ref[]
    check(err)
    ptr = pointer_from_objref(camera)
    memcpy(data, ptr, sizeof(camera))
    api.vkUnmapMemory(device, uniform_buffer.memory)
end
