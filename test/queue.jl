using Vulkan
using GeometryTypes, GLAbstraction, FixedSizeArrays, Benchmarks
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


width, height = 512, 512
# VulkanBase::VulkanBase
screen, connection = create_screen()
instance = create_instance("test")
device, physical_device, queue, devicememory_properties = get_graphic_device(instance, false)

# Triangle::main
