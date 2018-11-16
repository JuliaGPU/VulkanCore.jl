__precompile__(true)
module VulkanCore

# Vulkan low level api
include("api.jl")

macro doc_str(str)
    esc(:($str))
end

include("../docs/vulkan_doc.jl")

const vk = api
export vk

end # module
