using Vulkan

function default{T}(::Type{T})
    args = [default(fieldtype(T, i)) for i=1:nfields(T)]
    T(args...)
end
default{T<:Enum}(::Type{T}) = typemin(T)
default{T<:Number}(::Type{T}) = zero(T)
default{T<:Ptr}(::Type{T}) = T(vk.api.VK_NULL_HANDLE)
default{N,T}(::Type{NTuple{N,T}}) = ntuple(x->zero(T), N)

# constructor with automatic conversion
function AndroidSurfaceCreateInfoKHR(sType, pNext, flags, window)
    api.VkAndroidSurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},window))
end

# keyword argument constructor
function AndroidSurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), window = default(Ptr{Void}))
    AndroidSurfaceCreateInfoKHR(sType, pNext, flags, window)
end

# constructor function for vkCreateAndroidSurfaceKHR
function CreateAndroidSurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(AndroidSurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkAndroidSurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateAndroidSurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function BufferCreateInfo(sType, pNext, flags, size, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices)
    api.VkBufferCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt64,size), struct_convert(UInt32,usage), struct_convert(Vulkan.api.VkSharingMode,sharingMode), struct_convert(UInt32,queueFamilyIndexCount), struct_convert(Ptr{UInt32},pQueueFamilyIndices))
end

# keyword argument constructor
function BufferCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), size = default(UInt64), usage = default(UInt32), sharingMode = default(Vulkan.api.VkSharingMode), queueFamilyIndexCount = default(UInt32), pQueueFamilyIndices = default(Ptr{UInt32}))
    BufferCreateInfo(sType, pNext, flags, size, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices)
end

# constructor function for vkCreateBuffer
function CreateBuffer(device, pAllocator;kw_args...)
    create_info = Ref(BufferCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkBuffer}(api.VK_NULL_HANDLE)
    err = api.vkCreateBuffer(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function BufferViewCreateInfo(sType, pNext, flags, buffer, format, offset, range)
    api.VkBufferViewCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},buffer), struct_convert(Vulkan.api.VkFormat,format), struct_convert(UInt64,offset), struct_convert(UInt64,range))
end

# keyword argument constructor
function BufferViewCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), buffer = default(Ptr{Void}), format = default(Vulkan.api.VkFormat), offset = default(UInt64), range = default(UInt64))
    BufferViewCreateInfo(sType, pNext, flags, buffer, format, offset, range)
end

# constructor function for vkCreateBufferView
function CreateBufferView(device, pAllocator, pView;kw_args...)
    create_info = Ref(BufferViewCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkBufferView}(api.VK_NULL_HANDLE)
    err = api.vkCreateBufferView(device, create_info, pAllocator, pView)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function CommandPoolCreateInfo(sType, pNext, flags, queueFamilyIndex)
    api.VkCommandPoolCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,queueFamilyIndex))
end

# keyword argument constructor
function CommandPoolCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), queueFamilyIndex = default(UInt32))
    CommandPoolCreateInfo(sType, pNext, flags, queueFamilyIndex)
end

# constructor function for vkCreateCommandPool
function CreateCommandPool(device, pAllocator;kw_args...)
    create_info = Ref(CommandPoolCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkCommandPool}(api.VK_NULL_HANDLE)
    err = api.vkCreateCommandPool(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function ComputePipelineCreateInfo(sType, pNext, flags, stage, layout, basePipelineHandle, basePipelineIndex)
    api.VkComputePipelineCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkPipelineShaderStageCreateInfo,stage), struct_convert(Ptr{Void},layout), struct_convert(Ptr{Void},basePipelineHandle), struct_convert(Int32,basePipelineIndex))
end

# keyword argument constructor
function ComputePipelineCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), stage = default(Vulkan.api.VkPipelineShaderStageCreateInfo), layout = default(Ptr{Void}), basePipelineHandle = default(Ptr{Void}), basePipelineIndex = default(Int32))
    ComputePipelineCreateInfo(sType, pNext, flags, stage, layout, basePipelineHandle, basePipelineIndex)
end

# constructor function for vkCreateComputePipelines
function CreateComputePipelines(device, pipelineCache, createInfoCount, pAllocator, pPipelines;kw_args...)
    create_info = Ref(ComputePipelineCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkComputePipelines}(api.VK_NULL_HANDLE)
    err = api.vkCreateComputePipelines(device, pipelineCache, createInfoCount, create_info, pAllocator, pPipelines)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DebugReportCallbackCreateInfoEXT(sType, pNext, flags, pfnCallback, pUserData)
    api.VkDebugReportCallbackCreateInfoEXT(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},pfnCallback), struct_convert(Ptr{Void},pUserData))
end

# keyword argument constructor
function DebugReportCallbackCreateInfoEXT(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), pfnCallback = default(Ptr{Void}), pUserData = default(Ptr{Void}))
    DebugReportCallbackCreateInfoEXT(sType, pNext, flags, pfnCallback, pUserData)
end

# constructor function for vkCreateDebugReportCallbackEXT
function CreateDebugReportCallbackEXT(instance, pAllocator, pCallback;kw_args...)
    create_info = Ref(DebugReportCallbackCreateInfoEXT(;kw_args...))
    instance_ptr = Ref{api.VkDebugReportCallbackEXT}(api.VK_NULL_HANDLE)
    err = api.vkCreateDebugReportCallbackEXT(instance, create_info, pAllocator, pCallback)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DescriptorPoolCreateInfo(sType, pNext, flags, maxSets, poolSizeCount, pPoolSizes)
    api.VkDescriptorPoolCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,maxSets), struct_convert(UInt32,poolSizeCount), struct_convert(Ptr{Vulkan.api.VkDescriptorPoolSize},pPoolSizes))
end

# keyword argument constructor
function DescriptorPoolCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), maxSets = default(UInt32), poolSizeCount = default(UInt32), pPoolSizes = default(Ptr{Vulkan.api.VkDescriptorPoolSize}))
    DescriptorPoolCreateInfo(sType, pNext, flags, maxSets, poolSizeCount, pPoolSizes)
end

# constructor function for vkCreateDescriptorPool
function CreateDescriptorPool(device, pAllocator;kw_args...)
    create_info = Ref(DescriptorPoolCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkDescriptorPool}(api.VK_NULL_HANDLE)
    err = api.vkCreateDescriptorPool(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DescriptorSetLayoutCreateInfo(sType, pNext, flags, bindingCount, pBindings)
    api.VkDescriptorSetLayoutCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,bindingCount), struct_convert(Ptr{Vulkan.api.VkDescriptorSetLayoutBinding},pBindings))
end

# keyword argument constructor
function DescriptorSetLayoutCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), bindingCount = default(UInt32), pBindings = default(Ptr{Vulkan.api.VkDescriptorSetLayoutBinding}))
    DescriptorSetLayoutCreateInfo(sType, pNext, flags, bindingCount, pBindings)
end

# constructor function for vkCreateDescriptorSetLayout
function CreateDescriptorSetLayout(device, pAllocator;kw_args...)
    create_info = Ref(DescriptorSetLayoutCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkDescriptorSetLayout}(api.VK_NULL_HANDLE)
    err = api.vkCreateDescriptorSetLayout(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DeviceCreateInfo(sType, pNext, flags, queueCreateInfoCount, pQueueCreateInfos, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames, pEnabledFeatures)
    api.VkDeviceCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,queueCreateInfoCount), struct_convert(Ptr{Vulkan.api.VkDeviceQueueCreateInfo},pQueueCreateInfos), struct_convert(UInt32,enabledLayerCount), struct_convert(Ptr{Ptr{Int8}},ppEnabledLayerNames), struct_convert(UInt32,enabledExtensionCount), struct_convert(Ptr{Ptr{Int8}},ppEnabledExtensionNames), struct_convert(Ptr{Vulkan.api.VkPhysicalDeviceFeatures},pEnabledFeatures))
end

# keyword argument constructor
function DeviceCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), queueCreateInfoCount = default(UInt32), pQueueCreateInfos = default(Ptr{Vulkan.api.VkDeviceQueueCreateInfo}), enabledLayerCount = default(UInt32), ppEnabledLayerNames = default(Ptr{Ptr{Int8}}), enabledExtensionCount = default(UInt32), ppEnabledExtensionNames = default(Ptr{Ptr{Int8}}), pEnabledFeatures = default(Ptr{Vulkan.api.VkPhysicalDeviceFeatures}))
    DeviceCreateInfo(sType, pNext, flags, queueCreateInfoCount, pQueueCreateInfos, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames, pEnabledFeatures)
end

# constructor function for vkCreateDevice
function CreateDevice(physicalDevice, pAllocator;kw_args...)
    create_info = Ref(DeviceCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkDevice}(api.VK_NULL_HANDLE)
    err = api.vkCreateDevice(physicalDevice, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DeviceQueueCreateInfo(sType, pNext, flags, queueFamilyIndex, queueCount, pQueuePriorities)
    api.VkDeviceQueueCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,queueFamilyIndex), struct_convert(UInt32,queueCount), struct_convert(Ptr{Float32},pQueuePriorities))
end

# keyword argument constructor
function DeviceQueueCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), queueFamilyIndex = default(UInt32), queueCount = default(UInt32), pQueuePriorities = default(Ptr{Float32}))
    DeviceQueueCreateInfo(sType, pNext, flags, queueFamilyIndex, queueCount, pQueuePriorities)
end

# constructor with automatic conversion
function DisplayModeCreateInfoKHR(sType, pNext, flags, parameters)
    api.VkDisplayModeCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkDisplayModeParametersKHR,parameters))
end

# keyword argument constructor
function DisplayModeCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), parameters = default(Vulkan.api.VkDisplayModeParametersKHR))
    DisplayModeCreateInfoKHR(sType, pNext, flags, parameters)
end

# constructor function for vkCreateDisplayModeKHR
function CreateDisplayModeKHR(physicalDevice, display, pAllocator, pMode;kw_args...)
    create_info = Ref(DisplayModeCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkDisplayModeKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateDisplayModeKHR(physicalDevice, display, create_info, pAllocator, pMode)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function DisplaySurfaceCreateInfoKHR(sType, pNext, flags, displayMode, planeIndex, planeStackIndex, transform, globalAlpha, alphaMode, imageExtent)
    api.VkDisplaySurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},displayMode), struct_convert(UInt32,planeIndex), struct_convert(UInt32,planeStackIndex), struct_convert(Vulkan.api.VkSurfaceTransformFlagBitsKHR,transform), struct_convert(Float32,globalAlpha), struct_convert(Vulkan.api.VkDisplayPlaneAlphaFlagBitsKHR,alphaMode), struct_convert(Vulkan.api.VkExtent2D,imageExtent))
end

# keyword argument constructor
function DisplaySurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), displayMode = default(Ptr{Void}), planeIndex = default(UInt32), planeStackIndex = default(UInt32), transform = default(Vulkan.api.VkSurfaceTransformFlagBitsKHR), globalAlpha = default(Float32), alphaMode = default(Vulkan.api.VkDisplayPlaneAlphaFlagBitsKHR), imageExtent = default(Vulkan.api.VkExtent2D))
    DisplaySurfaceCreateInfoKHR(sType, pNext, flags, displayMode, planeIndex, planeStackIndex, transform, globalAlpha, alphaMode, imageExtent)
end

# constructor with automatic conversion
function EventCreateInfo(sType, pNext, flags)
    api.VkEventCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags))
end

# keyword argument constructor
function EventCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32))
    EventCreateInfo(sType, pNext, flags)
end

# constructor function for vkCreateEvent
function CreateEvent(device, pAllocator;kw_args...)
    create_info = Ref(EventCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkEvent}(api.VK_NULL_HANDLE)
    err = api.vkCreateEvent(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function FenceCreateInfo(sType, pNext, flags)
    api.VkFenceCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags))
end

# keyword argument constructor
function FenceCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32))
    FenceCreateInfo(sType, pNext, flags)
end

# constructor function for vkCreateFence
function CreateFence(device, pAllocator;kw_args...)
    create_info = Ref(FenceCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkFence}(api.VK_NULL_HANDLE)
    err = api.vkCreateFence(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function FramebufferCreateInfo(sType, pNext, flags, renderPass, attachmentCount, pAttachments, width, height, layers)
    api.VkFramebufferCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},renderPass), struct_convert(UInt32,attachmentCount), struct_convert(Ptr{Ptr{Void}},pAttachments), struct_convert(UInt32,width), struct_convert(UInt32,height), struct_convert(UInt32,layers))
end

# keyword argument constructor
function FramebufferCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), renderPass = default(Ptr{Void}), attachmentCount = default(UInt32), pAttachments = default(Ptr{Ptr{Void}}), width = default(UInt32), height = default(UInt32), layers = default(UInt32))
    FramebufferCreateInfo(sType, pNext, flags, renderPass, attachmentCount, pAttachments, width, height, layers)
end

# constructor function for vkCreateFramebuffer
function CreateFramebuffer(device, pAllocator;kw_args...)
    create_info = Ref(FramebufferCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkFramebuffer}(api.VK_NULL_HANDLE)
    err = api.vkCreateFramebuffer(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function GraphicsPipelineCreateInfo(sType, pNext, flags, stageCount, pStages, pVertexInputState, pInputAssemblyState, pTessellationState, pViewportState, pRasterizationState, pMultisampleState, pDepthStencilState, pColorBlendState, pDynamicState, layout, renderPass, subpass, basePipelineHandle, basePipelineIndex)
    api.VkGraphicsPipelineCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,stageCount), struct_convert(Ptr{Vulkan.api.VkPipelineShaderStageCreateInfo},pStages), struct_convert(Ptr{Vulkan.api.VkPipelineVertexInputStateCreateInfo},pVertexInputState), struct_convert(Ptr{Vulkan.api.VkPipelineInputAssemblyStateCreateInfo},pInputAssemblyState), struct_convert(Ptr{Vulkan.api.VkPipelineTessellationStateCreateInfo},pTessellationState), struct_convert(Ptr{Vulkan.api.VkPipelineViewportStateCreateInfo},pViewportState), struct_convert(Ptr{Vulkan.api.VkPipelineRasterizationStateCreateInfo},pRasterizationState), struct_convert(Ptr{Vulkan.api.VkPipelineMultisampleStateCreateInfo},pMultisampleState), struct_convert(Ptr{Vulkan.api.VkPipelineDepthStencilStateCreateInfo},pDepthStencilState), struct_convert(Ptr{Vulkan.api.VkPipelineColorBlendStateCreateInfo},pColorBlendState), struct_convert(Ptr{Vulkan.api.VkPipelineDynamicStateCreateInfo},pDynamicState), struct_convert(Ptr{Void},layout), struct_convert(Ptr{Void},renderPass), struct_convert(UInt32,subpass), struct_convert(Ptr{Void},basePipelineHandle), struct_convert(Int32,basePipelineIndex))
end

# keyword argument constructor
function GraphicsPipelineCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), stageCount = default(UInt32), pStages = default(Ptr{Vulkan.api.VkPipelineShaderStageCreateInfo}), pVertexInputState = default(Ptr{Vulkan.api.VkPipelineVertexInputStateCreateInfo}), pInputAssemblyState = default(Ptr{Vulkan.api.VkPipelineInputAssemblyStateCreateInfo}), pTessellationState = default(Ptr{Vulkan.api.VkPipelineTessellationStateCreateInfo}), pViewportState = default(Ptr{Vulkan.api.VkPipelineViewportStateCreateInfo}), pRasterizationState = default(Ptr{Vulkan.api.VkPipelineRasterizationStateCreateInfo}), pMultisampleState = default(Ptr{Vulkan.api.VkPipelineMultisampleStateCreateInfo}), pDepthStencilState = default(Ptr{Vulkan.api.VkPipelineDepthStencilStateCreateInfo}), pColorBlendState = default(Ptr{Vulkan.api.VkPipelineColorBlendStateCreateInfo}), pDynamicState = default(Ptr{Vulkan.api.VkPipelineDynamicStateCreateInfo}), layout = default(Ptr{Void}), renderPass = default(Ptr{Void}), subpass = default(UInt32), basePipelineHandle = default(Ptr{Void}), basePipelineIndex = default(Int32))
    GraphicsPipelineCreateInfo(sType, pNext, flags, stageCount, pStages, pVertexInputState, pInputAssemblyState, pTessellationState, pViewportState, pRasterizationState, pMultisampleState, pDepthStencilState, pColorBlendState, pDynamicState, layout, renderPass, subpass, basePipelineHandle, basePipelineIndex)
end

# constructor function for vkCreateGraphicsPipelines
function CreateGraphicsPipelines(device, pipelineCache, createInfoCount, pAllocator, pPipelines;kw_args...)
    create_info = Ref(GraphicsPipelineCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkGraphicsPipelines}(api.VK_NULL_HANDLE)
    err = api.vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, create_info, pAllocator, pPipelines)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function ImageCreateInfo(sType, pNext, flags, imageType, format, extent, mipLevels, arrayLayers, samples, tiling, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices, initialLayout)
    api.VkImageCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkImageType,imageType), struct_convert(Vulkan.api.VkFormat,format), struct_convert(Vulkan.api.VkExtent3D,extent), struct_convert(UInt32,mipLevels), struct_convert(UInt32,arrayLayers), struct_convert(Vulkan.api.VkSampleCountFlagBits,samples), struct_convert(Vulkan.api.VkImageTiling,tiling), struct_convert(UInt32,usage), struct_convert(Vulkan.api.VkSharingMode,sharingMode), struct_convert(UInt32,queueFamilyIndexCount), struct_convert(Ptr{UInt32},pQueueFamilyIndices), struct_convert(Vulkan.api.VkImageLayout,initialLayout))
end

# keyword argument constructor
function ImageCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), imageType = default(Vulkan.api.VkImageType), format = default(Vulkan.api.VkFormat), extent = default(Vulkan.api.VkExtent3D), mipLevels = default(UInt32), arrayLayers = default(UInt32), samples = default(Vulkan.api.VkSampleCountFlagBits), tiling = default(Vulkan.api.VkImageTiling), usage = default(UInt32), sharingMode = default(Vulkan.api.VkSharingMode), queueFamilyIndexCount = default(UInt32), pQueueFamilyIndices = default(Ptr{UInt32}), initialLayout = default(Vulkan.api.VkImageLayout))
    ImageCreateInfo(sType, pNext, flags, imageType, format, extent, mipLevels, arrayLayers, samples, tiling, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices, initialLayout)
end

# constructor function for vkCreateImage
function CreateImage(device, pAllocator;kw_args...)
    create_info = Ref(ImageCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkImage}(api.VK_NULL_HANDLE)
    err = api.vkCreateImage(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function ImageViewCreateInfo(sType, pNext, flags, image, viewType, format, components, subresourceRange)
    api.VkImageViewCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},image), struct_convert(Vulkan.api.VkImageViewType,viewType), struct_convert(Vulkan.api.VkFormat,format), struct_convert(Vulkan.api.VkComponentMapping,components), struct_convert(Vulkan.api.VkImageSubresourceRange,subresourceRange))
end

# keyword argument constructor
function ImageViewCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), image = default(Ptr{Void}), viewType = default(Vulkan.api.VkImageViewType), format = default(Vulkan.api.VkFormat), components = default(Vulkan.api.VkComponentMapping), subresourceRange = default(Vulkan.api.VkImageSubresourceRange))
    ImageViewCreateInfo(sType, pNext, flags, image, viewType, format, components, subresourceRange)
end

# constructor function for vkCreateImageView
function CreateImageView(device, pAllocator;kw_args...)
    create_info = Ref(ImageViewCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkImageView}(api.VK_NULL_HANDLE)
    err = api.vkCreateImageView(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function InstanceCreateInfo(sType, pNext, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames)
    api.VkInstanceCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Vulkan.api.VkApplicationInfo},pApplicationInfo), struct_convert(UInt32,enabledLayerCount), struct_convert(Ptr{Ptr{Int8}},ppEnabledLayerNames), struct_convert(UInt32,enabledExtensionCount), struct_convert(Ptr{Ptr{Int8}},ppEnabledExtensionNames))
end

# keyword argument constructor
function InstanceCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), pApplicationInfo = default(Ptr{Vulkan.api.VkApplicationInfo}), enabledLayerCount = default(UInt32), ppEnabledLayerNames = default(Ptr{Ptr{Int8}}), enabledExtensionCount = default(UInt32), ppEnabledExtensionNames = default(Ptr{Ptr{Int8}}))
    InstanceCreateInfo(sType, pNext, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames)
end

# constructor function for vkCreateInstance
function CreateInstance(pAllocator;kw_args...)
    create_info = Ref(InstanceCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkInstance}(api.VK_NULL_HANDLE)
    err = api.vkCreateInstance(create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function MirSurfaceCreateInfoKHR(sType, pNext, flags, connection, mirSurface)
    api.VkMirSurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},connection), struct_convert(Ptr{Void},mirSurface))
end

# keyword argument constructor
function MirSurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), connection = default(Ptr{Void}), mirSurface = default(Ptr{Void}))
    MirSurfaceCreateInfoKHR(sType, pNext, flags, connection, mirSurface)
end

# constructor function for vkCreateMirSurfaceKHR
function CreateMirSurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(MirSurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkMirSurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateMirSurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function PipelineCacheCreateInfo(sType, pNext, flags, initialDataSize, pInitialData)
    api.VkPipelineCacheCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt64,initialDataSize), struct_convert(Ptr{Void},pInitialData))
end

# keyword argument constructor
function PipelineCacheCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), initialDataSize = default(UInt64), pInitialData = default(Ptr{Void}))
    PipelineCacheCreateInfo(sType, pNext, flags, initialDataSize, pInitialData)
end

# constructor function for vkCreatePipelineCache
function CreatePipelineCache(device, pAllocator;kw_args...)
    create_info = Ref(PipelineCacheCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkPipelineCache}(api.VK_NULL_HANDLE)
    err = api.vkCreatePipelineCache(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function PipelineColorBlendStateCreateInfo(sType, pNext, flags, logicOpEnable, logicOp, attachmentCount, pAttachments, blendConstants)
    api.VkPipelineColorBlendStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,logicOpEnable), struct_convert(Vulkan.api.VkLogicOp,logicOp), struct_convert(UInt32,attachmentCount), struct_convert(Ptr{Vulkan.api.VkPipelineColorBlendAttachmentState},pAttachments), struct_convert(Tuple{Float32,Float32,Float32,Float32},blendConstants))
end

# keyword argument constructor
function PipelineColorBlendStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), logicOpEnable = default(UInt32), logicOp = default(Vulkan.api.VkLogicOp), attachmentCount = default(UInt32), pAttachments = default(Ptr{Vulkan.api.VkPipelineColorBlendAttachmentState}), blendConstants = default(Tuple{Float32,Float32,Float32,Float32}))
    PipelineColorBlendStateCreateInfo(sType, pNext, flags, logicOpEnable, logicOp, attachmentCount, pAttachments, blendConstants)
end

# constructor with automatic conversion
function PipelineDepthStencilStateCreateInfo(sType, pNext, flags, depthTestEnable, depthWriteEnable, depthCompareOp, depthBoundsTestEnable, stencilTestEnable, front, back, minDepthBounds, maxDepthBounds)
    api.VkPipelineDepthStencilStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,depthTestEnable), struct_convert(UInt32,depthWriteEnable), struct_convert(Vulkan.api.VkCompareOp,depthCompareOp), struct_convert(UInt32,depthBoundsTestEnable), struct_convert(UInt32,stencilTestEnable), struct_convert(Vulkan.api.VkStencilOpState,front), struct_convert(Vulkan.api.VkStencilOpState,back), struct_convert(Float32,minDepthBounds), struct_convert(Float32,maxDepthBounds))
end

# keyword argument constructor
function PipelineDepthStencilStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), depthTestEnable = default(UInt32), depthWriteEnable = default(UInt32), depthCompareOp = default(Vulkan.api.VkCompareOp), depthBoundsTestEnable = default(UInt32), stencilTestEnable = default(UInt32), front = default(Vulkan.api.VkStencilOpState), back = default(Vulkan.api.VkStencilOpState), minDepthBounds = default(Float32), maxDepthBounds = default(Float32))
    PipelineDepthStencilStateCreateInfo(sType, pNext, flags, depthTestEnable, depthWriteEnable, depthCompareOp, depthBoundsTestEnable, stencilTestEnable, front, back, minDepthBounds, maxDepthBounds)
end

# constructor with automatic conversion
function PipelineDynamicStateCreateInfo(sType, pNext, flags, dynamicStateCount, pDynamicStates)
    api.VkPipelineDynamicStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,dynamicStateCount), struct_convert(Ptr{Vulkan.api.VkDynamicState},pDynamicStates))
end

# keyword argument constructor
function PipelineDynamicStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), dynamicStateCount = default(UInt32), pDynamicStates = default(Ptr{Vulkan.api.VkDynamicState}))
    PipelineDynamicStateCreateInfo(sType, pNext, flags, dynamicStateCount, pDynamicStates)
end

# constructor with automatic conversion
function PipelineInputAssemblyStateCreateInfo(sType, pNext, flags, topology, primitiveRestartEnable)
    api.VkPipelineInputAssemblyStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkPrimitiveTopology,topology), struct_convert(UInt32,primitiveRestartEnable))
end

# keyword argument constructor
function PipelineInputAssemblyStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), topology = default(Vulkan.api.VkPrimitiveTopology), primitiveRestartEnable = default(UInt32))
    PipelineInputAssemblyStateCreateInfo(sType, pNext, flags, topology, primitiveRestartEnable)
end

# constructor with automatic conversion
function PipelineLayoutCreateInfo(sType, pNext, flags, setLayoutCount, pSetLayouts, pushConstantRangeCount, pPushConstantRanges)
    api.VkPipelineLayoutCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,setLayoutCount), struct_convert(Ptr{Ptr{Void}},pSetLayouts), struct_convert(UInt32,pushConstantRangeCount), struct_convert(Ptr{Vulkan.api.VkPushConstantRange},pPushConstantRanges))
end

# keyword argument constructor
function PipelineLayoutCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), setLayoutCount = default(UInt32), pSetLayouts = default(Ptr{Ptr{Void}}), pushConstantRangeCount = default(UInt32), pPushConstantRanges = default(Ptr{Vulkan.api.VkPushConstantRange}))
    PipelineLayoutCreateInfo(sType, pNext, flags, setLayoutCount, pSetLayouts, pushConstantRangeCount, pPushConstantRanges)
end

# constructor function for vkCreatePipelineLayout
function CreatePipelineLayout(device, pAllocator;kw_args...)
    create_info = Ref(PipelineLayoutCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkPipelineLayout}(api.VK_NULL_HANDLE)
    err = api.vkCreatePipelineLayout(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function PipelineMultisampleStateCreateInfo(sType, pNext, flags, rasterizationSamples, sampleShadingEnable, minSampleShading, pSampleMask, alphaToCoverageEnable, alphaToOneEnable)
    api.VkPipelineMultisampleStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkSampleCountFlagBits,rasterizationSamples), struct_convert(UInt32,sampleShadingEnable), struct_convert(Float32,minSampleShading), struct_convert(Ptr{UInt32},pSampleMask), struct_convert(UInt32,alphaToCoverageEnable), struct_convert(UInt32,alphaToOneEnable))
end

# keyword argument constructor
function PipelineMultisampleStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), rasterizationSamples = default(Vulkan.api.VkSampleCountFlagBits), sampleShadingEnable = default(UInt32), minSampleShading = default(Float32), pSampleMask = default(Ptr{UInt32}), alphaToCoverageEnable = default(UInt32), alphaToOneEnable = default(UInt32))
    PipelineMultisampleStateCreateInfo(sType, pNext, flags, rasterizationSamples, sampleShadingEnable, minSampleShading, pSampleMask, alphaToCoverageEnable, alphaToOneEnable)
end

# constructor with automatic conversion
function PipelineRasterizationStateCreateInfo(sType, pNext, flags, depthClampEnable, rasterizerDiscardEnable, polygonMode, cullMode, frontFace, depthBiasEnable, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor, lineWidth)
    api.VkPipelineRasterizationStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,depthClampEnable), struct_convert(UInt32,rasterizerDiscardEnable), struct_convert(Vulkan.api.VkPolygonMode,polygonMode), struct_convert(UInt32,cullMode), struct_convert(Vulkan.api.VkFrontFace,frontFace), struct_convert(UInt32,depthBiasEnable), struct_convert(Float32,depthBiasConstantFactor), struct_convert(Float32,depthBiasClamp), struct_convert(Float32,depthBiasSlopeFactor), struct_convert(Float32,lineWidth))
end

# keyword argument constructor
function PipelineRasterizationStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), depthClampEnable = default(UInt32), rasterizerDiscardEnable = default(UInt32), polygonMode = default(Vulkan.api.VkPolygonMode), cullMode = default(UInt32), frontFace = default(Vulkan.api.VkFrontFace), depthBiasEnable = default(UInt32), depthBiasConstantFactor = default(Float32), depthBiasClamp = default(Float32), depthBiasSlopeFactor = default(Float32), lineWidth = default(Float32))
    PipelineRasterizationStateCreateInfo(sType, pNext, flags, depthClampEnable, rasterizerDiscardEnable, polygonMode, cullMode, frontFace, depthBiasEnable, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor, lineWidth)
end

# constructor with automatic conversion
function PipelineShaderStageCreateInfo(sType, pNext, flags, stage, _module, pName, pSpecializationInfo)
    api.VkPipelineShaderStageCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkShaderStageFlagBits,stage), struct_convert(Ptr{Void},_module), struct_convert(Ptr{Int8},pName), struct_convert(Ptr{Vulkan.api.VkSpecializationInfo},pSpecializationInfo))
end

# keyword argument constructor
function PipelineShaderStageCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), stage = default(Vulkan.api.VkShaderStageFlagBits), _module = default(Ptr{Void}), pName = default(Ptr{Int8}), pSpecializationInfo = default(Ptr{Vulkan.api.VkSpecializationInfo}))
    PipelineShaderStageCreateInfo(sType, pNext, flags, stage, _module, pName, pSpecializationInfo)
end

# constructor with automatic conversion
function PipelineTessellationStateCreateInfo(sType, pNext, flags, patchControlPoints)
    api.VkPipelineTessellationStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,patchControlPoints))
end

# keyword argument constructor
function PipelineTessellationStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), patchControlPoints = default(UInt32))
    PipelineTessellationStateCreateInfo(sType, pNext, flags, patchControlPoints)
end

# constructor with automatic conversion
function PipelineVertexInputStateCreateInfo(sType, pNext, flags, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions)
    api.VkPipelineVertexInputStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,vertexBindingDescriptionCount), struct_convert(Ptr{Vulkan.api.VkVertexInputBindingDescription},pVertexBindingDescriptions), struct_convert(UInt32,vertexAttributeDescriptionCount), struct_convert(Ptr{Vulkan.api.VkVertexInputAttributeDescription},pVertexAttributeDescriptions))
end

# keyword argument constructor
function PipelineVertexInputStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), vertexBindingDescriptionCount = default(UInt32), pVertexBindingDescriptions = default(Ptr{Vulkan.api.VkVertexInputBindingDescription}), vertexAttributeDescriptionCount = default(UInt32), pVertexAttributeDescriptions = default(Ptr{Vulkan.api.VkVertexInputAttributeDescription}))
    PipelineVertexInputStateCreateInfo(sType, pNext, flags, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions)
end

# constructor with automatic conversion
function PipelineViewportStateCreateInfo(sType, pNext, flags, viewportCount, pViewports, scissorCount, pScissors)
    api.VkPipelineViewportStateCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,viewportCount), struct_convert(Ptr{Vulkan.api.VkViewport},pViewports), struct_convert(UInt32,scissorCount), struct_convert(Ptr{Vulkan.api.VkRect2D},pScissors))
end

# keyword argument constructor
function PipelineViewportStateCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), viewportCount = default(UInt32), pViewports = default(Ptr{Vulkan.api.VkViewport}), scissorCount = default(UInt32), pScissors = default(Ptr{Vulkan.api.VkRect2D}))
    PipelineViewportStateCreateInfo(sType, pNext, flags, viewportCount, pViewports, scissorCount, pScissors)
end

# constructor with automatic conversion
function QueryPoolCreateInfo(sType, pNext, flags, queryType, queryCount, pipelineStatistics)
    api.VkQueryPoolCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkQueryType,queryType), struct_convert(UInt32,queryCount), struct_convert(UInt32,pipelineStatistics))
end

# keyword argument constructor
function QueryPoolCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), queryType = default(Vulkan.api.VkQueryType), queryCount = default(UInt32), pipelineStatistics = default(UInt32))
    QueryPoolCreateInfo(sType, pNext, flags, queryType, queryCount, pipelineStatistics)
end

# constructor function for vkCreateQueryPool
function CreateQueryPool(device, pAllocator;kw_args...)
    create_info = Ref(QueryPoolCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkQueryPool}(api.VK_NULL_HANDLE)
    err = api.vkCreateQueryPool(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function RenderPassCreateInfo(sType, pNext, flags, attachmentCount, pAttachments, subpassCount, pSubpasses, dependencyCount, pDependencies)
    api.VkRenderPassCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt32,attachmentCount), struct_convert(Ptr{Vulkan.api.VkAttachmentDescription},pAttachments), struct_convert(UInt32,subpassCount), struct_convert(Ptr{Vulkan.api.VkSubpassDescription},pSubpasses), struct_convert(UInt32,dependencyCount), struct_convert(Ptr{Vulkan.api.VkSubpassDependency},pDependencies))
end

# keyword argument constructor
function RenderPassCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), attachmentCount = default(UInt32), pAttachments = default(Ptr{Vulkan.api.VkAttachmentDescription}), subpassCount = default(UInt32), pSubpasses = default(Ptr{Vulkan.api.VkSubpassDescription}), dependencyCount = default(UInt32), pDependencies = default(Ptr{Vulkan.api.VkSubpassDependency}))
    RenderPassCreateInfo(sType, pNext, flags, attachmentCount, pAttachments, subpassCount, pSubpasses, dependencyCount, pDependencies)
end

# constructor function for vkCreateRenderPass
function CreateRenderPass(device, pAllocator;kw_args...)
    create_info = Ref(RenderPassCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkRenderPass}(api.VK_NULL_HANDLE)
    err = api.vkCreateRenderPass(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function SamplerCreateInfo(sType, pNext, flags, magFilter, minFilter, mipmapMode, addressModeU, addressModeV, addressModeW, mipLodBias, anisotropyEnable, maxAnisotropy, compareEnable, compareOp, minLod, maxLod, borderColor, unnormalizedCoordinates)
    api.VkSamplerCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Vulkan.api.VkFilter,magFilter), struct_convert(Vulkan.api.VkFilter,minFilter), struct_convert(Vulkan.api.VkSamplerMipmapMode,mipmapMode), struct_convert(Vulkan.api.VkSamplerAddressMode,addressModeU), struct_convert(Vulkan.api.VkSamplerAddressMode,addressModeV), struct_convert(Vulkan.api.VkSamplerAddressMode,addressModeW), struct_convert(Float32,mipLodBias), struct_convert(UInt32,anisotropyEnable), struct_convert(Float32,maxAnisotropy), struct_convert(UInt32,compareEnable), struct_convert(Vulkan.api.VkCompareOp,compareOp), struct_convert(Float32,minLod), struct_convert(Float32,maxLod), struct_convert(Vulkan.api.VkBorderColor,borderColor), struct_convert(UInt32,unnormalizedCoordinates))
end

# keyword argument constructor
function SamplerCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), magFilter = default(Vulkan.api.VkFilter), minFilter = default(Vulkan.api.VkFilter), mipmapMode = default(Vulkan.api.VkSamplerMipmapMode), addressModeU = default(Vulkan.api.VkSamplerAddressMode), addressModeV = default(Vulkan.api.VkSamplerAddressMode), addressModeW = default(Vulkan.api.VkSamplerAddressMode), mipLodBias = default(Float32), anisotropyEnable = default(UInt32), maxAnisotropy = default(Float32), compareEnable = default(UInt32), compareOp = default(Vulkan.api.VkCompareOp), minLod = default(Float32), maxLod = default(Float32), borderColor = default(Vulkan.api.VkBorderColor), unnormalizedCoordinates = default(UInt32))
    SamplerCreateInfo(sType, pNext, flags, magFilter, minFilter, mipmapMode, addressModeU, addressModeV, addressModeW, mipLodBias, anisotropyEnable, maxAnisotropy, compareEnable, compareOp, minLod, maxLod, borderColor, unnormalizedCoordinates)
end

# constructor function for vkCreateSampler
function CreateSampler(device, pAllocator;kw_args...)
    create_info = Ref(SamplerCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkSampler}(api.VK_NULL_HANDLE)
    err = api.vkCreateSampler(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function SemaphoreCreateInfo(sType, pNext, flags)
    api.VkSemaphoreCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags))
end

# keyword argument constructor
function SemaphoreCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32))
    SemaphoreCreateInfo(sType, pNext, flags)
end

# constructor function for vkCreateSemaphore
function CreateSemaphore(device, pAllocator;kw_args...)
    create_info = Ref(SemaphoreCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkSemaphore}(api.VK_NULL_HANDLE)
    err = api.vkCreateSemaphore(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function ShaderModuleCreateInfo(sType, pNext, flags, codeSize, pCode)
    api.VkShaderModuleCreateInfo(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(UInt64,codeSize), struct_convert(Ptr{UInt32},pCode))
end

# keyword argument constructor
function ShaderModuleCreateInfo(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), codeSize = default(UInt64), pCode = default(Ptr{UInt32}))
    ShaderModuleCreateInfo(sType, pNext, flags, codeSize, pCode)
end

# constructor function for vkCreateShaderModule
function CreateShaderModule(device, pAllocator;kw_args...)
    create_info = Ref(ShaderModuleCreateInfo(;kw_args...))
    instance_ptr = Ref{api.VkShaderModule}(api.VK_NULL_HANDLE)
    err = api.vkCreateShaderModule(device, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function SwapchainCreateInfoKHR(sType, pNext, flags, surface, minImageCount, imageFormat, imageColorSpace, imageExtent, imageArrayLayers, imageUsage, imageSharingMode, queueFamilyIndexCount, pQueueFamilyIndices, preTransform, compositeAlpha, presentMode, clipped, oldSwapchain)
    api.VkSwapchainCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},surface), struct_convert(UInt32,minImageCount), struct_convert(Vulkan.api.VkFormat,imageFormat), struct_convert(Vulkan.api.VkColorSpaceKHR,imageColorSpace), struct_convert(Vulkan.api.VkExtent2D,imageExtent), struct_convert(UInt32,imageArrayLayers), struct_convert(UInt32,imageUsage), struct_convert(Vulkan.api.VkSharingMode,imageSharingMode), struct_convert(UInt32,queueFamilyIndexCount), struct_convert(Ptr{UInt32},pQueueFamilyIndices), struct_convert(Vulkan.api.VkSurfaceTransformFlagBitsKHR,preTransform), struct_convert(Vulkan.api.VkCompositeAlphaFlagBitsKHR,compositeAlpha), struct_convert(Vulkan.api.VkPresentModeKHR,presentMode), struct_convert(UInt32,clipped), struct_convert(Ptr{Void},oldSwapchain))
end

# keyword argument constructor
function SwapchainCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), surface = default(Ptr{Void}), minImageCount = default(UInt32), imageFormat = default(Vulkan.api.VkFormat), imageColorSpace = default(Vulkan.api.VkColorSpaceKHR), imageExtent = default(Vulkan.api.VkExtent2D), imageArrayLayers = default(UInt32), imageUsage = default(UInt32), imageSharingMode = default(Vulkan.api.VkSharingMode), queueFamilyIndexCount = default(UInt32), pQueueFamilyIndices = default(Ptr{UInt32}), preTransform = default(Vulkan.api.VkSurfaceTransformFlagBitsKHR), compositeAlpha = default(Vulkan.api.VkCompositeAlphaFlagBitsKHR), presentMode = default(Vulkan.api.VkPresentModeKHR), clipped = default(UInt32), oldSwapchain = default(Ptr{Void}))
    SwapchainCreateInfoKHR(sType, pNext, flags, surface, minImageCount, imageFormat, imageColorSpace, imageExtent, imageArrayLayers, imageUsage, imageSharingMode, queueFamilyIndexCount, pQueueFamilyIndices, preTransform, compositeAlpha, presentMode, clipped, oldSwapchain)
end

# constructor function for vkCreateSharedSwapchainsKHR
function CreateSharedSwapchainsKHR(device, swapchainCount, pAllocator;kw_args...)
    create_info = Ref(SwapchainCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkSharedSwapchainsKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateSharedSwapchainsKHR(device, swapchainCount, create_info, pAllocator, instance_ptr)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function WaylandSurfaceCreateInfoKHR(sType, pNext, flags, display, surface)
    api.VkWaylandSurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},display), struct_convert(Ptr{Void},surface))
end

# keyword argument constructor
function WaylandSurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), display = default(Ptr{Void}), surface = default(Ptr{Void}))
    WaylandSurfaceCreateInfoKHR(sType, pNext, flags, display, surface)
end

# constructor function for vkCreateWaylandSurfaceKHR
function CreateWaylandSurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(WaylandSurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkWaylandSurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateWaylandSurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function Win32SurfaceCreateInfoKHR(sType, pNext, flags, hinstance, hwnd)
    api.VkWin32SurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},hinstance), struct_convert(Ptr{Void},hwnd))
end

# keyword argument constructor
function Win32SurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), hinstance = default(Ptr{Void}), hwnd = default(Ptr{Void}))
    Win32SurfaceCreateInfoKHR(sType, pNext, flags, hinstance, hwnd)
end

# constructor function for vkCreateWin32SurfaceKHR
function CreateWin32SurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(Win32SurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkWin32SurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateWin32SurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function XcbSurfaceCreateInfoKHR(sType, pNext, flags, connection, window)
    api.VkXcbSurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},connection), struct_convert(UInt32,window))
end

# keyword argument constructor
function XcbSurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), connection = default(Ptr{Void}), window = default(UInt32))
    XcbSurfaceCreateInfoKHR(sType, pNext, flags, connection, window)
end

# constructor function for vkCreateXcbSurfaceKHR
function CreateXcbSurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(XcbSurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkXcbSurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateXcbSurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end

# constructor with automatic conversion
function XlibSurfaceCreateInfoKHR(sType, pNext, flags, dpy, window)
    api.VkXlibSurfaceCreateInfoKHR(struct_convert(Vulkan.api.VkStructureType,sType), struct_convert(Ptr{Void},pNext), struct_convert(UInt32,flags), struct_convert(Ptr{Void},dpy), struct_convert(UInt32,window))
end

# keyword argument constructor
function XlibSurfaceCreateInfoKHR(;sType = default(Vulkan.api.VkStructureType), pNext = default(Ptr{Void}), flags = default(UInt32), dpy = default(Ptr{Void}), window = default(UInt32))
    XlibSurfaceCreateInfoKHR(sType, pNext, flags, dpy, window)
end

# constructor function for vkCreateXlibSurfaceKHR
function CreateXlibSurfaceKHR(instance, pAllocator, pSurface;kw_args...)
    create_info = Ref(XlibSurfaceCreateInfoKHR(;kw_args...))
    instance_ptr = Ref{api.VkXlibSurfaceKHR}(api.VK_NULL_HANDLE)
    err = api.vkCreateXlibSurfaceKHR(instance, create_info, pAllocator, pSurface)
    check(err)
    instance_ptr[]
end
