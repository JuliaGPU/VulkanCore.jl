const WIDTH = 800
const HEIGHT = 600

## init GLFW window
GLFW.WindowHint(GLFW.CLIENT_API, GLFW.NO_API)    # not to create an OpenGL context
GLFW.WindowHint(GLFW.RESIZABLE, 0)
window = GLFW.CreateWindow(WIDTH, HEIGHT, "Vulkan")

# fill application info
sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
pApplicationName = pointer(b"Vulkan Instance")
applicationVersion = VK_MAKE_VERSION(1, 1, 0)
pEngineName = pointer(b"Test")
engineVersion = VK_MAKE_VERSION(1, 1, 0)
apiVersion = VK_MAKE_VERSION(1, 1, 0)
appInfoRef = VkApplicationInfo(sType, C_NULL, pApplicationName, applicationVersion, pEngineName, engineVersion, apiVersion) |> Ref

# fill create info
sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
flags = UInt32(0)
pApplicationInfo = Base.unsafe_convert(Ptr{VkApplicationInfo}, appInfoRef)
requiredExtensions = GLFW.GetRequiredInstanceExtensions()
enabledExtensionCount = Cuint(length(requiredExtensions))
ppEnabledExtensionNames = Base.unsafe_convert(Ptr{Cstring}, Base.cconvert(Ptr{Cstring}, requiredExtensions))
enabledLayerCount = Cuint(0)
ppEnabledLayerNames = C_NULL
createInfoRef = VkInstanceCreateInfo(sType, C_NULL, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames) |> Ref

# create instance
instanceRef = Ref{VkInstance}(C_NULL)
result = vkCreateInstance(createInfoRef, C_NULL, instanceRef)
result != VK_SUCCESS && error("failed to create instance!")
instance = instanceRef[]

## main loop
while !GLFW.WindowShouldClose(window)
    GLFW.PollEvents()
end

## clean up
vk.vkDestroyInstance(instance, C_NULL)
GLFW.DestroyWindow(window)
