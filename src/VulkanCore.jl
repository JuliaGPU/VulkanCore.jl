module VulkanCore

include("LibVulkan.jl")
using .LibVulkan

const api = LibVulkan
const vk = api
export vk

end # module
