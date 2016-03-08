function createCommandPool(device, swapchain)
	command_pool_info = create_ref(api.VkCommandPoolCreateInfo,
    	sType = api.VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
    	queueFamilyIndex = swapchain.queue_node_index,
    	flags = api.VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
    )
    command_pool_ref = Ref{api.VkCommandPool}(C_NULL)
	err = api.vkCreateCommandPool(device, command_pool_info, C_NULL, command_pool_ref)
	check(err)
	command_pool_ref[]
end

function createSetupCommandBuffer(device, command_pool)
	setup_command_buffer = Array(api.VkCommandBuffer, 1)

    cmdBufAllocateInfo = create_ref(api.VkCommandBufferAllocateInfo,
        sType = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        commandPool = command_pool,
        level = api.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        commandBufferCount = 1
    )

	err = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, setup_command_buffer)
	check(err)

	# todo : Command buffer is also started here, better put somewhere else
	# todo : Check if necessaray at all...
	cmdBufInfo = create_ref(api.VkCommandBufferBeginInfo,
	   sType = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    )
	# todo : check null handles, flags?

	err = api.vkBeginCommandBuffer(setup_command_buffer[], cmdBufInfo)
	check(err)
	setup_command_buffer[]
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
    cmdBufAllocateInfo = create_ref(api.VkCommandBufferAllocateInfo,
        sType = api.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        commandPool = command_pool,
        level = api.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        commandBufferCount = length(draw_command_buffers)
    )

	err = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, draw_command_buffers)
	check(err)

	# Command buffers for submitting present barriers
	cmdBufAllocateInfo[:commandBufferCount] = 1
	# Pre present
	prePresentCmdBuffer = Array(api.VkCommandBuffer, 1)
	vkRes = api.vkAllocateCommandBuffers(device, cmdBufAllocateInfo, prePresentCmdBuffer)
	check(err)
	# Post present
	postPresentCmdBuffer = Array(api.VkCommandBuffer, 1)
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
        api.VkClearValue(api.VkClearColorValue((0.025f0, 0.025f0, 0.025f0, 1.0f0))),
        api.VkClearValue(api.VkClearColorValue((1f0, reinterpret(Float32, UInt32(0)), 0f0, 0f0)))
    ]

    renderPassBeginInfo = create_ref(api.VkRenderPassBeginInfo,
        sType = api.VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
        renderPass = renderPass,
        renderArea = api.VkRect2D(
            api.VkOffset2D(0, 0),
            api.VkExtent2D(width, height)
        ),
        clearValueCount = 2,
        pClearValues = clearValues
    )

    cmd_buffers = draw_command_buffers.buffers
    for i=1:length(cmd_buffers)
        # Set target frame buffer
        renderPassBeginInfo[:framebuffer] = frameBuffers[i]

        err = api.vkBeginCommandBuffer(cmd_buffers[i], cmdBufInfo)
        check(err)

        api.vkCmdBeginRenderPass(cmd_buffers[i], renderPassBeginInfo, api.VK_SUBPASS_CONTENTS_INLINE)

        # Update dynamic viewport state
        viewports = [create(api.VkViewport,
            height = height,
            width = width,
            minDepth = 0.0f0,
            maxDepth = 1.0f0
        )]

        api.vkCmdSetViewport(cmd_buffers[i], 0, 1, viewports)

        # Update dynamic scissor state
        scissors = [create(api.VkRect2D,
            extent = api.VkExtent2D(width, height),
            offset = api.VkOffset2D(0,0)
        )]

        api.vkCmdSetScissor(cmd_buffers[i], 0, 1, scissors)
        descriptorset_ref = [descriptorSet]
        # Bind descriptor sets describing shader binding points
        api.vkCmdBindDescriptorSets(cmd_buffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelineLayout, 0, 1, descriptorset_ref, 0, C_NULL)

        # Bind the rendering pipeline (including the shaders)
        api.vkCmdBindPipeline(cmd_buffers[i], api.VK_PIPELINE_BIND_POINT_GRAPHICS, pipelines)

        # Bind triangle vertices
        offsets = [api.VkDeviceSize(0)]
        VERTEX_BUFFER_BIND_ID = 0
        buffers = [vertices.buffer]
        api.vkCmdBindVertexBuffers(cmd_buffers[i], VERTEX_BUFFER_BIND_ID, 1, buffers, offsets)

        # Bind triangle indices
        api.vkCmdBindIndexBuffer(cmd_buffers[i], indices.buffer, 0, api.VK_INDEX_TYPE_UINT32)

        # Draw indexed triangle
        api.vkCmdDrawIndexed(cmd_buffers[i], length(indices), 1, 0, 0, 1)

        api.vkCmdEndRenderPass(cmd_buffers[i])

        # Add a present memory barrier to the end of the command buffer
        # This will transform the frame buffer color attachment to a
        # new layout for presenting it to the windowing system integration
        prePresentBarrier = create_ref(api.VkImageMemoryBarrier,
            sType = api.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
            srcAccessMask = api.VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT,
            dstAccessMask = 0,
            oldLayout = api.VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
            newLayout = api.VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
            srcQueueFamilyIndex = api.VK_QUEUE_FAMILY_IGNORED,
            dstQueueFamilyIndex = api.VK_QUEUE_FAMILY_IGNORED,
            subresourceRange = api.VkImageSubresourceRange(api.VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1),
            image = swapchain.buffers[i].image
        )

        api.vkCmdPipelineBarrier(
            cmd_buffers[i],
            api.VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
            api.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
            0, #VK_FLAGS_NONE
            0, C_NULL,
            0, C_NULL,
            1, prePresentBarrier
        )
        err = api.vkEndCommandBuffer(cmd_buffers[i])
        check(err)
    end
end


function flushSetupCommandBuffer(device, setup_command_buffer, command_pool, queue)
	if (setup_command_buffer == api.VK_NULL_HANDLE)
		return nothing
	end
	err = api.vkEndCommandBuffer(setup_command_buffer)
	check(err)
    cmdbuff = [setup_command_buffer]
	submitInfo = create_ref(api.VkSubmitInfo,
        sType = api.VK_STRUCTURE_TYPE_SUBMIT_INFO,
        pNext = C_NULL,
        waitSemaphoreCount = 0,
        pWaitDstStageMask = 0,
    	commandBufferCount = 1,
    	pCommandBuffers = cmdbuff,
        signalSemaphoreCount = 0
    )

	err = api.vkQueueSubmit(queue, 1, submitInfo, api.VK_NULL_HANDLE)
	check(err)
	err = api.vkQueueWaitIdle(queue)
	check(err)

	api.vkFreeCommandBuffers(device, command_pool, 1, cmdbuff)
	nothing
end


"""Create synchronzation semaphores"""
function prepareSemaphore(device)
    # This semaphore ensures that the image is complete
    # before starting to submit again
    presentComplete = CreateSemaphore(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    )
    renderComplete = CreateSemaphore(device, C_NULL;
        sType = api.VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    )

    # This semaphore ensures that all commands submitted
    # have been finished before submitting the image to the queue
    Semaphore(presentComplete, renderComplete)
end
