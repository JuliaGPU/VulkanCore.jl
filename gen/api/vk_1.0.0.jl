# Julia wrapper for header: Vulkan-Docs/src/vulkan/vk_platform.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

# Julia wrapper for header: Vulkan-Docs/src/vulkan/vulkan.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function vkCreateInstance(pCreateInfo,pAllocator,pInstance)
    ccall((:vkCreateInstance,libvulkan),VkResult,(Ptr{VkInstanceCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkInstance}),pCreateInfo,pAllocator,pInstance)
end

function vkDestroyInstance(instance,pAllocator)
    ccall((:vkDestroyInstance,libvulkan),Void,(VkInstance,Ptr{VkAllocationCallbacks}),instance,pAllocator)
end

function vkEnumeratePhysicalDevices(instance,pPhysicalDeviceCount,pPhysicalDevices)
    ccall((:vkEnumeratePhysicalDevices,libvulkan),VkResult,(VkInstance,Ptr{UInt32},Ptr{VkPhysicalDevice}),instance,pPhysicalDeviceCount,pPhysicalDevices)
end

function vkGetPhysicalDeviceFeatures(physicalDevice,pFeatures)
    ccall((:vkGetPhysicalDeviceFeatures,libvulkan),Void,(VkPhysicalDevice,Ptr{VkPhysicalDeviceFeatures}),physicalDevice,pFeatures)
end

function vkGetPhysicalDeviceFormatProperties(physicalDevice,format,pFormatProperties)
    ccall((:vkGetPhysicalDeviceFormatProperties,libvulkan),Void,(VkPhysicalDevice,VkFormat,Ptr{VkFormatProperties}),physicalDevice,format,pFormatProperties)
end

function vkGetPhysicalDeviceImageFormatProperties(physicalDevice,format,_type,tiling,usage,flags,pImageFormatProperties)
    ccall((:vkGetPhysicalDeviceImageFormatProperties,libvulkan),VkResult,(VkPhysicalDevice,VkFormat,VkImageType,VkImageTiling,VkImageUsageFlags,VkImageCreateFlags,Ptr{VkImageFormatProperties}),physicalDevice,format,_type,tiling,usage,flags,pImageFormatProperties)
end

function vkGetPhysicalDeviceProperties(physicalDevice,pProperties)
    ccall((:vkGetPhysicalDeviceProperties,libvulkan),Void,(VkPhysicalDevice,Ptr{VkPhysicalDeviceProperties}),physicalDevice,pProperties)
end

function vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice,pQueueFamilyPropertyCount,pQueueFamilyProperties)
    ccall((:vkGetPhysicalDeviceQueueFamilyProperties,libvulkan),Void,(VkPhysicalDevice,Ptr{UInt32},Ptr{VkQueueFamilyProperties}),physicalDevice,pQueueFamilyPropertyCount,pQueueFamilyProperties)
end

function vkGetPhysicalDeviceMemoryProperties(physicalDevice,pMemoryProperties)
    ccall((:vkGetPhysicalDeviceMemoryProperties,libvulkan),Void,(VkPhysicalDevice,Ptr{VkPhysicalDeviceMemoryProperties}),physicalDevice,pMemoryProperties)
end

function vkGetInstanceProcAddr(instance,pName)
    ccall((:vkGetInstanceProcAddr,libvulkan),PFN_vkVoidFunction,(VkInstance,Cstring),instance,pName)
end

function vkGetDeviceProcAddr(device,pName)
    ccall((:vkGetDeviceProcAddr,libvulkan),PFN_vkVoidFunction,(VkDevice,Cstring),device,pName)
end

function vkCreateDevice(physicalDevice,pCreateInfo,pAllocator,pDevice)
    ccall((:vkCreateDevice,libvulkan),VkResult,(VkPhysicalDevice,Ptr{VkDeviceCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkDevice}),physicalDevice,pCreateInfo,pAllocator,pDevice)
end

function vkDestroyDevice(device,pAllocator)
    ccall((:vkDestroyDevice,libvulkan),Void,(VkDevice,Ptr{VkAllocationCallbacks}),device,pAllocator)
end

function vkEnumerateInstanceExtensionProperties(pLayerName,pPropertyCount,pProperties)
    ccall((:vkEnumerateInstanceExtensionProperties,libvulkan),VkResult,(Cstring,Ptr{UInt32},Ptr{VkExtensionProperties}),pLayerName,pPropertyCount,pProperties)
end

function vkEnumerateDeviceExtensionProperties(physicalDevice,pLayerName,pPropertyCount,pProperties)
    ccall((:vkEnumerateDeviceExtensionProperties,libvulkan),VkResult,(VkPhysicalDevice,Cstring,Ptr{UInt32},Ptr{VkExtensionProperties}),physicalDevice,pLayerName,pPropertyCount,pProperties)
end

function vkEnumerateInstanceLayerProperties(pPropertyCount,pProperties)
    ccall((:vkEnumerateInstanceLayerProperties,libvulkan),VkResult,(Ptr{UInt32},Ptr{VkLayerProperties}),pPropertyCount,pProperties)
end

function vkEnumerateDeviceLayerProperties(physicalDevice,pPropertyCount,pProperties)
    ccall((:vkEnumerateDeviceLayerProperties,libvulkan),VkResult,(VkPhysicalDevice,Ptr{UInt32},Ptr{VkLayerProperties}),physicalDevice,pPropertyCount,pProperties)
end

function vkGetDeviceQueue(device,queueFamilyIndex,queueIndex,pQueue)
    ccall((:vkGetDeviceQueue,libvulkan),Void,(VkDevice,UInt32,UInt32,Ptr{VkQueue}),device,queueFamilyIndex,queueIndex,pQueue)
end

function vkQueueSubmit(queue,submitCount,pSubmits,fence)
    ccall((:vkQueueSubmit,libvulkan),VkResult,(VkQueue,UInt32,Ptr{VkSubmitInfo},VkFence),queue,submitCount,pSubmits,fence)
end

function vkQueueWaitIdle(queue)
    ccall((:vkQueueWaitIdle,libvulkan),VkResult,(VkQueue,),queue)
end

function vkDeviceWaitIdle(device)
    ccall((:vkDeviceWaitIdle,libvulkan),VkResult,(VkDevice,),device)
end

function vkAllocateMemory(device,pAllocateInfo,pAllocator,pMemory)
    ccall((:vkAllocateMemory,libvulkan),VkResult,(VkDevice,Ptr{VkMemoryAllocateInfo},Ptr{VkAllocationCallbacks},Ptr{VkDeviceMemory}),device,pAllocateInfo,pAllocator,pMemory)
end

function vkFreeMemory(device,memory,pAllocator)
    ccall((:vkFreeMemory,libvulkan),Void,(VkDevice,VkDeviceMemory,Ptr{VkAllocationCallbacks}),device,memory,pAllocator)
end

function vkMapMemory(device,memory,offset,size,flags,ppData)
    ccall((:vkMapMemory,libvulkan),VkResult,(VkDevice,VkDeviceMemory,VkDeviceSize,VkDeviceSize,VkMemoryMapFlags,Ptr{Ptr{Void}}),device,memory,offset,size,flags,ppData)
end

function vkUnmapMemory(device,memory)
    ccall((:vkUnmapMemory,libvulkan),Void,(VkDevice,VkDeviceMemory),device,memory)
end

function vkFlushMappedMemoryRanges(device,memoryRangeCount,pMemoryRanges)
    ccall((:vkFlushMappedMemoryRanges,libvulkan),VkResult,(VkDevice,UInt32,Ptr{VkMappedMemoryRange}),device,memoryRangeCount,pMemoryRanges)
end

function vkInvalidateMappedMemoryRanges(device,memoryRangeCount,pMemoryRanges)
    ccall((:vkInvalidateMappedMemoryRanges,libvulkan),VkResult,(VkDevice,UInt32,Ptr{VkMappedMemoryRange}),device,memoryRangeCount,pMemoryRanges)
end

function vkGetDeviceMemoryCommitment(device,memory,pCommittedMemoryInBytes)
    ccall((:vkGetDeviceMemoryCommitment,libvulkan),Void,(VkDevice,VkDeviceMemory,Ptr{VkDeviceSize}),device,memory,pCommittedMemoryInBytes)
end

function vkBindBufferMemory(device,buffer,memory,memoryOffset)
    ccall((:vkBindBufferMemory,libvulkan),VkResult,(VkDevice,VkBuffer,VkDeviceMemory,VkDeviceSize),device,buffer,memory,memoryOffset)
end

function vkBindImageMemory(device,image,memory,memoryOffset)
    ccall((:vkBindImageMemory,libvulkan),VkResult,(VkDevice,VkImage,VkDeviceMemory,VkDeviceSize),device,image,memory,memoryOffset)
end

function vkGetBufferMemoryRequirements(device,buffer,pMemoryRequirements)
    ccall((:vkGetBufferMemoryRequirements,libvulkan),Void,(VkDevice,VkBuffer,Ptr{VkMemoryRequirements}),device,buffer,pMemoryRequirements)
end

function vkGetImageMemoryRequirements(device,image,pMemoryRequirements)
    ccall((:vkGetImageMemoryRequirements,libvulkan),Void,(VkDevice,VkImage,Ptr{VkMemoryRequirements}),device,image,pMemoryRequirements)
end

function vkGetImageSparseMemoryRequirements(device,image,pSparseMemoryRequirementCount,pSparseMemoryRequirements)
    ccall((:vkGetImageSparseMemoryRequirements,libvulkan),Void,(VkDevice,VkImage,Ptr{UInt32},Ptr{VkSparseImageMemoryRequirements}),device,image,pSparseMemoryRequirementCount,pSparseMemoryRequirements)
end

function vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice,format,_type,samples,usage,tiling,pPropertyCount,pProperties)
    ccall((:vkGetPhysicalDeviceSparseImageFormatProperties,libvulkan),Void,(VkPhysicalDevice,VkFormat,VkImageType,VkSampleCountFlagBits,VkImageUsageFlags,VkImageTiling,Ptr{UInt32},Ptr{VkSparseImageFormatProperties}),physicalDevice,format,_type,samples,usage,tiling,pPropertyCount,pProperties)
end

function vkQueueBindSparse(queue,bindInfoCount,pBindInfo,fence)
    ccall((:vkQueueBindSparse,libvulkan),VkResult,(VkQueue,UInt32,Ptr{VkBindSparseInfo},VkFence),queue,bindInfoCount,pBindInfo,fence)
end

function vkCreateFence(device,pCreateInfo,pAllocator,pFence)
    ccall((:vkCreateFence,libvulkan),VkResult,(VkDevice,Ptr{VkFenceCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkFence}),device,pCreateInfo,pAllocator,pFence)
end

function vkDestroyFence(device,fence,pAllocator)
    ccall((:vkDestroyFence,libvulkan),Void,(VkDevice,VkFence,Ptr{VkAllocationCallbacks}),device,fence,pAllocator)
end

function vkResetFences(device,fenceCount,pFences)
    ccall((:vkResetFences,libvulkan),VkResult,(VkDevice,UInt32,Ptr{VkFence}),device,fenceCount,pFences)
end

function vkGetFenceStatus(device,fence)
    ccall((:vkGetFenceStatus,libvulkan),VkResult,(VkDevice,VkFence),device,fence)
end

function vkWaitForFences(device,fenceCount,pFences,waitAll,timeout)
    ccall((:vkWaitForFences,libvulkan),VkResult,(VkDevice,UInt32,Ptr{VkFence},VkBool32,UInt64),device,fenceCount,pFences,waitAll,timeout)
end

function vkCreateSemaphore(device,pCreateInfo,pAllocator,pSemaphore)
    ccall((:vkCreateSemaphore,libvulkan),VkResult,(VkDevice,Ptr{VkSemaphoreCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkSemaphore}),device,pCreateInfo,pAllocator,pSemaphore)
end

function vkDestroySemaphore(device,semaphore,pAllocator)
    ccall((:vkDestroySemaphore,libvulkan),Void,(VkDevice,VkSemaphore,Ptr{VkAllocationCallbacks}),device,semaphore,pAllocator)
end

function vkCreateEvent(device,pCreateInfo,pAllocator,pEvent)
    ccall((:vkCreateEvent,libvulkan),VkResult,(VkDevice,Ptr{VkEventCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkEvent}),device,pCreateInfo,pAllocator,pEvent)
end

function vkDestroyEvent(device,event,pAllocator)
    ccall((:vkDestroyEvent,libvulkan),Void,(VkDevice,VkEvent,Ptr{VkAllocationCallbacks}),device,event,pAllocator)
end

function vkGetEventStatus(device,event)
    ccall((:vkGetEventStatus,libvulkan),VkResult,(VkDevice,VkEvent),device,event)
end

function vkSetEvent(device,event)
    ccall((:vkSetEvent,libvulkan),VkResult,(VkDevice,VkEvent),device,event)
end

function vkResetEvent(device,event)
    ccall((:vkResetEvent,libvulkan),VkResult,(VkDevice,VkEvent),device,event)
end

function vkCreateQueryPool(device,pCreateInfo,pAllocator,pQueryPool)
    ccall((:vkCreateQueryPool,libvulkan),VkResult,(VkDevice,Ptr{VkQueryPoolCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkQueryPool}),device,pCreateInfo,pAllocator,pQueryPool)
end

function vkDestroyQueryPool(device,queryPool,pAllocator)
    ccall((:vkDestroyQueryPool,libvulkan),Void,(VkDevice,VkQueryPool,Ptr{VkAllocationCallbacks}),device,queryPool,pAllocator)
end

function vkGetQueryPoolResults(device,queryPool,firstQuery,queryCount,dataSize,pData,stride,flags)
    ccall((:vkGetQueryPoolResults,libvulkan),VkResult,(VkDevice,VkQueryPool,UInt32,UInt32,Csize_t,Ptr{Void},VkDeviceSize,VkQueryResultFlags),device,queryPool,firstQuery,queryCount,dataSize,pData,stride,flags)
end

function vkCreateBuffer(device,pCreateInfo,pAllocator,pBuffer)
    ccall((:vkCreateBuffer,libvulkan),VkResult,(VkDevice,Ptr{VkBufferCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkBuffer}),device,pCreateInfo,pAllocator,pBuffer)
end

function vkDestroyBuffer(device,buffer,pAllocator)
    ccall((:vkDestroyBuffer,libvulkan),Void,(VkDevice,VkBuffer,Ptr{VkAllocationCallbacks}),device,buffer,pAllocator)
end

function vkCreateBufferView(device,pCreateInfo,pAllocator,pView)
    ccall((:vkCreateBufferView,libvulkan),VkResult,(VkDevice,Ptr{VkBufferViewCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkBufferView}),device,pCreateInfo,pAllocator,pView)
end

function vkDestroyBufferView(device,bufferView,pAllocator)
    ccall((:vkDestroyBufferView,libvulkan),Void,(VkDevice,VkBufferView,Ptr{VkAllocationCallbacks}),device,bufferView,pAllocator)
end

function vkCreateImage(device,pCreateInfo,pAllocator,pImage)
    ccall((:vkCreateImage,libvulkan),VkResult,(VkDevice,Ptr{VkImageCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkImage}),device,pCreateInfo,pAllocator,pImage)
end

function vkDestroyImage(device,image,pAllocator)
    ccall((:vkDestroyImage,libvulkan),Void,(VkDevice,VkImage,Ptr{VkAllocationCallbacks}),device,image,pAllocator)
end

function vkGetImageSubresourceLayout(device,image,pSubresource,pLayout)
    ccall((:vkGetImageSubresourceLayout,libvulkan),Void,(VkDevice,VkImage,Ptr{VkImageSubresource},Ptr{VkSubresourceLayout}),device,image,pSubresource,pLayout)
end

function vkCreateImageView(device,pCreateInfo,pAllocator,pView)
    ccall((:vkCreateImageView,libvulkan),VkResult,(VkDevice,Ptr{VkImageViewCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkImageView}),device,pCreateInfo,pAllocator,pView)
end

function vkDestroyImageView(device,imageView,pAllocator)
    ccall((:vkDestroyImageView,libvulkan),Void,(VkDevice,VkImageView,Ptr{VkAllocationCallbacks}),device,imageView,pAllocator)
end

function vkCreateShaderModule(device,pCreateInfo,pAllocator,pShaderModule)
    ccall((:vkCreateShaderModule,libvulkan),VkResult,(VkDevice,Ptr{VkShaderModuleCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkShaderModule}),device,pCreateInfo,pAllocator,pShaderModule)
end

function vkDestroyShaderModule(device,shaderModule,pAllocator)
    ccall((:vkDestroyShaderModule,libvulkan),Void,(VkDevice,VkShaderModule,Ptr{VkAllocationCallbacks}),device,shaderModule,pAllocator)
end

function vkCreatePipelineCache(device,pCreateInfo,pAllocator,pPipelineCache)
    ccall((:vkCreatePipelineCache,libvulkan),VkResult,(VkDevice,Ptr{VkPipelineCacheCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkPipelineCache}),device,pCreateInfo,pAllocator,pPipelineCache)
end

function vkDestroyPipelineCache(device,pipelineCache,pAllocator)
    ccall((:vkDestroyPipelineCache,libvulkan),Void,(VkDevice,VkPipelineCache,Ptr{VkAllocationCallbacks}),device,pipelineCache,pAllocator)
end

function vkGetPipelineCacheData(device,pipelineCache,pDataSize,pData)
    ccall((:vkGetPipelineCacheData,libvulkan),VkResult,(VkDevice,VkPipelineCache,Ptr{Csize_t},Ptr{Void}),device,pipelineCache,pDataSize,pData)
end

function vkMergePipelineCaches(device,dstCache,srcCacheCount,pSrcCaches)
    ccall((:vkMergePipelineCaches,libvulkan),VkResult,(VkDevice,VkPipelineCache,UInt32,Ptr{VkPipelineCache}),device,dstCache,srcCacheCount,pSrcCaches)
end

function vkCreateGraphicsPipelines(device,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines)
    ccall((:vkCreateGraphicsPipelines,libvulkan),VkResult,(VkDevice,VkPipelineCache,UInt32,Ptr{VkGraphicsPipelineCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkPipeline}),device,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines)
end

function vkCreateComputePipelines(device,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines)
    ccall((:vkCreateComputePipelines,libvulkan),VkResult,(VkDevice,VkPipelineCache,UInt32,Ptr{VkComputePipelineCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkPipeline}),device,pipelineCache,createInfoCount,pCreateInfos,pAllocator,pPipelines)
end

function vkDestroyPipeline(device,pipeline,pAllocator)
    ccall((:vkDestroyPipeline,libvulkan),Void,(VkDevice,VkPipeline,Ptr{VkAllocationCallbacks}),device,pipeline,pAllocator)
end

function vkCreatePipelineLayout(device,pCreateInfo,pAllocator,pPipelineLayout)
    ccall((:vkCreatePipelineLayout,libvulkan),VkResult,(VkDevice,Ptr{VkPipelineLayoutCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkPipelineLayout}),device,pCreateInfo,pAllocator,pPipelineLayout)
end

function vkDestroyPipelineLayout(device,pipelineLayout,pAllocator)
    ccall((:vkDestroyPipelineLayout,libvulkan),Void,(VkDevice,VkPipelineLayout,Ptr{VkAllocationCallbacks}),device,pipelineLayout,pAllocator)
end

function vkCreateSampler(device,pCreateInfo,pAllocator,pSampler)
    ccall((:vkCreateSampler,libvulkan),VkResult,(VkDevice,Ptr{VkSamplerCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkSampler}),device,pCreateInfo,pAllocator,pSampler)
end

function vkDestroySampler(device,sampler,pAllocator)
    ccall((:vkDestroySampler,libvulkan),Void,(VkDevice,VkSampler,Ptr{VkAllocationCallbacks}),device,sampler,pAllocator)
end

function vkCreateDescriptorSetLayout(device,pCreateInfo,pAllocator,pSetLayout)
    ccall((:vkCreateDescriptorSetLayout,libvulkan),VkResult,(VkDevice,Ptr{VkDescriptorSetLayoutCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkDescriptorSetLayout}),device,pCreateInfo,pAllocator,pSetLayout)
end

function vkDestroyDescriptorSetLayout(device,descriptorSetLayout,pAllocator)
    ccall((:vkDestroyDescriptorSetLayout,libvulkan),Void,(VkDevice,VkDescriptorSetLayout,Ptr{VkAllocationCallbacks}),device,descriptorSetLayout,pAllocator)
end

function vkCreateDescriptorPool(device,pCreateInfo,pAllocator,pDescriptorPool)
    ccall((:vkCreateDescriptorPool,libvulkan),VkResult,(VkDevice,Ptr{VkDescriptorPoolCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkDescriptorPool}),device,pCreateInfo,pAllocator,pDescriptorPool)
end

function vkDestroyDescriptorPool(device,descriptorPool,pAllocator)
    ccall((:vkDestroyDescriptorPool,libvulkan),Void,(VkDevice,VkDescriptorPool,Ptr{VkAllocationCallbacks}),device,descriptorPool,pAllocator)
end

function vkResetDescriptorPool(device,descriptorPool,flags)
    ccall((:vkResetDescriptorPool,libvulkan),VkResult,(VkDevice,VkDescriptorPool,VkDescriptorPoolResetFlags),device,descriptorPool,flags)
end

function vkAllocateDescriptorSets(device,pAllocateInfo,pDescriptorSets)
    ccall((:vkAllocateDescriptorSets,libvulkan),VkResult,(VkDevice,Ptr{VkDescriptorSetAllocateInfo},Ptr{VkDescriptorSet}),device,pAllocateInfo,pDescriptorSets)
end

function vkFreeDescriptorSets(device,descriptorPool,descriptorSetCount,pDescriptorSets)
    ccall((:vkFreeDescriptorSets,libvulkan),VkResult,(VkDevice,VkDescriptorPool,UInt32,Ptr{VkDescriptorSet}),device,descriptorPool,descriptorSetCount,pDescriptorSets)
end

function vkUpdateDescriptorSets(device,descriptorWriteCount,pDescriptorWrites,descriptorCopyCount,pDescriptorCopies)
    ccall((:vkUpdateDescriptorSets,libvulkan),Void,(VkDevice,UInt32,Ptr{VkWriteDescriptorSet},UInt32,Ptr{VkCopyDescriptorSet}),device,descriptorWriteCount,pDescriptorWrites,descriptorCopyCount,pDescriptorCopies)
end

function vkCreateFramebuffer(device,pCreateInfo,pAllocator,pFramebuffer)
    ccall((:vkCreateFramebuffer,libvulkan),VkResult,(VkDevice,Ptr{VkFramebufferCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkFramebuffer}),device,pCreateInfo,pAllocator,pFramebuffer)
end

function vkDestroyFramebuffer(device,framebuffer,pAllocator)
    ccall((:vkDestroyFramebuffer,libvulkan),Void,(VkDevice,VkFramebuffer,Ptr{VkAllocationCallbacks}),device,framebuffer,pAllocator)
end

function vkCreateRenderPass(device,pCreateInfo,pAllocator,pRenderPass)
    ccall((:vkCreateRenderPass,libvulkan),VkResult,(VkDevice,Ptr{VkRenderPassCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkRenderPass}),device,pCreateInfo,pAllocator,pRenderPass)
end

function vkDestroyRenderPass(device,renderPass,pAllocator)
    ccall((:vkDestroyRenderPass,libvulkan),Void,(VkDevice,VkRenderPass,Ptr{VkAllocationCallbacks}),device,renderPass,pAllocator)
end

function vkGetRenderAreaGranularity(device,renderPass,pGranularity)
    ccall((:vkGetRenderAreaGranularity,libvulkan),Void,(VkDevice,VkRenderPass,Ptr{VkExtent2D}),device,renderPass,pGranularity)
end

function vkCreateCommandPool(device,pCreateInfo,pAllocator,pCommandPool)
    ccall((:vkCreateCommandPool,libvulkan),VkResult,(VkDevice,Ptr{VkCommandPoolCreateInfo},Ptr{VkAllocationCallbacks},Ptr{VkCommandPool}),device,pCreateInfo,pAllocator,pCommandPool)
end

function vkDestroyCommandPool(device,commandPool,pAllocator)
    ccall((:vkDestroyCommandPool,libvulkan),Void,(VkDevice,VkCommandPool,Ptr{VkAllocationCallbacks}),device,commandPool,pAllocator)
end

function vkResetCommandPool(device,commandPool,flags)
    ccall((:vkResetCommandPool,libvulkan),VkResult,(VkDevice,VkCommandPool,VkCommandPoolResetFlags),device,commandPool,flags)
end

function vkAllocateCommandBuffers(device,pAllocateInfo,pCommandBuffers)
    ccall((:vkAllocateCommandBuffers,libvulkan),VkResult,(VkDevice,Ptr{VkCommandBufferAllocateInfo},Ptr{VkCommandBuffer}),device,pAllocateInfo,pCommandBuffers)
end

function vkFreeCommandBuffers(device,commandPool,commandBufferCount,pCommandBuffers)
    ccall((:vkFreeCommandBuffers,libvulkan),Void,(VkDevice,VkCommandPool,UInt32,Ptr{VkCommandBuffer}),device,commandPool,commandBufferCount,pCommandBuffers)
end

function vkBeginCommandBuffer(commandBuffer,pBeginInfo)
    ccall((:vkBeginCommandBuffer,libvulkan),VkResult,(VkCommandBuffer,Ptr{VkCommandBufferBeginInfo}),commandBuffer,pBeginInfo)
end

function vkEndCommandBuffer(commandBuffer)
    ccall((:vkEndCommandBuffer,libvulkan),VkResult,(VkCommandBuffer,),commandBuffer)
end

function vkResetCommandBuffer(commandBuffer,flags)
    ccall((:vkResetCommandBuffer,libvulkan),VkResult,(VkCommandBuffer,VkCommandBufferResetFlags),commandBuffer,flags)
end

function vkCmdBindPipeline(commandBuffer,pipelineBindPoint,pipeline)
    ccall((:vkCmdBindPipeline,libvulkan),Void,(VkCommandBuffer,VkPipelineBindPoint,VkPipeline),commandBuffer,pipelineBindPoint,pipeline)
end

function vkCmdSetViewport(commandBuffer,firstViewport,viewportCount,pViewports)
    ccall((:vkCmdSetViewport,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,Ptr{VkViewport}),commandBuffer,firstViewport,viewportCount,pViewports)
end

function vkCmdSetScissor(commandBuffer,firstScissor,scissorCount,pScissors)
    ccall((:vkCmdSetScissor,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,Ptr{VkRect2D}),commandBuffer,firstScissor,scissorCount,pScissors)
end

function vkCmdSetLineWidth(commandBuffer,lineWidth)
    ccall((:vkCmdSetLineWidth,libvulkan),Void,(VkCommandBuffer,Cfloat),commandBuffer,lineWidth)
end

function vkCmdSetDepthBias(commandBuffer,depthBiasConstantFactor,depthBiasClamp,depthBiasSlopeFactor)
    ccall((:vkCmdSetDepthBias,libvulkan),Void,(VkCommandBuffer,Cfloat,Cfloat,Cfloat),commandBuffer,depthBiasConstantFactor,depthBiasClamp,depthBiasSlopeFactor)
end

function vkCmdSetBlendConstants(commandBuffer,blendConstants)
    ccall((:vkCmdSetBlendConstants,libvulkan),Void,(VkCommandBuffer,NTuple{4,Cfloat}),commandBuffer,blendConstants)
end

function vkCmdSetDepthBounds(commandBuffer,minDepthBounds,maxDepthBounds)
    ccall((:vkCmdSetDepthBounds,libvulkan),Void,(VkCommandBuffer,Cfloat,Cfloat),commandBuffer,minDepthBounds,maxDepthBounds)
end

function vkCmdSetStencilCompareMask(commandBuffer,faceMask,compareMask)
    ccall((:vkCmdSetStencilCompareMask,libvulkan),Void,(VkCommandBuffer,VkStencilFaceFlags,UInt32),commandBuffer,faceMask,compareMask)
end

function vkCmdSetStencilWriteMask(commandBuffer,faceMask,writeMask)
    ccall((:vkCmdSetStencilWriteMask,libvulkan),Void,(VkCommandBuffer,VkStencilFaceFlags,UInt32),commandBuffer,faceMask,writeMask)
end

function vkCmdSetStencilReference(commandBuffer,faceMask,reference)
    ccall((:vkCmdSetStencilReference,libvulkan),Void,(VkCommandBuffer,VkStencilFaceFlags,UInt32),commandBuffer,faceMask,reference)
end

function vkCmdBindDescriptorSets(commandBuffer,pipelineBindPoint,layout,firstSet,descriptorSetCount,pDescriptorSets,dynamicOffsetCount,pDynamicOffsets)
    ccall((:vkCmdBindDescriptorSets,libvulkan),Void,(VkCommandBuffer,VkPipelineBindPoint,VkPipelineLayout,UInt32,UInt32,Ptr{VkDescriptorSet},UInt32,Ptr{UInt32}),commandBuffer,pipelineBindPoint,layout,firstSet,descriptorSetCount,pDescriptorSets,dynamicOffsetCount,pDynamicOffsets)
end

function vkCmdBindIndexBuffer(commandBuffer,buffer,offset,indexType)
    ccall((:vkCmdBindIndexBuffer,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize,VkIndexType),commandBuffer,buffer,offset,indexType)
end

function vkCmdBindVertexBuffers(commandBuffer,firstBinding,bindingCount,pBuffers,pOffsets)
    ccall((:vkCmdBindVertexBuffers,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,Ptr{VkBuffer},Ptr{VkDeviceSize}),commandBuffer,firstBinding,bindingCount,pBuffers,pOffsets)
end

function vkCmdDraw(commandBuffer,vertexCount,instanceCount,firstVertex,firstInstance)
    ccall((:vkCmdDraw,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,UInt32,UInt32),commandBuffer,vertexCount,instanceCount,firstVertex,firstInstance)
end

function vkCmdDrawIndexed(commandBuffer,indexCount,instanceCount,firstIndex,vertexOffset,firstInstance)
    ccall((:vkCmdDrawIndexed,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,UInt32,Int32,UInt32),commandBuffer,indexCount,instanceCount,firstIndex,vertexOffset,firstInstance)
end

function vkCmdDrawIndirect(commandBuffer,buffer,offset,drawCount,stride)
    ccall((:vkCmdDrawIndirect,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize,UInt32,UInt32),commandBuffer,buffer,offset,drawCount,stride)
end

function vkCmdDrawIndexedIndirect(commandBuffer,buffer,offset,drawCount,stride)
    ccall((:vkCmdDrawIndexedIndirect,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize,UInt32,UInt32),commandBuffer,buffer,offset,drawCount,stride)
end

function vkCmdDispatch(commandBuffer,x,y,z)
    ccall((:vkCmdDispatch,libvulkan),Void,(VkCommandBuffer,UInt32,UInt32,UInt32),commandBuffer,x,y,z)
end

function vkCmdDispatchIndirect(commandBuffer,buffer,offset)
    ccall((:vkCmdDispatchIndirect,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize),commandBuffer,buffer,offset)
end

function vkCmdCopyBuffer(commandBuffer,srcBuffer,dstBuffer,regionCount,pRegions)
    ccall((:vkCmdCopyBuffer,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkBuffer,UInt32,Ptr{VkBufferCopy}),commandBuffer,srcBuffer,dstBuffer,regionCount,pRegions)
end

function vkCmdCopyImage(commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions)
    ccall((:vkCmdCopyImage,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,VkImage,VkImageLayout,UInt32,Ptr{VkImageCopy}),commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions)
end

function vkCmdBlitImage(commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,filter)
    ccall((:vkCmdBlitImage,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,VkImage,VkImageLayout,UInt32,Ptr{VkImageBlit},VkFilter),commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions,filter)
end

function vkCmdCopyBufferToImage(commandBuffer,srcBuffer,dstImage,dstImageLayout,regionCount,pRegions)
    ccall((:vkCmdCopyBufferToImage,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkImage,VkImageLayout,UInt32,Ptr{VkBufferImageCopy}),commandBuffer,srcBuffer,dstImage,dstImageLayout,regionCount,pRegions)
end

function vkCmdCopyImageToBuffer(commandBuffer,srcImage,srcImageLayout,dstBuffer,regionCount,pRegions)
    ccall((:vkCmdCopyImageToBuffer,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,VkBuffer,UInt32,Ptr{VkBufferImageCopy}),commandBuffer,srcImage,srcImageLayout,dstBuffer,regionCount,pRegions)
end

function vkCmdUpdateBuffer(commandBuffer,dstBuffer,dstOffset,dataSize,pData)
    ccall((:vkCmdUpdateBuffer,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize,VkDeviceSize,Ptr{UInt32}),commandBuffer,dstBuffer,dstOffset,dataSize,pData)
end

function vkCmdFillBuffer(commandBuffer,dstBuffer,dstOffset,size,data)
    ccall((:vkCmdFillBuffer,libvulkan),Void,(VkCommandBuffer,VkBuffer,VkDeviceSize,VkDeviceSize,UInt32),commandBuffer,dstBuffer,dstOffset,size,data)
end

function vkCmdClearColorImage(commandBuffer,image,imageLayout,pColor,rangeCount,pRanges)
    ccall((:vkCmdClearColorImage,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,Ptr{VkClearColorValue},UInt32,Ptr{VkImageSubresourceRange}),commandBuffer,image,imageLayout,pColor,rangeCount,pRanges)
end

function vkCmdClearDepthStencilImage(commandBuffer,image,imageLayout,pDepthStencil,rangeCount,pRanges)
    ccall((:vkCmdClearDepthStencilImage,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,Ptr{VkClearDepthStencilValue},UInt32,Ptr{VkImageSubresourceRange}),commandBuffer,image,imageLayout,pDepthStencil,rangeCount,pRanges)
end

function vkCmdClearAttachments(commandBuffer,attachmentCount,pAttachments,rectCount,pRects)
    ccall((:vkCmdClearAttachments,libvulkan),Void,(VkCommandBuffer,UInt32,Ptr{VkClearAttachment},UInt32,Ptr{VkClearRect}),commandBuffer,attachmentCount,pAttachments,rectCount,pRects)
end

function vkCmdResolveImage(commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions)
    ccall((:vkCmdResolveImage,libvulkan),Void,(VkCommandBuffer,VkImage,VkImageLayout,VkImage,VkImageLayout,UInt32,Ptr{VkImageResolve}),commandBuffer,srcImage,srcImageLayout,dstImage,dstImageLayout,regionCount,pRegions)
end

function vkCmdSetEvent(commandBuffer,event,stageMask)
    ccall((:vkCmdSetEvent,libvulkan),Void,(VkCommandBuffer,VkEvent,VkPipelineStageFlags),commandBuffer,event,stageMask)
end

function vkCmdResetEvent(commandBuffer,event,stageMask)
    ccall((:vkCmdResetEvent,libvulkan),Void,(VkCommandBuffer,VkEvent,VkPipelineStageFlags),commandBuffer,event,stageMask)
end

function vkCmdWaitEvents(commandBuffer,eventCount,pEvents,srcStageMask,dstStageMask,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers)
    ccall((:vkCmdWaitEvents,libvulkan),Void,(VkCommandBuffer,UInt32,Ptr{VkEvent},VkPipelineStageFlags,VkPipelineStageFlags,UInt32,Ptr{VkMemoryBarrier},UInt32,Ptr{VkBufferMemoryBarrier},UInt32,Ptr{VkImageMemoryBarrier}),commandBuffer,eventCount,pEvents,srcStageMask,dstStageMask,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers)
end

function vkCmdPipelineBarrier(commandBuffer,srcStageMask,dstStageMask,dependencyFlags,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers)
    ccall((:vkCmdPipelineBarrier,libvulkan),Void,(VkCommandBuffer,VkPipelineStageFlags,VkPipelineStageFlags,VkDependencyFlags,UInt32,Ptr{VkMemoryBarrier},UInt32,Ptr{VkBufferMemoryBarrier},UInt32,Ptr{VkImageMemoryBarrier}),commandBuffer,srcStageMask,dstStageMask,dependencyFlags,memoryBarrierCount,pMemoryBarriers,bufferMemoryBarrierCount,pBufferMemoryBarriers,imageMemoryBarrierCount,pImageMemoryBarriers)
end

function vkCmdBeginQuery(commandBuffer,queryPool,query,flags)
    ccall((:vkCmdBeginQuery,libvulkan),Void,(VkCommandBuffer,VkQueryPool,UInt32,VkQueryControlFlags),commandBuffer,queryPool,query,flags)
end

function vkCmdEndQuery(commandBuffer,queryPool,query)
    ccall((:vkCmdEndQuery,libvulkan),Void,(VkCommandBuffer,VkQueryPool,UInt32),commandBuffer,queryPool,query)
end

function vkCmdResetQueryPool(commandBuffer,queryPool,firstQuery,queryCount)
    ccall((:vkCmdResetQueryPool,libvulkan),Void,(VkCommandBuffer,VkQueryPool,UInt32,UInt32),commandBuffer,queryPool,firstQuery,queryCount)
end

function vkCmdWriteTimestamp(commandBuffer,pipelineStage,queryPool,query)
    ccall((:vkCmdWriteTimestamp,libvulkan),Void,(VkCommandBuffer,VkPipelineStageFlagBits,VkQueryPool,UInt32),commandBuffer,pipelineStage,queryPool,query)
end

function vkCmdCopyQueryPoolResults(commandBuffer,queryPool,firstQuery,queryCount,dstBuffer,dstOffset,stride,flags)
    ccall((:vkCmdCopyQueryPoolResults,libvulkan),Void,(VkCommandBuffer,VkQueryPool,UInt32,UInt32,VkBuffer,VkDeviceSize,VkDeviceSize,VkQueryResultFlags),commandBuffer,queryPool,firstQuery,queryCount,dstBuffer,dstOffset,stride,flags)
end

function vkCmdPushConstants(commandBuffer,layout,stageFlags,offset,size,pValues)
    ccall((:vkCmdPushConstants,libvulkan),Void,(VkCommandBuffer,VkPipelineLayout,VkShaderStageFlags,UInt32,UInt32,Ptr{Void}),commandBuffer,layout,stageFlags,offset,size,pValues)
end

function vkCmdBeginRenderPass(commandBuffer,pRenderPassBegin,contents)
    ccall((:vkCmdBeginRenderPass,libvulkan),Void,(VkCommandBuffer,Ptr{VkRenderPassBeginInfo},VkSubpassContents),commandBuffer,pRenderPassBegin,contents)
end

function vkCmdNextSubpass(commandBuffer,contents)
    ccall((:vkCmdNextSubpass,libvulkan),Void,(VkCommandBuffer,VkSubpassContents),commandBuffer,contents)
end

function vkCmdEndRenderPass(commandBuffer)
    ccall((:vkCmdEndRenderPass,libvulkan),Void,(VkCommandBuffer,),commandBuffer)
end

function vkCmdExecuteCommands(commandBuffer,commandBufferCount,pCommandBuffers)
    ccall((:vkCmdExecuteCommands,libvulkan),Void,(VkCommandBuffer,UInt32,Ptr{VkCommandBuffer}),commandBuffer,commandBufferCount,pCommandBuffers)
end

function vkDestroySurfaceKHR(instance,surface,pAllocator)
    ccall((:vkDestroySurfaceKHR,libvulkan),Void,(VkInstance,VkSurfaceKHR,Ptr{VkAllocationCallbacks}),instance,surface,pAllocator)
end

function vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice,queueFamilyIndex,surface,pSupported)
    ccall((:vkGetPhysicalDeviceSurfaceSupportKHR,libvulkan),VkResult,(VkPhysicalDevice,UInt32,VkSurfaceKHR,Ptr{VkBool32}),physicalDevice,queueFamilyIndex,surface,pSupported)
end

function vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice,surface,pSurfaceCapabilities)
    ccall((:vkGetPhysicalDeviceSurfaceCapabilitiesKHR,libvulkan),VkResult,(VkPhysicalDevice,VkSurfaceKHR,Ptr{VkSurfaceCapabilitiesKHR}),physicalDevice,surface,pSurfaceCapabilities)
end

function vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice,surface,pSurfaceFormatCount,pSurfaceFormats)
    ccall((:vkGetPhysicalDeviceSurfaceFormatsKHR,libvulkan),VkResult,(VkPhysicalDevice,VkSurfaceKHR,Ptr{UInt32},Ptr{VkSurfaceFormatKHR}),physicalDevice,surface,pSurfaceFormatCount,pSurfaceFormats)
end

function vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice,surface,pPresentModeCount,pPresentModes)
    ccall((:vkGetPhysicalDeviceSurfacePresentModesKHR,libvulkan),VkResult,(VkPhysicalDevice,VkSurfaceKHR,Ptr{UInt32},Ptr{VkPresentModeKHR}),physicalDevice,surface,pPresentModeCount,pPresentModes)
end

function vkCreateSwapchainKHR(device,pCreateInfo,pAllocator,pSwapchain)
    ccall((:vkCreateSwapchainKHR,libvulkan),VkResult,(VkDevice,Ptr{VkSwapchainCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSwapchainKHR}),device,pCreateInfo,pAllocator,pSwapchain)
end

function vkDestroySwapchainKHR(device,swapchain,pAllocator)
    ccall((:vkDestroySwapchainKHR,libvulkan),Void,(VkDevice,VkSwapchainKHR,Ptr{VkAllocationCallbacks}),device,swapchain,pAllocator)
end

function vkGetSwapchainImagesKHR(device,swapchain,pSwapchainImageCount,pSwapchainImages)
    ccall((:vkGetSwapchainImagesKHR,libvulkan),VkResult,(VkDevice,VkSwapchainKHR,Ptr{UInt32},Ptr{VkImage}),device,swapchain,pSwapchainImageCount,pSwapchainImages)
end

function vkAcquireNextImageKHR(device,swapchain,timeout,semaphore,fence,pImageIndex)
    ccall((:vkAcquireNextImageKHR,libvulkan),VkResult,(VkDevice,VkSwapchainKHR,UInt64,VkSemaphore,VkFence,Ptr{UInt32}),device,swapchain,timeout,semaphore,fence,pImageIndex)
end

function vkQueuePresentKHR(queue,pPresentInfo)
    ccall((:vkQueuePresentKHR,libvulkan),VkResult,(VkQueue,Ptr{VkPresentInfoKHR}),queue,pPresentInfo)
end

function vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice,pPropertyCount,pProperties)
    ccall((:vkGetPhysicalDeviceDisplayPropertiesKHR,libvulkan),VkResult,(VkPhysicalDevice,Ptr{UInt32},Ptr{VkDisplayPropertiesKHR}),physicalDevice,pPropertyCount,pProperties)
end

function vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice,pPropertyCount,pProperties)
    ccall((:vkGetPhysicalDeviceDisplayPlanePropertiesKHR,libvulkan),VkResult,(VkPhysicalDevice,Ptr{UInt32},Ptr{VkDisplayPlanePropertiesKHR}),physicalDevice,pPropertyCount,pProperties)
end

function vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice,planeIndex,pDisplayCount,pDisplays)
    ccall((:vkGetDisplayPlaneSupportedDisplaysKHR,libvulkan),VkResult,(VkPhysicalDevice,UInt32,Ptr{UInt32},Ptr{VkDisplayKHR}),physicalDevice,planeIndex,pDisplayCount,pDisplays)
end

function vkGetDisplayModePropertiesKHR(physicalDevice,display,pPropertyCount,pProperties)
    ccall((:vkGetDisplayModePropertiesKHR,libvulkan),VkResult,(VkPhysicalDevice,VkDisplayKHR,Ptr{UInt32},Ptr{VkDisplayModePropertiesKHR}),physicalDevice,display,pPropertyCount,pProperties)
end

function vkCreateDisplayModeKHR(physicalDevice,display,pCreateInfo,pAllocator,pMode)
    ccall((:vkCreateDisplayModeKHR,libvulkan),VkResult,(VkPhysicalDevice,VkDisplayKHR,Ptr{VkDisplayModeCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkDisplayModeKHR}),physicalDevice,display,pCreateInfo,pAllocator,pMode)
end

function vkGetDisplayPlaneCapabilitiesKHR(physicalDevice,mode,planeIndex,pCapabilities)
    ccall((:vkGetDisplayPlaneCapabilitiesKHR,libvulkan),VkResult,(VkPhysicalDevice,VkDisplayModeKHR,UInt32,Ptr{VkDisplayPlaneCapabilitiesKHR}),physicalDevice,mode,planeIndex,pCapabilities)
end

function vkCreateDisplayPlaneSurfaceKHR(instance,pCreateInfo,pAllocator,pSurface)
    ccall((:vkCreateDisplayPlaneSurfaceKHR,libvulkan),VkResult,(VkInstance,Ptr{VkDisplaySurfaceCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSurfaceKHR}),instance,pCreateInfo,pAllocator,pSurface)
end

function vkCreateSharedSwapchainsKHR(device,swapchainCount,pCreateInfos,pAllocator,pSwapchains)
    ccall((:vkCreateSharedSwapchainsKHR,libvulkan),VkResult,(VkDevice,UInt32,Ptr{VkSwapchainCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSwapchainKHR}),device,swapchainCount,pCreateInfos,pAllocator,pSwapchains)
end

function vkCreateXcbSurfaceKHR(instance,pCreateInfo,pAllocator,pSurface)
    ccall((:vkCreateXcbSurfaceKHR,libvulkan),VkResult,(VkInstance,Ptr{VkXcbSurfaceCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSurfaceKHR}),instance,pCreateInfo,pAllocator,pSurface)
end

function vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice,queueFamilyIndex,connection,visual_id)
    ccall((:vkGetPhysicalDeviceXcbPresentationSupportKHR,libvulkan),VkBool32,(VkPhysicalDevice,UInt32,Ptr{xcb_connection_t},xcb_visualid_t),physicalDevice,queueFamilyIndex,connection,visual_id)
end

function vkCreateWaylandSurfaceKHR(instance,pCreateInfo,pAllocator,pSurface)
    ccall((:vkCreateWaylandSurfaceKHR,libvulkan),VkResult,(VkInstance,Ptr{VkWaylandSurfaceCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSurfaceKHR}),instance,pCreateInfo,pAllocator,pSurface)
end

function vkGetPhysicalDeviceWaylandPresentationSupportKHR(physicalDevice,queueFamilyIndex,display)
    ccall((:vkGetPhysicalDeviceWaylandPresentationSupportKHR,libvulkan),VkBool32,(VkPhysicalDevice,UInt32,Ptr{wl_display}),physicalDevice,queueFamilyIndex,display)
end

function vkCreateMirSurfaceKHR(instance,pCreateInfo,pAllocator,pSurface)
    ccall((:vkCreateMirSurfaceKHR,libvulkan),VkResult,(VkInstance,Ptr{VkMirSurfaceCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSurfaceKHR}),instance,pCreateInfo,pAllocator,pSurface)
end

function vkGetPhysicalDeviceMirPresentationSupportKHR(physicalDevice,queueFamilyIndex,connection)
    ccall((:vkGetPhysicalDeviceMirPresentationSupportKHR,libvulkan),VkBool32,(VkPhysicalDevice,UInt32,Ptr{Cint}),physicalDevice,queueFamilyIndex,connection)
end

function vkCreateWin32SurfaceKHR(instance,pCreateInfo,pAllocator,pSurface)
    ccall((:vkCreateWin32SurfaceKHR,libvulkan),VkResult,(VkInstance,Ptr{VkWin32SurfaceCreateInfoKHR},Ptr{VkAllocationCallbacks},Ptr{VkSurfaceKHR}),instance,pCreateInfo,pAllocator,pSurface)
end

function vkGetPhysicalDeviceWin32PresentationSupportKHR(physicalDevice,queueFamilyIndex)
    ccall((:vkGetPhysicalDeviceWin32PresentationSupportKHR,libvulkan),VkBool32,(VkPhysicalDevice,UInt32),physicalDevice,queueFamilyIndex)
end

function vkCreateDebugReportCallbackEXT(instance,pCreateInfo,pAllocator,pCallback)
    ccall((:vkCreateDebugReportCallbackEXT,libvulkan),VkResult,(VkInstance,Ptr{VkDebugReportCallbackCreateInfoEXT},Ptr{VkAllocationCallbacks},Ptr{VkDebugReportCallbackEXT}),instance,pCreateInfo,pAllocator,pCallback)
end

function vkDestroyDebugReportCallbackEXT(instance,callback,pAllocator)
    ccall((:vkDestroyDebugReportCallbackEXT,libvulkan),Void,(VkInstance,VkDebugReportCallbackEXT,Ptr{VkAllocationCallbacks}),instance,callback,pAllocator)
end

function vkDebugReportMessageEXT(instance,flags,objectType,object,location,messageCode,pLayerPrefix,pMessage)
    ccall((:vkDebugReportMessageEXT,libvulkan),Void,(VkInstance,VkDebugReportFlagsEXT,VkDebugReportObjectTypeEXT,UInt64,Csize_t,Int32,Cstring,Cstring),instance,flags,objectType,object,location,messageCode,pLayerPrefix,pMessage)
end
