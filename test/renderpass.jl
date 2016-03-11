function setup_renderpass(swapchain)
    println(swapchain.depth_format)
	attachments = [
        create(api.VkAttachmentDescription,
            format = swapchain.color_format,
            samples = api.VK_SAMPLE_COUNT_1_BIT,
            loadOp = api.VK_ATTACHMENT_LOAD_OP_CLEAR,
            storeOp = api.VK_ATTACHMENT_STORE_OP_STORE,
            stencilLoadOp = api.VK_ATTACHMENT_LOAD_OP_DONT_CARE,
            stencilStoreOp = api.VK_ATTACHMENT_STORE_OP_DONT_CARE,
            initialLayout = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
            finalLayout = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
        ),
        create(api.VkAttachmentDescription,
            format = swapchain.depth_format,
            samples = api.VK_SAMPLE_COUNT_1_BIT,
            loadOp = api.VK_ATTACHMENT_LOAD_OP_CLEAR,
            storeOp = api.VK_ATTACHMENT_STORE_OP_STORE,
            stencilLoadOp = api.VK_ATTACHMENT_LOAD_OP_DONT_CARE,
            stencilStoreOp = api.VK_ATTACHMENT_STORE_OP_DONT_CARE,
            initialLayout = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL,
            finalLayout = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
        )
    ]

    colorReference = [create(api.VkAttachmentReference,
        attachment = 0,
        layout = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
    )]

    depthReference = [create(api.VkAttachmentReference,
        attachment = 1,
        layout = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    )]

    subpass = create_ref(api.VkSubpassDescription,
        pipelineBindPoint = api.VK_PIPELINE_BIND_POINT_GRAPHICS,
        flags = 0,
        inputAttachmentCount = 0,
        pInputAttachments = C_NULL,
        colorAttachmentCount = 1,
        pColorAttachments = colorReference,
        pResolveAttachments = C_NULL,
        pDepthStencilAttachment = depthReference,
        preserveAttachmentCount = 0,
        pPreserveAttachments = C_NULL,
    )

    renderPassInfo = create_ref(api.VkRenderPassCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
        attachmentCount = 2,
        pAttachments = attachments,
        subpassCount = 1,
        pSubpasses = subpass,
    )
    renderpass_ref = Ref{api.VkRenderPass}(api.VK_NULL_HANDLE)
    err = api.vkCreateRenderPass(device, renderPassInfo, C_NULL, renderpass_ref)
    check(err)
    renderpass_ref[]
end

function setup_framebuffer(swapchain, depth_stencil, renderpass, width, height)
    attachments = Array(api.VkImageView, 2)

    # Depth/Stencil attachment is the same for all frame buffers
    attachments[2] = depth_stencil.view

    frameBufferCreateInfo = create_ref(api.VkFramebufferCreateInfo,
        sType = api.VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
        pNext = C_NULL,
        renderPass = renderpass,
        attachmentCount = 2,
        pAttachments = attachments,
        width = width,
        height = height,
        layers = 1
    )

    # Create frame buffers for every swap chain image
    framebuffers = Array(api.VkFramebuffer, image_count(swapchain))
    for i=1:length(framebuffers)
        attachments[1] = swapchain.buffers[i].view
        fb_ref = Ref(framebuffers, i)
        err = api.vkCreateFramebuffer(device, frameBufferCreateInfo, C_NULL, fb_ref)
        check(err)
    end
    framebuffers
end
