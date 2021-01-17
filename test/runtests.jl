using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON"
    using SwiftShader_jll
    sep = Sys.iswindows() ? ';' : ':'
    old_vk_icd_filenames = get(ENV, "VK_ICD_FILENAMES", nothing)
    ENV["VK_ICD_FILENAMES"] = join(unique(filter(!isnothing, [old_vk_icd_filenames, joinpath(dirname(SwiftShader_jll.libvulkan), "vk_swiftshader_icd.json")])), sep)
end

@testset "GLFW" begin
	if GLFW.VulkanSupported()
		include("glfw.jl")
	end
end

include("old_tests.jl")
