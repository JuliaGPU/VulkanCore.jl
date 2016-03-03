flags = (
  api.VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT,
  api.VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT,
  api.VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT,
  api.VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT,
  api.VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT,
  api.VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT,
  api.VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT,
  api.VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT,
  api.VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT,
  api.VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT,
  api.VK_FORMAT_FEATURE_BLIT_SRC_BIT,
  api.VK_FORMAT_FEATURE_BLIT_DST_BIT,
  api.VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT,
)

function get_supported_depth_format(physicalDevice)
	# Since all depth formats may be optional, we need to find a suitable depth format to use
	# Start with the highest precision packed format
	depthFormats = (
		api.VK_FORMAT_D32_SFLOAT_S8_UINT, 
		api.VK_FORMAT_D32_SFLOAT,
		api.VK_FORMAT_D24_UNORM_S8_UINT, 
		api.VK_FORMAT_D16_UNORM_S8_UINT, 
		api.VK_FORMAT_D16_UNORM
	)
	for format in depthFormats # form enum gues from 1-184
		formatProps = Ref{api.VkFormatProperties}()
		api.vkGetPhysicalDeviceFormatProperties(physicalDevice, format, formatProps)
		lob = formatProps[].linearTilingFeatures, formatProps[].optimalTilingFeatures, formatProps[].bufferFeatures
		if any(x->x>0, lob)
			println(api.VkFormat(format))
			for (name, feature) in zip((:linear, :optimal, :buffer), lob)
				for f in flags 
					if UInt32(f) & UInt32(feature) == UInt32(true)
						println(name, " ", f)
					end
				end
			end
		end
		# Format must support depth stencil attachment for optimal tiling
		#if (Uint32(formatProps[].optimalTilingFeatures) & UInt32(api.VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT)) == UInt32(true)
		#	return true, format
		#end
	end

	return false, api.VK_FORMAT_D16_UNORM
end

function collect_devices(instance)
	# Physical device
	gpu_count = Ref{UInt32}()
	# Get number of available physical devices
	err = api.vkEnumeratePhysicalDevices(instance, gpu_count, C_NULL)
	check(err)
	if gpu_count[] < 1
		error("No gpu found. Number of GPUS's: $gpu_count")
	end
	# Enumerate devices
	physical_devices = Array(api.VkPhysicalDevice, gpu_count[])
	err = api.vkEnumeratePhysicalDevices(instance, gpu_count, physical_devices)
	if err != api.VK_SUCCESS
		error("Could not enumerate phyiscal devices \n: $err, Fatal error")
	end
	physical_devices
end

"""
Finds a queue that supports graphics operations and returns it's index
"""
function get_graphic_queue(physical_device)
	queue_count = Ref{UInt32}()
	api.vkGetPhysicalDeviceQueueFamilyProperties(physical_device, queue_count, C_NULL)
	if queue_count[] < 1
		error("No queue found. Number of queues: $queue_count")
	end

	queue_props = Array(api.VkQueueFamilyProperties, queue_count[])
	api.vkGetPhysicalDeviceQueueFamilyProperties(physical_device, queue_count, queue_props)
	# search for queue that supports graphics
	index = findfirst(queue_props) do queue
		(UInt32(queue.queueFlags) & UInt32(api.VK_QUEUE_GRAPHICS_BIT)) == UInt32(true)
	end

	if (index == 0)
		error("no queue found with graphics support")
	end
	index
end



function create_device(physical_device, requested_queues, enable_validation)
	args = [api.VK_KHR_SWAPCHAIN_EXTENSION_NAME]
	ptr = Ref{Ptr{Cchar}}(args)

	deviceCreateInfo = Ref{api.VkDeviceCreateInfo}()
	deviceCreateInfo[:sType] = api.VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
	deviceCreateInfo[:pNext] = C_NULL
	deviceCreateInfo[:queueCreateInfoCount] = 1
	deviceCreateInfo[:pQueueCreateInfos] = unsafe_pointer(requested_queues)
	deviceCreateInfo[:pEnabledFeatures] = C_NULL

	deviceCreateInfo[:enabledExtensionCount] = 1

	deviceCreateInfo[:ppEnabledExtensionNames] = Base.unsafe_convert(Ptr{Ptr{Int8}}, ptr)

	deviceCreateInfo[:enabledLayerCount] = 0

	if (enable_validation)
		deviceCreateInfo[:ppEnabledLayerNames] = Base.unsafe_convert(Ptr{Ptr{Int8}}, ptr_2)
	end

	device = Ref{api.VkDevice}(C_NULL)
	err = api.vkCreateDevice(physical_device, deviceCreateInfo, C_NULL, device)
	check(err)
	device[]
end




function get_graphic_device(instance, enable_validation)
	deviceMemoryProperties = Ref{api.VkPhysicalDeviceMemoryProperties}()
	# Enumerate devices
	physical_devices = collect_devices(instance)

	# select the first one for now!
	physical_device = physical_devices[1]

	graphic_queue_index = get_graphic_queue(physical_device)
	# Vulkan device

		# Vulkan device
	queuePriorities = [0.0f0]
	queueCreateInfo = Ref{api.VkDeviceQueueCreateInfo}()
	queueCreateInfo[:sType] = api.VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
	queueCreateInfo[:queueFamilyIndex] = graphic_queue_index
	queueCreateInfo[:queueCount] = 1
	queueCreateInfo[:pQueuePriorities] = Base.unsafe_convert(Ptr{Float32}, queuePriorities)

	device = create_device(physical_device, queueCreateInfo, enable_validation)
	println(device)
	# Gather physical device memory properties
	api.vkGetPhysicalDeviceMemoryProperties(physical_device, deviceMemoryProperties)

	# Get the graphics queue
	queue = Ref{api.VkQueue}()
	api.vkGetDeviceQueue(device, graphic_queue_index, 0, queue)

	# # Find a suitable depth format
	found, validDepthFormat = get_supported_depth_format(physical_device)

	# if !found 
	# 	error("no depth format found/supported")
	# end
	api.vkGetPhysicalDeviceMemoryProperties(physical_device, deviceMemoryProperties)

	connect!(instance, physical_device, device)
	device, physical_device
end


