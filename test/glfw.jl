const WIDTH = 800
const HEIGHT = 600

# fill application info
sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
pApplicationName = pointer(b"Vulkan Instance")
applicationVersion = convert_vk_back(UInt32, v"1.1")
pEngineName = pointer(b"Test")
engineVersion = convert_vk_back(UInt32, v"1.1")
apiVersion = convert_vk_back(UInt32, v"1.1")
appInfoRef = VkApplicationInfo(sType, C_NULL, pApplicationName, applicationVersion, pEngineName, engineVersion, apiVersion) |> Ref

# fill create info
sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
flags = UInt32(0)
pApplicationInfo = Base.unsafe_convert(Ptr{VkApplicationInfo}, appInfoRef)
requiredExtensions = GLFW.GetRequiredInstanceExtensions()
@static if Sys.isapple()
    @assert ("VK_MVK_macos_surface" in requiredExtensions) || ("VK_EXT_metal_surface" in requiredExtensions)
end
enabledExtensionCount = Ref{Cuint}(0)
ppEnabledExtensionNames = ccall((:glfwGetRequiredInstanceExtensions, GLFW.libglfw), Ptr{Cstring}, (Ref{Cuint},), enabledExtensionCount)
enabledExtensionCount = enabledExtensionCount[]
enabledLayerCount = Cuint(0)
ppEnabledLayerNames = C_NULL
createInfoRef = VkInstanceCreateInfo(sType, C_NULL, flags, pApplicationInfo, enabledLayerCount, ppEnabledLayerNames, enabledExtensionCount, ppEnabledExtensionNames) |> Ref

# create instance
instanceRef = Ref{VkInstance}(C_NULL)
result = vkCreateInstance(createInfoRef, C_NULL, instanceRef)
result != VK_SUCCESS && error("failed to create instance!")
instance = instanceRef[]
@show instance
vkDestroyInstance(instance, C_NULL)
