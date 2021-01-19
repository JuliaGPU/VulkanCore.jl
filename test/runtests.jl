# using VulkanCore
# using VulkanCore.LibVulkan
using Test
using GLFW

@testset "GLFW" begin
    @test GLFW.VulkanSupported()
	# if GLFW.VulkanSupported()
	# 	include("glfw.jl")
	# end
end

# @static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "OFF"
# 	include("old_tests.jl")
# end
