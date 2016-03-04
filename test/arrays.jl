
typealias VKMem Ref{}
typealias VKBufferInfo Ref{}

type VulkanBuffer{T}
	mem::api.VkDeviceMemory
	buffer::api.VkBuffer
	length::Int
	buffer_info::api.VkBufferCreateInfo
end
function get_memory_type(typebits, properties, deviceMemoryProperties)
	for i_int=0:31
		i = UInt32(i_int)
		if ((typebits & 1) == 1)
			if ((deviceMemoryProperties[].memoryTypes[i+1].propertyFlags & UInt32(properties)) == UInt32(properties))
				return true, i
			end
		end
		typebits >>= 1
	end
	return false, 0
end

function VulkanBuffer{T}(array::Vector{T}, device, deviceMemoryProperties, usage)

	# Generate vertex buffer
	#	Setup
	buffer_info = Ref{api.VkBufferCreateInfo}()
	buffer_info[:sType] = api.VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
	buffer_info[:pNext] = C_NULL
	buffer_info[:size] = sizeof(array)
	buffer_info[:usage] = usage
	buffer_info[:flags] = 0

	#	Copy vertex data to VRAM
	mem = Ref{api.VkDeviceMemory}(C_NULL)
	err = api.vkCreateBuffer(device[], buffer_info, C_NULL, mem)
	check(err)
	memReqs = Ref{api.VkMemoryRequirements}()
	api.vkGetBufferMemoryRequirements(device[], mem, memReqs)

	memAlloc = Ref{api.VkMemoryAllocateInfo}()
	memAlloc[:sType] = api.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
	memAlloc[:pNext] = C_NULL
	memAlloc[:allocationSize] = 0
	memAlloc[:memoryTypeIndex] = 0
	memAlloc[:allocationSize] = memReqs[].size

	found, memtypeindex = get_memory_type(memReqs[].memoryTypeBits, api.VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, deviceMemoryProperties)
	if !found
		error("no mem found")
	end
	memAlloc[:memoryTypeIndex] = memtypeindex

	err = api.vkAllocateMemory(device[], memAlloc, C_NULL, mem)
	check(err)
	data = Ref{Ptr{Void}}(C_NULL)
	err = api.vkMapMemory(device[], mem[], 0, memAlloc[].allocationSize, 0, data)
	check(err)
	memcpy(data, array)
	api.vkUnmapMemory(device[], mem[])
	buf = Ref{api.VkBuffer}(C_NULL)
	err = api.vkBindBufferMemory(device[], buf, mem[], 0)
	check(err)
	VulkanBuffer{T}(mem[], buf[], length(array), buffer_info[])
end
