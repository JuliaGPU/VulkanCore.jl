@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON"
	using SwiftShader_jll: libvulkan
	libdir = dirname(libvulkan)
	vk_swiftshader_icd = joinpath(libdir, "vk_swiftshader_icd.json")

	# add SwiftShader ICD to VK_ICD_FILENAMES
	sep = Sys.iswindows() ? ';' : ':'
	old_vk_icd_filenames = get(ENV, "VK_ICD_FILENAMES", "")
	ENV["VK_ICD_FILENAMES"] = isempty(old_vk_icd_filenames) ? vk_swiftshader_icd : join([old_vk_icd_filenames; vk_swiftshader_icd], sep)

	# add SwiftShader DL_LOAD_PATH
	import Libdl.DL_LOAD_PATH
	push!(DL_LOAD_PATH, libdir)
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
