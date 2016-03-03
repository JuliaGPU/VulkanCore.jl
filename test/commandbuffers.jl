function commandBufferAllocateInfo(commandPool, level, bufferCount)
	commandBufferAllocateInfo = Ref{api.VkCommandBufferAllocateInfo}
	commandBufferAllocateInfo[:sType] = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
	commandBufferAllocateInfo[:commandPool] = commandPool
	commandBufferAllocateInfo[:level] = level
	commandBufferAllocateInfo[:commandBufferCount] = bufferCount
	return commandBufferAllocateInfo
end

function create_command_buffers(device, swapchain)
	# Create one command buffer per frame buffer 
	# in the swap chain
	# Command buffers store a reference to the 
	# frame buffer inside their render pass info
	# so for static usage withouth having to rebuild 
	# them each frame, we use one per frame buffer

	drawCmdBuffers = Array(api.VkCommandBuffer, image_count(swapchain))

	cmdBufAllocateInfo = commandBufferAllocateInfo(
		cmdPool,
		api.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
		length(drawCmdBuffers)
	)
	err = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, drawCmdBuffers)
	check(err)

	# Command buffers for submitting present barriers
	cmdBufAllocateInfo[:commandBufferCount] = 1
	# Pre present
	prePresentCmdBuffer = Ref{VkCommandBuffer}(api.VK_NULL_HANDLE)
	vkRes = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, prePresentCmdBuffer)
	check(err)
	# Post present
	postPresentCmdBuffer = Ref{VkCommandBuffer}(api.VK_NULL_HANDLE)
	vkRes = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, postPresentCmdBuffer)
	check(err)
	prePresentCmdBuffer, postPresentCmdBuffer
end



function init_commandbuffer(drawCmdBuffers, frameBuffers, renderPass, width, height)

	cmdBufInfo = Ref(api.VkCommandBufferBeginInfo(
		api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
		C_NULL,
		0,
		C_NULL
	))


	clearValues = api.VkClearValue[
		api.VkClearValue(api.VkClearColorValue(0.025f0, 0.025f0, 0.025f0, 1.0f0)),
		api.VkClearValue(api.VkClearColorValue(1f0, reinterpret(Float32, UInt32(0)), 0f0, 0f0))
	]


	framebuffer = Ref{api.VkFramebuffer}(C_NULL)
	renderpass = Ref{api.VkRenderPass}(C_NULL)


	renderPassBeginInfo = Ref{api.VkRenderPassBeginInfo}()
	renderPassBeginInfo[:sType] = api.VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
	renderPassBeginInfo[:pNext] = C_NULL
	renderPassBeginInfo[:renderPass] = renderPass
	renderPassBeginInfo[:renderArea] = VkExtent2D(
		VkOffset2D(0, 0)
		VkExtent2D(width, height)
	)
	renderPassBeginInfo[:clearValueCount] = 2;
	renderPassBeginInfo[:pClearValues] = clearValues;




	for i=1:length(drawCmdBuffers)
		# Set target frame buffer
		renderPassBeginInfo[].framebuffer = frameBuffers[i];

		err = vkBeginCommandBuffer(drawCmdBuffers[i], cmdBufInfo);
		check(err)

		api.vkCmdBeginRenderPass(drawCmdBuffers[i], renderPassBeginInfo, api.VK_SUBPASS_CONTENTS_INLINE);

		# Update dynamic viewport state
		viewport = Ref{api.VkViewport}()
		viewport[:height] = height
		viewport[:width] = width
		viewport[:minDepth] = 0.0f0
		viewport[:maxDepth] = 1.0f0

		api.vkCmdSetViewport(drawCmdBuffers[i], 0, 1, viewport)

		# Update dynamic scissor state
		scissor = Ref{api.VkRect2D}()
		scissor[:extent] = api.VkExtent2D(width, height)
		scissor[:offset] = api.VkOffset2D(0,0)

		api.vkCmdSetScissor(drawCmdBuffers[i], 0, 1, scissor)

		# Bind descriptor sets describing shader binding points
		api.vkCmdBindDescriptorSets(drawCmdBuffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelineLayout, 0, 1, descriptorSet, 0, C_NULL);

		# Bind the rendering pipeline (including the shaders)
		api.vkCmdBindPipeline(drawCmdBuffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelines.solid);

		# Bind triangle vertices
		offsets = VkDeviceSize[0]
		api.vkCmdBindVertexBuffers(drawCmdBuffers[i], VERTEX_BUFFER_BIND_ID, 1, &vertices.buf, offsets);

		# Bind triangle indices
		api.vkCmdBindIndexBuffer(drawCmdBuffers[i], indices.buf, 0, VK_INDEX_TYPE_UINT32);

		# Draw indexed triangle
		api.vkCmdDrawIndexed(drawCmdBuffers[i], indices.count, 1, 0, 0, 1);

		api.vkCmdEndRenderPass(drawCmdBuffers[i]);

		# Add a present memory barrier to the end of the command buffer
		# This will transform the frame buffer color attachment to a
		# new layout for presenting it to the windowing system integration 
		prePresentBarrier = Ref{api.VkImageMemoryBarrier}()
		prePresentBarrier[:sType] = api.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
		prePresentBarrier[:pNext] = C_NULL
		prePresentBarrier[:srcAccessMask] = api.VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
		prePresentBarrier[:dstAccessMask] = 0
		prePresentBarrier[:oldLayout] = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
		prePresentBarrier[:newLayout] = api.VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
		prePresentBarrier[:srcQueueFamilyIndex] = api.VK_QUEUE_FAMILY_IGNORED
		prePresentBarrier[:dstQueueFamilyIndex] = api.VK_QUEUE_FAMILY_IGNORED
		prePresentBarrier[:subresourceRange] = api.VkImageSubresourceRange(api.VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1)	
		prePresentBarrier[:image] = swapChain.buffers[i].image

		api.vkCmdPipelineBarrier(
			drawCmdBuffers[i], 
			api.VK_PIPELINE_STAGE_ALL_COMMANDS_BIT, 
			api.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, 
			api.VK_FLAGS_NONE,
			0, C_NULL,
			0, C_NULL,
			1, prePresentBarrier
		)

		err = api.vkEndCommandBuffer(drawCmdBuffers[i])
		println(err)
	end
end