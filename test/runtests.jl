using Vulkan
using GeometryTypes, GLAbstraction

const api = vk.api
include("refutil.jl")
include("helper.jl")
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


instance = create_instance("test")
device, physical_device, queue, devicememory_properties = get_graphic_device(instance, false)
window = create_window(b"hallo", width, height)

swapchain = SwapChain(instance, device, physical_device, window)
command_pool = createCommandPool(device, swapchain)

setup_command_buffer = createSetupCommandBuffer(device, command_pool)

setupSwapChain(setup_command_buffer, width, height, swapchain)

commandbuffers = create_command_buffers(device, swapchain)

depth_stencil = setupDepthStencil(device, setup_command_buffer, swapchain.depth_format, devicememory_properties)
renderpass = setup_renderpass(swapchain)
pipeline_cache = CreatePipelineCache(device, C_NULL;
    sType = api.VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
)
framebuffers = setup_framebuffer(swapchain, depth_stencil, renderpass, width, height)
flushSetupCommandBuffer(device, setup_command_buffer, command_pool, queue)
setup_command_buffer = createSetupCommandBuffer(device, command_pool)


# Setup vertices
vertices = [
	Vertex(Point3f0(1.0f0,  1.0f0, 0.0f0), Vec3f0(1.0f0, 0.0f0, 0.0f0)),
	Vertex(Point3f0(-1.0f0,  1.0f0, 0.0f0), Vec3f0(0.0f0, 1.0f0, 0.0f0)),
	Vertex(Point3f0(0.0f0, -1.0f0, 0.0f0), Vec3f0(0.0f0, 0.0f0, 1.0f0))
]
# Setup indices
indexes = GLTriangle[(0, 1, 2)]
vertexbuffer = VulkanBuffer(vertices, device, devicememory_properties, api.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT)
indexbuffer = VulkanBuffer(indexes, device, devicememory_properties, api.VK_BUFFER_USAGE_VERTEX_BUFFER_BIT)
vertices_vi = setup_binding_description()
prepareUniformBuffers(device, devicememory_properties)

descriptorset_layout, pipeline_layout = setupDescriptorSetLayout(device)
preparePipelines(device, pipeline_cache, renderpass, pipeline_layout, vertices_vi)
descriptor_pool = setupDescriptorPool(device)
setupDescriptorSet(descriptorset_layout, pipeline_layout)


# buildCommandBuffers();
