using GLFW
using VulkanCore
using VulkanCore.LibVulkan

@assert GLFW.VulkanSupported()

include("vkhelper.jl")

const WIDTH = 800
const HEIGHT = 600

## init GLFW window
GLFW.WindowHint(GLFW.CLIENT_API, GLFW.NO_API)    # not to create an OpenGL context
GLFW.WindowHint(GLFW.RESIZABLE, 0)
window = GLFW.CreateWindow(WIDTH, HEIGHT, "Vulkan")

## init Vulkan
## creating instance
appInfoRef = VkApplicationInfo(
    "Application Name: Create Instance",
    v"1.0.0",
    "No Engine Name",
    v"1.0.0",
    VK_API_VERSION_1_2,
) |> Ref

extensions = GLFW.GetRequiredInstanceExtensions()
@test check_extensions(extensions)

layers = get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON" ? String[] : ["VK_LAYER_KHRONOS_validation"]
@test check_layers(layers)

createInfoRef = VkInstanceCreateInfo(appInfoRef, layers, extensions) |> Ref

instanceRef = Ref(VkInstance(C_NULL))
result = GC.@preserve appInfoRef layers extensions vkCreateInstance(createInfoRef, C_NULL, instanceRef)

@static if get(ENV, "JULIA_GITHUB_ACTIONS_CI", "OFF") == "ON"
    @test_broken result == VK_SUCCESS
else
    @test result == VK_SUCCESS
end

## cleaning up
if result == VK_SUCCESS
    vkDestroyInstance(instanceRef[], C_NULL)
end
GLFW.DestroyWindow(window)