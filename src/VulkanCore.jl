module VulkanCore

include("LibVulkan.jl")
using .LibVulkan

const api = LibVulkan
const vk = api
export vk

# Re-exported so a dependent can gate its own body on the same answer without
# reaching into a submodule. See `LibVulkan.HAS_LOADER`.
const HAS_LOADER = LibVulkan.HAS_LOADER

end # module
