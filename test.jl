using Vulkan
default{T<:Enum}(::Type{T}) = typemin(T)
default{T<:Number}(::Type{T}) = zero(T)
default{T<:Ptr}(::Type{T}) = T(vk.api.VK_NULL_HANDLE)
default{N,T}(::Type{NTuple{N,T}}) = ntuple(x->zero(T), N)

function VkAndroidSurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), window::Ptr{Void} = default(t))
    VkAndroidSurfaceCreateInfoKHR(sType, pNext, flags, window)
end

function VkBufferCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), size::UInt64 = default(t), usage::UInt32 = default(t), sharingMode::Vulkan.api.VkSharingMode = default(t), queueFamilyIndexCount::UInt32 = default(t), pQueueFamilyIndices::Ptr{UInt32} = default(t))
    VkBufferCreateInfo(sType, pNext, flags, size, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices)
end

function VkBufferViewCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), buffer::Ptr{Void} = default(t), format::Vulkan.api.VkFormat = default(t), offset::UInt64 = default(t), range::UInt64 = default(t))
    VkBufferViewCreateInfo(sType, pNext, flags, buffer, format, offset, range)
end

function VkCommandPoolCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), queueFamilyIndex::UInt32 = default(t))
    VkCommandPoolCreateInfo(sType, pNext, flags, queueFamilyIndex)
end

function VkComputePipelineCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), stage::Vulkan.api.VkPipelineShaderStageCreateInfo = default(t), layout::Ptr{Void} = default(t), basePipelineHandle::Ptr{Void} = default(t), basePipelineIndex::Int32 = default(t))
    VkComputePipelineCreateInfo(sType, pNext, flags, stage, layout, basePipelineHandle, basePipelineIndex)
end

function VkDebugReportCallbackCreateInfoEXT(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), pfnCallback::Ptr{Void} = default(t), pUserData::Ptr{Void} = default(t))
    VkDebugReportCallbackCreateInfoEXT(sType, pNext, flags, pfnCallback, pUserData)
end

function VkDescriptorPoolCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), maxSets::UInt32 = default(t), poolSizeCount::UInt32 = default(t), pPoolSizes::Ptr{Vulkan.api.VkDescriptorPoolSize} = default(t))
    VkDescriptorPoolCreateInfo(sType, pNext, flags, maxSets, poolSizeCount, pPoolSizes)
end

function VkDescriptorSetLayoutCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), bindingCount::UInt32 = default(t), pBindings::Ptr{Vulkan.api.VkDescriptorSetLayoutBinding} = default(t))
    VkDescriptorSetLayoutCreateInfo(sType, pNext, flags, bindingCount, pBindings)
end

function VkDeviceCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), queueCreateInfoCount::UInt32 = default(t), pQueueCreateInfos::Ptr{Vulkan.api.VkDeviceQueueCreateInfo} = default(t), enabledLayerCount::UInt32 = default(t), ppEnabledLayerNames::Ptr{Ptr{Int8}} = default(t), enabledExtensionCount::UInt32 = default(t), ppEnabledExtensionNames::Ptr{Ptr{Int8}} = default(t), pEnabledFeatures::Ptr{Vulkan.api.VkPhysicalDeviceFeatures} = default(t))
    VkDeviceCreateInfo(sType, pNext, flags, queueCreateInfoCount, pQueueCreateInfos, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames, pEnabledFeatures)
end

function VkDeviceQueueCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), queueFamilyIndex::UInt32 = default(t), queueCount::UInt32 = default(t), pQueuePriorities::Ptr{Float32} = default(t))
    VkDeviceQueueCreateInfo(sType, pNext, flags, queueFamilyIndex, queueCount, pQueuePriorities)
end

function VkDisplayModeCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), parameters::Vulkan.api.VkDisplayModeParametersKHR = default(t))
    VkDisplayModeCreateInfoKHR(sType, pNext, flags, parameters)
end

function VkDisplaySurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), displayMode::Ptr{Void} = default(t), planeIndex::UInt32 = default(t), planeStackIndex::UInt32 = default(t), transform::Vulkan.api.VkSurfaceTransformFlagBitsKHR = default(t), globalAlpha::Float32 = default(t), alphaMode::Vulkan.api.VkDisplayPlaneAlphaFlagBitsKHR = default(t), imageExtent::Vulkan.api.VkExtent2D = default(t))
    VkDisplaySurfaceCreateInfoKHR(sType, pNext, flags, displayMode, planeIndex, planeStackIndex, transform, globalAlpha, alphaMode, imageExtent)
end

function VkEventCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t))
    VkEventCreateInfo(sType, pNext, flags)
end

function VkFenceCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t))
    VkFenceCreateInfo(sType, pNext, flags)
end

function VkFramebufferCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), renderPass::Ptr{Void} = default(t), attachmentCount::UInt32 = default(t), pAttachments::Ptr{Ptr{Void}} = default(t), width::UInt32 = default(t), height::UInt32 = default(t), layers::UInt32 = default(t))
    VkFramebufferCreateInfo(sType, pNext, flags, renderPass, attachmentCount, pAttachments, width, height, layers)
end

function VkGraphicsPipelineCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), stageCount::UInt32 = default(t), pStages::Ptr{Vulkan.api.VkPipelineShaderStageCreateInfo} = default(t), pVertexInputState::Ptr{Vulkan.api.VkPipelineVertexInputStateCreateInfo} = default(t), pInputAssemblyState::Ptr{Vulkan.api.VkPipelineInputAssemblyStateCreateInfo} = default(t), pTessellationState::Ptr{Vulkan.api.VkPipelineTessellationStateCreateInfo} = default(t), pViewportState::Ptr{Vulkan.api.VkPipelineViewportStateCreateInfo} = default(t), pRasterizationState::Ptr{Vulkan.api.VkPipelineRasterizationStateCreateInfo} = default(t), pMultisampleState::Ptr{Vulkan.api.VkPipelineMultisampleStateCreateInfo} = default(t), pDepthStencilState::Ptr{Vulkan.api.VkPipelineDepthStencilStateCreateInfo} = default(t), pColorBlendState::Ptr{Vulkan.api.VkPipelineColorBlendStateCreateInfo} = default(t), pDynamicState::Ptr{Vulkan.api.VkPipelineDynamicStateCreateInfo} = default(t), layout::Ptr{Void} = default(t), renderPass::Ptr{Void} = default(t), subpass::UInt32 = default(t), basePipelineHandle::Ptr{Void} = default(t), basePipelineIndex::Int32 = default(t))
    VkGraphicsPipelineCreateInfo(sType, pNext, flags, stageCount, pStages, pVertexInputState, pInputAssemblyState, pTessellationState, pViewportState, pRasterizationState, pMultisampleState, pDepthStencilState, pColorBlendState, pDynamicState, layout, renderPass, subpass, basePipelineHandle, basePipelineIndex)
end

function VkImageCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), imageType::Vulkan.api.VkImageType = default(t), format::Vulkan.api.VkFormat = default(t), extent::Vulkan.api.VkExtent3D = default(t), mipLevels::UInt32 = default(t), arrayLayers::UInt32 = default(t), samples::Vulkan.api.VkSampleCountFlagBits = default(t), tiling::Vulkan.api.VkImageTiling = default(t), usage::UInt32 = default(t), sharingMode::Vulkan.api.VkSharingMode = default(t), queueFamilyIndexCount::UInt32 = default(t), pQueueFamilyIndices::Ptr{UInt32} = default(t), initialLayout::Vulkan.api.VkImageLayout = default(t))
    VkImageCreateInfo(sType, pNext, flags, imageType, format, extent, mipLevels, arrayLayers, samples, tiling, usage, sharingMode, queueFamilyIndexCount, pQueueFamilyIndices, initialLayout)
end

function VkImageViewCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), image::Ptr{Void} = default(t), viewType::Vulkan.api.VkImageViewType = default(t), format::Vulkan.api.VkFormat = default(t), components::Vulkan.api.VkComponentMapping = default(t), subresourceRange::Vulkan.api.VkImageSubresourceRange = default(t))
    VkImageViewCreateInfo(sType, pNext, flags, image, viewType, format, components, subresourceRange)
end

function VkInstanceCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), pApplicationInfo::Ptr{Vulkan.api.VkApplicationInfo} = default(t), enabledLayerCount::UInt32 = default(t), ppEnabledLayerNames::Ptr{Ptr{Int8}} = default(t), enabledExtensionCount::UInt32 = default(t), ppEnabledExtensionNames::Ptr{Ptr{Int8}} = default(t))
    VkInstanceCreateInfo(sType, pNext, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames)
end

function VkMirSurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), connection::Ptr{Void} = default(t), mirSurface::Ptr{Void} = default(t))
    VkMirSurfaceCreateInfoKHR(sType, pNext, flags, connection, mirSurface)
end

function VkPipelineCacheCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), initialDataSize::UInt64 = default(t), pInitialData::Ptr{Void} = default(t))
    VkPipelineCacheCreateInfo(sType, pNext, flags, initialDataSize, pInitialData)
end

function VkPipelineColorBlendStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), logicOpEnable::UInt32 = default(t), logicOp::Vulkan.api.VkLogicOp = default(t), attachmentCount::UInt32 = default(t), pAttachments::Ptr{Vulkan.api.VkPipelineColorBlendAttachmentState} = default(t), blendConstants::Tuple{Float32,Float32,Float32,Float32} = default(t))
    VkPipelineColorBlendStateCreateInfo(sType, pNext, flags, logicOpEnable, logicOp, attachmentCount, pAttachments, blendConstants)
end

function VkPipelineDepthStencilStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), depthTestEnable::UInt32 = default(t), depthWriteEnable::UInt32 = default(t), depthCompareOp::Vulkan.api.VkCompareOp = default(t), depthBoundsTestEnable::UInt32 = default(t), stencilTestEnable::UInt32 = default(t), front::Vulkan.api.VkStencilOpState = default(t), back::Vulkan.api.VkStencilOpState = default(t), minDepthBounds::Float32 = default(t), maxDepthBounds::Float32 = default(t))
    VkPipelineDepthStencilStateCreateInfo(sType, pNext, flags, depthTestEnable, depthWriteEnable, depthCompareOp, depthBoundsTestEnable, stencilTestEnable, front, back, minDepthBounds, maxDepthBounds)
end

function VkPipelineDynamicStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), dynamicStateCount::UInt32 = default(t), pDynamicStates::Ptr{Vulkan.api.VkDynamicState} = default(t))
    VkPipelineDynamicStateCreateInfo(sType, pNext, flags, dynamicStateCount, pDynamicStates)
end

function VkPipelineInputAssemblyStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), topology::Vulkan.api.VkPrimitiveTopology = default(t), primitiveRestartEnable::UInt32 = default(t))
    VkPipelineInputAssemblyStateCreateInfo(sType, pNext, flags, topology, primitiveRestartEnable)
end

function VkPipelineLayoutCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), setLayoutCount::UInt32 = default(t), pSetLayouts::Ptr{Ptr{Void}} = default(t), pushConstantRangeCount::UInt32 = default(t), pPushConstantRanges::Ptr{Vulkan.api.VkPushConstantRange} = default(t))
    VkPipelineLayoutCreateInfo(sType, pNext, flags, setLayoutCount, pSetLayouts, pushConstantRangeCount, pPushConstantRanges)
end

function VkPipelineMultisampleStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), rasterizationSamples::Vulkan.api.VkSampleCountFlagBits = default(t), sampleShadingEnable::UInt32 = default(t), minSampleShading::Float32 = default(t), pSampleMask::Ptr{UInt32} = default(t), alphaToCoverageEnable::UInt32 = default(t), alphaToOneEnable::UInt32 = default(t))
    VkPipelineMultisampleStateCreateInfo(sType, pNext, flags, rasterizationSamples, sampleShadingEnable, minSampleShading, pSampleMask, alphaToCoverageEnable, alphaToOneEnable)
end

function VkPipelineRasterizationStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), depthClampEnable::UInt32 = default(t), rasterizerDiscardEnable::UInt32 = default(t), polygonMode::Vulkan.api.VkPolygonMode = default(t), cullMode::UInt32 = default(t), frontFace::Vulkan.api.VkFrontFace = default(t), depthBiasEnable::UInt32 = default(t), depthBiasConstantFactor::Float32 = default(t), depthBiasClamp::Float32 = default(t), depthBiasSlopeFactor::Float32 = default(t), lineWidth::Float32 = default(t))
    VkPipelineRasterizationStateCreateInfo(sType, pNext, flags, depthClampEnable, rasterizerDiscardEnable, polygonMode, cullMode, frontFace, depthBiasEnable, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor, lineWidth)
end

function VkPipelineShaderStageCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), stage::Vulkan.api.VkShaderStageFlagBits = default(t), _module::Ptr{Void} = default(t), pName::Ptr{Int8} = default(t), pSpecializationInfo::Ptr{Vulkan.api.VkSpecializationInfo} = default(t))
    VkPipelineShaderStageCreateInfo(sType, pNext, flags, stage, _module, pName, pSpecializationInfo)
end

function VkPipelineTessellationStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), patchControlPoints::UInt32 = default(t))
    VkPipelineTessellationStateCreateInfo(sType, pNext, flags, patchControlPoints)
end

function VkPipelineVertexInputStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), vertexBindingDescriptionCount::UInt32 = default(t), pVertexBindingDescriptions::Ptr{Vulkan.api.VkVertexInputBindingDescription} = default(t), vertexAttributeDescriptionCount::UInt32 = default(t), pVertexAttributeDescriptions::Ptr{Vulkan.api.VkVertexInputAttributeDescription} = default(t))
    VkPipelineVertexInputStateCreateInfo(sType, pNext, flags, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions)
end

function VkPipelineViewportStateCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), viewportCount::UInt32 = default(t), pViewports::Ptr{Vulkan.api.VkViewport} = default(t), scissorCount::UInt32 = default(t), pScissors::Ptr{Vulkan.api.VkRect2D} = default(t))
    VkPipelineViewportStateCreateInfo(sType, pNext, flags, viewportCount, pViewports, scissorCount, pScissors)
end

function VkQueryPoolCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), queryType::Vulkan.api.VkQueryType = default(t), queryCount::UInt32 = default(t), pipelineStatistics::UInt32 = default(t))
    VkQueryPoolCreateInfo(sType, pNext, flags, queryType, queryCount, pipelineStatistics)
end

function VkRenderPassCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), attachmentCount::UInt32 = default(t), pAttachments::Ptr{Vulkan.api.VkAttachmentDescription} = default(t), subpassCount::UInt32 = default(t), pSubpasses::Ptr{Vulkan.api.VkSubpassDescription} = default(t), dependencyCount::UInt32 = default(t), pDependencies::Ptr{Vulkan.api.VkSubpassDependency} = default(t))
    VkRenderPassCreateInfo(sType, pNext, flags, attachmentCount, pAttachments, subpassCount, pSubpasses, dependencyCount, pDependencies)
end

function VkSamplerCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), magFilter::Vulkan.api.VkFilter = default(t), minFilter::Vulkan.api.VkFilter = default(t), mipmapMode::Vulkan.api.VkSamplerMipmapMode = default(t), addressModeU::Vulkan.api.VkSamplerAddressMode = default(t), addressModeV::Vulkan.api.VkSamplerAddressMode = default(t), addressModeW::Vulkan.api.VkSamplerAddressMode = default(t), mipLodBias::Float32 = default(t), anisotropyEnable::UInt32 = default(t), maxAnisotropy::Float32 = default(t), compareEnable::UInt32 = default(t), compareOp::Vulkan.api.VkCompareOp = default(t), minLod::Float32 = default(t), maxLod::Float32 = default(t), borderColor::Vulkan.api.VkBorderColor = default(t), unnormalizedCoordinates::UInt32 = default(t))
    VkSamplerCreateInfo(sType, pNext, flags, magFilter, minFilter, mipmapMode, addressModeU, addressModeV, addressModeW, mipLodBias, anisotropyEnable, maxAnisotropy, compareEnable, compareOp, minLod, maxLod, borderColor, unnormalizedCoordinates)
end

function VkSemaphoreCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t))
    VkSemaphoreCreateInfo(sType, pNext, flags)
end

function VkShaderModuleCreateInfo(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), codeSize::UInt64 = default(t), pCode::Ptr{UInt32} = default(t))
    VkShaderModuleCreateInfo(sType, pNext, flags, codeSize, pCode)
end

function VkSwapchainCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), surface::Ptr{Void} = default(t), minImageCount::UInt32 = default(t), imageFormat::Vulkan.api.VkFormat = default(t), imageColorSpace::Vulkan.api.VkColorSpaceKHR = default(t), imageExtent::Vulkan.api.VkExtent2D = default(t), imageArrayLayers::UInt32 = default(t), imageUsage::UInt32 = default(t), imageSharingMode::Vulkan.api.VkSharingMode = default(t), queueFamilyIndexCount::UInt32 = default(t), pQueueFamilyIndices::Ptr{UInt32} = default(t), preTransform::Vulkan.api.VkSurfaceTransformFlagBitsKHR = default(t), compositeAlpha::Vulkan.api.VkCompositeAlphaFlagBitsKHR = default(t), presentMode::Vulkan.api.VkPresentModeKHR = default(t), clipped::UInt32 = default(t), oldSwapchain::Ptr{Void} = default(t))
    VkSwapchainCreateInfoKHR(sType, pNext, flags, surface, minImageCount, imageFormat, imageColorSpace, imageExtent, imageArrayLayers, imageUsage, imageSharingMode, queueFamilyIndexCount, pQueueFamilyIndices, preTransform, compositeAlpha, presentMode, clipped, oldSwapchain)
end

function VkWaylandSurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), display::Ptr{Void} = default(t), surface::Ptr{Void} = default(t))
    VkWaylandSurfaceCreateInfoKHR(sType, pNext, flags, display, surface)
end

function VkWin32SurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), hinstance::Ptr{Void} = default(t), hwnd::Ptr{Void} = default(t))
    VkWin32SurfaceCreateInfoKHR(sType, pNext, flags, hinstance, hwnd)
end

function VkXcbSurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), connection::Ptr{Void} = default(t), window::UInt32 = default(t))
    VkXcbSurfaceCreateInfoKHR(sType, pNext, flags, connection, window)
end

function VkXlibSurfaceCreateInfoKHR(;sType::Vulkan.api.VkStructureType = default(t), pNext::Ptr{Void} = default(t), flags::UInt32 = default(t), dpy::Ptr{Void} = default(t), window::UInt32 = default(t))
    VkXlibSurfaceCreateInfoKHR(sType, pNext, flags, dpy, window)
end
