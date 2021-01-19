@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON" && Sys.isapple()
	import Libdl: DL_LOAD_PATH
	push!(DL_LOAD_PATH, ENV["JULIA_VULKAN_SDK_SEARCH_PATH"])
end

using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

@testset "GLFW" begin
	if GLFW.VulkanSupported()
		include("glfw.jl")
	end
end

@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "OFF"
	include("old_tests.jl")
end