"""
`vkCreateInstance` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_INITIALIZATION_FAILED,VK_ERROR_LAYER_NOT_PRESENT,VK_ERROR_EXTENSION_NOT_PRESENT,VK_ERROR_INCOMPATIBLE_DRIVER

parameters:

    `pCreateInfo::VkInstanceCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pInstance::VkInstance`


"""
api.vkCreateInstance

"""
`vkDestroyInstance` returns `void`


parameters:

    `instance::VkInstance`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All child objects created using `instance` **must** have been destroyed prior to destroying `instance`
 * If `VkAllocationCallbacks` were provided when `instance` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `instance` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyInstance

"""
`vkEnumeratePhysicalDevices` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_INITIALIZATION_FAILED

parameters:

    `instance::VkInstance`
    `pPhysicalDeviceCount::uint32_t`
        optional : false,true
    `pPhysicalDevices::VkPhysicalDevice`
        optional : true
        len : pPhysicalDeviceCount


"""
api.vkEnumeratePhysicalDevices

"""
`vkGetDeviceProcAddr` returns `PFN_vkVoidFunction`


parameters:

    `device::VkDevice`
    `pName::char`
        len : null-terminated

usage:

 * `pName` **must** be the name of a supported command that has a first parameter of type `VkDevice`, `VkQueue` or `VkCommandBuffer`, either in the core API or an enabled extension
"""
api.vkGetDeviceProcAddr

"""
`vkGetInstanceProcAddr` returns `PFN_vkVoidFunction`


parameters:

    `instance::VkInstance`
        optional : true
    `pName::char`
        len : null-terminated

usage:

 * If `instance` is `NULL`, `pName` **must** be one of: fname:vkEnumerateInstanceExtensionProperties, fname:vkEnumerateInstanceLayerProperties or fname:vkCreateInstance
 * If `instance` is not `NULL`, `pName` **must** be the name of a core command or a command from an enabled extension, other than: fname:vkEnumerateInstanceExtensionProperties, fname:vkEnumerateInstanceLayerProperties or fname:vkCreateInstance
"""
api.vkGetInstanceProcAddr

"""
`vkGetPhysicalDeviceProperties` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `pProperties::VkPhysicalDeviceProperties`


"""
api.vkGetPhysicalDeviceProperties

"""
`vkGetPhysicalDeviceQueueFamilyProperties` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `pQueueFamilyPropertyCount::uint32_t`
        optional : false,true
    `pQueueFamilyProperties::VkQueueFamilyProperties`
        optional : true
        len : pQueueFamilyPropertyCount


"""
api.vkGetPhysicalDeviceQueueFamilyProperties

"""
`vkGetPhysicalDeviceMemoryProperties` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `pMemoryProperties::VkPhysicalDeviceMemoryProperties`


"""
api.vkGetPhysicalDeviceMemoryProperties

"""
`vkGetPhysicalDeviceFeatures` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `pFeatures::VkPhysicalDeviceFeatures`


"""
api.vkGetPhysicalDeviceFeatures

"""
`vkGetPhysicalDeviceFormatProperties` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `format::VkFormat`
    `pFormatProperties::VkFormatProperties`


"""
api.vkGetPhysicalDeviceFormatProperties

"""
`vkGetPhysicalDeviceImageFormatProperties` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_FORMAT_NOT_SUPPORTED

parameters:

    `physicalDevice::VkPhysicalDevice`
    `format::VkFormat`
    `type::VkImageType`
    `tiling::VkImageTiling`
    `usage::VkImageUsageFlags`
    `flags::VkImageCreateFlags`
        optional : true
    `pImageFormatProperties::VkImageFormatProperties`


"""
api.vkGetPhysicalDeviceImageFormatProperties

"""
`vkCreateDevice` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_INITIALIZATION_FAILED,VK_ERROR_LAYER_NOT_PRESENT,VK_ERROR_EXTENSION_NOT_PRESENT,VK_ERROR_FEATURE_NOT_PRESENT,VK_ERROR_TOO_MANY_OBJECTS,VK_ERROR_DEVICE_LOST

parameters:

    `physicalDevice::VkPhysicalDevice`
    `pCreateInfo::VkDeviceCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pDevice::VkDevice`


"""
api.vkCreateDevice

"""
`vkDestroyDevice` returns `void`


parameters:

    `device::VkDevice`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All child objects created on `device` **must** have been destroyed prior to destroying `device`
 * If `VkAllocationCallbacks` were provided when `device` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `device` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyDevice

"""
`vkEnumerateInstanceLayerProperties` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkLayerProperties`
        optional : true
        len : pPropertyCount


"""
api.vkEnumerateInstanceLayerProperties

"""
`vkEnumerateInstanceExtensionProperties` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `pLayerName::char`
        optional : true
        len : null-terminated
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkExtensionProperties`
        optional : true
        len : pPropertyCount

usage:

 * If `pLayerName` is not `NULL`, it **must** be the name of a layer available on the system
"""
api.vkEnumerateInstanceExtensionProperties

"""
`vkEnumerateDeviceLayerProperties` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
        optional : false,true
    `pPropertyCount::uint32_t`
    `pProperties::VkLayerProperties`
        optional : true
        len : pPropertyCount


"""
api.vkEnumerateDeviceLayerProperties

"""
`vkEnumerateDeviceExtensionProperties` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `pLayerName::char`
        optional : true
        len : null-terminated
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkExtensionProperties`
        optional : true
        len : pPropertyCount

usage:

 * If `pLayerName` is not `NULL`, it **must** be the name of a layer available on the system
"""
api.vkEnumerateDeviceExtensionProperties

"""
`vkGetDeviceQueue` returns `void`


parameters:

    `device::VkDevice`
    `queueFamilyIndex::uint32_t`
    `queueIndex::uint32_t`
    `pQueue::VkQueue`

usage:

 * `queueFamilyIndex` **must** be one of the queue family indexes specified when `device` was created, via the `VkDeviceQueueCreateInfo` structure
 * `queueIndex` **must** be less than the number of queues created for the specified queue family index when `device` was created, via the `queueCount` member of the `VkDeviceQueueCreateInfo` structure
"""
api.vkGetDeviceQueue

"""
`vkQueueSubmit` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `queue::VkQueue`
        externsync : true
    `submitCount::uint32_t`
        optional : true
    `pSubmits::VkSubmitInfo`
        len : submitCount
        externsync : pSubmits[].pWaitSemaphores[],pSubmits[].pSignalSemaphores[]
    `fence::VkFence`
        optional : true
        externsync : true

usage:

 * `fence` **must** be unsignalled
 * `fence` mustnot: be associated with any other queue command that has not yet completed execution on that queue
"""
api.vkQueueSubmit

"""
`vkQueueWaitIdle` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `queue::VkQueue`


"""
api.vkQueueWaitIdle

"""
`vkDeviceWaitIdle` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `device::VkDevice`


"""
api.vkDeviceWaitIdle

"""
`vkAllocateMemory` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_TOO_MANY_OBJECTS

parameters:

    `device::VkDevice`
    `pAllocateInfo::VkMemoryAllocateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pMemory::VkDeviceMemory`

usage:

 * The number of currently valid memory objects, allocated from `device`, **must** be less than `VkPhysicalDeviceLimits`::`maxMemoryAllocationCount`
"""
api.vkAllocateMemory

"""
`vkFreeMemory` returns `void`


parameters:

    `device::VkDevice`
    `memory::VkDeviceMemory`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `memory` (via images or buffers) **must** have completed execution
"""
api.vkFreeMemory

"""
`vkMapMemory` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_MEMORY_MAP_FAILED

parameters:

    `device::VkDevice`
    `memory::VkDeviceMemory`
        externsync : true
    `offset::VkDeviceSize`
    `size::VkDeviceSize`
    `flags::VkMemoryMapFlags`
        optional : true
    `ppData::void`

usage:

 * `memory` mustnot: currently be mapped
 * `offset` **must** be less than the size of `memory`
 * If `size` is not equal to ename:VK_WHOLE_SIZE, the sum of `offset` and `size` **must** be less than or equal to the `size` of the `memory`
 * `memory` **must** have been created with a memory type that reports ename:VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
"""
api.vkMapMemory

"""
`vkUnmapMemory` returns `void`


parameters:

    `device::VkDevice`
    `memory::VkDeviceMemory`
        externsync : true

usage:

 * `memory` **must** currently be mapped
"""
api.vkUnmapMemory

"""
`vkFlushMappedMemoryRanges` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `memoryRangeCount::uint32_t`
    `pMemoryRanges::VkMappedMemoryRange`
        len : memoryRangeCount

usage:

 * The memory ranges specified by `pMemoryRanges` **must** all currently be mapped
"""
api.vkFlushMappedMemoryRanges

"""
`vkInvalidateMappedMemoryRanges` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `memoryRangeCount::uint32_t`
    `pMemoryRanges::VkMappedMemoryRange`
        len : memoryRangeCount

usage:

 * The memory ranges specified by `pMemoryRanges` **must** all currently be mapped
"""
api.vkInvalidateMappedMemoryRanges

"""
`vkGetDeviceMemoryCommitment` returns `void`


parameters:

    `device::VkDevice`
    `memory::VkDeviceMemory`
    `pCommittedMemoryInBytes::VkDeviceSize`

usage:

 * `memory` **must** have been created with a memory type that reports ename:VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT
"""
api.vkGetDeviceMemoryCommitment

"""
`vkGetBufferMemoryRequirements` returns `void`


parameters:

    `device::VkDevice`
    `buffer::VkBuffer`
    `pMemoryRequirements::VkMemoryRequirements`


"""
api.vkGetBufferMemoryRequirements

"""
`vkBindBufferMemory` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `buffer::VkBuffer`
        externsync : true
    `memory::VkDeviceMemory`
    `memoryOffset::VkDeviceSize`

usage:

 * `buffer` mustnot: already be backed by a memory object
 * `buffer` mustnot: have been created with any sparse memory binding flags
 * `memoryOffset` **must** be less than the size of `memory`
 * If `buffer` was created with the ename:VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT or ename:VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT, `memoryOffset` **must** be a multiple of the value of `VkPhysicalDeviceLimits`::`minTexelBufferOffsetAlignment`
 * If `buffer` was created with the ename:VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT, `memoryOffset` **must** be a multiple of the value of `VkPhysicalDeviceLimits`::`minUniformBufferOffsetAlignment`
 * If `buffer` was created with the ename:VK_BUFFER_USAGE_STORAGE_BUFFER_BIT, `memoryOffset` **must** be a multiple of the value of `VkPhysicalDeviceLimits`::`minStorageBufferOffsetAlignment`
 * `memory` **must** have been allocated using one of the memory types allowed in the `memoryTypeBits` member of the `VkMemoryRequirements` structure returned from a call to fname:vkGetBufferMemoryRequirements with `buffer`
 * The sum of `memoryOffset` and the size of `buffer` **must** be less than or equal to the size of `memory`
 * `memoryOffset` **must** be an integer multiple of the `alignment` member of the `VkMemoryRequirements` structure returned from a call to fname:vkGetBufferMemoryRequirements with `buffer`
"""
api.vkBindBufferMemory

"""
`vkGetImageMemoryRequirements` returns `void`


parameters:

    `device::VkDevice`
    `image::VkImage`
    `pMemoryRequirements::VkMemoryRequirements`


"""
api.vkGetImageMemoryRequirements

"""
`vkBindImageMemory` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `image::VkImage`
        externsync : true
    `memory::VkDeviceMemory`
    `memoryOffset::VkDeviceSize`

usage:

 * `image` mustnot: already be backed by a memory object
 * `image` mustnot: have been created with any sparse memory binding flags
 * `memoryOffset` **must** be less than the size of `memory`
 * `memory` **must** have been allocated using one of the memory types allowed in the `memoryTypeBits` member of the `VkMemoryRequirements` structure returned from a call to fname:vkGetImageMemoryRequirements with `image`
 * `memoryOffset` **must** be an integer multiple of the `alignment` member of the `VkMemoryRequirements` structure returned from a call to fname:vkGetImageMemoryRequirements with `image`
 * `memory` **must** have storage from `memoryOffset` onwards equal to or greater than the `size` member of the `VkMemoryRequirements` structure returned from a call to fname:vkGetImageMemoryRequirements with `image`
"""
api.vkBindImageMemory

"""
`vkGetImageSparseMemoryRequirements` returns `void`


parameters:

    `device::VkDevice`
    `image::VkImage`
    `pSparseMemoryRequirementCount::uint32_t`
        optional : false,true
    `pSparseMemoryRequirements::VkSparseImageMemoryRequirements`
        optional : true
        len : pSparseMemoryRequirementCount

usage:

 * `image` **must** have been created with the ename:VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT flag
"""
api.vkGetImageSparseMemoryRequirements

"""
`vkGetPhysicalDeviceSparseImageFormatProperties` returns `void`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `format::VkFormat`
    `type::VkImageType`
    `samples::VkSampleCountFlagBits`
    `usage::VkImageUsageFlags`
    `tiling::VkImageTiling`
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkSparseImageFormatProperties`
        optional : true
        len : pPropertyCount

usage:

 * If `format` is an integer format, samples **must** be one of the bit flag values specified in the value of `VkPhysicalDeviceLimits`::`sampledImageIntegerSampleCounts`
 * If `format` is a non-integer color format, samples **must** be one of the bit flag values specified in the value of `VkPhysicalDeviceLimits`::`sampledImageColorSampleCounts`
 * If `format` is a depth format, samples **must** be one of the bit flag values specified in the value of `VkPhysicalDeviceLimits`::`sampledImageDepthSampleCounts`
 * If `format` is a stencil format, samples **must** be one of the bit flag values specified in the value of `VkPhysicalDeviceLimits`::`sampledImageStencilSampleCounts`
 * If `usage` includes ename:VK_IMAGE_USAGE_STORAGE_BIT, samples **must** be one of the bit flag values specified in the value of `VkPhysicalDeviceLimits`::`storageImageSampleCounts`
"""
api.vkGetPhysicalDeviceSparseImageFormatProperties

"""
`vkQueueBindSparse` returns `VkResult`

queues : sparse_binding
successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `queue::VkQueue`
        externsync : true
    `bindInfoCount::uint32_t`
        optional : true
    `pBindInfo::VkBindSparseInfo`
        len : bindInfoCount
        externsync : pBindInfo[].pWaitSemaphores[],pBindInfo[].pSignalSemaphores[],pBindInfo[].pBufferBinds[].buffer,pBindInfo[].pImageOpaqueBinds[].image,pBindInfo[].pImageBinds[].image
    `fence::VkFence`
        optional : true
        externsync : true

usage:

 * `fence` **must** be unsignalled
 * `fence` mustnot: be associated with any other queue command that has not yet completed execution on that queue
"""
api.vkQueueBindSparse

"""
`vkCreateFence` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkFenceCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pFence::VkFence`


"""
api.vkCreateFence

"""
`vkDestroyFence` returns `void`


parameters:

    `device::VkDevice`
    `fence::VkFence`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * `fence` mustnot: be associated with any queue command that has not yet completed execution on that queue
 * If `VkAllocationCallbacks` were provided when `fence` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `fence` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyFence

"""
`vkResetFences` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `fenceCount::uint32_t`
    `pFences::VkFence`
        len : fenceCount
        externsync : true

usage:

 * Any given element of `pFences` mustnot: currently be associated with any queue command that has not yet completed execution on that queue
"""
api.vkResetFences

"""
`vkGetFenceStatus` returns `VkResult`

successcodes : VK_SUCCESS,VK_NOT_READY
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `device::VkDevice`
    `fence::VkFence`


"""
api.vkGetFenceStatus

"""
`vkWaitForFences` returns `VkResult`

successcodes : VK_SUCCESS,VK_TIMEOUT
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `device::VkDevice`
    `fenceCount::uint32_t`
    `pFences::VkFence`
        len : fenceCount
    `waitAll::VkBool32`
    `timeout::uint64_t`


"""
api.vkWaitForFences

"""
`vkCreateSemaphore` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkSemaphoreCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSemaphore::VkSemaphore`


"""
api.vkCreateSemaphore

"""
`vkDestroySemaphore` returns `void`


parameters:

    `device::VkDevice`
    `semaphore::VkSemaphore`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * `semaphore` mustnot: be associated with any queue command that has not yet completed execution on that queue
 * If `VkAllocationCallbacks` were provided when `semaphore` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `semaphore` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroySemaphore

"""
`vkCreateEvent` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkEventCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pEvent::VkEvent`


"""
api.vkCreateEvent

"""
`vkDestroyEvent` returns `void`


parameters:

    `device::VkDevice`
    `event::VkEvent`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `event` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `event` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `event` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyEvent

"""
`vkGetEventStatus` returns `VkResult`

successcodes : VK_EVENT_SET,VK_EVENT_RESET
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `device::VkDevice`
    `event::VkEvent`


"""
api.vkGetEventStatus

"""
`vkSetEvent` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `event::VkEvent`
        externsync : true


"""
api.vkSetEvent

"""
`vkResetEvent` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `event::VkEvent`
        externsync : true


"""
api.vkResetEvent

"""
`vkCreateQueryPool` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkQueryPoolCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pQueryPool::VkQueryPool`


"""
api.vkCreateQueryPool

"""
`vkDestroyQueryPool` returns `void`


parameters:

    `device::VkDevice`
    `queryPool::VkQueryPool`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `queryPool` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `queryPool` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `queryPool` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyQueryPool

"""
`vkGetQueryPoolResults` returns `VkResult`

successcodes : VK_SUCCESS,VK_NOT_READY
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST

parameters:

    `device::VkDevice`
    `queryPool::VkQueryPool`
    `firstQuery::uint32_t`
    `queryCount::uint32_t`
    `dataSize::size_t`
    `pData::void`
        len : dataSize
    `stride::VkDeviceSize`
    `flags::VkQueryResultFlags`
        optional : true

usage:

 * `firstQuery` **must** be less than the number of queries in `queryPool`
 * If ename:VK_QUERY_RESULT_64_BIT is not set in `flags` then `pData` and `stride` must be multiples of `4`
 * If ename:VK_QUERY_RESULT_64_BIT is set in `flags` then `pData` and `stride` must be multiples of `8`
 * The sum of `firstQuery` and `queryCount` **must** be less than or equal to the number of queries in `queryPool`
 * `dataSize` **must** be large enough to contain the result of each query, as described <<queries-operation-memorylayout,here>>
 * If the `queryType` used to create `queryPool` was ename:VK_QUERY_TYPE_TIMESTAMP, `flags` mustnot: contain ename:VK_QUERY_RESULT_PARTIAL_BIT
"""
api.vkGetQueryPoolResults

"""
`vkCreateBuffer` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkBufferCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pBuffer::VkBuffer`

usage:

 * If the `flags` member of `pCreateInfo` includes ename:VK_BUFFER_CREATE_SPARSE_BINDING_BIT or ename:VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT, creating this `VkBuffer` mustnot: cause the total required sparse memory for all currently valid sparse resources on the device to exceed `VkPhysicalDeviceLimits`::`sparseAddressSpaceSize`
"""
api.vkCreateBuffer

"""
`vkDestroyBuffer` returns `void`


parameters:

    `device::VkDevice`
    `buffer::VkBuffer`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `buffer`, either directly or via a `VkBufferView`, **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `buffer` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `buffer` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyBuffer

"""
`vkCreateBufferView` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkBufferViewCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pView::VkBufferView`


"""
api.vkCreateBufferView

"""
`vkDestroyBufferView` returns `void`


parameters:

    `device::VkDevice`
    `bufferView::VkBufferView`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `bufferView` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `bufferView` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `bufferView` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyBufferView

"""
`vkCreateImage` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkImageCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pImage::VkImage`

usage:

 * If the `flags` member of `pCreateInfo` includes ename:VK_IMAGE_CREATE_SPARSE_BINDING_BIT or ename:VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT, creating this `VkImage` mustnot: cause the total required sparse memory for all currently valid sparse resources on the device to exceed `VkPhysicalDeviceLimits`::`sparseAddressSpaceSize`
"""
api.vkCreateImage

"""
`vkDestroyImage` returns `void`


parameters:

    `device::VkDevice`
    `image::VkImage`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `image`, either directly or via a `VkImageView`, **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `image` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `image` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyImage

"""
`vkGetImageSubresourceLayout` returns `void`


parameters:

    `device::VkDevice`
    `image::VkImage`
    `pSubresource::VkImageSubresource`
    `pLayout::VkSubresourceLayout`

usage:

 * `image` **must** have been created with `tiling` equal to ename:VK_IMAGE_TILING_LINEAR
 * The `aspectMask` member of `pSubresource` **must** only have a single bit set
"""
api.vkGetImageSubresourceLayout

"""
`vkCreateImageView` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkImageViewCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pView::VkImageView`


"""
api.vkCreateImageView

"""
`vkDestroyImageView` returns `void`


parameters:

    `device::VkDevice`
    `imageView::VkImageView`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `imageView` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `imageView` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `imageView` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyImageView

"""
`vkCreateShaderModule` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkShaderModuleCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pShaderModule::VkShaderModule`


"""
api.vkCreateShaderModule

"""
`vkDestroyShaderModule` returns `void`


parameters:

    `device::VkDevice`
    `shaderModule::VkShaderModule`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * If `VkAllocationCallbacks` were provided when `shaderModule` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `shaderModule` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyShaderModule

"""
`vkCreatePipelineCache` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkPipelineCacheCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pPipelineCache::VkPipelineCache`


"""
api.vkCreatePipelineCache

"""
`vkDestroyPipelineCache` returns `void`


parameters:

    `device::VkDevice`
    `pipelineCache::VkPipelineCache`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * If `VkAllocationCallbacks` were provided when `pipelineCache` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `pipelineCache` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyPipelineCache

"""
`vkGetPipelineCacheData` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pipelineCache::VkPipelineCache`
    `pDataSize::size_t`
        optional : false,true
    `pData::void`
        optional : true
        len : pDataSize


"""
api.vkGetPipelineCacheData

"""
`vkMergePipelineCaches` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `dstCache::VkPipelineCache`
        externsync : true
    `srcCacheCount::uint32_t`
    `pSrcCaches::VkPipelineCache`
        len : srcCacheCount

usage:

 * `dstCache` mustnot: appear in the list of source caches
"""
api.vkMergePipelineCaches

"""
`vkCreateGraphicsPipelines` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pipelineCache::VkPipelineCache`
        optional : true
    `createInfoCount::uint32_t`
    `pCreateInfos::VkGraphicsPipelineCreateInfo`
        len : createInfoCount
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pPipelines::VkPipeline`
        len : createInfoCount

usage:

 * If the value of the `flags` member of any given element of `pCreateInfos` contains the ename:VK_PIPELINE_CREATE_DERIVATIVE_BIT flag, and the `basePipelineIndex` member of that same element is not `-1`, the value of `basePipelineIndex` **must** be less than the index into `pCreateInfos` that corresponds to that element
"""
api.vkCreateGraphicsPipelines

"""
`vkCreateComputePipelines` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pipelineCache::VkPipelineCache`
        optional : true
    `createInfoCount::uint32_t`
    `pCreateInfos::VkComputePipelineCreateInfo`
        len : createInfoCount
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pPipelines::VkPipeline`
        len : createInfoCount

usage:

 * If the value of the `flags` member of any given element of `pCreateInfos` contains the ename:VK_PIPELINE_CREATE_DERIVATIVE_BIT flag, and the `basePipelineIndex` member of that same element is not `-1`, the value of `basePipelineIndex` **must** be less than the index into `pCreateInfos` that corresponds to that element
"""
api.vkCreateComputePipelines

"""
`vkDestroyPipeline` returns `void`


parameters:

    `device::VkDevice`
    `pipeline::VkPipeline`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `pipeline` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `pipeline` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `pipeline` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyPipeline

"""
`vkCreatePipelineLayout` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkPipelineLayoutCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pPipelineLayout::VkPipelineLayout`


"""
api.vkCreatePipelineLayout

"""
`vkDestroyPipelineLayout` returns `void`


parameters:

    `device::VkDevice`
    `pipelineLayout::VkPipelineLayout`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * If `VkAllocationCallbacks` were provided when `pipelineLayout` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `pipelineLayout` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyPipelineLayout

"""
`vkCreateSampler` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_TOO_MANY_OBJECTS

parameters:

    `device::VkDevice`
    `pCreateInfo::VkSamplerCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSampler::VkSampler`


"""
api.vkCreateSampler

"""
`vkDestroySampler` returns `void`


parameters:

    `device::VkDevice`
    `sampler::VkSampler`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `sampler` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `sampler` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `sampler` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroySampler

"""
`vkCreateDescriptorSetLayout` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkDescriptorSetLayoutCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSetLayout::VkDescriptorSetLayout`


"""
api.vkCreateDescriptorSetLayout

"""
`vkDestroyDescriptorSetLayout` returns `void`


parameters:

    `device::VkDevice`
    `descriptorSetLayout::VkDescriptorSetLayout`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * If `VkAllocationCallbacks` were provided when `descriptorSetLayout` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `descriptorSetLayout` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyDescriptorSetLayout

"""
`vkCreateDescriptorPool` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkDescriptorPoolCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pDescriptorPool::VkDescriptorPool`


"""
api.vkCreateDescriptorPool

"""
`vkDestroyDescriptorPool` returns `void`


parameters:

    `device::VkDevice`
    `descriptorPool::VkDescriptorPool`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `descriptorPool` (via any allocated descriptor sets) **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `descriptorPool` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `descriptorPool` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyDescriptorPool

"""
`vkResetDescriptorPool` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `descriptorPool::VkDescriptorPool`
        externsync : true
    `flags::VkDescriptorPoolResetFlags`
        optional : true

usage:

 * All uses of `descriptorPool` (via any allocated descriptor sets) **must** have completed execution
"""
api.vkResetDescriptorPool

"""
`vkAllocateDescriptorSets` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pAllocateInfo::VkDescriptorSetAllocateInfo`
        externsync : pAllocateInfo->descriptorPool
    `pDescriptorSets::VkDescriptorSet`
        len : pAllocateInfo->descriptorSetCount


"""
api.vkAllocateDescriptorSets

"""
`vkFreeDescriptorSets` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `descriptorPool::VkDescriptorPool`
        externsync : true
    `descriptorSetCount::uint32_t`
    `pDescriptorSets::VkDescriptorSet`
        noautovalidity : true
        externsync : true
        len : descriptorSetCount

usage:

 * All submitted commands that refer to any element of `pDesciptorSets` **must** have completed execution
 * `pDescriptorSets` **must** be a pointer to an array of `descriptorSetCount` `VkDescriptorSet` handles, each element of which **must** either be a valid handle or `VK_NULL_HANDLE`
 * `descriptorPool` **must** have been created with the ename:VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT flag
"""
api.vkFreeDescriptorSets

"""
`vkUpdateDescriptorSets` returns `void`


parameters:

    `device::VkDevice`
    `descriptorWriteCount::uint32_t`
        optional : true
    `pDescriptorWrites::VkWriteDescriptorSet`
        len : descriptorWriteCount
        externsync : pDescriptorWrites[].dstSet
    `descriptorCopyCount::uint32_t`
        optional : true
    `pDescriptorCopies::VkCopyDescriptorSet`
        len : descriptorCopyCount
        externsync : pDescriptorCopies[].dstSet


"""
api.vkUpdateDescriptorSets

"""
`vkCreateFramebuffer` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkFramebufferCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pFramebuffer::VkFramebuffer`


"""
api.vkCreateFramebuffer

"""
`vkDestroyFramebuffer` returns `void`


parameters:

    `device::VkDevice`
    `framebuffer::VkFramebuffer`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `framebuffer` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `framebuffer` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `framebuffer` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyFramebuffer

"""
`vkCreateRenderPass` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkRenderPassCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pRenderPass::VkRenderPass`


"""
api.vkCreateRenderPass

"""
`vkDestroyRenderPass` returns `void`


parameters:

    `device::VkDevice`
    `renderPass::VkRenderPass`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All submitted commands that refer to `renderPass` **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `renderPass` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `renderPass` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyRenderPass

"""
`vkGetRenderAreaGranularity` returns `void`


parameters:

    `device::VkDevice`
    `renderPass::VkRenderPass`
    `pGranularity::VkExtent2D`


"""
api.vkGetRenderAreaGranularity

"""
`vkCreateCommandPool` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pCreateInfo::VkCommandPoolCreateInfo`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pCommandPool::VkCommandPool`


"""
api.vkCreateCommandPool

"""
`vkDestroyCommandPool` returns `void`


parameters:

    `device::VkDevice`
    `commandPool::VkCommandPool`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All `VkCommandBuffer` objects allocated from `commandPool` mustnot: be pending execution
 * If `VkAllocationCallbacks` were provided when `commandPool` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `commandPool` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyCommandPool

"""
`vkResetCommandPool` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `commandPool::VkCommandPool`
        externsync : true
    `flags::VkCommandPoolResetFlags`
        optional : true

usage:

 * All `VkCommandBuffer` objects allocated from `commandPool` mustnot: currently be pending execution
"""
api.vkResetCommandPool

"""
`vkAllocateCommandBuffers` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `pAllocateInfo::VkCommandBufferAllocateInfo`
        externsync : pAllocateInfo->commandPool
    `pCommandBuffers::VkCommandBuffer`
        len : pAllocateInfo->commandBufferCount


"""
api.vkAllocateCommandBuffers

"""
`vkFreeCommandBuffers` returns `void`


parameters:

    `device::VkDevice`
    `commandPool::VkCommandPool`
        externsync : true
    `commandBufferCount::uint32_t`
    `pCommandBuffers::VkCommandBuffer`
        noautovalidity : true
        externsync : true
        len : commandBufferCount

usage:

 * All elements of `pCommandBuffers` mustnot: be pending execution
 * `pCommandBuffers` **must** be a pointer to an array of `commandBufferCount` `VkCommandBuffer` handles, each element of which **must** either be a valid handle or `VK_NULL_HANDLE`
"""
api.vkFreeCommandBuffers

"""
`vkBeginCommandBuffer` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `pBeginInfo::VkCommandBufferBeginInfo`

usage:

 * `commandBuffer` mustnot: be in the recording state
 * If `commandBuffer` was allocated from a `VkCommandPool` which did not have the ename:VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT flag set, `commandBuffer` **must** be in the initial state.
 * If `commandBuffer` is a secondary command buffer, the `pInheritanceInfo` member of `pBeginInfo` **must** be a valid `VkCommandBufferInheritanceInfo` structure
 * If `commandBuffer` is a secondary command buffer and either the `occlusionQueryEnable` member of the `pInheritanceInfo` member of `pBeginInfo` is ename:VK_FALSE, or the precise occlusion queries feature is not enabled, the `queryFlags` member of the `pInheritanceInfo` member `pBeginInfo` mustnot: contain ename:VK_QUERY_CONTROL_PRECISE_BIT
"""
api.vkBeginCommandBuffer

"""
`vkEndCommandBuffer` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true

usage:

 * `commandBuffer` **must** be in the recording state
 * fname:vkEndCommandBuffer mustnot: be called inside a render pass instance
 * All queries made <<queries-operation-active,active>> during the recording of `commandBuffer` **must** have been made inactive
"""
api.vkEndCommandBuffer

"""
`vkResetCommandBuffer` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `flags::VkCommandBufferResetFlags`
        optional : true

usage:

 * `commandBuffer` mustnot: currently be pending execution
 * `commandBuffer` **must** have been allocated from a pool that was created with the ename:VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
"""
api.vkResetCommandBuffer

"""
`vkCmdBindPipeline` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `pipelineBindPoint::VkPipelineBindPoint`
    `pipeline::VkPipeline`

usage:

 * If the value of `pipelineBindPoint` is ename:VK_PIPELINE_BIND_POINT_COMPUTE, the `VkCommandPool` that `commandBuffer` was allocated from **must** support compute operations
 * If the value of `pipelineBindPoint` is ename:VK_PIPELINE_BIND_POINT_GRAPHICS, the `VkCommandPool` that `commandBuffer` was allocated from **must** support graphics operations
 * If the value of `pipelineBindPoint` is ename:VK_PIPELINE_BIND_POINT_COMPUTE, `pipeline` **must** be a compute pipeline
 * If the value of `pipelineBindPoint` is ename:VK_PIPELINE_BIND_POINT_GRAPHICS, `pipeline` **must** be a graphics pipeline
 * If the <<features-features-variableMultisampleRate,variable multisample rate>> feature is not supported, `pipeline` is a graphics pipeline, the current subpass has no attachments, and this is not the first call to this function with a graphics pipeline after transitioning to the current subpass, then the sample count specified by this pipeline **must** match that set in the previous pipeline
"""
api.vkCmdBindPipeline

"""
`vkCmdSetViewport` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `firstViewport::uint32_t`
    `viewportCount::uint32_t`
    `pViewports::VkViewport`
        len : viewportCount

usage:

 * `firstViewport` **must** be less than `VkPhysicalDeviceLimits`::`maxViewports`
 * The sum of `firstViewport` and `viewportCount` **must** be between `1` and `VkPhysicalDeviceLimits`::`maxViewports`, inclusive
"""
api.vkCmdSetViewport

"""
`vkCmdSetScissor` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `firstScissor::uint32_t`
    `scissorCount::uint32_t`
    `pScissors::VkRect2D`
        len : scissorCount

usage:

 * `firstScissor` **must** be less than `VkPhysicalDeviceLimits`::`maxViewports`
 * The sum of `firstScissor` and `scissorCount` **must** be between `1` and `VkPhysicalDeviceLimits`::`maxViewports`, inclusive
 * The `x` and `y` members of `offset` **must** be greater than or equal to `0`
 * Evaluation of (`offset`.x + `extent`.width) mustnot: cause a signed integer addition overflow
 * Evaluation of (`offset`.y + `extent`.height) mustnot: cause a signed integer addition overflow
"""
api.vkCmdSetScissor

"""
`vkCmdSetLineWidth` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `lineWidth::float`

usage:

 * If the <<features-features-wideLines,wide lines>> feature is not enabled, the value of `lineWidth` **must** be `1.0`
"""
api.vkCmdSetLineWidth

"""
`vkCmdSetDepthBias` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `depthBiasConstantFactor::float`
    `depthBiasClamp::float`
    `depthBiasSlopeFactor::float`

usage:

 * If the <<features-features-depthBiasClamp,depth bias clamping>> feature is not enabled, the value of `depthBiasClamp` **must** be code:0.0
"""
api.vkCmdSetDepthBias

"""
`vkCmdSetBlendConstants` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `blendConstants::float`


"""
api.vkCmdSetBlendConstants

"""
`vkCmdSetDepthBounds` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `minDepthBounds::float`
    `maxDepthBounds::float`

usage:

 * The value of `minDepthBounds` **must** be between `0.0` and `1.0`, inclusive
 * The value of `maxDepthBounds` **must** be between `0.0` and `1.0`, inclusive
"""
api.vkCmdSetDepthBounds

"""
`vkCmdSetStencilCompareMask` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `faceMask::VkStencilFaceFlags`
    `compareMask::uint32_t`


"""
api.vkCmdSetStencilCompareMask

"""
`vkCmdSetStencilWriteMask` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `faceMask::VkStencilFaceFlags`
    `writeMask::uint32_t`


"""
api.vkCmdSetStencilWriteMask

"""
`vkCmdSetStencilReference` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `faceMask::VkStencilFaceFlags`
    `reference::uint32_t`


"""
api.vkCmdSetStencilReference

"""
`vkCmdBindDescriptorSets` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `pipelineBindPoint::VkPipelineBindPoint`
    `layout::VkPipelineLayout`
    `firstSet::uint32_t`
    `descriptorSetCount::uint32_t`
    `pDescriptorSets::VkDescriptorSet`
        len : descriptorSetCount
    `dynamicOffsetCount::uint32_t`
        optional : true
    `pDynamicOffsets::uint32_t`
        len : dynamicOffsetCount

usage:

 * Any given element of `pDescriptorSets` **must** have been created with a `VkDescriptorSetLayout` that matches the `VkDescriptorSetLayout` at set _n_ in `layout`, where _n_ is the sum of the index into `pDescriptorSets` and `firstSet`
 * `dynamicOffsetCount` **must** be equal to the total number of dynamic descriptors in `pDescriptorSets`
 * `pipelineBindPoint` **must** be supported by the `commandBuffer`'s parent `VkCommandPool`'s queue family
 * Any given element of `pDynamicOffsets` **must** satisfy the required alignment for the corresponding descriptor binding's descriptor type
"""
api.vkCmdBindDescriptorSets

"""
`vkCmdBindIndexBuffer` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `buffer::VkBuffer`
    `offset::VkDeviceSize`
    `indexType::VkIndexType`

usage:

 * The value of `offset` **must** be less than the size of `buffer`
 * The sum of `offset`, and the address of the range of `VkDeviceMemory` object that's backing `buffer`, **must** be a multiple of the type indicated by `indexType`
 * `buffer` **must** have been created with the ename:VK_BUFFER_USAGE_INDEX_BUFFER_BIT flag
"""
api.vkCmdBindIndexBuffer

"""
`vkCmdBindVertexBuffers` returns `void`

queues : graphics
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `firstBinding::uint32_t`
    `bindingCount::uint32_t`
    `pBuffers::VkBuffer`
        len : bindingCount
    `pOffsets::VkDeviceSize`
        len : bindingCount

usage:

 * `firstBinding` **must** be less than `VkPhysicalDeviceLimits`::`maxVertexInputBindings`
 * The sum of `firstBinding` and `bindingCount` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxVertexInputBindings`
 * All elements of `pOffsets` **must** be less than the size of the corresponding element in `pBuffers`
 * All elements of `pBuffers` **must** have been created with the ename:VK_BUFFER_USAGE_VERTEX_BUFFER_BIT flag
"""
api.vkCmdBindVertexBuffers

"""
`vkCmdDraw` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `vertexCount::uint32_t`
    `instanceCount::uint32_t`
    `firstVertex::uint32_t`
    `firstInstance::uint32_t`

usage:

 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for push constants, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * All vertex input bindings accessed via vertex input variables declared in the vertex shader entry point's interface **must** have valid buffers bound
 * For a given vertex buffer binding, any attribute data fetched **must** be entirely contained within the corresponding vertex buffer binding, as described in <<fxvertex-input>>
 * A valid graphics pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_GRAPHICS
 * If the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS requires any dynamic state, that state **must** have been set on the current command buffer
 * Every input attachment used by the current subpass **must** be bound to the pipeline via a descriptor set
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDraw

"""
`vkCmdDrawIndexed` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `indexCount::uint32_t`
    `instanceCount::uint32_t`
    `firstIndex::uint32_t`
    `vertexOffset::int32_t`
    `firstInstance::uint32_t`

usage:

 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for push constants, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * All vertex input bindings accessed via vertex input variables declared in the vertex shader entry point's interface **must** have valid buffers bound
 * For a given vertex buffer binding, any attribute data fetched **must** be entirely contained within the corresponding vertex buffer binding, as described in <<fxvertex-input>>
 * A valid graphics pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_GRAPHICS
 * If the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS requires any dynamic state, that state **must** have been set on the current command buffer
 * The total value of (`indexSize` * (`firstIndex` + `indexCount`) + `offset`) **must** be less than or equal to the size of the currently bound index buffer, with indexSize being based on the type specified by `indexType`, where the index buffer, `indexType`, and `offset` are specified via fname:vkCmdBindIndexBuffer
 * Every input attachment used by the current subpass **must** be bound to the pipeline via a descriptor set
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDrawIndexed

"""
`vkCmdDrawIndirect` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `buffer::VkBuffer`
    `offset::VkDeviceSize`
    `drawCount::uint32_t`
    `stride::uint32_t`

usage:

 * The value of `offset` **must** be a multiple of `4`
 * If `drawCount` is greater than `1`, the value of `stride` **must** be a multiple of `4` and **must** be greater than or equal to sizeof(`VkDrawIndirectCommand`)
 * If the <<features-features-multiDrawIndirect,multi-draw indirect>> feature is not enabled, the value of `drawCount` **must** be `0` or `1`
 * If the <<features-features-drawIndirectFirstInstance,drawIndirectFirstInstance>> feature is not enabled, all the `firstInstance` members of the `VkDrawIndirectCommand` structures accessed by this command **must** be code:0
 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for push constants, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * All vertex input bindings accessed via vertex input variables declared in the vertex shader entry point's interface **must** have valid buffers bound
 * A valid graphics pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_GRAPHICS
 * If the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS requires any dynamic state, that state **must** have been set on the current command buffer
 * If `drawCount` is equal to `1`, the total value of (`offset` + sizeof(`VkDrawIndirectCommand`)) **must** be less than or equal to the size of `buffer`
 * If `drawCount` is greater than `1`, the total value of (`stride` x (`drawCount` - 1) + `offset` + sizeof(`VkDrawIndirectCommand`)) **must** be less than or equal to the size of `buffer`
 * `drawCount` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxDrawIndirectCount`
 * Every input attachment used by the current subpass **must** be bound to the pipeline via a descriptor set
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDrawIndirect

"""
`vkCmdDrawIndexedIndirect` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `buffer::VkBuffer`
    `offset::VkDeviceSize`
    `drawCount::uint32_t`
    `stride::uint32_t`

usage:

 * The value of `offset` **must** be a multiple of `4`
 * If `drawCount` is greater than `1`, the value of `stride` **must** be a multiple of `4` and **must** be greater than or equal to sizeof(`VkDrawIndexedIndirectCommand`)
 * If the <<features-features-multiDrawIndirect,multi-draw indirect>> feature is not enabled, the value of `drawCount` **must** be `0` or `1`
 * If the <<features-features-drawIndirectFirstInstance,drawIndirectFirstInstance>> feature is not enabled, all the `firstInstance` members of the `VkDrawIndexedIndirectCommand` structures accessed by this command **must** be code:0
 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_GRAPHICS, with a `VkPipelineLayout` that is compatible for push constants, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * All vertex input bindings accessed via vertex input variables declared in the vertex shader entry point's interface **must** have valid buffers bound
 * A valid graphics pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_GRAPHICS
 * If the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS requires any dynamic state, that state **must** have been set on the current command buffer
 * If `drawCount` is equal to `1`, the total value of (`offset` + sizeof(`VkDrawIndexedIndirectCommand`)) **must** be less than or equal to the size of `buffer`
 * If `drawCount` is greater than `1`, the total value of (`stride` x (`drawCount` - 1) + `offset` + sizeof(`VkDrawIndexedIndirectCommand`)) **must** be less than or equal to the size of `buffer`
 * `drawCount` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxDrawIndirectCount`
 * Every input attachment used by the current subpass **must** be bound to the pipeline via a descriptor set
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_GRAPHICS accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDrawIndexedIndirect

"""
`vkCmdDispatch` returns `void`

queues : compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `x::uint32_t`
    `y::uint32_t`
    `z::uint32_t`

usage:

 * `x` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxComputeWorkGroupCount`[0]
 * `y` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxComputeWorkGroupCount`[1]
 * `z` **must** be less than or equal to `VkPhysicalDeviceLimits`::`maxComputeWorkGroupCount`[2]
 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_COMPUTE, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * A valid compute pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_COMPUTE
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_COMPUTE, with a `VkPipelineLayout` that is compatible for push constants with the one used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDispatch

"""
`vkCmdDispatchIndirect` returns `void`

queues : compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `buffer::VkBuffer`
    `offset::VkDeviceSize`

usage:

 * For each set _n_ that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE, a descriptor set **must** have been bound to _n_ at ename:VK_PIPELINE_BIND_POINT_COMPUTE, with a `VkPipelineLayout` that is compatible for set _n_, with the `VkPipelineLayout` used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * Descriptors in each bound descriptor set, specified via fname:vkCmdBindDescriptorSets, **must** be valid if they are statically used by the currently bound `VkPipeline` object, specified via fname:vkCmdBindPipeline
 * A valid compute pipeline **must** be bound to the current command buffer with ename:VK_PIPELINE_BIND_POINT_COMPUTE
 * `buffer` **must** have been created with the ename:VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT bit set
 * The value of `offset` **must** be a multiple of `4`
 * The sum of `offset` and the size of `VkDispatchIndirectCommand` **must** be less than or equal to the size of `buffer`
 * For each push constant that is statically used by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE, a push constant value **must** have been set for ename:VK_PIPELINE_BIND_POINT_COMPUTE, with a `VkPipelineLayout` that is compatible for push constants with the one used to create the current `VkPipeline`, as described in <<descriptorsets-compatibility>>
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used to sample from any `VkImage` with a `VkImageView` of the type ename:VK_IMAGE_VIEW_TYPE_3D, ename:VK_IMAGE_VIEW_TYPE_CUBE, ename:VK_IMAGE_VIEW_TYPE_1D_ARRAY, ename:VK_IMAGE_VIEW_TYPE_2D_ARRAY or ename:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions with code:ImplicitLod, code:Dref or code:Proj in their name, in any shader stage
 * If any `VkSampler` object that is accessed from a shader by the `VkPipeline` currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE uses unnormalized coordinates, it mustnot: be used with any of the SPIR-V `OpImageSample*` or `OpImageSparseSample*` instructions that includes a lod bias or any offset values, in any shader stage
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE accesses a uniform buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * If the <<features-features-robustBufferAccess,robust buffer access>> feature is not enabled, and any shader stage in the `VkPipeline` object currently bound to ename:VK_PIPELINE_BIND_POINT_COMPUTE accesses a storage buffer, it mustnot: access values outside of the range of that buffer specified in the currently bound descriptor set
 * Any slink:VkImage being sampled with ename:VK_FILTER_LINEAR as a result of this command **must** be of a format which supports linear filtering, as specified by the ename:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdDispatchIndirect

"""
`vkCmdCopyBuffer` returns `void`

queues : transfer,graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcBuffer::VkBuffer`
    `dstBuffer::VkBuffer`
    `regionCount::uint32_t`
    `pRegions::VkBufferCopy`
        len : regionCount

usage:

 * The sum of the `srcOffset` and `copySize` members of a given element of `pRegions` **must** be less than or equal to the size of `srcBuffer`
 * The sum of the `dstOffset` and `copySize` members of a given element of `pRegions` **must** be less than or equal to the size of `dstBuffer`
 * The union of the source regions, and the union of the destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_SRC_BIT usage flag
 * `dstBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_DST_BIT usage flag
"""
api.vkCmdCopyBuffer

"""
`vkCmdCopyImage` returns `void`

queues : transfer,graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcImage::VkImage`
    `srcImageLayout::VkImageLayout`
    `dstImage::VkImage`
    `dstImageLayout::VkImageLayout`
    `regionCount::uint32_t`
    `pRegions::VkImageCopy`
        len : regionCount

usage:

 * The source region specified by a given element of `pRegions` **must** be a region that is contained within `srcImage`
 * The destination region specified by a given element of `pRegions` **must** be a region that is contained within `dstImage`
 * The union of all source regions, and the union of all destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_SRC_BIT usage flag
 * `srcImageLayout` **must** specify the layout of the subresources of `srcImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `srcImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * `dstImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT usage flag
 * `dstImageLayout` **must** specify the layout of the subresources of `dstImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `dstImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * The elink:VkFormat of each of `srcImage` and `dstImage` **must** be compatible, as defined <<copies-images-format-compatibility, below>>
 * The sample count of `srcImage` and `dstImage` **must** match
"""
api.vkCmdCopyImage

"""
`vkCmdBlitImage` returns `void`

queues : graphics
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcImage::VkImage`
    `srcImageLayout::VkImageLayout`
    `dstImage::VkImage`
    `dstImageLayout::VkImageLayout`
    `regionCount::uint32_t`
    `pRegions::VkImageBlit`
        len : regionCount
    `filter::VkFilter`

usage:

 * The source region specified by a given element of `pRegions` **must** be a region that is contained within `srcImage`
 * The destination region specified by a given element of `pRegions` **must** be a region that is contained within `dstImage`
 * The union of all source regions, and the union of all destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcImage` **must** use a format that supports ename:VK_FORMAT_FEATURE_BLIT_SRC_BIT, which is indicated by `VkFormatProperties`::`linearTilingFeatures` (for linear tiled images) or `VkFormatProperties`::`optimalTilingFeatures` (for optimally tiled images) - as returned by fname:vkGetPhysicalDeviceFormatProperties
 * `srcImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_SRC_BIT usage flag
 * `srcImageLayout` **must** specify the layout of the subresources of `srcImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `srcImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * `dstImage` **must** use a format that supports ename:VK_FORMAT_FEATURE_BLIT_DST_BIT, which is indicated by `VkFormatProperties`::`linearTilingFeatures` (for linear tiled images) or `VkFormatProperties`::`optimalTilingFeatures` (for optimally tiled images) - as returned by fname:vkGetPhysicalDeviceFormatProperties
 * `dstImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT usage flag
 * `dstImageLayout` **must** specify the layout of the subresources of `dstImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `dstImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * The sample count of `srcImage` and `dstImage` **must** both be equal to ename:VK_SAMPLE_COUNT_1_BIT
 * If either of `srcImage` or `dstImage` was created with a signed integer elink:VkFormat, the other **must** also have been created with a signed integer elink:VkFormat
 * If either of `srcImage` or `dstImage` was created with an unsigned integer elink:VkFormat, the other **must** also have been created with an unsigned integer elink:VkFormat
 * If either of `srcImage` or `dstImage` was created with a depth/stencil format, the other **must** have exactly the same format
 * If `srcImage` was created with a depth/stencil format, `filter` **must** be ename:VK_FILTER_NEAREST
"""
api.vkCmdBlitImage

"""
`vkCmdCopyBufferToImage` returns `void`

queues : transfer,graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcBuffer::VkBuffer`
    `dstImage::VkImage`
    `dstImageLayout::VkImageLayout`
    `regionCount::uint32_t`
    `pRegions::VkBufferImageCopy`
        len : regionCount

usage:

 * The buffer region specified by a given element of `pRegions` **must** be a region that is contained within `srcBuffer`
 * The image region specified by a given element of `pRegions` **must** be a region that is contained within `dstImage`
 * The union of all source regions, and the union of all destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_SRC_BIT usage flag
 * `dstImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT usage flag
 * `dstImage` **must** have a sample count equal to ename:VK_SAMPLE_COUNT_1_BIT
 * `dstImageLayout` **must** specify the layout of the subresources of `dstImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `dstImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
"""
api.vkCmdCopyBufferToImage

"""
`vkCmdCopyImageToBuffer` returns `void`

queues : transfer,graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcImage::VkImage`
    `srcImageLayout::VkImageLayout`
    `dstBuffer::VkBuffer`
    `regionCount::uint32_t`
    `pRegions::VkBufferImageCopy`
        len : regionCount

usage:

 * The image region specified by a given element of `pRegions` **must** be a region that is contained within `srcImage`
 * The buffer region specified by a given element of `pRegions` **must** be a region that is contained within `dstBuffer`
 * The union of all source regions, and the union of all destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcImage` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_SRC_BIT usage flag
 * `srcImage` **must** have a sample count equal to ename:VK_SAMPLE_COUNT_1_BIT
 * `srcImageLayout` **must** specify the layout of the subresources of `srcImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `srcImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * `dstBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_DST_BIT usage flag
"""
api.vkCmdCopyImageToBuffer

"""
`vkCmdUpdateBuffer` returns `void`

queues : transfer,graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `dstBuffer::VkBuffer`
    `dstOffset::VkDeviceSize`
    `dataSize::VkDeviceSize`
    `pData::uint32_t`
        len : dataSize / 4

usage:

 * The sum of `dstOffset` and `dataSize` **must** be less than or equal to the size of `dstBuffer`
 * `dstBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_DST_BIT usage flag
 * The value of `dstOffset` **must** be a multiple of `4`
 * The value of `dataSize` **must** be greater than `0`
 * The value of `dataSize` **must** be less than or equal to `65536`
 * The value of `dataSize` **must** be a multiple of `4`
"""
api.vkCmdUpdateBuffer

"""
`vkCmdFillBuffer` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `dstBuffer::VkBuffer`
    `dstOffset::VkDeviceSize`
    `size::VkDeviceSize`
    `data::uint32_t`

usage:

 * If `size` is not equal to ename:VK_WHOLE_SIZE, the sum of `dstOffset` and `size` **must** be less than or equal to the size of `dstBuffer`
 * `dstBuffer` **must** have been created with ename:VK_BUFFER_USAGE_TRANSFER_DST_BIT usage flag
 * `dstOffset` **must** be a multiple of `4`
 * If `size` is not equal to ename:VK_WHOLE_SIZE, `size` **must** be a multiple of `4`
"""
api.vkCmdFillBuffer

"""
`vkCmdClearColorImage` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `image::VkImage`
    `imageLayout::VkImageLayout`
    `pColor::VkClearColorValue`
    `rangeCount::uint32_t`
    `pRanges::VkImageSubresourceRange`
        len : rangeCount

usage:

 * `image` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT usage flag
 * `imageLayout` **must** specify the layout of the subresource ranges of `image` specified in `pRanges` at the time this command is executed on a `VkDevice`
 * `imageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * The image range of any given element of `pRanges` **must** be a subresource range that is contained within `image`
"""
api.vkCmdClearColorImage

"""
`vkCmdClearDepthStencilImage` returns `void`

queues : graphics
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `image::VkImage`
    `imageLayout::VkImageLayout`
    `pDepthStencil::VkClearDepthStencilValue`
    `rangeCount::uint32_t`
    `pRanges::VkImageSubresourceRange`
        len : rangeCount

usage:

 * `image` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT usage flag
 * `imageLayout` **must** specify the layout of the subresource ranges of `image` specified in `pRanges` at the time this command is executed on a `VkDevice`
 * `imageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * The image range of any given element of `pRanges` **must** be a subresource range that is contained within `image`
"""
api.vkCmdClearDepthStencilImage

"""
`vkCmdClearAttachments` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `attachmentCount::uint32_t`
    `pAttachments::VkClearAttachment`
        len : attachmentCount
    `rectCount::uint32_t`
    `pRects::VkClearRect`
        len : rectCount

usage:

 * If the `aspectMask` member of any given element of `pAttachments` contains ename:VK_IMAGE_ASPECT_COLOR_BIT, the `colorAttachment` member of those elements **must** refer to a valid color attachment in the current subpass
 * The rectangular region specified by a given element of `pRects` **must** be contained within the render area of the current render pass instance
 * The layers specified by a given element of `pRects` **must** be contained within every attachment that `pAttachments` refers to
"""
api.vkCmdClearAttachments

"""
`vkCmdResolveImage` returns `void`

queues : graphics
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcImage::VkImage`
    `srcImageLayout::VkImageLayout`
    `dstImage::VkImage`
    `dstImageLayout::VkImageLayout`
    `regionCount::uint32_t`
    `pRegions::VkImageResolve`
        len : regionCount

usage:

 * The source region specified by a given element of `pRegions` **must** be a region that is contained within `srcImage`
 * The destination region specified by a given element of `pRegions` **must** be a region that is contained within `dstImage`
 * The union of all source regions, and the union of all destination regions, specified by the elements of `pRegions`, mustnot: overlap in memory
 * `srcImage` **must** have a sample count equal to any valid sample count value other than ename:VK_SAMPLE_COUNT_1_BIT
 * `dstImage` **must** have a sample count equal to ename:VK_SAMPLE_COUNT_1_BIT
 * `srcImageLayout` **must** specify the layout of the subresources of `srcImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `srcImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * `dstImageLayout` **must** specify the layout of the subresources of `dstImage` specified in `pRegions` at the time this command is executed on a `VkDevice`
 * `dstImageLayout` **must** be either of ename:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL or ename:VK_IMAGE_LAYOUT_GENERAL
 * If `dstImage` was created with `tiling` equal to ename:VK_IMAGE_TILING_LINEAR, `dstImage` **must** have been created with a `format` that supports being a color attachment, as specified by the ename:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT flag in `VkFormatProperties`::`linearTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
 * If `dstImage` was created with `tiling` equal to ename:VK_IMAGE_TILING_OPTIMAL, `dstImage` **must** have been created with a `format` that supports being a color attachment, as specified by the ename:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT flag in `VkFormatProperties`::`optimalTilingFeatures` returned by fname:vkGetPhysicalDeviceFormatProperties
"""
api.vkCmdResolveImage

"""
`vkCmdSetEvent` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `event::VkEvent`
    `stageMask::VkPipelineStageFlags`

usage:

 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `stageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `stageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or ename:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
"""
api.vkCmdSetEvent

"""
`vkCmdResetEvent` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `event::VkEvent`
    `stageMask::VkPipelineStageFlags`

usage:

 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `stageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `stageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or ename:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
"""
api.vkCmdResetEvent

"""
`vkCmdWaitEvents` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `eventCount::uint32_t`
    `pEvents::VkEvent`
        len : eventCount
    `srcStageMask::VkPipelineStageFlags`
    `dstStageMask::VkPipelineStageFlags`
    `memoryBarrierCount::uint32_t`
        optional : true
    `pMemoryBarriers::VkMemoryBarrier`
        len : memoryBarrierCount
    `bufferMemoryBarrierCount::uint32_t`
        optional : true
    `pBufferMemoryBarriers::VkBufferMemoryBarrier`
        len : bufferMemoryBarrierCount
    `imageMemoryBarrierCount::uint32_t`
        optional : true
    `pImageMemoryBarriers::VkImageMemoryBarrier`
        len : imageMemoryBarrierCount

usage:

 * `srcStageMask` **must** be the bitwise OR of the `stageMask` parameter used in previous calls to fname:vkCmdSetEvent with any of the members of `pEvents` and ename:VK_PIPELINE_STAGE_HOST_BIT if any of the members of `pEvents` was set using fname:vkSetEvent
 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `srcStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `dstStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `srcStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or ename:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `dstStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or ename:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
 * If `pEvents` includes one or more events that will be signaled by fname:vkSetEvent after `commandBuffer` has been submitted to a queue, then fname:vkCmdWaitEvents mustnot: be called inside a render pass instance
"""
api.vkCmdWaitEvents

"""
`vkCmdPipelineBarrier` returns `void`

queues : transfer,graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `srcStageMask::VkPipelineStageFlags`
    `dstStageMask::VkPipelineStageFlags`
    `dependencyFlags::VkDependencyFlags`
        optional : true
    `memoryBarrierCount::uint32_t`
        optional : true
    `pMemoryBarriers::VkMemoryBarrier`
        len : memoryBarrierCount
    `bufferMemoryBarrierCount::uint32_t`
        optional : true
    `pBufferMemoryBarriers::VkBufferMemoryBarrier`
        len : bufferMemoryBarrierCount
    `imageMemoryBarrierCount::uint32_t`
        optional : true
    `pImageMemoryBarriers::VkImageMemoryBarrier`
        len : imageMemoryBarrierCount

usage:

 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `srcStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-geometryShader,geometry shaders>> feature is not enabled, `dstStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `srcStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or ename:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
 * If the <<features-features-tessellationShader,tessellation shaders>> feature is not enabled, `dstStageMask` mustnot: contain ename:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT or `VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT`
 * If fname:vkCmdPipelineBarrier is called within a render pass instance, the render pass **must** declare at least one self-dependency from the current subpass to itself - see <<synchronization-pipeline-barriers-subpass-self-dependencies,Subpass Self-dependency>>
"""
api.vkCmdPipelineBarrier

"""
`vkCmdBeginQuery` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `queryPool::VkQueryPool`
    `query::uint32_t`
    `flags::VkQueryControlFlags`
        optional : true

usage:

 * The query identified by `queryPool` and `query` **must** currently not be <<queries-operation-active,active>>
 * The query identified by `queryPool` and `query` **must** be unavailable
 * If the <<features-features-occlusionQueryPrecise,precise occlusion queries>> feature is not enabled, or the `queryType` used to create `queryPool` was not ename:VK_QUERY_TYPE_OCCLUSION, `flags` mustnot: contain ename:VK_QUERY_CONTROL_PRECISE_BIT
 * `queryPool` **must** have been created with a `queryType` that differs from that of any other queries that have been made <<queries-operation-active,active>>, and are currently still active within `commandBuffer`
 * `query` **must** be less than the number of queries in `queryPool`
 * If the `queryType` used to create `queryPool` was ename:VK_QUERY_TYPE_OCCLUSION, the `VkCommandPool` that `commandBuffer` was created from **must** support graphics operations
 * If the `queryType` used to create `queryPool` was ename:VK_QUERY_TYPE_PIPELINE_STATISTICS and any of the `pipelineStatistics` indicate graphics operations, the `VkCommandPool` that `commandBuffer` was created from **must** support graphics operations
 * If the `queryType` used to create `queryPool` was ename:VK_QUERY_TYPE_PIPELINE_STATISTICS and any of the `pipelineStatistics` indicate compute operations, the `VkCommandPool` that `commandBuffer` was created from **must** support compute operations
"""
api.vkCmdBeginQuery

"""
`vkCmdEndQuery` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `queryPool::VkQueryPool`
    `query::uint32_t`

usage:

 * The query identified by `queryPool` and `query` **must** currently be <<queries-operation-active,active>>
 * `query` **must** be less than the number of queries in `queryPool`
"""
api.vkCmdEndQuery

"""
`vkCmdResetQueryPool` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `queryPool::VkQueryPool`
    `firstQuery::uint32_t`
    `queryCount::uint32_t`

usage:

 * `firstQuery` **must** be less than the number of queries in `queryPool`
 * The sum of `firstQuery` and `queryCount` **must** be less than or equal to the number of queries in `queryPool`
"""
api.vkCmdResetQueryPool

"""
`vkCmdWriteTimestamp` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `pipelineStage::VkPipelineStageFlagBits`
    `queryPool::VkQueryPool`
    `query::uint32_t`

usage:

 * The query identified by `queryPool` and `query` **must** be _unavailable_
 * The command pool's queue family **must** support a non-zero value of `timestampValidBits`
"""
api.vkCmdWriteTimestamp

"""
`vkCmdCopyQueryPoolResults` returns `void`

queues : graphics,compute
renderpass : outside
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `queryPool::VkQueryPool`
    `firstQuery::uint32_t`
    `queryCount::uint32_t`
    `dstBuffer::VkBuffer`
    `dstOffset::VkDeviceSize`
    `stride::VkDeviceSize`
    `flags::VkQueryResultFlags`
        optional : true

usage:

 * `firstQuery` **must** be less than the number of queries in `queryPool`
 * The sum of `firstQuery` and `queryCount` **must** be less than or equal to the number of queries in `queryPool`
 * If ename:VK_QUERY_RESULT_64_BIT is not set in `flags` then `dstOffset` and `stride` must be multiples of `4`
 * If ename:VK_QUERY_RESULT_64_BIT is set in `flags` then `dstOffset` and `stride` must be multiples of `8`
 * `dstBuffer` **must** have enough storage, from `dstOffset`, to contain the result of each query, as described <<queries-operation-memorylayout,here>>
 * If the `queryType` used to create `queryPool` was ename:VK_QUERY_TYPE_TIMESTAMP, `flags` mustnot: contain ename:VK_QUERY_RESULT_PARTIAL_BIT
"""
api.vkCmdCopyQueryPoolResults

"""
`vkCmdPushConstants` returns `void`

queues : graphics,compute
renderpass : both
cmdbufferlevel : primary,secondary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `layout::VkPipelineLayout`
    `stageFlags::VkShaderStageFlags`
    `offset::uint32_t`
    `size::uint32_t`
    `pValues::void`
        len : size

usage:

 * `stageFlags` **must** match exactly the shader stages used in `layout` for the range specified by `offset` and `size`
 * `offset` **must** be a multiple of `4`
 * `size` **must** be a multiple of `4`
"""
api.vkCmdPushConstants

"""
`vkCmdBeginRenderPass` returns `void`

queues : graphics
renderpass : outside
cmdbufferlevel : primary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `pRenderPassBegin::VkRenderPassBeginInfo`
    `contents::VkSubpassContents`

usage:

 * If any of the `initialLayout` or `finalLayout` member of the `VkAttachmentDescription` structures or the `layout` member of the `VkAttachmentReference` structures specified when creating the render pass specified in the `renderPass` member of `pRenderPassBegin` is ename:VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL then the corresponding attachment image of the framebuffer specified in the `framebuffer` member of `pRenderPassBegin` **must** have been created with ename:VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT set
 * If any of the `initialLayout` or `finalLayout` member of the `VkAttachmentDescription` structures or the `layout` member of the `VkAttachmentReference` structures specified when creating the render pass specified in the `renderPass` member of `pRenderPassBegin` is ename:VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL or ename:VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL then the corresponding attachment image of the framebuffer specified in the `framebuffer` member of `pRenderPassBegin` **must** have been created with ename:VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT set
 * If any of the `initialLayout` or `finalLayout` member of the `VkAttachmentDescription` structures or the `layout` member of the `VkAttachmentReference` structures specified when creating the render pass specified in the `renderPass` member of `pRenderPassBegin` is ename:VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL then the corresponding attachment image of the framebuffer specified in the `framebuffer` member of `pRenderPassBegin` **must** have been created with ename:VK_IMAGE_USAGE_SAMPLED_BIT or ename:VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT set
 * If any of the `initialLayout` or `finalLayout` member of the `VkAttachmentDescription` structures or the `layout` member of the `VkAttachmentReference` structures specified when creating the render pass specified in the `renderPass` member of `pRenderPassBegin` is ename:VK_IMAGE_LAYOUT_TRANSFER_SRC_BIT then the corresponding attachment image of the framebuffer specified in the `framebuffer` member of `pRenderPassBegin` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_SRC_BIT set
 * If any of the `initialLayout` or `finalLayout` member of the `VkAttachmentDescription` structures or the `layout` member of the `VkAttachmentReference` structures specified when creating the render pass specified in the `renderPass` member of `pRenderPassBegin` is ename:VK_IMAGE_LAYOUT_TRANSFER_DST_BIT then the corresponding attachment image of the framebuffer specified in the `framebuffer` member of `pRenderPassBegin` **must** have been created with ename:VK_IMAGE_USAGE_TRANSFER_DST_BIT set
"""
api.vkCmdBeginRenderPass

"""
`vkCmdNextSubpass` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `contents::VkSubpassContents`

usage:

 * The current subpass index **must** be less than the number of subpasses in the render pass minus one
"""
api.vkCmdNextSubpass

"""
`vkCmdEndRenderPass` returns `void`

queues : graphics
renderpass : inside
cmdbufferlevel : primary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true

usage:

 * The current subpass index **must** be equal to the number of subpasses in the render pass minus one
"""
api.vkCmdEndRenderPass

"""
`vkCmdExecuteCommands` returns `void`

queues : transfer,graphics,compute
renderpass : both
cmdbufferlevel : primary

parameters:

    `commandBuffer::VkCommandBuffer`
        externsync : true
    `commandBufferCount::uint32_t`
    `pCommandBuffers::VkCommandBuffer`
        len : commandBufferCount

usage:

 * `commandBuffer` **must** have been created with a `level` value of ename:VK_COMMAND_BUFFER_LEVEL_PRIMARY
 * Any given element of `pCommandBuffers` **must** have been created with a `level` value of ename:VK_COMMAND_BUFFER_LEVEL_SECONDARY
 * Any given element of `pCommandBuffers` mustnot: be already pending execution in `commandBuffer`, or appear twice in `pCommandBuffers`, unless it was created with the ename:VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT flag
 * Any given element of `pCommandBuffers` mustnot: be already pending execution in any other `VkCommandBuffer`, unless it was created with the ename:VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT flag
 * Any given element of `pCommandBuffers` **must** be in the executable state
 * If fname:vkCmdExecuteCommands is being called within a render pass instance, that render pass instance **must** have been begun with the `contents` parameter of fname:vkCmdBeginRenderPass set to ename:VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS
 * If fname:vkCmdExecuteCommands is being called within a render pass instance, any given element of `pCommandBuffers` **must** have been recorded with the ename:VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT
 * If fname:vkCmdExecuteCommands is being called within a render pass instance, any given element of `pCommandBuffers` **must** have been recorded with the `subpass` member of the `inheritanceInfo` structure set to the index of the subpass which the given command buffer will be executed in
 * If fname:vkCmdExecuteCommands is being called within a render pass instance, any given element of `pCommandBuffers` **must** have been recorded with a render pass that is compatible with the current render pass - see <<renderpass-compatibility>>
 * If fname:vkCmdExecuteCommands is being called within a render pass instance, and any given element of `pCommandBuffers` was recorded with the `framebuffer` member of the `VkCommandBufferInheritanceInfo` structure not equal to `VK_NULL_HANDLE`, that `VkFramebuffer` **must** be compatible with the `VkFramebuffer` used in the current render pass instance
 * If the <<features-features-inheritedQueries,inherited queries>> feature is not enabled, `commandBuffer` mustnot: have any queries <<queries-operation-active,active>>
 * If `commandBuffer` has a ename:VK_QUERY_TYPE_OCCLUSION query <<queries-operation-active,active>>, then each element of `pCommandBuffers` **must** have been recorded with `VkCommandBufferBeginInfo`::`occlusionQueryEnable` set to ename:VK_TRUE
 * If `commandBuffer` has a ename:VK_QUERY_TYPE_OCCLUSION query <<queries-operation-active,active>>, then each element of `pCommandBuffers` **must** have been recorded with `VkCommandBufferBeginInfo`::`queryFlags` having all bits set that are set for the query
 * If `commandBuffer` has a ename:VK_QUERY_TYPE_PIPELINE_STATISTICS query <<queries-operation-active,active>>, then each element of `pCommandBuffers` **must** have been recorded with `VkCommandBufferBeginInfo`::`pipelineStatistics` having all bits set that are set in the `VkQueryPool` the query uses
 * Any given element of `pCommandBuffers` mustnot: begin any query types that are <<queries-operation-active,active>> in `commandBuffer`
"""
api.vkCmdExecuteCommands

# """
# `vkCreateAndroidSurfaceKHR` returns `VkResult`
#
# successcodes : VK_SUCCESS
# errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_NATIVE_WINDOW_IN_USE_KHR
#
# parameters:
#
#     `instance::VkInstance`
#     `pCreateInfo::VkAndroidSurfaceCreateInfoKHR`
#     `pAllocator::VkAllocationCallbacks`
#         optional : true
#     `pSurface::VkSurfaceKHR`
#
#
# """
# api.vkCreateAndroidSurfaceKHR

"""
`vkGetPhysicalDeviceDisplayPropertiesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkDisplayPropertiesKHR`
        optional : true
        len : pPropertyCount


"""
api.vkGetPhysicalDeviceDisplayPropertiesKHR

"""
`vkGetPhysicalDeviceDisplayPlanePropertiesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkDisplayPlanePropertiesKHR`
        optional : true
        len : pPropertyCount


"""
api.vkGetPhysicalDeviceDisplayPlanePropertiesKHR

"""
`vkGetDisplayPlaneSupportedDisplaysKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `planeIndex::uint32_t`
    `pDisplayCount::uint32_t`
        optional : false,true
    `pDisplays::VkDisplayKHR`
        optional : true
        len : pDisplayCount

usage:

 * `planeIndex` **must** be less than the number of display planes supported by the device as determined by calling fname:vkGetPhysicalDeviceDisplayPlanePropertiesKHR
"""
api.vkGetDisplayPlaneSupportedDisplaysKHR

"""
`vkGetDisplayModePropertiesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `display::VkDisplayKHR`
    `pPropertyCount::uint32_t`
        optional : false,true
    `pProperties::VkDisplayModePropertiesKHR`
        optional : true
        len : pPropertyCount


"""
api.vkGetDisplayModePropertiesKHR

"""
`vkCreateDisplayModeKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `display::VkDisplayKHR`
        externsync : true
    `pCreateInfo::VkDisplayModeCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pMode::VkDisplayModeKHR`


"""
api.vkCreateDisplayModeKHR

"""
`vkGetDisplayPlaneCapabilitiesKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `physicalDevice::VkPhysicalDevice`
    `mode::VkDisplayModeKHR`
        externsync : true
    `planeIndex::uint32_t`
    `pCapabilities::VkDisplayPlaneCapabilitiesKHR`


"""
api.vkGetDisplayPlaneCapabilitiesKHR

"""
`vkCreateDisplayPlaneSurfaceKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `instance::VkInstance`
    `pCreateInfo::VkDisplaySurfaceCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSurface::VkSurfaceKHR`


"""
api.vkCreateDisplayPlaneSurfaceKHR

"""
`vkCreateSharedSwapchainsKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_INCOMPATIBLE_DISPLAY_KHR,VK_ERROR_DEVICE_LOST,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `device::VkDevice`
    `swapchainCount::uint32_t`
    `pCreateInfos::VkSwapchainCreateInfoKHR`
        len : swapchainCount
        externsync : pCreateInfos[].surface,pCreateInfos[].oldSwapchain
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSwapchains::VkSwapchainKHR`
        len : swapchainCount


"""
api.vkCreateSharedSwapchainsKHR

"""
`vkCreateMirSurfaceKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `instance::VkInstance`
    `pCreateInfo::VkMirSurfaceCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSurface::VkSurfaceKHR`


"""
api.vkCreateMirSurfaceKHR

"""
`vkGetPhysicalDeviceMirPresentationSupportKHR` returns `VkBool32`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `queueFamilyIndex::uint32_t`
    `connection::MirConnection`

usage:

 * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
"""
api.vkGetPhysicalDeviceMirPresentationSupportKHR

"""
`vkDestroySurfaceKHR` returns `void`


parameters:

    `instance::VkInstance`
    `surface::VkSurfaceKHR`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All `VkSwapchainKHR` objects created for `surface` **must** have been destroyed prior to destroying `surface`
 * If `VkAllocationCallbacks` were provided when `surface` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `surface` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroySurfaceKHR

"""
`vkGetPhysicalDeviceSurfaceSupportKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `physicalDevice::VkPhysicalDevice`
    `queueFamilyIndex::uint32_t`
    `surface::VkSurfaceKHR`
    `pSupported::VkBool32`

usage:

 * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
"""
api.vkGetPhysicalDeviceSurfaceSupportKHR

"""
`vkGetPhysicalDeviceSurfaceCapabilitiesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `physicalDevice::VkPhysicalDevice`
    `surface::VkSurfaceKHR`
    `pSurfaceCapabilities::VkSurfaceCapabilitiesKHR`


"""
api.vkGetPhysicalDeviceSurfaceCapabilitiesKHR

"""
`vkGetPhysicalDeviceSurfaceFormatsKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `physicalDevice::VkPhysicalDevice`
    `surface::VkSurfaceKHR`
    `pSurfaceFormatCount::uint32_t`
        optional : false,true
    `pSurfaceFormats::VkSurfaceFormatKHR`
        optional : true
        len : pSurfaceFormatCount


"""
api.vkGetPhysicalDeviceSurfaceFormatsKHR

"""
`vkGetPhysicalDeviceSurfacePresentModesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `physicalDevice::VkPhysicalDevice`
    `surface::VkSurfaceKHR`
    `pPresentModeCount::uint32_t`
        optional : false,true
    `pPresentModes::VkPresentModeKHR`
        optional : true
        len : pPresentModeCount


"""
api.vkGetPhysicalDeviceSurfacePresentModesKHR

"""
`vkCreateSwapchainKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST,VK_ERROR_SURFACE_LOST_KHR,VK_ERROR_NATIVE_WINDOW_IN_USE_KHR

parameters:

    `device::VkDevice`
    `pCreateInfo::VkSwapchainCreateInfoKHR`
        externsync : pCreateInfo.surface,pCreateInfo.oldSwapchain
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSwapchain::VkSwapchainKHR`


"""
api.vkCreateSwapchainKHR

"""
`vkDestroySwapchainKHR` returns `void`


parameters:

    `device::VkDevice`
    `swapchain::VkSwapchainKHR`
        optional : true
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * All uses of presentable images acquired from `swapchain` and owned by the application **must** have completed execution
 * If `VkAllocationCallbacks` were provided when `swapchain` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `swapchain` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroySwapchainKHR

"""
`vkGetSwapchainImagesKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_INCOMPLETE
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `device::VkDevice`
    `swapchain::VkSwapchainKHR`
    `pSwapchainImageCount::uint32_t`
        optional : false,true
    `pSwapchainImages::VkImage`
        optional : true
        len : pSwapchainImageCount


"""
api.vkGetSwapchainImagesKHR

"""
`vkAcquireNextImageKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_SUBOPTIMAL_KHR
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST,VK_ERROR_OUT_OF_DATE_KHR,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `device::VkDevice`
    `swapchain::VkSwapchainKHR`
        externsync : true
    `timeout::uint64_t`
    `semaphore::VkSemaphore`
        optional : true
        externsync : true
    `fence::VkFence`
        optional : true
        externsync : true
    `pImageIndex::uint32_t`

usage:

 * If `semaphore` is not `VK_NULL_HANDLE` it **must** be unsignalled
 * If `fence` is not `VK_NULL_HANDLE` it **must** be unsignalled and mustnot: be associated with any other queue command that has not yet completed execution on that queue
"""
api.vkAcquireNextImageKHR

"""
`vkQueuePresentKHR` returns `VkResult`

successcodes : VK_SUCCESS,VK_SUBOPTIMAL_KHR
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY,VK_ERROR_DEVICE_LOST,VK_ERROR_OUT_OF_DATE_KHR,VK_ERROR_SURFACE_LOST_KHR

parameters:

    `queue::VkQueue`
        externsync : true
    `pPresentInfo::VkPresentInfoKHR`
        externsync : pPresentInfo.pWaitSemaphores[],pPresentInfo.pSwapchains[]

usage:

 * Any given element of `pSwapchains` member of `pPresentInfo` **must** be a swapchain that is created for a surface for which presentation is supported from `queue` as determined using a call to fname:vkGetPhysicalDeviceSurfaceSupportKHR
"""
api.vkQueuePresentKHR

"""
`vkCreateWaylandSurfaceKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `instance::VkInstance`
    `pCreateInfo::VkWaylandSurfaceCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSurface::VkSurfaceKHR`


"""
api.vkCreateWaylandSurfaceKHR

"""
`vkGetPhysicalDeviceWaylandPresentationSupportKHR` returns `VkBool32`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `queueFamilyIndex::uint32_t`
    `display::wl_display`

usage:

 * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
"""
api.vkGetPhysicalDeviceWaylandPresentationSupportKHR

"""
`vkCreateWin32SurfaceKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `instance::VkInstance`
    `pCreateInfo::VkWin32SurfaceCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSurface::VkSurfaceKHR`


"""
api.vkCreateWin32SurfaceKHR

"""
`vkGetPhysicalDeviceWin32PresentationSupportKHR` returns `VkBool32`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `queueFamilyIndex::uint32_t`

usage:

 * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
"""
api.vkGetPhysicalDeviceWin32PresentationSupportKHR

# """
# `vkCreateXlibSurfaceKHR` returns `VkResult`
#
# successcodes : VK_SUCCESS
# errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY
#
# parameters:
#
#     `instance::VkInstance`
#     `pCreateInfo::VkXlibSurfaceCreateInfoKHR`
#     `pAllocator::VkAllocationCallbacks`
#         optional : true
#     `pSurface::VkSurfaceKHR`
#
#
# """
# api.vkCreateXlibSurfaceKHR

# """
# `vkGetPhysicalDeviceXlibPresentationSupportKHR` returns `VkBool32`
#
#
# parameters:
#
#     `physicalDevice::VkPhysicalDevice`
#     `queueFamilyIndex::uint32_t`
#     `dpy::Display`
#     `visualID::VisualID`
#
# usage:
#
#  * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
# """
# api.vkGetPhysicalDeviceXlibPresentationSupportKHR

"""
`vkCreateXcbSurfaceKHR` returns `VkResult`

successcodes : VK_SUCCESS
errorcodes : VK_ERROR_OUT_OF_HOST_MEMORY,VK_ERROR_OUT_OF_DEVICE_MEMORY

parameters:

    `instance::VkInstance`
    `pCreateInfo::VkXcbSurfaceCreateInfoKHR`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pSurface::VkSurfaceKHR`


"""
api.vkCreateXcbSurfaceKHR

"""
`vkGetPhysicalDeviceXcbPresentationSupportKHR` returns `VkBool32`


parameters:

    `physicalDevice::VkPhysicalDevice`
    `queueFamilyIndex::uint32_t`
    `connection::xcb_connection_t`
    `visual_id::xcb_visualid_t`

usage:

 * `queueFamilyIndex` **must** be less than the value of `pQueueFamilyPropertyCount` returned by fname:vkGetPhysicalDeviceQueueFamilyProperties for the given `physicalDevice`
"""
api.vkGetPhysicalDeviceXcbPresentationSupportKHR

"""
`vkCreateDebugReportCallbackEXT` returns `VkResult`


parameters:

    `instance::VkInstance`
    `pCreateInfo::VkDebugReportCallbackCreateInfoEXT`
    `pAllocator::VkAllocationCallbacks`
        optional : true
    `pCallback::VkDebugReportCallbackEXT`


"""
api.vkCreateDebugReportCallbackEXT

"""
`vkDestroyDebugReportCallbackEXT` returns `void`


parameters:

    `instance::VkInstance`
    `callback::VkDebugReportCallbackEXT`
        externsync : true
    `pAllocator::VkAllocationCallbacks`
        optional : true

usage:

 * If `VkAllocationCallbacks` were provided when `instance` was created, a compatible set of callbacks **must** be provided here
 * If no `VkAllocationCallbacks` were provided when `instance` was created, `pAllocator` **must** be `NULL`
"""
api.vkDestroyDebugReportCallbackEXT

"""
`vkDebugReportMessageEXT` returns `void`


parameters:

    `instance::VkInstance`
    `flags::VkDebugReportFlagsEXT`
    `objectType::VkDebugReportObjectTypeEXT`
    `object::uint64_t`
    `location::size_t`
    `messageCode::int32_t`
    `pLayerPrefix::char`
    `pMessage::char`

usage:

 * `instance` **must** be a valid `VkInstance` handle
 * `flags` must be a combination of one or more of `VkDebugReportFlagBitsEXT`
 * `objType` must be one of `VkDebugReportObjectTypeEXT`, ename:VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT if `object` is `NULL`
 * `object` may be a {apiname} object
 * `pLayerPrefix` **must** be a `NULL` terminated string.
 * `pMsg` **must** be a `NULL` terminated string.
"""
api.vkDebugReportMessageEXT
