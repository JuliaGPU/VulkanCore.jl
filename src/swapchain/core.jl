

"""
Gets the present modes a surface supports
"""
function present_modes(physical_device, surface)
    presentModeCount = Ref{UInt32}()
    err = fpGetPhysicalDeviceSurfacePresentModesKHR(physical_device, surface, presentModeCount, C_NULL)
    check(err)
    if presentModeCount[] < 1
        error("No present modes found")
    end
    present_modes = Array(api.VkPresentModeKHR, presentModeCount[])
    err = fpGetPhysicalDeviceSurfacePresentModesKHR(physical_device, surface, presentModeCount, present_modes)
    check(err)
    present_modes
end

"""
Gets the capabilities of a surface
"""
function surface_capabilities(physical_device, surface)
    surface_capabilities = Ref{api.VkSurfaceCapabilitiesKHR}()
    err = fpGetPhysicalDeviceSurfaceCapabilitiesKHR(physical_device, surface, surface_capabilities)
    check(err)
    surface_capabilities[]
end

function get_images(device, swapchain)
    imageCount = Ref{UInt32}()
    err = fpGetSwapchainImagesKHR(device, swapchain.ref[], imageCount, C_NULL)
    check(err)
    # Get the swap chain images
    images = Array(api.VkImage, imageCount[])
    err = fpGetSwapchainImagesKHR(device, swapchain.ref[], imageCount, images)
    check(err)
    images
end


function acquireNextImage(presentCompleteSemaphore::api.VkSemaphore, currentBuffer, swapchain, device)
    return fpAcquireNextImageKHR(device, swapchain.ref[], typemax(UInt64), presentCompleteSemaphore, Ptr{api.VkFence}(C_NULL), currentBuffer)
end

function queuePresent(queue, currentBuffer_ref, swapchain)
    presentInfo = create(api.VkPresentInfoKHR, (
        :waitSemaphoreCount, 0,
        :swapchainCount, 1,
        :pSwapchains, swapchain.ref,
        :pImageIndices, currentBuffer_ref
    ))
    err = fpQueuePresentKHR(queue, presentInfo)
    check(err)
end
function queuePresent(queue, currentBuffer_ref, waitsemaphore, swapchain)
    waitsemaphore_ref = [waitsemaphore]
    presentInfo = create(api.VkPresentInfoKHR, (
        :swapchainCount, 1,
        :pSwapchains, swapchain.ref,
        :pImageIndices, currentBuffer_ref,
        :waitSemaphoreCount, 1,
        :pWaitSemaphores, waitsemaphore_ref
    ))
    err = fpQueuePresentKHR(queue, presentInfo)
    check(err)
end
