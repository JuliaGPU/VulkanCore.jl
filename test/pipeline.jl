
const shader_cache = []
function loadShaderGLSL(fileName, device::api.VkDevice, stage::api.VkShaderStageFlagBits)
	shaderCode = open(fileName) do io
        readbytes(io)
    end
	if (length(shaderCode) < 1)
        error("$filename is empty and doesn't contain a shader!")
    end
    push!(shaderCode, 0) #append 0 terminator
    # Magic SPV number for shader code header
    pcode = UInt32[0x07230203, 0, stage]

    # now append the shader code to the header
    append!(pcode, reinterpret(UInt32, shaderCode))
    # create the shader
    shadermodule = CreateShaderModule(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
        codeSize = sizeof(pcode),
        pCode = pcode
    )

    shaderStage = create(api.VkPipelineShaderStageCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage = stage,
        _module = shadermodule,
        pName = "main",
    )
    push!(shader_cache, shadermodule)
    push!(shader_cache, pcode)

	return shaderStage
end
function loadShader(fileName, device::api.VkDevice, stage::api.VkShaderStageFlagBits)
	shaderCode = open(fileName) do io
        readbytes(io)
    end
	if (length(shaderCode) < 1)
        error("$filename is empty and doesn't contain a shader!")
    end
    pcode = reinterpret(UInt32, shaderCode)
    # create the shader
    shadermodule = CreateShaderModule(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
        codeSize = sizeof(pcode),
        pCode = pcode
    )
    if shadermodule == C_NULL
        error("Shader module not created successfully")
    end
    shaderStage = create(api.VkPipelineShaderStageCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage = stage,
        _module = shadermodule,
        pName = "main",
    )
    push!(shader_cache, shadermodule)
    push!(shader_cache, pcode)

	return shaderStage
end


function preparePipelines(device, pipelineCache, renderPass, pipelineLayout, vertices)
    # Create our rendering pipeline used in this example
    # Vulkan uses the concept of rendering pipelines to encapsulate
    # fixed states
    # This replaces OpenGL's huge (and cumbersome) state machine
    # A pipeline is then stored and hashed on the GPU making
    # pipeline changes much faster than having to set dozens of
    # states
    # In a real world application you'd have dozens of pipelines
    # for every shader set used in a scene
    # Note that there are a few states that are not stored with
    # the pipeline. These are called dynamic states and the
    # pipeline only stores that they are used with this pipeline,
    # but not their states


    # Vertex input state
    # Describes the topoloy used with this pipeline
    inputAssemblyState = create_ref(api.VkPipelineInputAssemblyStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
        # This pipeline renders vertex data as triangle lists
        topology = api.VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,
        flags = 0,
        primitiveRestartEnable = api.VK_FALSE
    )
    # Rasterization state
    rasterizationState = create_ref(api.VkPipelineRasterizationStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
        # Solid polygon mode
        polygonMode = api.VK_POLYGON_MODE_FILL,
        # No culling
        cullMode = api.VK_CULL_MODE_NONE,
        frontFace = api.VK_FRONT_FACE_COUNTER_CLOCKWISE,
        depthClampEnable = api.VK_TRUE,
    )

    blendAttachmentState = [
        create(api.VkPipelineColorBlendAttachmentState,
            colorWriteMask = 0xf,
            blendEnable = api.VK_FALSE
        )
    ]
    # Color blend state
    # Describes blend modes and color masks
    colorBlendState = create_ref(api.VkPipelineColorBlendStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
        pNext = C_NULL,
        attachmentCount = 1,
        pAttachments = blendAttachmentState
    )
    # One blend attachment state
    # Blending is not used in this example

    # Viewport state
    viewportState = create_ref(api.VkPipelineViewportStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        # One viewport
        viewportCount = 1,
        # One scissor rectangle
        scissorCount = 1
    )

    # Enable dynamic states
    # Describes the dynamic states to be used with this pipeline
    # Dynamic states can be set even after the pipeline has been created
    # So there is no need to create new pipelines just for changing
    # a viewport's dimensions or a scissor box
    dynamicStateEnables = [
        api.VK_DYNAMIC_STATE_VIEWPORT, api.VK_DYNAMIC_STATE_SCISSOR
    ]
    dynamicState = create_ref(api.VkPipelineDynamicStateCreateInfo,
    # The dynamic state properties themselves are stored in the command buffer
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
        pDynamicStates = dynamicStateEnables,
        dynamicStateCount = length(dynamicStateEnables)
    )

    back = create(api.VkStencilOpState,
        failOp = api.VK_STENCIL_OP_KEEP,
        passOp = api.VK_STENCIL_OP_KEEP,
        compareOp = api.VK_COMPARE_OP_ALWAYS
    )
    # Depth and stencil state
    # Describes depth and stenctil test and compare ops
    # Basic depth compare setup with depth writes and depth test enabled
    # No stencil used
    depthStencilState = create_ref(api.VkPipelineDepthStencilStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
        depthTestEnable = api.VK_TRUE,
        depthWriteEnable = api.VK_TRUE,
        depthCompareOp = api.VK_COMPARE_OP_LESS_OR_EQUAL,
        depthBoundsTestEnable = api.VK_FALSE,
        back = back,
        stencilTestEnable = api.VK_FALSE,
        front = back
    )

    # Multi sampling state
    multisampleState = create_ref(api.VkPipelineMultisampleStateCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
        pSampleMask = C_NULL,
    # No multi sampling used in this example
        rasterizationSamples = api.VK_SAMPLE_COUNT_1_BIT,
    )

    # Load shaders

    shaderpath = dirname(@__FILE__)
    shaderStages = [
        loadShader(
            joinpath(shaderpath, "gears.vert.spv"),
            device,
            api.VK_SHADER_STAGE_VERTEX_BIT
        )
        loadShader(
            joinpath(shaderpath, "gears.frag.spv"),
            device,
            api.VK_SHADER_STAGE_FRAGMENT_BIT
        )
    ]
    pipelineCreateInfo = [
        create(api.VkGraphicsPipelineCreateInfo,
            sType = api.VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
            # The layout used for this pipeline
            layout = pipelineLayout,
            # Renderpass this pipeline is attached to
            renderPass = renderPass,
            # Assign states
            # Two shader stages
            stageCount = 2,
            pStages = shaderStages,
            pVertexInputState = vertices,
            # Assign pipeline state create information
            pInputAssemblyState = inputAssemblyState,
            pRasterizationState = rasterizationState,
            pColorBlendState = colorBlendState,
            pMultisampleState = multisampleState,
            pViewportState = viewportState,
            pDepthStencilState = depthStencilState,
            pDynamicState = dynamicState,
        )
    ]

    # Create rendering pipeline
    pipeline_ref = Ref{api.VkPipeline}(api.VK_NULL_HANDLE)
    err = api.vkCreateGraphicsPipelines(device, pipelineCache, 1, pipelineCreateInfo, C_NULL, pipeline_ref)

    check(err)
    pipeline_ref[]
end
