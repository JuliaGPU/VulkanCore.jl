using VulkanCore
using VulkanCore.LibVulkan
using Test

# `HAS_LOADER` is the gate the package itself uses: when it is false the
# generated bindings are not compiled at all, so there is nothing below to call
# and no window toolkit to ask either. The tests ask that same question. They
# used to ask `JULIA_GITHUB_ACTIONS_CI` instead, which meant CI ran a weakened
# suite -- it asserted that creating an instance FAILS, because the runner had
# no driver.
@static if VulkanCore.HAS_LOADER
	using GLFW
end

@testset "VulkanCore" begin
	@test VulkanCore.HAS_LOADER === LibVulkan.HAS_LOADER
	@test VulkanCore.HAS_LOADER == isdefined(LibVulkan, :vkCreateInstance)

	# Skipping the API is right on a machine that has no driver, and a silent pass
	# on a machine that is supposed to have one. A runner that installs a driver
	# says so, and then a missing loader is a failure rather than two vacuous
	# tests. Note this makes CI assert MORE than a dev machine, never less.
	if get(ENV, "VULKANCORE_REQUIRE_LOADER", "0") == "1"
		@test VulkanCore.HAS_LOADER
	end

	if VulkanCore.HAS_LOADER
		@testset "API" begin
			include("old_tests.jl")
		end
		@testset "GLFW" begin
			if GLFW.VulkanSupported()
				include("glfw.jl")
			else
				@info "GLFW reports no Vulkan support, skipping the surface tests"
			end
		end
	else
		@info "No Vulkan loader on this machine, skipping everything that calls the API"
	end
end
