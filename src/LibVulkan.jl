module LibVulkan

import Libdl

paths = String[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "vulkan-1", "libvulkan.so.1"], paths)
@assert libvulkan != ""

using CEnum

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt

export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "vk_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "vk_api.jl"))

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "VK_") || startswith(string(s), "vk") || startswith(string(s), "VULKAN")
       @eval export $s
   end
end

end # module
