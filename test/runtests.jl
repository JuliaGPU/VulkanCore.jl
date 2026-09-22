using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

# A machine with no Vulkan loader is a supported state -- see `HAS_LOADER` -- but it
# is not one this suite can conclude anything from, so it is a failure here rather
# than a skip. Skipping is how CI passed for years while asserting less than a
# developer machine did: the old gate gave up on `vkCreateInstance` entirely.
include("vkhelper.jl")

@testset "VulkanCore" begin
	@test VulkanCore.HAS_LOADER === LibVulkan.HAS_LOADER
	@test VulkanCore.HAS_LOADER
	@test isdefined(LibVulkan, :vkCreateInstance)

	@testset "API" begin
		include("old_tests.jl")
	end
	@testset "GLFW" begin
		include("glfw.jl")
	end
end
