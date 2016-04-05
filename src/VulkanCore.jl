__precompile__(true)
module VulkanCore

# OpenCL low level api
include("api.jl")

const vk = api
export vk

end # module
