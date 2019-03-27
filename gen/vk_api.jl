# Julia wrapper for header: /Users/gnimuc/.julia/dev/VulkanCore/gen/Vulkan-Headers/include/vulkan/vk_platform.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /Users/gnimuc/.julia/dev/VulkanCore/gen/Vulkan-Headers/include/vulkan/vulkan.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /Users/gnimuc/.julia/dev/VulkanCore/gen/Vulkan-Headers/include/vulkan/vulkan_core.h
# Automatically generated using Clang.jl wrap_c


function vkCreateInstance(pCreateInfo, pAllocator, pInstance)
    ccall((:vkCreateInstance, libvulkan), VkResult, (Ptr{VkInstanceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkInstance}), pCreateInfo, pAllocator, pInstance)
end

function vkDestroyInstance(instance, pAllocator)
    ccall((:vkDestroyInstance, libvulkan), Cvoid, (VkInstance, Ptr{VkAllocationCallbacks}), instance, pAllocator)
end

function vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices)
    ccall((:vkEnumeratePhysicalDevices, libvulkan), VkResult, (VkInstance, Ptr{UInt32}, Ptr{VkPhysicalDevice}), instance, pPhysicalDeviceCount, pPhysicalDevices)
end

function vkGetPhysicalDeviceFeatures(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures}), physicalDevice, pFeatures)
end

function vkGetPhysicalDeviceFormatProperties(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties}), physicalDevice, format, pFormatProperties)
end

function vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties, libvulkan), VkResult, (VkPhysicalDevice, VkFormat, VkImageType, VkImageTiling, VkImageUsageFlags, VkImageCreateFlags, Ptr{VkImageFormatProperties}), physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties)
end

function vkGetPhysicalDeviceProperties(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties}), physicalDevice, pProperties)
end

function vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    ccall((:vkGetPhysicalDeviceQueueFamilyProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkQueueFamilyProperties}), physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
end

function vkGetPhysicalDeviceMemoryProperties(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties}), physicalDevice, pMemoryProperties)
end

function vkGetInstanceProcAddr(instance, pName)
    ccall((:vkGetInstanceProcAddr, libvulkan), PFN_vkVoidFunction, (VkInstance, Cstring), instance, pName)
end

function vkGetDeviceProcAddr(device, pName)
    ccall((:vkGetDeviceProcAddr, libvulkan), PFN_vkVoidFunction, (VkDevice, Cstring), device, pName)
end

function vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice)
    ccall((:vkCreateDevice, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkDeviceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDevice}), physicalDevice, pCreateInfo, pAllocator, pDevice)
end

function vkDestroyDevice(device, pAllocator)
    ccall((:vkDestroyDevice, libvulkan), Cvoid, (VkDevice, Ptr{VkAllocationCallbacks}), device, pAllocator)
end

function vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties)
    ccall((:vkEnumerateInstanceExtensionProperties, libvulkan), VkResult, (Cstring, Ptr{UInt32}, Ptr{VkExtensionProperties}), pLayerName, pPropertyCount, pProperties)
end

function vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties)
    ccall((:vkEnumerateDeviceExtensionProperties, libvulkan), VkResult, (VkPhysicalDevice, Cstring, Ptr{UInt32}, Ptr{VkExtensionProperties}), physicalDevice, pLayerName, pPropertyCount, pProperties)
end

function vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
    ccall((:vkEnumerateInstanceLayerProperties, libvulkan), VkResult, (Ptr{UInt32}, Ptr{VkLayerProperties}), pPropertyCount, pProperties)
end

function vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkEnumerateDeviceLayerProperties, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkLayerProperties}), physicalDevice, pPropertyCount, pProperties)
end

function vkGetDeviceQueue(device, queueFamilyIndex, queueIndex, pQueue)
    ccall((:vkGetDeviceQueue, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, Ptr{VkQueue}), device, queueFamilyIndex, queueIndex, pQueue)
end

function vkQueueSubmit(queue, submitCount, pSubmits, fence)
    ccall((:vkQueueSubmit, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkSubmitInfo}, VkFence), queue, submitCount, pSubmits, fence)
end

function vkQueueWaitIdle(queue)
    ccall((:vkQueueWaitIdle, libvulkan), VkResult, (VkQueue,), queue)
end

function vkDeviceWaitIdle(device)
    ccall((:vkDeviceWaitIdle, libvulkan), VkResult, (VkDevice,), device)
end

function vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory)
    ccall((:vkAllocateMemory, libvulkan), VkResult, (VkDevice, Ptr{VkMemoryAllocateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDeviceMemory}), device, pAllocateInfo, pAllocator, pMemory)
end

function vkFreeMemory(device, memory, pAllocator)
    ccall((:vkFreeMemory, libvulkan), Cvoid, (VkDevice, VkDeviceMemory, Ptr{VkAllocationCallbacks}), device, memory, pAllocator)
end

function vkMapMemory(device, memory, offset, size, flags, ppData)
    ccall((:vkMapMemory, libvulkan), VkResult, (VkDevice, VkDeviceMemory, VkDeviceSize, VkDeviceSize, VkMemoryMapFlags, Ptr{Ptr{Cvoid}}), device, memory, offset, size, flags, ppData)
end

function vkUnmapMemory(device, memory)
    ccall((:vkUnmapMemory, libvulkan), Cvoid, (VkDevice, VkDeviceMemory), device, memory)
end

function vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
    ccall((:vkFlushMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end

function vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
    ccall((:vkInvalidateMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end

function vkGetDeviceMemoryCommitment(device, memory, pCommittedMemoryInBytes)
    ccall((:vkGetDeviceMemoryCommitment, libvulkan), Cvoid, (VkDevice, VkDeviceMemory, Ptr{VkDeviceSize}), device, memory, pCommittedMemoryInBytes)
end

function vkBindBufferMemory(device, buffer, memory, memoryOffset)
    ccall((:vkBindBufferMemory, libvulkan), VkResult, (VkDevice, VkBuffer, VkDeviceMemory, VkDeviceSize), device, buffer, memory, memoryOffset)
end

function vkBindImageMemory(device, image, memory, memoryOffset)
    ccall((:vkBindImageMemory, libvulkan), VkResult, (VkDevice, VkImage, VkDeviceMemory, VkDeviceSize), device, image, memory, memoryOffset)
end

function vkGetBufferMemoryRequirements(device, buffer, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements, libvulkan), Cvoid, (VkDevice, VkBuffer, Ptr{VkMemoryRequirements}), device, buffer, pMemoryRequirements)
end

function vkGetImageMemoryRequirements(device, image, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkMemoryRequirements}), device, image, pMemoryRequirements)
end

function vkGetImageSparseMemoryRequirements(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    ccall((:vkGetImageSparseMemoryRequirements, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{UInt32}, Ptr{VkSparseImageMemoryRequirements}), device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
end

function vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceSparseImageFormatProperties, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, VkImageType, VkSampleCountFlagBits, VkImageUsageFlags, VkImageTiling, Ptr{UInt32}, Ptr{VkSparseImageFormatProperties}), physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties)
end

function vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence)
    ccall((:vkQueueBindSparse, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkBindSparseInfo}, VkFence), queue, bindInfoCount, pBindInfo, fence)
end

function vkCreateFence(device, pCreateInfo, pAllocator, pFence)
    ccall((:vkCreateFence, libvulkan), VkResult, (VkDevice, Ptr{VkFenceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, pCreateInfo, pAllocator, pFence)
end

function vkDestroyFence(device, fence, pAllocator)
    ccall((:vkDestroyFence, libvulkan), Cvoid, (VkDevice, VkFence, Ptr{VkAllocationCallbacks}), device, fence, pAllocator)
end

function vkResetFences(device, fenceCount, pFences)
    ccall((:vkResetFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}), device, fenceCount, pFences)
end

function vkGetFenceStatus(device, fence)
    ccall((:vkGetFenceStatus, libvulkan), VkResult, (VkDevice, VkFence), device, fence)
end

function vkWaitForFences(device, fenceCount, pFences, waitAll, timeout)
    ccall((:vkWaitForFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}, VkBool32, UInt64), device, fenceCount, pFences, waitAll, timeout)
end

function vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore)
    ccall((:vkCreateSemaphore, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSemaphore}), device, pCreateInfo, pAllocator, pSemaphore)
end

function vkDestroySemaphore(device, semaphore, pAllocator)
    ccall((:vkDestroySemaphore, libvulkan), Cvoid, (VkDevice, VkSemaphore, Ptr{VkAllocationCallbacks}), device, semaphore, pAllocator)
end

function vkCreateEvent(device, pCreateInfo, pAllocator, pEvent)
    ccall((:vkCreateEvent, libvulkan), VkResult, (VkDevice, Ptr{VkEventCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkEvent}), device, pCreateInfo, pAllocator, pEvent)
end

function vkDestroyEvent(device, event, pAllocator)
    ccall((:vkDestroyEvent, libvulkan), Cvoid, (VkDevice, VkEvent, Ptr{VkAllocationCallbacks}), device, event, pAllocator)
end

function vkGetEventStatus(device, event)
    ccall((:vkGetEventStatus, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function vkSetEvent(device, event)
    ccall((:vkSetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function vkResetEvent(device, event)
    ccall((:vkResetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end

function vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool)
    ccall((:vkCreateQueryPool, libvulkan), VkResult, (VkDevice, Ptr{VkQueryPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkQueryPool}), device, pCreateInfo, pAllocator, pQueryPool)
end

function vkDestroyQueryPool(device, queryPool, pAllocator)
    ccall((:vkDestroyQueryPool, libvulkan), Cvoid, (VkDevice, VkQueryPool, Ptr{VkAllocationCallbacks}), device, queryPool, pAllocator)
end

function vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
    ccall((:vkGetQueryPoolResults, libvulkan), VkResult, (VkDevice, VkQueryPool, UInt32, UInt32, Csize_t, Ptr{Cvoid}, VkDeviceSize, VkQueryResultFlags), device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
end

function vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer)
    ccall((:vkCreateBuffer, libvulkan), VkResult, (VkDevice, Ptr{VkBufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBuffer}), device, pCreateInfo, pAllocator, pBuffer)
end

function vkDestroyBuffer(device, buffer, pAllocator)
    ccall((:vkDestroyBuffer, libvulkan), Cvoid, (VkDevice, VkBuffer, Ptr{VkAllocationCallbacks}), device, buffer, pAllocator)
end

function vkCreateBufferView(device, pCreateInfo, pAllocator, pView)
    ccall((:vkCreateBufferView, libvulkan), VkResult, (VkDevice, Ptr{VkBufferViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBufferView}), device, pCreateInfo, pAllocator, pView)
end

function vkDestroyBufferView(device, bufferView, pAllocator)
    ccall((:vkDestroyBufferView, libvulkan), Cvoid, (VkDevice, VkBufferView, Ptr{VkAllocationCallbacks}), device, bufferView, pAllocator)
end

function vkCreateImage(device, pCreateInfo, pAllocator, pImage)
    ccall((:vkCreateImage, libvulkan), VkResult, (VkDevice, Ptr{VkImageCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImage}), device, pCreateInfo, pAllocator, pImage)
end

function vkDestroyImage(device, image, pAllocator)
    ccall((:vkDestroyImage, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkAllocationCallbacks}), device, image, pAllocator)
end

function vkGetImageSubresourceLayout(device, image, pSubresource, pLayout)
    ccall((:vkGetImageSubresourceLayout, libvulkan), Cvoid, (VkDevice, VkImage, Ptr{VkImageSubresource}, Ptr{VkSubresourceLayout}), device, image, pSubresource, pLayout)
end

function vkCreateImageView(device, pCreateInfo, pAllocator, pView)
    ccall((:vkCreateImageView, libvulkan), VkResult, (VkDevice, Ptr{VkImageViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImageView}), device, pCreateInfo, pAllocator, pView)
end

function vkDestroyImageView(device, imageView, pAllocator)
    ccall((:vkDestroyImageView, libvulkan), Cvoid, (VkDevice, VkImageView, Ptr{VkAllocationCallbacks}), device, imageView, pAllocator)
end

function vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule)
    ccall((:vkCreateShaderModule, libvulkan), VkResult, (VkDevice, Ptr{VkShaderModuleCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkShaderModule}), device, pCreateInfo, pAllocator, pShaderModule)
end

function vkDestroyShaderModule(device, shaderModule, pAllocator)
    ccall((:vkDestroyShaderModule, libvulkan), Cvoid, (VkDevice, VkShaderModule, Ptr{VkAllocationCallbacks}), device, shaderModule, pAllocator)
end

function vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache)
    ccall((:vkCreatePipelineCache, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineCacheCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineCache}), device, pCreateInfo, pAllocator, pPipelineCache)
end

function vkDestroyPipelineCache(device, pipelineCache, pAllocator)
    ccall((:vkDestroyPipelineCache, libvulkan), Cvoid, (VkDevice, VkPipelineCache, Ptr{VkAllocationCallbacks}), device, pipelineCache, pAllocator)
end

function vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData)
    ccall((:vkGetPipelineCacheData, libvulkan), VkResult, (VkDevice, VkPipelineCache, Ptr{Csize_t}, Ptr{Cvoid}), device, pipelineCache, pDataSize, pData)
end

function vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches)
    ccall((:vkMergePipelineCaches, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkPipelineCache}), device, dstCache, srcCacheCount, pSrcCaches)
end

function vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateGraphicsPipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkGraphicsPipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateComputePipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkComputePipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function vkDestroyPipeline(device, pipeline, pAllocator)
    ccall((:vkDestroyPipeline, libvulkan), Cvoid, (VkDevice, VkPipeline, Ptr{VkAllocationCallbacks}), device, pipeline, pAllocator)
end

function vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout)
    ccall((:vkCreatePipelineLayout, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineLayout}), device, pCreateInfo, pAllocator, pPipelineLayout)
end

function vkDestroyPipelineLayout(device, pipelineLayout, pAllocator)
    ccall((:vkDestroyPipelineLayout, libvulkan), Cvoid, (VkDevice, VkPipelineLayout, Ptr{VkAllocationCallbacks}), device, pipelineLayout, pAllocator)
end

function vkCreateSampler(device, pCreateInfo, pAllocator, pSampler)
    ccall((:vkCreateSampler, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSampler}), device, pCreateInfo, pAllocator, pSampler)
end

function vkDestroySampler(device, sampler, pAllocator)
    ccall((:vkDestroySampler, libvulkan), Cvoid, (VkDevice, VkSampler, Ptr{VkAllocationCallbacks}), device, sampler, pAllocator)
end

function vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout)
    ccall((:vkCreateDescriptorSetLayout, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorSetLayout}), device, pCreateInfo, pAllocator, pSetLayout)
end

function vkDestroyDescriptorSetLayout(device, descriptorSetLayout, pAllocator)
    ccall((:vkDestroyDescriptorSetLayout, libvulkan), Cvoid, (VkDevice, VkDescriptorSetLayout, Ptr{VkAllocationCallbacks}), device, descriptorSetLayout, pAllocator)
end

function vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool)
    ccall((:vkCreateDescriptorPool, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorPool}), device, pCreateInfo, pAllocator, pDescriptorPool)
end

function vkDestroyDescriptorPool(device, descriptorPool, pAllocator)
    ccall((:vkDestroyDescriptorPool, libvulkan), Cvoid, (VkDevice, VkDescriptorPool, Ptr{VkAllocationCallbacks}), device, descriptorPool, pAllocator)
end

function vkResetDescriptorPool(device, descriptorPool, flags)
    ccall((:vkResetDescriptorPool, libvulkan), VkResult, (VkDevice, VkDescriptorPool, VkDescriptorPoolResetFlags), device, descriptorPool, flags)
end

function vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets)
    ccall((:vkAllocateDescriptorSets, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetAllocateInfo}, Ptr{VkDescriptorSet}), device, pAllocateInfo, pDescriptorSets)
end

function vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets)
    ccall((:vkFreeDescriptorSets, libvulkan), VkResult, (VkDevice, VkDescriptorPool, UInt32, Ptr{VkDescriptorSet}), device, descriptorPool, descriptorSetCount, pDescriptorSets)
end

function vkUpdateDescriptorSets(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
    ccall((:vkUpdateDescriptorSets, libvulkan), Cvoid, (VkDevice, UInt32, Ptr{VkWriteDescriptorSet}, UInt32, Ptr{VkCopyDescriptorSet}), device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
end

function vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer)
    ccall((:vkCreateFramebuffer, libvulkan), VkResult, (VkDevice, Ptr{VkFramebufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFramebuffer}), device, pCreateInfo, pAllocator, pFramebuffer)
end

function vkDestroyFramebuffer(device, framebuffer, pAllocator)
    ccall((:vkDestroyFramebuffer, libvulkan), Cvoid, (VkDevice, VkFramebuffer, Ptr{VkAllocationCallbacks}), device, framebuffer, pAllocator)
end

function vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass)
    ccall((:vkCreateRenderPass, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end

function vkDestroyRenderPass(device, renderPass, pAllocator)
    ccall((:vkDestroyRenderPass, libvulkan), Cvoid, (VkDevice, VkRenderPass, Ptr{VkAllocationCallbacks}), device, renderPass, pAllocator)
end

function vkGetRenderAreaGranularity(device, renderPass, pGranularity)
    ccall((:vkGetRenderAreaGranularity, libvulkan), Cvoid, (VkDevice, VkRenderPass, Ptr{VkExtent2D}), device, renderPass, pGranularity)
end

function vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool)
    ccall((:vkCreateCommandPool, libvulkan), VkResult, (VkDevice, Ptr{VkCommandPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkCommandPool}), device, pCreateInfo, pAllocator, pCommandPool)
end

function vkDestroyCommandPool(device, commandPool, pAllocator)
    ccall((:vkDestroyCommandPool, libvulkan), Cvoid, (VkDevice, VkCommandPool, Ptr{VkAllocationCallbacks}), device, commandPool, pAllocator)
end

function vkResetCommandPool(device, commandPool, flags)
    ccall((:vkResetCommandPool, libvulkan), VkResult, (VkDevice, VkCommandPool, VkCommandPoolResetFlags), device, commandPool, flags)
end

function vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers)
    ccall((:vkAllocateCommandBuffers, libvulkan), VkResult, (VkDevice, Ptr{VkCommandBufferAllocateInfo}, Ptr{VkCommandBuffer}), device, pAllocateInfo, pCommandBuffers)
end

function vkFreeCommandBuffers(device, commandPool, commandBufferCount, pCommandBuffers)
    ccall((:vkFreeCommandBuffers, libvulkan), Cvoid, (VkDevice, VkCommandPool, UInt32, Ptr{VkCommandBuffer}), device, commandPool, commandBufferCount, pCommandBuffers)
end

function vkBeginCommandBuffer(commandBuffer, pBeginInfo)
    ccall((:vkBeginCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkCommandBufferBeginInfo}), commandBuffer, pBeginInfo)
end

function vkEndCommandBuffer(commandBuffer)
    ccall((:vkEndCommandBuffer, libvulkan), VkResult, (VkCommandBuffer,), commandBuffer)
end

function vkResetCommandBuffer(commandBuffer, flags)
    ccall((:vkResetCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, VkCommandBufferResetFlags), commandBuffer, flags)
end

function vkCmdBindPipeline(commandBuffer, pipelineBindPoint, pipeline)
    ccall((:vkCmdBindPipeline, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipeline), commandBuffer, pipelineBindPoint, pipeline)
end

function vkCmdSetViewport(commandBuffer, firstViewport, viewportCount, pViewports)
    ccall((:vkCmdSetViewport, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkViewport}), commandBuffer, firstViewport, viewportCount, pViewports)
end

function vkCmdSetScissor(commandBuffer, firstScissor, scissorCount, pScissors)
    ccall((:vkCmdSetScissor, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstScissor, scissorCount, pScissors)
end

function vkCmdSetLineWidth(commandBuffer, lineWidth)
    ccall((:vkCmdSetLineWidth, libvulkan), Cvoid, (VkCommandBuffer, Cfloat), commandBuffer, lineWidth)
end

function vkCmdSetDepthBias(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
    ccall((:vkCmdSetDepthBias, libvulkan), Cvoid, (VkCommandBuffer, Cfloat, Cfloat, Cfloat), commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
end

function vkCmdSetBlendConstants(commandBuffer, blendConstants)
    ccall((:vkCmdSetBlendConstants, libvulkan), Cvoid, (VkCommandBuffer, NTuple{4, Cfloat}), commandBuffer, blendConstants)
end

function vkCmdSetDepthBounds(commandBuffer, minDepthBounds, maxDepthBounds)
    ccall((:vkCmdSetDepthBounds, libvulkan), Cvoid, (VkCommandBuffer, Cfloat, Cfloat), commandBuffer, minDepthBounds, maxDepthBounds)
end

function vkCmdSetStencilCompareMask(commandBuffer, faceMask, compareMask)
    ccall((:vkCmdSetStencilCompareMask, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, compareMask)
end

function vkCmdSetStencilWriteMask(commandBuffer, faceMask, writeMask)
    ccall((:vkCmdSetStencilWriteMask, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, writeMask)
end

function vkCmdSetStencilReference(commandBuffer, faceMask, reference)
    ccall((:vkCmdSetStencilReference, libvulkan), Cvoid, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, reference)
end

function vkCmdBindDescriptorSets(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
    ccall((:vkCmdBindDescriptorSets, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipelineLayout, UInt32, UInt32, Ptr{VkDescriptorSet}, UInt32, Ptr{UInt32}), commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
end

function vkCmdBindIndexBuffer(commandBuffer, buffer, offset, indexType)
    ccall((:vkCmdBindIndexBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkIndexType), commandBuffer, buffer, offset, indexType)
end

function vkCmdBindVertexBuffers(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
    ccall((:vkCmdBindVertexBuffers, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
end

function vkCmdDraw(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
    ccall((:vkCmdDraw, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32), commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
end

function vkCmdDrawIndexed(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
    ccall((:vkCmdDrawIndexed, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, Int32, UInt32), commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
end

function vkCmdDrawIndirect(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function vkCmdDrawIndexedIndirect(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawIndexedIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function vkCmdDispatch(commandBuffer, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatch, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32), commandBuffer, groupCountX, groupCountY, groupCountZ)
end

function vkCmdDispatchIndirect(commandBuffer, buffer, offset)
    ccall((:vkCmdDispatchIndirect, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize), commandBuffer, buffer, offset)
end

function vkCmdCopyBuffer(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
    ccall((:vkCmdCopyBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkBuffer, UInt32, Ptr{VkBufferCopy}), commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
end

function vkCmdCopyImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdCopyImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageCopy}), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
end

function vkCmdBlitImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
    ccall((:vkCmdBlitImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageBlit}, VkFilter), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
end

function vkCmdCopyBufferToImage(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdCopyBufferToImage, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkImage, VkImageLayout, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
end

function vkCmdCopyImageToBuffer(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
    ccall((:vkCmdCopyImageToBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkBuffer, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
end

function vkCmdUpdateBuffer(commandBuffer, dstBuffer, dstOffset, dataSize, pData)
    ccall((:vkCmdUpdateBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, Ptr{Cvoid}), commandBuffer, dstBuffer, dstOffset, dataSize, pData)
end

function vkCmdFillBuffer(commandBuffer, dstBuffer, dstOffset, size, data)
    ccall((:vkCmdFillBuffer, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, UInt32), commandBuffer, dstBuffer, dstOffset, size, data)
end

function vkCmdClearColorImage(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
    ccall((:vkCmdClearColorImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearColorValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
end

function vkCmdClearDepthStencilImage(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
    ccall((:vkCmdClearDepthStencilImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearDepthStencilValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
end

function vkCmdClearAttachments(commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
    ccall((:vkCmdClearAttachments, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkClearAttachment}, UInt32, Ptr{VkClearRect}), commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
end

function vkCmdResolveImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
    ccall((:vkCmdResolveImage, libvulkan), Cvoid, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageResolve}), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
end

function vkCmdSetEvent(commandBuffer, event, stageMask)
    ccall((:vkCmdSetEvent, libvulkan), Cvoid, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end

function vkCmdResetEvent(commandBuffer, event, stageMask)
    ccall((:vkCmdResetEvent, libvulkan), Cvoid, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end

function vkCmdWaitEvents(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
    ccall((:vkCmdWaitEvents, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkEvent}, VkPipelineStageFlags, VkPipelineStageFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}), commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
end

function vkCmdPipelineBarrier(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
    ccall((:vkCmdPipelineBarrier, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineStageFlags, VkPipelineStageFlags, VkDependencyFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}), commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
end

function vkCmdBeginQuery(commandBuffer, queryPool, query, flags)
    ccall((:vkCmdBeginQuery, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, VkQueryControlFlags), commandBuffer, queryPool, query, flags)
end

function vkCmdEndQuery(commandBuffer, queryPool, query)
    ccall((:vkCmdEndQuery, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32), commandBuffer, queryPool, query)
end

function vkCmdResetQueryPool(commandBuffer, queryPool, firstQuery, queryCount)
    ccall((:vkCmdResetQueryPool, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32), commandBuffer, queryPool, firstQuery, queryCount)
end

function vkCmdWriteTimestamp(commandBuffer, pipelineStage, queryPool, query)
    ccall((:vkCmdWriteTimestamp, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineStageFlagBits, VkQueryPool, UInt32), commandBuffer, pipelineStage, queryPool, query)
end

function vkCmdCopyQueryPoolResults(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
    ccall((:vkCmdCopyQueryPoolResults, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32, VkBuffer, VkDeviceSize, VkDeviceSize, VkQueryResultFlags), commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
end

function vkCmdPushConstants(commandBuffer, layout, stageFlags, offset, size, pValues)
    ccall((:vkCmdPushConstants, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineLayout, VkShaderStageFlags, UInt32, UInt32, Ptr{Cvoid}), commandBuffer, layout, stageFlags, offset, size, pValues)
end

function vkCmdBeginRenderPass(commandBuffer, pRenderPassBegin, contents)
    ccall((:vkCmdBeginRenderPass, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, VkSubpassContents), commandBuffer, pRenderPassBegin, contents)
end

function vkCmdNextSubpass(commandBuffer, contents)
    ccall((:vkCmdNextSubpass, libvulkan), Cvoid, (VkCommandBuffer, VkSubpassContents), commandBuffer, contents)
end

function vkCmdEndRenderPass(commandBuffer)
    ccall((:vkCmdEndRenderPass, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function vkCmdExecuteCommands(commandBuffer, commandBufferCount, pCommandBuffers)
    ccall((:vkCmdExecuteCommands, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkCommandBuffer}), commandBuffer, commandBufferCount, pCommandBuffers)
end

function vkEnumerateInstanceVersion(pApiVersion)
    ccall((:vkEnumerateInstanceVersion, libvulkan), VkResult, (Ptr{UInt32},), pApiVersion)
end

function vkBindBufferMemory2(device, bindInfoCount, pBindInfos)
    ccall((:vkBindBufferMemory2, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindBufferMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function vkBindImageMemory2(device, bindInfoCount, pBindInfos)
    ccall((:vkBindImageMemory2, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindImageMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function vkGetDeviceGroupPeerMemoryFeatures(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    ccall((:vkGetDeviceGroupPeerMemoryFeatures, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, UInt32, Ptr{VkPeerMemoryFeatureFlags}), device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
end

function vkCmdSetDeviceMask(commandBuffer, deviceMask)
    ccall((:vkCmdSetDeviceMask, libvulkan), Cvoid, (VkCommandBuffer, UInt32), commandBuffer, deviceMask)
end

function vkCmdDispatchBase(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatchBase, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
end

function vkEnumeratePhysicalDeviceGroups(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
    ccall((:vkEnumeratePhysicalDeviceGroups, libvulkan), VkResult, (VkInstance, Ptr{UInt32}, Ptr{VkPhysicalDeviceGroupProperties}), instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
end

function vkGetImageMemoryRequirements2(device, pInfo, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements2, libvulkan), Cvoid, (VkDevice, Ptr{VkImageMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function vkGetBufferMemoryRequirements2(device, pInfo, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements2, libvulkan), Cvoid, (VkDevice, Ptr{VkBufferMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function vkGetImageSparseMemoryRequirements2(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    ccall((:vkGetImageSparseMemoryRequirements2, libvulkan), Cvoid, (VkDevice, Ptr{VkImageSparseMemoryRequirementsInfo2}, Ptr{UInt32}, Ptr{VkSparseImageMemoryRequirements2}), device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
end

function vkGetPhysicalDeviceFeatures2(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures2}), physicalDevice, pFeatures)
end

function vkGetPhysicalDeviceProperties2(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties2}), physicalDevice, pProperties)
end

function vkGetPhysicalDeviceFormatProperties2(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties2, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties2}), physicalDevice, format, pFormatProperties)
end

function vkGetPhysicalDeviceImageFormatProperties2(physicalDevice, pImageFormatInfo, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties2, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceImageFormatInfo2}, Ptr{VkImageFormatProperties2}), physicalDevice, pImageFormatInfo, pImageFormatProperties)
end

function vkGetPhysicalDeviceQueueFamilyProperties2(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    ccall((:vkGetPhysicalDeviceQueueFamilyProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkQueueFamilyProperties2}), physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
end

function vkGetPhysicalDeviceMemoryProperties2(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties2}), physicalDevice, pMemoryProperties)
end

function vkGetPhysicalDeviceSparseImageFormatProperties2(physicalDevice, pFormatInfo, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceSparseImageFormatProperties2, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSparseImageFormatInfo2}, Ptr{UInt32}, Ptr{VkSparseImageFormatProperties2}), physicalDevice, pFormatInfo, pPropertyCount, pProperties)
end

function vkTrimCommandPool(device, commandPool, flags)
    ccall((:vkTrimCommandPool, libvulkan), Cvoid, (VkDevice, VkCommandPool, VkCommandPoolTrimFlags), device, commandPool, flags)
end

function vkGetDeviceQueue2(device, pQueueInfo, pQueue)
    ccall((:vkGetDeviceQueue2, libvulkan), Cvoid, (VkDevice, Ptr{VkDeviceQueueInfo2}, Ptr{VkQueue}), device, pQueueInfo, pQueue)
end

function vkCreateSamplerYcbcrConversion(device, pCreateInfo, pAllocator, pYcbcrConversion)
    ccall((:vkCreateSamplerYcbcrConversion, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerYcbcrConversionCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSamplerYcbcrConversion}), device, pCreateInfo, pAllocator, pYcbcrConversion)
end

function vkDestroySamplerYcbcrConversion(device, ycbcrConversion, pAllocator)
    ccall((:vkDestroySamplerYcbcrConversion, libvulkan), Cvoid, (VkDevice, VkSamplerYcbcrConversion, Ptr{VkAllocationCallbacks}), device, ycbcrConversion, pAllocator)
end

function vkCreateDescriptorUpdateTemplate(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
    ccall((:vkCreateDescriptorUpdateTemplate, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorUpdateTemplateCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorUpdateTemplate}), device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
end

function vkDestroyDescriptorUpdateTemplate(device, descriptorUpdateTemplate, pAllocator)
    ccall((:vkDestroyDescriptorUpdateTemplate, libvulkan), Cvoid, (VkDevice, VkDescriptorUpdateTemplate, Ptr{VkAllocationCallbacks}), device, descriptorUpdateTemplate, pAllocator)
end

function vkUpdateDescriptorSetWithTemplate(device, descriptorSet, descriptorUpdateTemplate, pData)
    ccall((:vkUpdateDescriptorSetWithTemplate, libvulkan), Cvoid, (VkDevice, VkDescriptorSet, VkDescriptorUpdateTemplate, Ptr{Cvoid}), device, descriptorSet, descriptorUpdateTemplate, pData)
end

function vkGetPhysicalDeviceExternalBufferProperties(physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
    ccall((:vkGetPhysicalDeviceExternalBufferProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalBufferInfo}, Ptr{VkExternalBufferProperties}), physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
end

function vkGetPhysicalDeviceExternalFenceProperties(physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
    ccall((:vkGetPhysicalDeviceExternalFenceProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalFenceInfo}, Ptr{VkExternalFenceProperties}), physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
end

function vkGetPhysicalDeviceExternalSemaphoreProperties(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
    ccall((:vkGetPhysicalDeviceExternalSemaphoreProperties, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalSemaphoreInfo}, Ptr{VkExternalSemaphoreProperties}), physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
end

function vkGetDescriptorSetLayoutSupport(device, pCreateInfo, pSupport)
    ccall((:vkGetDescriptorSetLayoutSupport, libvulkan), Cvoid, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkDescriptorSetLayoutSupport}), device, pCreateInfo, pSupport)
end

function vkDestroySurfaceKHR(instance, surface, pAllocator)
    ccall((:vkDestroySurfaceKHR, libvulkan), Cvoid, (VkInstance, VkSurfaceKHR, Ptr{VkAllocationCallbacks}), instance, surface, pAllocator)
end

function vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported)
    ccall((:vkGetPhysicalDeviceSurfaceSupportKHR, libvulkan), VkResult, (VkPhysicalDevice, UInt32, VkSurfaceKHR, Ptr{VkBool32}), physicalDevice, queueFamilyIndex, surface, pSupported)
end

function vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{VkSurfaceCapabilitiesKHR}), physicalDevice, surface, pSurfaceCapabilities)
end

function vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats)
    ccall((:vkGetPhysicalDeviceSurfaceFormatsKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{UInt32}, Ptr{VkSurfaceFormatKHR}), physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats)
end

function vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes)
    ccall((:vkGetPhysicalDeviceSurfacePresentModesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{UInt32}, Ptr{VkPresentModeKHR}), physicalDevice, surface, pPresentModeCount, pPresentModes)
end

function vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain)
    ccall((:vkCreateSwapchainKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, pCreateInfo, pAllocator, pSwapchain)
end

function vkDestroySwapchainKHR(device, swapchain, pAllocator)
    ccall((:vkDestroySwapchainKHR, libvulkan), Cvoid, (VkDevice, VkSwapchainKHR, Ptr{VkAllocationCallbacks}), device, swapchain, pAllocator)
end

function vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages)
    ccall((:vkGetSwapchainImagesKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, Ptr{UInt32}, Ptr{VkImage}), device, swapchain, pSwapchainImageCount, pSwapchainImages)
end

function vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex)
    ccall((:vkAcquireNextImageKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, UInt64, VkSemaphore, VkFence, Ptr{UInt32}), device, swapchain, timeout, semaphore, fence, pImageIndex)
end

function vkQueuePresentKHR(queue, pPresentInfo)
    ccall((:vkQueuePresentKHR, libvulkan), VkResult, (VkQueue, Ptr{VkPresentInfoKHR}), queue, pPresentInfo)
end

function vkGetDeviceGroupPresentCapabilitiesKHR(device, pDeviceGroupPresentCapabilities)
    ccall((:vkGetDeviceGroupPresentCapabilitiesKHR, libvulkan), VkResult, (VkDevice, Ptr{VkDeviceGroupPresentCapabilitiesKHR}), device, pDeviceGroupPresentCapabilities)
end

function vkGetDeviceGroupSurfacePresentModesKHR(device, surface, pModes)
    ccall((:vkGetDeviceGroupSurfacePresentModesKHR, libvulkan), VkResult, (VkDevice, VkSurfaceKHR, Ptr{VkDeviceGroupPresentModeFlagsKHR}), device, surface, pModes)
end

function vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, pRectCount, pRects)
    ccall((:vkGetPhysicalDevicePresentRectanglesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{UInt32}, Ptr{VkRect2D}), physicalDevice, surface, pRectCount, pRects)
end

function vkAcquireNextImage2KHR(device, pAcquireInfo, pImageIndex)
    ccall((:vkAcquireNextImage2KHR, libvulkan), VkResult, (VkDevice, Ptr{VkAcquireNextImageInfoKHR}, Ptr{UInt32}), device, pAcquireInfo, pImageIndex)
end

function vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceDisplayPropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayPropertiesKHR}), physicalDevice, pPropertyCount, pProperties)
end

function vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceDisplayPlanePropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayPlanePropertiesKHR}), physicalDevice, pPropertyCount, pProperties)
end

function vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays)
    ccall((:vkGetDisplayPlaneSupportedDisplaysKHR, libvulkan), VkResult, (VkPhysicalDevice, UInt32, Ptr{UInt32}, Ptr{VkDisplayKHR}), physicalDevice, planeIndex, pDisplayCount, pDisplays)
end

function vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties)
    ccall((:vkGetDisplayModePropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{UInt32}, Ptr{VkDisplayModePropertiesKHR}), physicalDevice, display, pPropertyCount, pProperties)
end

function vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode)
    ccall((:vkCreateDisplayModeKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{VkDisplayModeCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkDisplayModeKHR}), physicalDevice, display, pCreateInfo, pAllocator, pMode)
end

function vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities)
    ccall((:vkGetDisplayPlaneCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayModeKHR, UInt32, Ptr{VkDisplayPlaneCapabilitiesKHR}), physicalDevice, mode, planeIndex, pCapabilities)
end

function vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
    ccall((:vkCreateDisplayPlaneSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkDisplaySurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end

function vkCreateSharedSwapchainsKHR(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
    ccall((:vkCreateSharedSwapchainsKHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
end

function vkGetPhysicalDeviceFeatures2KHR(physicalDevice, pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures2}), physicalDevice, pFeatures)
end

function vkGetPhysicalDeviceProperties2KHR(physicalDevice, pProperties)
    ccall((:vkGetPhysicalDeviceProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties2}), physicalDevice, pProperties)
end

function vkGetPhysicalDeviceFormatProperties2KHR(physicalDevice, format, pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties2}), physicalDevice, format, pFormatProperties)
end

function vkGetPhysicalDeviceImageFormatProperties2KHR(physicalDevice, pImageFormatInfo, pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceImageFormatInfo2}, Ptr{VkImageFormatProperties2}), physicalDevice, pImageFormatInfo, pImageFormatProperties)
end

function vkGetPhysicalDeviceQueueFamilyProperties2KHR(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
    ccall((:vkGetPhysicalDeviceQueueFamilyProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkQueueFamilyProperties2}), physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
end

function vkGetPhysicalDeviceMemoryProperties2KHR(physicalDevice, pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties2}), physicalDevice, pMemoryProperties)
end

function vkGetPhysicalDeviceSparseImageFormatProperties2KHR(physicalDevice, pFormatInfo, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceSparseImageFormatProperties2KHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSparseImageFormatInfo2}, Ptr{UInt32}, Ptr{VkSparseImageFormatProperties2}), physicalDevice, pFormatInfo, pPropertyCount, pProperties)
end

function vkGetDeviceGroupPeerMemoryFeaturesKHR(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
    ccall((:vkGetDeviceGroupPeerMemoryFeaturesKHR, libvulkan), Cvoid, (VkDevice, UInt32, UInt32, UInt32, Ptr{VkPeerMemoryFeatureFlags}), device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures)
end

function vkCmdSetDeviceMaskKHR(commandBuffer, deviceMask)
    ccall((:vkCmdSetDeviceMaskKHR, libvulkan), Cvoid, (VkCommandBuffer, UInt32), commandBuffer, deviceMask)
end

function vkCmdDispatchBaseKHR(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
    ccall((:vkCmdDispatchBaseKHR, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32), commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ)
end

function vkTrimCommandPoolKHR(device, commandPool, flags)
    ccall((:vkTrimCommandPoolKHR, libvulkan), Cvoid, (VkDevice, VkCommandPool, VkCommandPoolTrimFlags), device, commandPool, flags)
end

function vkEnumeratePhysicalDeviceGroupsKHR(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
    ccall((:vkEnumeratePhysicalDeviceGroupsKHR, libvulkan), VkResult, (VkInstance, Ptr{UInt32}, Ptr{VkPhysicalDeviceGroupProperties}), instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties)
end

function vkGetPhysicalDeviceExternalBufferPropertiesKHR(physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
    ccall((:vkGetPhysicalDeviceExternalBufferPropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalBufferInfo}, Ptr{VkExternalBufferProperties}), physicalDevice, pExternalBufferInfo, pExternalBufferProperties)
end

function vkGetMemoryFdKHR(device, pGetFdInfo, pFd)
    ccall((:vkGetMemoryFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkMemoryGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function vkGetMemoryFdPropertiesKHR(device, handleType, fd, pMemoryFdProperties)
    ccall((:vkGetMemoryFdPropertiesKHR, libvulkan), VkResult, (VkDevice, VkExternalMemoryHandleTypeFlagBits, Cint, Ptr{VkMemoryFdPropertiesKHR}), device, handleType, fd, pMemoryFdProperties)
end

function vkGetPhysicalDeviceExternalSemaphorePropertiesKHR(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
    ccall((:vkGetPhysicalDeviceExternalSemaphorePropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalSemaphoreInfo}, Ptr{VkExternalSemaphoreProperties}), physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties)
end

function vkImportSemaphoreFdKHR(device, pImportSemaphoreFdInfo)
    ccall((:vkImportSemaphoreFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkImportSemaphoreFdInfoKHR}), device, pImportSemaphoreFdInfo)
end

function vkGetSemaphoreFdKHR(device, pGetFdInfo, pFd)
    ccall((:vkGetSemaphoreFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function vkCmdPushDescriptorSetKHR(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites)
    ccall((:vkCmdPushDescriptorSetKHR, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineBindPoint, VkPipelineLayout, UInt32, UInt32, Ptr{VkWriteDescriptorSet}), commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites)
end

function vkCmdPushDescriptorSetWithTemplateKHR(commandBuffer, descriptorUpdateTemplate, layout, set, pData)
    ccall((:vkCmdPushDescriptorSetWithTemplateKHR, libvulkan), Cvoid, (VkCommandBuffer, VkDescriptorUpdateTemplate, VkPipelineLayout, UInt32, Ptr{Cvoid}), commandBuffer, descriptorUpdateTemplate, layout, set, pData)
end

function vkCreateDescriptorUpdateTemplateKHR(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
    ccall((:vkCreateDescriptorUpdateTemplateKHR, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorUpdateTemplateCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorUpdateTemplate}), device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate)
end

function vkDestroyDescriptorUpdateTemplateKHR(device, descriptorUpdateTemplate, pAllocator)
    ccall((:vkDestroyDescriptorUpdateTemplateKHR, libvulkan), Cvoid, (VkDevice, VkDescriptorUpdateTemplate, Ptr{VkAllocationCallbacks}), device, descriptorUpdateTemplate, pAllocator)
end

function vkUpdateDescriptorSetWithTemplateKHR(device, descriptorSet, descriptorUpdateTemplate, pData)
    ccall((:vkUpdateDescriptorSetWithTemplateKHR, libvulkan), Cvoid, (VkDevice, VkDescriptorSet, VkDescriptorUpdateTemplate, Ptr{Cvoid}), device, descriptorSet, descriptorUpdateTemplate, pData)
end

function vkCreateRenderPass2KHR(device, pCreateInfo, pAllocator, pRenderPass)
    ccall((:vkCreateRenderPass2KHR, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo2KHR}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end

function vkCmdBeginRenderPass2KHR(commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
    ccall((:vkCmdBeginRenderPass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, Ptr{VkSubpassBeginInfoKHR}), commandBuffer, pRenderPassBegin, pSubpassBeginInfo)
end

function vkCmdNextSubpass2KHR(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
    ccall((:vkCmdNextSubpass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassBeginInfoKHR}, Ptr{VkSubpassEndInfoKHR}), commandBuffer, pSubpassBeginInfo, pSubpassEndInfo)
end

function vkCmdEndRenderPass2KHR(commandBuffer, pSubpassEndInfo)
    ccall((:vkCmdEndRenderPass2KHR, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSubpassEndInfoKHR}), commandBuffer, pSubpassEndInfo)
end

function vkGetSwapchainStatusKHR(device, swapchain)
    ccall((:vkGetSwapchainStatusKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR), device, swapchain)
end

function vkGetPhysicalDeviceExternalFencePropertiesKHR(physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
    ccall((:vkGetPhysicalDeviceExternalFencePropertiesKHR, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkPhysicalDeviceExternalFenceInfo}, Ptr{VkExternalFenceProperties}), physicalDevice, pExternalFenceInfo, pExternalFenceProperties)
end

function vkImportFenceFdKHR(device, pImportFenceFdInfo)
    ccall((:vkImportFenceFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkImportFenceFdInfoKHR}), device, pImportFenceFdInfo)
end

function vkGetFenceFdKHR(device, pGetFdInfo, pFd)
    ccall((:vkGetFenceFdKHR, libvulkan), VkResult, (VkDevice, Ptr{VkFenceGetFdInfoKHR}, Ptr{Cint}), device, pGetFdInfo, pFd)
end

function vkGetPhysicalDeviceSurfaceCapabilities2KHR(physicalDevice, pSurfaceInfo, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilities2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSurfaceInfo2KHR}, Ptr{VkSurfaceCapabilities2KHR}), physicalDevice, pSurfaceInfo, pSurfaceCapabilities)
end

function vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
    ccall((:vkGetPhysicalDeviceSurfaceFormats2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkPhysicalDeviceSurfaceInfo2KHR}, Ptr{UInt32}, Ptr{VkSurfaceFormat2KHR}), physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats)
end

function vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceDisplayProperties2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayProperties2KHR}), physicalDevice, pPropertyCount, pProperties)
end

function vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceDisplayPlaneProperties2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayPlaneProperties2KHR}), physicalDevice, pPropertyCount, pProperties)
end

function vkGetDisplayModeProperties2KHR(physicalDevice, display, pPropertyCount, pProperties)
    ccall((:vkGetDisplayModeProperties2KHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{UInt32}, Ptr{VkDisplayModeProperties2KHR}), physicalDevice, display, pPropertyCount, pProperties)
end

function vkGetDisplayPlaneCapabilities2KHR(physicalDevice, pDisplayPlaneInfo, pCapabilities)
    ccall((:vkGetDisplayPlaneCapabilities2KHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkDisplayPlaneInfo2KHR}, Ptr{VkDisplayPlaneCapabilities2KHR}), physicalDevice, pDisplayPlaneInfo, pCapabilities)
end

function vkGetImageMemoryRequirements2KHR(device, pInfo, pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkImageMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function vkGetBufferMemoryRequirements2KHR(device, pInfo, pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkBufferMemoryRequirementsInfo2}, Ptr{VkMemoryRequirements2}), device, pInfo, pMemoryRequirements)
end

function vkGetImageSparseMemoryRequirements2KHR(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
    ccall((:vkGetImageSparseMemoryRequirements2KHR, libvulkan), Cvoid, (VkDevice, Ptr{VkImageSparseMemoryRequirementsInfo2}, Ptr{UInt32}, Ptr{VkSparseImageMemoryRequirements2}), device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
end

function vkCreateSamplerYcbcrConversionKHR(device, pCreateInfo, pAllocator, pYcbcrConversion)
    ccall((:vkCreateSamplerYcbcrConversionKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerYcbcrConversionCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSamplerYcbcrConversion}), device, pCreateInfo, pAllocator, pYcbcrConversion)
end

function vkDestroySamplerYcbcrConversionKHR(device, ycbcrConversion, pAllocator)
    ccall((:vkDestroySamplerYcbcrConversionKHR, libvulkan), Cvoid, (VkDevice, VkSamplerYcbcrConversion, Ptr{VkAllocationCallbacks}), device, ycbcrConversion, pAllocator)
end

function vkBindBufferMemory2KHR(device, bindInfoCount, pBindInfos)
    ccall((:vkBindBufferMemory2KHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindBufferMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function vkBindImageMemory2KHR(device, bindInfoCount, pBindInfos)
    ccall((:vkBindImageMemory2KHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindImageMemoryInfo}), device, bindInfoCount, pBindInfos)
end

function vkGetDescriptorSetLayoutSupportKHR(device, pCreateInfo, pSupport)
    ccall((:vkGetDescriptorSetLayoutSupportKHR, libvulkan), Cvoid, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkDescriptorSetLayoutSupport}), device, pCreateInfo, pSupport)
end

function vkCmdDrawIndirectCountKHR(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndirectCountKHR, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
end

function vkCmdDrawIndexedIndirectCountKHR(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndexedIndirectCountKHR, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
end

function vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback)
    ccall((:vkCreateDebugReportCallbackEXT, libvulkan), VkResult, (VkInstance, Ptr{VkDebugReportCallbackCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugReportCallbackEXT}), instance, pCreateInfo, pAllocator, pCallback)
end

function vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator)
    ccall((:vkDestroyDebugReportCallbackEXT, libvulkan), Cvoid, (VkInstance, VkDebugReportCallbackEXT, Ptr{VkAllocationCallbacks}), instance, callback, pAllocator)
end

function vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
    ccall((:vkDebugReportMessageEXT, libvulkan), Cvoid, (VkInstance, VkDebugReportFlagsEXT, VkDebugReportObjectTypeEXT, UInt64, Csize_t, Int32, Cstring, Cstring), instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
end

function vkDebugMarkerSetObjectTagEXT(device, pTagInfo)
    ccall((:vkDebugMarkerSetObjectTagEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugMarkerObjectTagInfoEXT}), device, pTagInfo)
end

function vkDebugMarkerSetObjectNameEXT(device, pNameInfo)
    ccall((:vkDebugMarkerSetObjectNameEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugMarkerObjectNameInfoEXT}), device, pNameInfo)
end

function vkCmdDebugMarkerBeginEXT(commandBuffer, pMarkerInfo)
    ccall((:vkCmdDebugMarkerBeginEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugMarkerMarkerInfoEXT}), commandBuffer, pMarkerInfo)
end

function vkCmdDebugMarkerEndEXT(commandBuffer)
    ccall((:vkCmdDebugMarkerEndEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function vkCmdDebugMarkerInsertEXT(commandBuffer, pMarkerInfo)
    ccall((:vkCmdDebugMarkerInsertEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugMarkerMarkerInfoEXT}), commandBuffer, pMarkerInfo)
end

function vkCmdBindTransformFeedbackBuffersEXT(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes)
    ccall((:vkCmdBindTransformFeedbackBuffersEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}, Ptr{VkDeviceSize}), commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes)
end

function vkCmdBeginTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    ccall((:vkCmdBeginTransformFeedbackEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
end

function vkCmdEndTransformFeedbackEXT(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
    ccall((:vkCmdEndTransformFeedbackEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets)
end

function vkCmdBeginQueryIndexedEXT(commandBuffer, queryPool, query, flags, index)
    ccall((:vkCmdBeginQueryIndexedEXT, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, VkQueryControlFlags, UInt32), commandBuffer, queryPool, query, flags, index)
end

function vkCmdEndQueryIndexedEXT(commandBuffer, queryPool, query, index)
    ccall((:vkCmdEndQueryIndexedEXT, libvulkan), Cvoid, (VkCommandBuffer, VkQueryPool, UInt32, UInt32), commandBuffer, queryPool, query, index)
end

function vkCmdDrawIndirectByteCountEXT(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride)
    ccall((:vkCmdDrawIndirectByteCountEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride)
end

function vkCmdDrawIndirectCountAMD(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndirectCountAMD, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
end

function vkCmdDrawIndexedIndirectCountAMD(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawIndexedIndirectCountAMD, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
end

function vkGetShaderInfoAMD(device, pipeline, shaderStage, infoType, pInfoSize, pInfo)
    ccall((:vkGetShaderInfoAMD, libvulkan), VkResult, (VkDevice, VkPipeline, VkShaderStageFlagBits, VkShaderInfoTypeAMD, Ptr{Csize_t}, Ptr{Cvoid}), device, pipeline, shaderStage, infoType, pInfoSize, pInfo)
end

function vkGetPhysicalDeviceExternalImageFormatPropertiesNV(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties)
    ccall((:vkGetPhysicalDeviceExternalImageFormatPropertiesNV, libvulkan), VkResult, (VkPhysicalDevice, VkFormat, VkImageType, VkImageTiling, VkImageUsageFlags, VkImageCreateFlags, VkExternalMemoryHandleTypeFlagsNV, Ptr{VkExternalImageFormatPropertiesNV}), physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties)
end

function vkCmdBeginConditionalRenderingEXT(commandBuffer, pConditionalRenderingBegin)
    ccall((:vkCmdBeginConditionalRenderingEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkConditionalRenderingBeginInfoEXT}), commandBuffer, pConditionalRenderingBegin)
end

function vkCmdEndConditionalRenderingEXT(commandBuffer)
    ccall((:vkCmdEndConditionalRenderingEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function vkCmdProcessCommandsNVX(commandBuffer, pProcessCommandsInfo)
    ccall((:vkCmdProcessCommandsNVX, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkCmdProcessCommandsInfoNVX}), commandBuffer, pProcessCommandsInfo)
end

function vkCmdReserveSpaceForCommandsNVX(commandBuffer, pReserveSpaceInfo)
    ccall((:vkCmdReserveSpaceForCommandsNVX, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkCmdReserveSpaceForCommandsInfoNVX}), commandBuffer, pReserveSpaceInfo)
end

function vkCreateIndirectCommandsLayoutNVX(device, pCreateInfo, pAllocator, pIndirectCommandsLayout)
    ccall((:vkCreateIndirectCommandsLayoutNVX, libvulkan), VkResult, (VkDevice, Ptr{VkIndirectCommandsLayoutCreateInfoNVX}, Ptr{VkAllocationCallbacks}, Ptr{VkIndirectCommandsLayoutNVX}), device, pCreateInfo, pAllocator, pIndirectCommandsLayout)
end

function vkDestroyIndirectCommandsLayoutNVX(device, indirectCommandsLayout, pAllocator)
    ccall((:vkDestroyIndirectCommandsLayoutNVX, libvulkan), Cvoid, (VkDevice, VkIndirectCommandsLayoutNVX, Ptr{VkAllocationCallbacks}), device, indirectCommandsLayout, pAllocator)
end

function vkCreateObjectTableNVX(device, pCreateInfo, pAllocator, pObjectTable)
    ccall((:vkCreateObjectTableNVX, libvulkan), VkResult, (VkDevice, Ptr{VkObjectTableCreateInfoNVX}, Ptr{VkAllocationCallbacks}, Ptr{VkObjectTableNVX}), device, pCreateInfo, pAllocator, pObjectTable)
end

function vkDestroyObjectTableNVX(device, objectTable, pAllocator)
    ccall((:vkDestroyObjectTableNVX, libvulkan), Cvoid, (VkDevice, VkObjectTableNVX, Ptr{VkAllocationCallbacks}), device, objectTable, pAllocator)
end

function vkRegisterObjectsNVX(device, objectTable, objectCount, ppObjectTableEntries, pObjectIndices)
    ccall((:vkRegisterObjectsNVX, libvulkan), VkResult, (VkDevice, VkObjectTableNVX, UInt32, Ptr{Ptr{VkObjectTableEntryNVX}}, Ptr{UInt32}), device, objectTable, objectCount, ppObjectTableEntries, pObjectIndices)
end

function vkUnregisterObjectsNVX(device, objectTable, objectCount, pObjectEntryTypes, pObjectIndices)
    ccall((:vkUnregisterObjectsNVX, libvulkan), VkResult, (VkDevice, VkObjectTableNVX, UInt32, Ptr{VkObjectEntryTypeNVX}, Ptr{UInt32}), device, objectTable, objectCount, pObjectEntryTypes, pObjectIndices)
end

function vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX(physicalDevice, pFeatures, pLimits)
    ccall((:vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX, libvulkan), Cvoid, (VkPhysicalDevice, Ptr{VkDeviceGeneratedCommandsFeaturesNVX}, Ptr{VkDeviceGeneratedCommandsLimitsNVX}), physicalDevice, pFeatures, pLimits)
end

function vkCmdSetViewportWScalingNV(commandBuffer, firstViewport, viewportCount, pViewportWScalings)
    ccall((:vkCmdSetViewportWScalingNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkViewportWScalingNV}), commandBuffer, firstViewport, viewportCount, pViewportWScalings)
end

function vkReleaseDisplayEXT(physicalDevice, display)
    ccall((:vkReleaseDisplayEXT, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR), physicalDevice, display)
end

function vkGetPhysicalDeviceSurfaceCapabilities2EXT(physicalDevice, surface, pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilities2EXT, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{VkSurfaceCapabilities2EXT}), physicalDevice, surface, pSurfaceCapabilities)
end

function vkDisplayPowerControlEXT(device, display, pDisplayPowerInfo)
    ccall((:vkDisplayPowerControlEXT, libvulkan), VkResult, (VkDevice, VkDisplayKHR, Ptr{VkDisplayPowerInfoEXT}), device, display, pDisplayPowerInfo)
end

function vkRegisterDeviceEventEXT(device, pDeviceEventInfo, pAllocator, pFence)
    ccall((:vkRegisterDeviceEventEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDeviceEventInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, pDeviceEventInfo, pAllocator, pFence)
end

function vkRegisterDisplayEventEXT(device, display, pDisplayEventInfo, pAllocator, pFence)
    ccall((:vkRegisterDisplayEventEXT, libvulkan), VkResult, (VkDevice, VkDisplayKHR, Ptr{VkDisplayEventInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, display, pDisplayEventInfo, pAllocator, pFence)
end

function vkGetSwapchainCounterEXT(device, swapchain, counter, pCounterValue)
    ccall((:vkGetSwapchainCounterEXT, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, VkSurfaceCounterFlagBitsEXT, Ptr{UInt64}), device, swapchain, counter, pCounterValue)
end

function vkGetRefreshCycleDurationGOOGLE(device, swapchain, pDisplayTimingProperties)
    ccall((:vkGetRefreshCycleDurationGOOGLE, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, Ptr{VkRefreshCycleDurationGOOGLE}), device, swapchain, pDisplayTimingProperties)
end

function vkGetPastPresentationTimingGOOGLE(device, swapchain, pPresentationTimingCount, pPresentationTimings)
    ccall((:vkGetPastPresentationTimingGOOGLE, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, Ptr{UInt32}, Ptr{VkPastPresentationTimingGOOGLE}), device, swapchain, pPresentationTimingCount, pPresentationTimings)
end

function vkCmdSetDiscardRectangleEXT(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles)
    ccall((:vkCmdSetDiscardRectangleEXT, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles)
end

function vkSetHdrMetadataEXT(device, swapchainCount, pSwapchains, pMetadata)
    ccall((:vkSetHdrMetadataEXT, libvulkan), Cvoid, (VkDevice, UInt32, Ptr{VkSwapchainKHR}, Ptr{VkHdrMetadataEXT}), device, swapchainCount, pSwapchains, pMetadata)
end

function vkSetDebugUtilsObjectNameEXT(device, pNameInfo)
    ccall((:vkSetDebugUtilsObjectNameEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugUtilsObjectNameInfoEXT}), device, pNameInfo)
end

function vkSetDebugUtilsObjectTagEXT(device, pTagInfo)
    ccall((:vkSetDebugUtilsObjectTagEXT, libvulkan), VkResult, (VkDevice, Ptr{VkDebugUtilsObjectTagInfoEXT}), device, pTagInfo)
end

function vkQueueBeginDebugUtilsLabelEXT(queue, pLabelInfo)
    ccall((:vkQueueBeginDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue, Ptr{VkDebugUtilsLabelEXT}), queue, pLabelInfo)
end

function vkQueueEndDebugUtilsLabelEXT(queue)
    ccall((:vkQueueEndDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue,), queue)
end

function vkQueueInsertDebugUtilsLabelEXT(queue, pLabelInfo)
    ccall((:vkQueueInsertDebugUtilsLabelEXT, libvulkan), Cvoid, (VkQueue, Ptr{VkDebugUtilsLabelEXT}), queue, pLabelInfo)
end

function vkCmdBeginDebugUtilsLabelEXT(commandBuffer, pLabelInfo)
    ccall((:vkCmdBeginDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugUtilsLabelEXT}), commandBuffer, pLabelInfo)
end

function vkCmdEndDebugUtilsLabelEXT(commandBuffer)
    ccall((:vkCmdEndDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer,), commandBuffer)
end

function vkCmdInsertDebugUtilsLabelEXT(commandBuffer, pLabelInfo)
    ccall((:vkCmdInsertDebugUtilsLabelEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkDebugUtilsLabelEXT}), commandBuffer, pLabelInfo)
end

function vkCreateDebugUtilsMessengerEXT(instance, pCreateInfo, pAllocator, pMessenger)
    ccall((:vkCreateDebugUtilsMessengerEXT, libvulkan), VkResult, (VkInstance, Ptr{VkDebugUtilsMessengerCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugUtilsMessengerEXT}), instance, pCreateInfo, pAllocator, pMessenger)
end

function vkDestroyDebugUtilsMessengerEXT(instance, messenger, pAllocator)
    ccall((:vkDestroyDebugUtilsMessengerEXT, libvulkan), Cvoid, (VkInstance, VkDebugUtilsMessengerEXT, Ptr{VkAllocationCallbacks}), instance, messenger, pAllocator)
end

function vkSubmitDebugUtilsMessageEXT(instance, messageSeverity, messageTypes, pCallbackData)
    ccall((:vkSubmitDebugUtilsMessageEXT, libvulkan), Cvoid, (VkInstance, VkDebugUtilsMessageSeverityFlagBitsEXT, VkDebugUtilsMessageTypeFlagsEXT, Ptr{VkDebugUtilsMessengerCallbackDataEXT}), instance, messageSeverity, messageTypes, pCallbackData)
end

function vkCmdSetSampleLocationsEXT(commandBuffer, pSampleLocationsInfo)
    ccall((:vkCmdSetSampleLocationsEXT, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkSampleLocationsInfoEXT}), commandBuffer, pSampleLocationsInfo)
end

function vkGetPhysicalDeviceMultisamplePropertiesEXT(physicalDevice, samples, pMultisampleProperties)
    ccall((:vkGetPhysicalDeviceMultisamplePropertiesEXT, libvulkan), Cvoid, (VkPhysicalDevice, VkSampleCountFlagBits, Ptr{VkMultisamplePropertiesEXT}), physicalDevice, samples, pMultisampleProperties)
end

function vkGetImageDrmFormatModifierPropertiesEXT(device, image, pProperties)
    ccall((:vkGetImageDrmFormatModifierPropertiesEXT, libvulkan), VkResult, (VkDevice, VkImage, Ptr{VkImageDrmFormatModifierPropertiesEXT}), device, image, pProperties)
end

function vkCreateValidationCacheEXT(device, pCreateInfo, pAllocator, pValidationCache)
    ccall((:vkCreateValidationCacheEXT, libvulkan), VkResult, (VkDevice, Ptr{VkValidationCacheCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkValidationCacheEXT}), device, pCreateInfo, pAllocator, pValidationCache)
end

function vkDestroyValidationCacheEXT(device, validationCache, pAllocator)
    ccall((:vkDestroyValidationCacheEXT, libvulkan), Cvoid, (VkDevice, VkValidationCacheEXT, Ptr{VkAllocationCallbacks}), device, validationCache, pAllocator)
end

function vkMergeValidationCachesEXT(device, dstCache, srcCacheCount, pSrcCaches)
    ccall((:vkMergeValidationCachesEXT, libvulkan), VkResult, (VkDevice, VkValidationCacheEXT, UInt32, Ptr{VkValidationCacheEXT}), device, dstCache, srcCacheCount, pSrcCaches)
end

function vkGetValidationCacheDataEXT(device, validationCache, pDataSize, pData)
    ccall((:vkGetValidationCacheDataEXT, libvulkan), VkResult, (VkDevice, VkValidationCacheEXT, Ptr{Csize_t}, Ptr{Cvoid}), device, validationCache, pDataSize, pData)
end

function vkCmdBindShadingRateImageNV(commandBuffer, imageView, imageLayout)
    ccall((:vkCmdBindShadingRateImageNV, libvulkan), Cvoid, (VkCommandBuffer, VkImageView, VkImageLayout), commandBuffer, imageView, imageLayout)
end

function vkCmdSetViewportShadingRatePaletteNV(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes)
    ccall((:vkCmdSetViewportShadingRatePaletteNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkShadingRatePaletteNV}), commandBuffer, firstViewport, viewportCount, pShadingRatePalettes)
end

function vkCmdSetCoarseSampleOrderNV(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders)
    ccall((:vkCmdSetCoarseSampleOrderNV, libvulkan), Cvoid, (VkCommandBuffer, VkCoarseSampleOrderTypeNV, UInt32, Ptr{VkCoarseSampleOrderCustomNV}), commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders)
end

function vkCreateAccelerationStructureNV(device, pCreateInfo, pAllocator, pAccelerationStructure)
    ccall((:vkCreateAccelerationStructureNV, libvulkan), VkResult, (VkDevice, Ptr{VkAccelerationStructureCreateInfoNV}, Ptr{VkAllocationCallbacks}, Ptr{VkAccelerationStructureNV}), device, pCreateInfo, pAllocator, pAccelerationStructure)
end

function vkDestroyAccelerationStructureNV(device, accelerationStructure, pAllocator)
    ccall((:vkDestroyAccelerationStructureNV, libvulkan), Cvoid, (VkDevice, VkAccelerationStructureNV, Ptr{VkAllocationCallbacks}), device, accelerationStructure, pAllocator)
end

function vkGetAccelerationStructureMemoryRequirementsNV(device, pInfo, pMemoryRequirements)
    ccall((:vkGetAccelerationStructureMemoryRequirementsNV, libvulkan), Cvoid, (VkDevice, Ptr{VkAccelerationStructureMemoryRequirementsInfoNV}, Ptr{VkMemoryRequirements2KHR}), device, pInfo, pMemoryRequirements)
end

function vkBindAccelerationStructureMemoryNV(device, bindInfoCount, pBindInfos)
    ccall((:vkBindAccelerationStructureMemoryNV, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkBindAccelerationStructureMemoryInfoNV}), device, bindInfoCount, pBindInfos)
end

function vkCmdBuildAccelerationStructureNV(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset)
    ccall((:vkCmdBuildAccelerationStructureNV, libvulkan), Cvoid, (VkCommandBuffer, Ptr{VkAccelerationStructureInfoNV}, VkBuffer, VkDeviceSize, VkBool32, VkAccelerationStructureNV, VkAccelerationStructureNV, VkBuffer, VkDeviceSize), commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset)
end

function vkCmdCopyAccelerationStructureNV(commandBuffer, dst, src, mode)
    ccall((:vkCmdCopyAccelerationStructureNV, libvulkan), Cvoid, (VkCommandBuffer, VkAccelerationStructureNV, VkAccelerationStructureNV, VkCopyAccelerationStructureModeNV), commandBuffer, dst, src, mode)
end

function vkCmdTraceRaysNV(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
    ccall((:vkCmdTraceRaysNV, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, VkBuffer, VkDeviceSize, VkDeviceSize, UInt32, UInt32, UInt32), commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth)
end

function vkCreateRayTracingPipelinesNV(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
    ccall((:vkCreateRayTracingPipelinesNV, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkRayTracingPipelineCreateInfoNV}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end

function vkGetRayTracingShaderGroupHandlesNV(device, pipeline, firstGroup, groupCount, dataSize, pData)
    ccall((:vkGetRayTracingShaderGroupHandlesNV, libvulkan), VkResult, (VkDevice, VkPipeline, UInt32, UInt32, Csize_t, Ptr{Cvoid}), device, pipeline, firstGroup, groupCount, dataSize, pData)
end

function vkGetAccelerationStructureHandleNV(device, accelerationStructure, dataSize, pData)
    ccall((:vkGetAccelerationStructureHandleNV, libvulkan), VkResult, (VkDevice, VkAccelerationStructureNV, Csize_t, Ptr{Cvoid}), device, accelerationStructure, dataSize, pData)
end

function vkCmdWriteAccelerationStructuresPropertiesNV(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
    ccall((:vkCmdWriteAccelerationStructuresPropertiesNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, Ptr{VkAccelerationStructureNV}, VkQueryType, VkQueryPool, UInt32), commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery)
end

function vkCompileDeferredNV(device, pipeline, shader)
    ccall((:vkCompileDeferredNV, libvulkan), VkResult, (VkDevice, VkPipeline, UInt32), device, pipeline, shader)
end

function vkGetMemoryHostPointerPropertiesEXT(device, handleType, pHostPointer, pMemoryHostPointerProperties)
    ccall((:vkGetMemoryHostPointerPropertiesEXT, libvulkan), VkResult, (VkDevice, VkExternalMemoryHandleTypeFlagBits, Ptr{Cvoid}, Ptr{VkMemoryHostPointerPropertiesEXT}), device, handleType, pHostPointer, pMemoryHostPointerProperties)
end

function vkCmdWriteBufferMarkerAMD(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker)
    ccall((:vkCmdWriteBufferMarkerAMD, libvulkan), Cvoid, (VkCommandBuffer, VkPipelineStageFlagBits, VkBuffer, VkDeviceSize, UInt32), commandBuffer, pipelineStage, dstBuffer, dstOffset, marker)
end

function vkGetPhysicalDeviceCalibrateableTimeDomainsEXT(physicalDevice, pTimeDomainCount, pTimeDomains)
    ccall((:vkGetPhysicalDeviceCalibrateableTimeDomainsEXT, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkTimeDomainEXT}), physicalDevice, pTimeDomainCount, pTimeDomains)
end

function vkGetCalibratedTimestampsEXT(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation)
    ccall((:vkGetCalibratedTimestampsEXT, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkCalibratedTimestampInfoEXT}, Ptr{UInt64}, Ptr{UInt64}), device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation)
end

function vkCmdDrawMeshTasksNV(commandBuffer, taskCount, firstTask)
    ccall((:vkCmdDrawMeshTasksNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32), commandBuffer, taskCount, firstTask)
end

function vkCmdDrawMeshTasksIndirectNV(commandBuffer, buffer, offset, drawCount, stride)
    ccall((:vkCmdDrawMeshTasksIndirectNV, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end

function vkCmdDrawMeshTasksIndirectCountNV(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
    ccall((:vkCmdDrawMeshTasksIndirectCountNV, libvulkan), Cvoid, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride)
end

function vkCmdSetExclusiveScissorNV(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors)
    ccall((:vkCmdSetExclusiveScissorNV, libvulkan), Cvoid, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors)
end

function vkCmdSetCheckpointNV(commandBuffer, pCheckpointMarker)
    ccall((:vkCmdSetCheckpointNV, libvulkan), Cvoid, (VkCommandBuffer, Ptr{Cvoid}), commandBuffer, pCheckpointMarker)
end

function vkGetQueueCheckpointDataNV(queue, pCheckpointDataCount, pCheckpointData)
    ccall((:vkGetQueueCheckpointDataNV, libvulkan), Cvoid, (VkQueue, Ptr{UInt32}, Ptr{VkCheckpointDataNV}), queue, pCheckpointDataCount, pCheckpointData)
end

function vkGetBufferDeviceAddressEXT(device, pInfo)
    ccall((:vkGetBufferDeviceAddressEXT, libvulkan), VkDeviceAddress, (VkDevice, Ptr{VkBufferDeviceAddressInfoEXT}), device, pInfo)
end

function vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, pPropertyCount, pProperties)
    ccall((:vkGetPhysicalDeviceCooperativeMatrixPropertiesNV, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkCooperativeMatrixPropertiesNV}), physicalDevice, pPropertyCount, pProperties)
end
