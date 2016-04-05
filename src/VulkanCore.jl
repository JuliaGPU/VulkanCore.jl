__precompile__(true)
module VulkanCore


# Vulkan low level api
include("api.jl")

const vk = api
export vk

end # module
