function setup_renderpass(swapchain)
	attachments = Array(api.VkAttachmentDescription, 2)

	attachments[1, :format] = swapchain.color_format
	attachments[1, :samples] = api.VK_SAMPLE_COUNT_1_BIT
	attachments[1, :loadOp] = api.VK_ATTACHMENT_LOAD_OP_CLEAR
	attachments[1, :storeOp] = api.VK_ATTACHMENT_STORE_OP_STORE
	attachments[1, :stencilLoadOp] = api.VK_ATTACHMENT_LOAD_OP_DONT_CARE
	attachments[1, :stencilStoreOp] = api.VK_ATTACHMENT_STORE_OP_DONT_CARE
	attachments[1, :initialLayout] = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
	attachments[1, :finalLayout] = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL

	attachments[2, :format] = swapchain.depth_format
	attachments[2, :samples] = api.VK_SAMPLE_COUNT_1_BIT
	attachments[2, :loadOp] = api.VK_ATTACHMENT_LOAD_OP_CLEAR
	attachments[2, :storeOp] = api.VK_ATTACHMENT_STORE_OP_STORE
	attachments[2, :stencilLoadOp] = api.VK_ATTACHMENT_LOAD_OP_DONT_CARE
	attachments[2, :stencilStoreOp] = api.VK_ATTACHMENT_STORE_OP_DONT_CARE
	attachments[2, :initialLayout] = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
	attachments[2, :finalLayout] = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL

	colorReference = Ref{api.VkAttachmentReference}()
	colorReference[:attachment] = 0
	colorReference[:layout] = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL

	depthReference = Ref{api.VkAttachmentReference}()
	depthReference[:attachment] = 1
	depthReference[:layout] = api.VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL

	subpass = Ref{api.VkSubpassDescription}()
	subpass[:pipelineBindPoint] = api.VK_PIPELINE_BIND_POINT_GRAPHICS
	subpass[:flags] = 0
	subpass[:inputAttachmentCount] = 0
	subpass[:pInputAttachments] = C_NULL
	subpass[:colorAttachmentCount] = 1
	subpass[:pColorAttachments] = colorReference
	subpass[:pResolveAttachments] = C_NULL
	subpass[:pDepthStencilAttachment] = depthReference
	subpass[:preserveAttachmentCount] = 0
	subpass[:pPreserveAttachments] = C_NULL

	renderPassInfo = Ref{api.VkRenderPassCreateInfo}()
	renderPassInfo[:sType] = api.VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
	renderPassInfo[:pNext] = C_NULL
	renderPassInfo[:attachmentCount] = 2
	renderPassInfo[:pAttachments] = attachments
	renderPassInfo[:subpassCount] = 1
	renderPassInfo[:pSubpasses] = subpass
	renderPassInfo[:dependencyCount] = 0
	renderPassInfo[:pDependencies] = C_NULL
	renderpass = Ref{api.VkRenderPass}()
	err = vkCreateRenderPass(device, renderPassInfo, C_NULL, renderpass)
	check(err)
	renderpass[]
end

function setup_framebuffer(swapchain, depth_stencil, renderpass, width, height)
	attachments = Array(api.VkImageView, 2)

	# Depth/Stencil attachment is the same for all frame buffers
	attachments[2] = depth_stencil.view

	frameBufferCreateInfo = Ref{api.VkFramebufferCreateInfo}()
	frameBufferCreateInfo[:sType] = api.VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
	frameBufferCreateInfo[:pNext] = C_NULL
	frameBufferCreateInfo[:renderPass] = renderpass
	frameBufferCreateInfo[:attachmentCount] = 2
	frameBufferCreateInfo[:pAttachments] = attachments
	frameBufferCreateInfo[:width] = width
	frameBufferCreateInfo[:height] = height
	frameBufferCreateInfo[:layers] = 1

	# Create frame buffers for every swap chain image
	framebuffers = Array(api.VkFramebuffer, image_count(swapchain))
	for i=1:length(framebuffers)
		attachments[1] = swapchain.buffers[i].view
		err = api.vkCreateFramebuffer(device, frameBufferCreateInfo, C_NULL, pointer(framebuffers, i))
		check(err)
	end
	framebuffers
end