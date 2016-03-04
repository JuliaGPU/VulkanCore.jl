using Vulkan
using GeometryTypes

const api = vk.api
include("refutil.jl")

include("windowing.jl")
include("arrays.jl")
include("instance.jl")
include("device.jl")
include("swapchain.jl")

include("pipeline.jl")
include("descriptor.jl")
include("renderpass.jl")
include("commandbuffers.jl")


immutable Vertex{N,T}
	pos::Point{N,T}
	col::Vec{N,T}
end

width, height = 512, 512

window = create_window(b"hallo", width, height)
instance = create_instance("test")
device, physical_device = get_graphic_device(instance, false)
devicememory_properties = Ref{api.VkPhysicalDeviceMemoryProperties}()

swapchain = SwapChain(instance, device, physical_device, window)
command_pool = createCommandPool(device, swapchain)

setup_command_buffer = createSetupCommandBuffer(device, command_pool)

setupSwapChain(setup_command_buffer, width, height, swapchain)

commandbuffers = create_command_buffers(device, swapchain)

# setupDepthStencil()
# renderpass = setup_renderpass(swapchain)
# pipeline_cache = create_pipeline_cache()
# framebuffers = setup_framebuffer(swapchain, depth_stencil, renderpass, width, height)
# flushSetupCommandBuffer(setup_command_buffer, command_pool, queue)
# setup_command_buffer = createSetupCommandBuffer(device, command_pool)


# # Setup vertices
# vertices = [
# 	Vertex(Point3f0(1.0f0,  1.0f0, 0.0f0), Vec3f0(1.0f0, 0.0f0, 0.0f0)),
# 	Vertex(Point3f0(-1.0f0,  1.0f0, 0.0f0), Vec3f0(0.0f0, 1.0f0, 0.0f0)),
# 	Vertex(Point3f0(0.0f0, -1.0f0, 0.0f0), Vec3f0(0.0f0, 0.0f0, 1.0f0))
# ]
# # Setup indices
# indexes = GLTriangle[(0, 1, 2)]
# vertexbuffer = VKBuffer(vertices, device, devicememory_properties, api.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT)
# indexbuffer = VKBuffer(indexes, device, devicememory_properties, api.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT)
# prepareUniformBuffers()

# descriptorset_layout, pipeline_layout = setupDescriptorSetLayout(descriptor_pool)
# preparePipelines()
# descriptor_pool = setupDescriptorPool(device)
# setupDescriptorSet(descriptorset_layout, pipeline_layout)


# buildCommandBuffers();