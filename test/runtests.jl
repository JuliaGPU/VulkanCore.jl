@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON"
    using SwiftShader_jll
    sep = Sys.iswindows() ? ';' : ':'
	old_vk_icd_filenames = get(ENV, "VK_ICD_FILENAMES", nothing)
	libdir = dirname(SwiftShader_jll.libvulkan)
	ENV["VK_ICD_FILENAMES"] = join(unique(filter(!isnothing, [old_vk_icd_filenames, joinpath(libdir, "vk_swiftshader_icd.json")])), sep)
	ENV["DL_LOAD_PATH"] = join([get(ENV, "DL_LOAD_PATH", []); libdir], ':')
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

include("old_tests.jl")
