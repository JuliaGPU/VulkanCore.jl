using GLFW
using VulkanCore
using VulkanCore.LibVulkan

@assert GLFW.VulkanSupported()

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

layers = ["VK_LAYER_KHRONOS_validation"]
@test check_layers(layers)

extensions, flags = with_portability(extensions)
createInfoRef = VkInstanceCreateInfo(appInfoRef, layers, extensions, flags) |> Ref

instanceRef = Ref(VkInstance(C_NULL))
result = GC.@preserve appInfoRef layers extensions vkCreateInstance(createInfoRef, C_NULL, instanceRef)

@test result == VK_SUCCESS

## cleaning up
if result == VK_SUCCESS
    vkDestroyInstance(instanceRef[], C_NULL)
end
GLFW.DestroyWindow(window)