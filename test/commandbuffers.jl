function createCommandPool(device, swapchain)
	command_pool_info = Ref{api.VkCommandPoolCreateInfo}()
	command_pool_info[:sType] = api.VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
	command_pool_info[:queueFamilyIndex] = swapchain.queue_node_index
	command_pool_info[:flags] = api.VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
	command_pool = Ref{api.VkCommandPool}(C_NULL)
	err = api.vkCreateCommandPool(device, command_pool_info, C_NULL, command_pool)
	check(err)
	command_pool[]
end
function createSetupCommandBuffer(device, command_pool)
	setup_command_buffer = Ref{api.VkCommandBuffer}(api.VK_NULL_HANDLE)

	 cmdBufAllocateInfo = commandBufferAllocateInfo(
		command_pool,
		api.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
		1
	)

	err = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, setup_command_buffer)
	check(err)

	# todo : Command buffer is also started here, better put somewhere else
	# todo : Check if necessaray at all...
	cmdBufInfo = Ref{api.VkCommandBufferBeginInfo}()
	cmdBufInfo[:sType] = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
	# todo : check null handles, flags?

	err = api.vkBeginCommandBuffer(setup_command_buffer[], cmdBufInfo)
	check(err)
	setup_command_buffer[]
end


function commandBufferAllocateInfo(commandPool, level, bufferCount)
	commandBufferAllocateInfo = Ref{api.VkCommandBufferAllocateInfo}()
	commandBufferAllocateInfo[:sType] = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
	commandBufferAllocateInfo[:commandPool] = commandPool
	commandBufferAllocateInfo[:level] = level
	commandBufferAllocateInfo[:commandBufferCount] = bufferCount
	return commandBufferAllocateInfo
end


type DrawCommandBuffer
	buffers
	prepresent
	postpresent
end
function create_command_buffers(device, swapchain)
	# Create one command buffer per frame buffer 
	# in the swap chain
	# Command buffers store a reference to the 
	# frame buffer inside their render pass info
	# so for static usage withouth having to rebuild 
	# them each frame, we use one per frame buffer

	draw_command_buffers = Array(api.VkCommandBuffer, image_count(swapchain))

	cmdBufAllocateInfo = commandBufferAllocateInfo(
		command_pool,
		api.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
		length(draw_command_buffers)
	)
	err = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, draw_command_buffers)
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
	DrawCommandBuffer(draw_command_buffers, prePresentCmdBuffer[], postPresentCmdBuffer[])
end

"""
 Build separate command buffers for every framebuffer image
 Unlike in OpenGL all rendering commands are recorded once
 into command buffers that are then resubmitted to the queue
"""
function buildCommandBuffers(
		draw_command_buffers, frameBuffers, swapchain, 
		renderPass, width, height, pipelineLayout, 
		descriptorSet, pipelines, vertices, indices
	)

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
	renderPassBeginInfo[:renderArea] = api.VkRect2D(
		api.VkOffset2D(0, 0),
		api.VkExtent2D(width, height)
	)
	renderPassBeginInfo[:clearValueCount] = 2
	renderPassBeginInfo[:pClearValues] = clearValues


	for i=1:length(draw_command_buffers)
		# Set target frame buffer
		renderPassBeginInfo[:framebuffer] = frameBuffers[i]

		err = api.vkBeginCommandBuffer(draw_command_buffers[i], cmdBufInfo)
		check(err)

		api.vkCmdBeginRenderPass(draw_command_buffers[i], renderPassBeginInfo, api.VK_SUBPASS_CONTENTS_INLINE)

		# Update dynamic viewport state
		viewport = Ref{api.VkViewport}()
		viewport[:height] = height
		viewport[:width] = width
		viewport[:minDepth] = 0.0f0
		viewport[:maxDepth] = 1.0f0

		api.vkCmdSetViewport(draw_command_buffers[i], 0, 1, viewport)

		# Update dynamic scissor state
		scissor = Ref{api.VkRect2D}()
		scissor[:extent] = api.VkExtent2D(width, height)
		scissor[:offset] = api.VkOffset2D(0,0)

		api.vkCmdSetScissor(draw_command_buffers[i], 0, 1, scissor)

		# Bind descriptor sets describing shader binding points
		api.vkCmdBindDescriptorSets(draw_command_buffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelineLayout, 0, 1, descriptorSet, 0, C_NULL)

		# Bind the rendering pipeline (including the shaders)
		api.vkCmdBindPipeline(draw_command_buffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelines.solid)

		# Bind triangle vertices
		offsets = Ref{api.VkDeviceSize}()
		api.vkCmdBindVertexBuffers(draw_command_buffers[i], VERTEX_BUFFER_BIND_ID, 1, vertices.buf, offsets)

		# Bind triangle indices
		api.vkCmdBindIndexBuffer(draw_command_buffers[i], indices.buf, 0, api.VK_INDEX_TYPE_UINT32)

		# Draw indexed triangle
		api.vkCmdDrawIndexed(draw_command_buffers[i], indices.count, 1, 0, 0, 1)

		api.vkCmdEndRenderPass(draw_command_buffers[i])

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
		prePresentBarrier[:image] = swapchain.buffers[i].image

		api.vkCmdPipelineBarrier(
			draw_command_buffers[i], 
			api.VK_PIPELINE_STAGE_ALL_COMMANDS_BIT, 
			api.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, 
			api.VK_FLAGS_NONE,
			0, C_NULL,
			0, C_NULL,
			1, prePresentBarrier
		)

		err = api.vkEndCommandBuffer(draw_command_buffers[i])
		check(err)
	end
end


function flushSetupCommandBuffer(setup_command_buffer, command_pool, queue)
	if (setup_command_buffer == api.VK_NULL_HANDLE)
		return nothing
	end
	err = api.vkEndCommandBuffer(setup_command_buffer)
	check(err)

	submitInfo = Ref{api.VkSubmitInfo}()
	submitInfo[:sType] = api.VK_STRUCTURE_TYPE_SUBMIT_INFO
	submitInfo[:commandBufferCount] = 1
	submitInfo[:pCommandBuffers] = setup_command_buffer

	err = api.vkQueueSubmit(queue, 1, submitInfo, api.VK_NULL_HANDLE)
	check(err)
	err = api.vkQueueWaitIdle(queue)
	check(err)

	api.vkFreeCommandBuffers(device, command_pool, 1, setup_command_buffer)
	setup_command_buffer = api.VK_NULL_HANDLE # todo : check if still necessary
	nothing
end



