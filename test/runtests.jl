# using VulkanCore
# using VulkanCore.LibVulkan
using Test
using GLFW

@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON" && Sys.isapple()
    libvk = joinpath(ENV["VULKAN_SDK"], "lib", "libvulkan.dylib")
    ispath(libvk)
    @show libvk
    run(`install_name_tool -add_rpath $(libvk) $(GLFW.GLFW_jll.libglfw_path)`)
    run(`otool -l $(GLFW.GLFW_jll.libglfw_path)`)
end

@testset "GLFW" begin
    @test GLFW.VulkanSupported()
	# if GLFW.VulkanSupported()
	# 	include("glfw.jl")
	# end
end

# @static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "OFF"
# 	include("old_tests.jl")
# end
