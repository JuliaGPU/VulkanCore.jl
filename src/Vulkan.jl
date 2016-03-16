__precompile__(true)
module Vulkan

const vk = Vulkan
export vk

# OpenCL low level api
include("api.jl")
include("../docs/vulkan_doc.jl")

end # module
