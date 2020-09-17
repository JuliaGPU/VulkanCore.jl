module VulkanCore

include("LibVulkan.jl")
using .LibVulkan

const api = LibVulkan
include(joinpath(@__DIR__, "..", "docs", "vulkan_doc.jl"))

const vk = api
export vk

end # module
