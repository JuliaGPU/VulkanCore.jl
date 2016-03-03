using Vulkan
const api = vk.api


type VKSwapChain
	buffers
	images
	color_format
	color_space
	swapchain
end

function get_instance_proc_addr(inst::api.VkInstance, entrypoint::ASCIIString)
	if inst == C_NULL
		error("instance == C_NULL")
	end
    entrypoint_ptr = api.vkGetInstanceProcAddr(inst, entrypoint)
    if (entrypoint_ptr == C_NULL)                                   
        error("get_instance_proc_addr with $entrypoint returned NULL")                                                        
	end
	entrypoint_ptr
end

function get_device_proc_addr(device::api.VkDevice, entrypoint::ASCIIString)
	if device == C_NULL
		error("device == C_NULL")
	end
    entrypoint_ptr = api.vkGetDeviceProcAddr(device, entrypoint)
    if (entrypoint_ptr == C_NULL)                                   
        error("get_device_proc_addr with $entrypoint returned NULL")                                                        
	end
	entrypoint_ptr
end

let surface_function_pointers = fill(C_NULL, 9)

global connect!
global fpGetPhysicalDeviceSurfaceSupportKHR
global fpGetPhysicalDeviceSurfaceCapabilitiesKHR
global fpGetPhysicalDeviceSurfaceFormatsKHR
global fpGetPhysicalDeviceSurfacePresentModesKHR

global fpCreateSwapchainKHR
global fpDestroySwapchainKHR
global fpGetSwapchainImagesKHR
global fpAcquireNextImageKHR
global fpQueuePresentKHR

function fpGetPhysicalDeviceSurfaceSupportKHR(physical_device, queue_family_index, surface, supported)
	err = ccall(surface_function_pointers[1]::Ptr{Void}, 
		api.VkResult,
		(api.VkPhysicalDevice, UInt8, api.VkSurfaceKHR, Ptr{api.VkBool32}),
		physical_device, queue_family_index, surface, supported
	)
	check(err)
end

function fpGetPhysicalDeviceSurfaceCapabilitiesKHR(device, surface, surface_capabilities)
	err = ccall(surface_function_pointers[2]::Ptr{Void}, 
		api.VkResult, 
		(api.VkPhysicalDevice, api.VkSurfaceKHR, Ptr{api.VkSurfaceCapabilitiesKHR}),
		device, surface, surface_capabilities
	)
	check(err)
end

function fpGetPhysicalDeviceSurfaceFormatsKHR(device, surface, surface_format_count, surface_formats)
	err = ccall(surface_function_pointers[3]::Ptr{Void}, 
		api.VkResult, 
		(api.VkPhysicalDevice, api.VkSurfaceKHR, Ptr{UInt32}, Ptr{api.VkSurfaceFormatKHR}),
		device, surface, surface_format_count, surface_formats
	)
	check(err)
end

function fpGetPhysicalDeviceSurfacePresentModesKHR(device, queue_family_index, surface, supported)
	err = ccall(surface_function_pointers[4]::Ptr{Void}, 
		api.VkResult, 
		(api.VkPhysicalDevice, api.VkSurfaceKHR, Ptr{UInt32}, Ptr{api.VkPresentModeKHR}),
		device, queue_family_index, surface, supported
	)
	check(err)
end


function fpCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain)
	err = ccall(surface_function_pointers[5]::Ptr{Void}, api.VkResult, (api.VkDevice, Ptr{api.VkSwapchainCreateInfoKHR}, Ptr{api.VkAllocationCallbacks}, Ptr{api.VkSwapchainKHR}), device, pCreateInfo, pAllocator, pSwapchain)
	check(err)
end
function fpDestroySwapchainKHR(device, swapchain, pAllocator)
	err = ccall(surface_function_pointers[6]::Ptr{Void}, Void, (api.VkDevice, api.VkSwapchainKHR, Ptr{api.VkAllocationCallbacks}), device, swapchain, pAllocator)
	check(err)
end
function fpGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages)
	err = ccall(surface_function_pointers[7]::Ptr{Void}, api.VkResult, (api.VkDevice, api.VkSwapchainKHR, Ptr{UInt32}, Ptr{api.VkImage}), device, swapchain, pSwapchainImageCount, pSwapchainImages)
	check(err)
end
function fpAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex)
	err = ccall(surface_function_pointers[8]::Ptr{Void}, api.VkResult, (api.VkDevice, api.VkSwapchainKHR, UInt64, api.VkSemaphore, api.VkFence, Ptr{UInt32}), device, swapchain, timeout, semaphore, fence, pImageIndex)
	check(err)
end
function fpQueuePresentKHR(queue, pPresentInfo)
	err = ccall(surface_function_pointers[9]::Ptr{Void}, api.VkResult, (api.VkQueue, Ptr{api.VkPresentInfoKHR}), queue, pPresentInfo)
	check(err)
end

"""
Connect? well this function sets up the functions to Surface and Swapchain functions to point to use right device pointers.

"""
function connect!(instance::api.VkInstance, physical_device::api.VkPhysicalDevice, device::api.VkDevice)

	surface_function_pointers[1] = get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR")
	surface_function_pointers[2] = get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR")
	surface_function_pointers[3] = get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR")
	surface_function_pointers[4] = get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR")

	surface_function_pointers[5] = get_device_proc_addr(device, "vkCreateSwapchainKHR")
	surface_function_pointers[6] = get_device_proc_addr(device, "vkDestroySwapchainKHR")
	surface_function_pointers[7] = get_device_proc_addr(device, "vkGetSwapchainImagesKHR")
	surface_function_pointers[8] = get_device_proc_addr(device, "vkAcquireNextImageKHR")
	surface_function_pointers[9] = get_device_proc_addr(device, "vkQueuePresentKHR")
end

end




function get_queue_properties(physical_device)
	queueCount = Ref{UInt32}(0)
	api.vkGetPhysicalDeviceQueueFamilyProperties(physical_device, queueCount, C_NULL)
	if queueCount[] < 1
		error("No queues found!")
	end
	queue_props = Array(api.VkQueueFamilyProperties, queueCount[])
	api.vkGetPhysicalDeviceQueueFamilyProperties(physical_device, queueCount, queue_props)
	queue_props
end

function get_supports_present(physical_device, surface, queue_props)
	queue_count = length(queue_props)
	supports_present = Array(api.VkBool32, queue_count)
	for i=1:queue_count
		supported = Ref{api.VkBool32}()
		fpGetPhysicalDeviceSurfaceSupportKHR(physical_device, i-1, surface, supported)
		supports_present[i] = supported[]
	end
	supports_present
end
"""
Get list of supported surface formats
"""
function get_surface_formats(physical_device, surface)
	formatCount = Ref{UInt32}()
	err = fpGetPhysicalDeviceSurfaceFormatsKHR(physical_device, surface, formatCount, C_NULL)
	check(err)
	if formatCount[] < 1
		error("No formats found!")
	end
	surface_formats = Array(api.VkSurfaceFormatKHR, formatCount[])
	err = fpGetPhysicalDeviceSurfaceFormatsKHR(physical_device, surface, formatCount, surface_formats)
	check(err)
	surface_formats
end
function VKSwapChain(instance, device, physical_device, window)

	surface = create_surface(instance, window)
	queue_props = get_queue_properties(physical_device)
	queue_count = length(queue_props)
	# Iterate over each queue to learn whether it supports presenting:
	# Find a queue with present support
	# Will be used to present the swap chain images to the windowing system
	supports_present = get_supports_present(physical_device, surface, queue_props)
	# Search for a graphics and a present queue in the array of queue
	# families, try to find one that supports both
	graphicsQueueNodeIndex = typemax(UInt32)
	presentQueueNodeIndex = typemax(UInt32)
	for i=1:queue_count
		if ((queue_props[i].queueFlags & UInt32(api.VK_QUEUE_GRAPHICS_BIT)) != 0) 
			if (graphicsQueueNodeIndex == typemax(UInt32)) 
				graphicsQueueNodeIndex = i
			end

			if (supports_present[i] == api.VK_TRUE) 
				graphicsQueueNodeIndex = i
				presentQueueNodeIndex = i
				break
			end
		end
	end
	if (presentQueueNodeIndex == typemax(UInt32)) 
		# If there's no queue that supports both present and graphics
		# try to find a separate present queue
		for i=1:queue_count
			if (supports_present[i] == api.VK_TRUE) 
				presentQueueNodeIndex = i
				break
			end
		end
	end

	# Exit if either a graphics or a presenting queue hasn't been found
	if (graphicsQueueNodeIndex == typemax(UInt32) || presentQueueNodeIndex == typemax(UInt32)) 
		error("Could not find a graphics and/or presenting queue!")
	end

	# todo : Add support for separate graphics and presenting queue
	if (graphicsQueueNodeIndex != presentQueueNodeIndex) 
		error("Separate graphics and presenting queues are not supported yet!")
	end


	surface_formats = get_surface_formats(physical_device, surface)
	# If the surface format list only includes one entry with VK_FORMAT_UNDEFINED,
	# there is no preferered format, so we assume VK_FORMAT_B8G8R8A8_UNORM
	if ((length(surface_formats) == 1) && (surface_formats[1].format == api.VK_FORMAT_UNDEFINED))
		color_format = api.VK_FORMAT_B8G8R8A8_UNORM
	else
		# Always select the first available color format
		# If you need a specific format (e.g. SRGB) you'd need to
		# iterate over the list of available surface format and
		# check for it's presence
		color_format = surface_formats[1].format
	end	
	colorSpace = surface_formats[1].colorSpace
	#TODO actually create swap chain type with black jack and buffers
end


function get_present_modes(physical_device, surface)
	presentModeCount = Ref{UInt32}()
	err = fpGetPhysicalDeviceSurfacePresentModesKHR(physical_device, surface, presentModeCount, NULL)
	check(err)
	if presentModeCount < 1
		error("No present modes found")
	end
	present_modes = Array(api.VkPresentModeKHR, presentModeCount[])

	err = fpGetPhysicalDeviceSurfacePresentModesKHR(physical_device, surface, presentModeCount, present_modes)
	check(err)
	present_modes
end
function get_surface_capabilities(physical_device, surface)
	surface_capabilities = Ref{api.VkSurfaceCapabilitiesKHR}()
	err = fpGetPhysicalDeviceSurfaceCapabilitiesKHR(physical_device, surface, surface_capabilities)
	check(err)
	surface_capabilities[]
end

function get_images(device, swapchain)
	imageCount = Ref{UInt32}()
	err = fpGetSwapchainImagesKHR(device, swapchain, imageCount, C_NULL)
	check(err)
	# Get the swap chain images
	images = Array(api.VkImage, imageCount[])
	err = fpGetSwapchainImagesKHR(device, swapchain, imageCount, images)
	check(err)
	images
end

immutable SwapChainBuffer
	image::api.VkImage
	view::api.VkImageView
end

"""
Create the swap chain and get images with given width and height
"""
function create(cmdBuffer, width, height, old_swapchain=Ref{VkSwapchainKHR}(api.VK_NULL_HANDLE))
	# Get physical device surface properties and formats

	# Get available present modes
	present_modes = get_present_modes(physical_device, surface)
	surface_capabilities = get_surface_capabilities(physical_device, surface)

	swapchain_extent = Ref{api.VkExtent2D}()
	# width and height are either both -1, or both not -1.
	if (surface_capabilities.currentExtent.width == -1)
		# If the surface size is undefined, the size is set to
		# the size of the images requested.
		swapchain_extent = VkExtent2D(width,height)
	else
		# If the surface size is defined, the swap chain size must match
		swapchain_extent = surface_capabilities.currentExtent
	end

	# Prefer mailbox mode if present, it's the lowest latency non-tearing present  mode
	swapchainPresentMode = api.VK_PRESENT_MODE_FIFO_KHR
	for present_mode in present_modes
		if (present_modes[i] == api.VK_PRESENT_MODE_MAILBOX_KHR)
			swapchainPresentMode = api.VK_PRESENT_MODE_MAILBOX_KHR
			break
		end
		if ((swapchainPresentMode != Vapi.K_PRESENT_MODE_MAILBOX_KHR) && (present_modes[i] == api.VK_PRESENT_MODE_IMMEDIATE_KHR)) 
			swapchainPresentMode = api.VK_PRESENT_MODE_IMMEDIATE_KHR
		end
	end

	# Determine the number of images
	desiredNumberOfSwapchainImages = surface_capabilities.minImageCount + 1
	if ((surface_capabilities.maxImageCount > 0) && (desiredNumberOfSwapchainImages > surface_capabilities.maxImageCount))
		desiredNumberOfSwapchainImages = surface_capabilities.maxImageCount
	end

	if (surface_capabilities.supportedTransforms & api.VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR)
		preTransform = api.VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR
	else 
		preTransform = surface_capabilities.currentTransform
	end

	swapchainCI = Ref{api.VkSwapchainCreateInfoKHR}()
	swapchainCI[:sType] = api.VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
	swapchainCI[:pNext] = C_NULL
	swapchainCI[:surface] = surface
	swapchainCI[:minImageCount] = desiredNumberOfSwapchainImages
	swapchainCI[:imageFormat] = colorFormat
	swapchainCI[:imageColorSpace] = colorSpace
	swapchainCI[:imageExtent] = (swapchain_extent.width, swapchain_extent.height)
	swapchainCI[:imageUsage] = api.VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
	swapchainCI[:preTransform] = preTransform
	swapchainCI[:imageArrayLayers] = 1
	swapchainCI[:imageSharingMode] = api.VK_SHARING_MODE_EXCLUSIVE
	swapchainCI[:queueFamilyIndexCount] = 0
	swapchainCI[:pQueueFamilyIndices] = C_NULL
	swapchainCI[:presentMode] = swapchainPresentMode
	swapchainCI[:oldSwapchain] = old_swapchain
	swapchainCI[:clipped] = true
	swapchainCI[:compositeAlpha] = api.VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
	swapchain = Ref{VkSwapChain}(C_NULL)
	err = fpCreateSwapchainKHR(device, swapchainCI, C_NULL, swapchain)
	check(err)

	# If an existing sawp chain is re-created, destroy the old swap chain
	# This also cleans up all the presentable images
	if (old_swapchain != api.VK_NULL_HANDLE) 
		fpDestroySwapchainKHR(device, old_swapchain, nullptr)
	end

	images = get_images(device, swapchain)
	# Get the swap chain buffers containing the image and imageview
	buffers = Array(SwapChainBuffer, length(images))
	for i=1:length(images)
		color_attachment_view = Ref{api.VkImageViewCreateInfo}()
		color_attachment_view[:sType] = api.VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
		color_attachment_view[:pNext] = C_NULL
		color_attachment_view[:format] = colorFormat
		color_attachment_view[:components] = api.VkComponentMapping(
			api.VK_COMPONENT_SWIZZLE_R,
			api.VK_COMPONENT_SWIZZLE_G,
			api.VK_COMPONENT_SWIZZLE_B,
			api.VK_COMPONENT_SWIZZLE_A
		)

		color_attachment_view[:subresourceRange] = api.VkImageSubresourceRange(
			VK_IMAGE_ASPECT_COLOR_BIT,
			0,1,0,1
		)
		color_attachment_view[:viewType] = api.VK_IMAGE_VIEW_TYPE_2D
		color_attachment_view[:flags] = 0

		buffers[i].image = images[i]

		# Transform images from initial (undefined) to present layout
		setImageLayout(
			cmdBuffer, 
			buffers[i].image, 
			api.VK_IMAGE_ASPECT_COLOR_BIT, 
			api.VK_IMAGE_LAYOUT_UNDEFINED, 
			api.VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
		)

		color_attachment_view[:image] = buffers[i].image
		view = Ref{api.VkImageView}(C_NULL)
		err = api.vkCreateImageView(device, color_attachment_view, C_NULL, view)
		check(err)
		buffers[i].view = view[]
	end
end


function imageMemoryBarrier()
	imageMemoryBarrier = Ref{api.VkImageMemoryBarrier}()
	imageMemoryBarrier[:sType] = api.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
	imageMemoryBarrier[:pNext] = C_NULL
	# Some default values
	imageMemoryBarrier[:srcQueueFamilyIndex] = api.VK_QUEUE_FAMILY_IGNORED
	imageMemoryBarrier[:dstQueueFamilyIndex] = api.VK_QUEUE_FAMILY_IGNORED
	return imageMemoryBarrier
end


"""
Create an image memory barrier for changing the layout of
an image and put it into an active command buffer
See chapter 11.4 Image Layout for details
"""
function set_image_layout(cmdbuffer, oldImageLayout, newImageLayout)
	# Create an image barrier object
	imageMemoryBarrier = imageMemoryBarrier()
	imageMemoryBarrier[:oldLayout] = oldImageLayout
	imageMemoryBarrier[:newLayout] = newImageLayout
	imageMemoryBarrier[:image] = image
	imageMemoryBarrier[:subresourceRange] = api.VkImageSubresourceRange(
		aspectMask, 0, 1, 0, 1
	)

	# Source layouts (old)

	# Undefined layout
	# Only allowed as initial layout!
	# Make sure any writes to the image have been finished
	if (oldImageLayout == api.VK_IMAGE_LAYOUT_UNDEFINED)
		imageMemoryBarrier[:srcAccessMask] = UInt32(api.VK_ACCESS_HOST_WRITE_BIT) | UInt32(api.VK_ACCESS_TRANSFER_WRITE_BIT)
	end
	# Old layout is color attachment
	# Make sure any writes to the color buffer have been finished
	if (oldImageLayout == api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL) 
		imageMemoryBarrier[:srcAccessMask] = UInt32(api.VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
	end

	# Old layout is transfer source
	# Make sure any reads from the image have been finished
	if (oldImageLayout == api.VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL)
		imageMemoryBarrier[:srcAccessMask] = UInt32(api.VK_ACCESS_TRANSFER_READ_BIT)
	end

	# Old layout is shader read (sampler, input attachment)
	# Make sure any shader reads from the image have been finished
	if (oldImageLayout == api.VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL)
		imageMemoryBarrier[:srcAccessMask] = UInt32(api.VK_ACCESS_SHADER_READ_BIT)
	end

	# Target layouts (new)

	# New layout is transfer destination (copy, blit)
	# Make sure any copyies to the image have been finished
	if (newImageLayout == api.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL)
		imageMemoryBarrier[:dstAccessMask] = UInt32(api.VK_ACCESS_TRANSFER_WRITE_BIT)
	end

	# New layout is transfer source (copy, blit)
	# Make sure any reads from and writes to the image have been finished
	if (newImageLayout == api.VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL)
		imageMemoryBarrier[:srcAccessMask] = imageMemoryBarrier[].srcAccessMask | UInt32(api.VK_ACCESS_TRANSFER_READ_BIT)
		imageMemoryBarrier[:dstAccessMask] = VK_ACCESS_TRANSFER_READ_BIT
	end

	# New layout is color attachment
	# Make sure any writes to the color buffer hav been finished
	if (newImageLayout == api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
		imageMemoryBarrier[:dstAccessMask] = api.VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
		imageMemoryBarrier[:srcAccessMask] = api.VK_ACCESS_TRANSFER_READ_BIT
	end

	# New layout is depth attachment
	# Make sure any writes to depth/stencil buffer have been finished
	if (newImageLayout == api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL) 
		imageMemoryBarrier[:dstAccessMask] = imageMemoryBarrier[].dstAccessMask | UInt32(api.VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT)
	end

	# New layout is shader read (sampler, input attachment)
	# Make sure any writes to the image have been finished
	if (newImageLayout == api.VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL)
		imageMemoryBarrier[:srcAccessMask] = api.VK_ACCESS_HOST_WRITE_BIT | UInt32(api.VK_ACCESS_TRANSFER_WRITE_BIT)
		imageMemoryBarrier[:dstAccessMask] = api.VK_ACCESS_SHADER_READ_BIT
	end


	# Put barrier on top
	srcStageFlags = api.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT
	destStageFlags = api.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT

	# Put barrier inside setup command buffer
	api.vkCmdPipelineBarrier(
		cmdbuffer, 
		srcStageFlags, 
		destStageFlags, 
		0, 
		0, C_NULL,
		0, C_NULL,
		1, imageMemoryBarrier
	)

end
