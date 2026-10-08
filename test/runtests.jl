using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

# A machine with no Vulkan loader is a supported state -- see `HAS_LOADER` -- but it
# is not one this suite can conclude anything from, so it is a failure here rather
# than a skip. Skipping is how CI passed for years while asserting less than a
# developer machine did: the old gate gave up on `vkCreateInstance` entirely.
@testset "VulkanCore" begin
	@test VulkanCore.HAS_LOADER === LibVulkan.HAS_LOADER
	@test VulkanCore.HAS_LOADER
	@test isdefined(LibVulkan, :vkCreateInstance)
	# Said plainly here rather than as an UndefVarError from the first helper that
	# names a type the gate did not compile.
	VulkanCore.HAS_LOADER || error("no Vulkan loader: nothing below this can run")

	include("vkhelper.jl")

	@testset "API" begin
		include("old_tests.jl")
	end
	@testset "GLFW" begin
		include("glfw.jl")
	end
	@testset "blob constructors" begin
		include("blob_constructors.jl")
	end
end
