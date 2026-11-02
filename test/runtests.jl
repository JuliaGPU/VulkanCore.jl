using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

# A machine with no Vulkan loader is a supported state -- see `HAS_LOADER` -- but it
# is not one this suite can conclude anything from, so it is a failure here rather
# than a skip. Skipping is how CI passed for years while asserting less than a
# developer machine did: the old gate gave up on `vkCreateInstance` entirely.
@testset "VulkanCore" begin
	# Said plainly here rather than as an UndefVarError from the first helper that
	# names a type the gate did not compile.
	VulkanCore.HAS_LOADER || error("no Vulkan loader '$(LibVulkan.libvulkan)': nothing below this can run")
	# Bindings exist; this asks whether the library also opened in this session.
	@test LibVulkan.loaded()

	include("vkhelper.jl")

	@testset "C string ownership" begin
		layers = CStrings([string("layer", 1)])
		extensions = CStrings([string("extension", 2)])
		app = Ref(VkApplicationInfo("app", v"1", "engine", v"1", VK_API_VERSION_1_2))
		info = VkInstanceCreateInfo(app, layers, extensions)
		GC.gc()
		GC.@preserve app layers extensions begin
			@test unsafe_string(unsafe_load(info.ppEnabledLayerNames)) == "layer1"
			@test unsafe_string(unsafe_load(info.ppEnabledExtensionNames)) == "extension2"
		end
		@test Base.unsafe_convert(Ptr{Cstring}, CStrings(String[])) == C_NULL
	end

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
