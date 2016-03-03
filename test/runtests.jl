using Vulkan

const api = vk.api
include("refutil.jl")

include("windowing.jl")
include("arrays.jl")
include("instance.jl")
include("device.jl")
include("swapchain.jl")


window = create_window(b"hallo", 512, 512)
instance = create_instance("test")
device, physical_device = get_graphic_device(instance, false)
deviceMemoryProperties = Ref{api.VkPhysicalDeviceMemoryProperties}()

swapchain = VKSwapChain(instance, device, physical_device, window)

println(swapchain)

# x = rand(Float32, 100)
# buff = VulkanBuffer(x, device, )



# using GeometryTypes

# immutable Vertex{N,T}
# 	pos::Point{N,T}
# 	col::Vec{N,T}
# end

# # Setup vertices
# vertices = [
# 	Vertex(Point3f0(1.0f0,  1.0f0, 0.0f0), Vec3f0(1.0f0, 0.0f0, 0.0f0)),
# 	Vertex(Point3f0(-1.0f0,  1.0f0, 0.0f0), Vec3f0(0.0f0, 1.0f0, 0.0f0)),
# 	Vertex(Point3f0(0.0f0, -1.0f0, 0.0f0), Vec3f0(0.0f0, 0.0f0, 1.0f0))
# ]
# # Setup indices
# indexBuffer = GLTriangle[(0, 1, 2)]
# VKBuffer(vertices, device)
