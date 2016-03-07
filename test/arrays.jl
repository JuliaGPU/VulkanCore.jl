
typealias VKMem Ref{}
typealias VKBufferInfo Ref{}

type VulkanBuffer{T}
	mem::api.VkDeviceMemory
	buffer::api.VkBuffer
	length::Int
end
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
    bindingDescriptions = Array(api.VkVertexInputBindingDescription, 1)
    attributeDescriptions = Array(api.VkVertexInputAttributeDescription, 2)
    VERTEX_BUFFER_BIND_ID = 0
    bindingDescriptions[1, :binding] = VERTEX_BUFFER_BIND_ID
    bindingDescriptions[1, :stride] = sizeof(Vertex{3, Float32})
    bindingDescriptions[1, :inputRate] = api.VK_VERTEX_INPUT_RATE_VERTEX

    # Attribute descriptions
    # Describes memory layout and shader attribute locations
    # Location 0 : Position
    attributeDescriptions[1, :binding] = VERTEX_BUFFER_BIND_ID
    attributeDescriptions[1, :location] = 0
    attributeDescriptions[1, :format] = api.VK_FORMAT_R32G32B32_SFLOAT
    attributeDescriptions[1, :offset] = 0
    attributeDescriptions[1, :binding] = 0
    # Location 1 : Color
    attributeDescriptions[2, :binding] = VERTEX_BUFFER_BIND_ID
    attributeDescriptions[2, :location] = 1
    attributeDescriptions[2, :format] = api.VK_FORMAT_R32G32B32_SFLOAT
    attributeDescriptions[2, :offset] = sizeof(Float32) * 3
    attributeDescriptions[2, :binding] = 0

    # Assign to vertex buffer
    vi = Ref(PipelineVertexInputStateCreateInfo(
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        pNext = C_NULL,
        vertexBindingDescriptionCount = length(bindingDescriptions),
        pVertexBindingDescriptions = bindingDescriptions,
        vertexAttributeDescriptionCount = length(attributeDescriptions),
        pVertexAttributeDescriptions = attributeDescriptions,
    ))
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

function prepareUniformBuffers(device, deviceMemoryProperties)
    # Prepare and initialize uniform buffer containing shader uniforms

    # Vertex shader uniform buffer block
    allocInfo = Ref{api.VkMemoryAllocateInfo}()
    allocInfo[:sType] = api.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
    allocInfo[:pNext] = C_NULL
    allocInfo[:allocationSize] = 0
    allocInfo[:memoryTypeIndex] = 0
    # Create a new buffer
    buffer = CreateBuffer(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
        size = sizeof(Camera),
        usage = api.VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT,
    )
    # Get memory requirements including size, alignment and memory type
     memReqs = Ref{api.VkMemoryRequirements}()

    api.vkGetBufferMemoryRequirements(device, buffer, memReqs)
    allocInfo[:allocationSize] = memReqs[].size;
    # Gets the appropriate memory type for this type of buffer allocation
    # Only memory types that are visible to the host
    allocInfo[:memoryTypeIndex] = get_memory_type(
        memReqs[].memoryTypeBits,
        api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT,
        deviceMemoryProperties
    )
    # Allocate memory for the uniform buffer
    mem_ref = Ref{api.VkDeviceMemory}()
    err = api.vkAllocateMemory(device, allocInfo, C_NULL, mem_ref)
    mem = mem_ref[]
    check(err)
    # Bind memory to buffer
    err = api.vkBindBufferMemory(device, buffer, mem, 0);
    check(err)
    buffer_info = Ref{api.VkDescriptorBufferInfo}()
    # Store information in the uniform's descriptor
    descriptor = Ref{api.VkDescriptorBufferInfo}()
    descriptor[:buffer] = buffer;
    descriptor[:offset] = 0;
    descriptor[:range ] = sizeof(Camera)
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
