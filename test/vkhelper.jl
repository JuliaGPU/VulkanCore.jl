using VulkanCore
using VulkanCore.LibVulkan

# utils
"""
    unsafe_strings2pp(names) -> Ptr{String}
Dump a pointer that is of type `Ptr{String}` from a Julia `String` array.
"""
unsafe_strings2pp(names::Vector{String}) = Base.unsafe_convert(Ptr{Cstring}, Base.cconvert(Ptr{Cstring}, names))

"""
    to_string(x::NTuple{N,UInt8}) -> String
Convert a `NTuple{N,UInt8}` to `String` dropping all of the `\0`s.
"""
to_string(x::NTuple{N,UInt8}) where {N} = rstrip(String(collect(x)), '\0')

"""
    int2version(::Type{VersionNumber}, ver::Integer) -> VersionNumber
Convert a Vulkan version integer to a `major.minor.patch` `VersionNumber`.
"""
int2version(v::Integer) = VersionNumber(VK_VERSION_MAJOR(v), VK_VERSION_MINOR(v), VK_VERSION_PATCH(v))

# extension & layer checking 
struct ExtensionProperties
    name::String
    version::VersionNumber
end
ExtensionProperties(extension::VkExtensionProperties) =
    ExtensionProperties(to_string(extension.extensionName), int2version(extension.specVersion))

struct LayerProperties
    name::String
    spec_ver::VersionNumber
    impl_ver::VersionNumber
    description::String
end
LayerProperties(layer::VkLayerProperties) = LayerProperties(
    to_string(layer.layerName),
    int2version(layer.specVersion),
    int2version(layer.implementationVersion),
    to_string(layer.description),
)

"""
    get_supported_extensions() -> Vector{String}
Return a vector of supported extensions.
"""
function get_supported_extensions()
    count_ref = Ref{Cuint}(0)
    vkEnumerateInstanceExtensionProperties(C_NULL, count_ref, C_NULL)
    count = count_ref[]
    extensions = Vector{VkExtensionProperties}(undef, count)
    vkEnumerateInstanceExtensionProperties(C_NULL, count_ref, extensions)
    return [ExtensionProperties(ext) for ext in extensions]
end

"""
    check_extensions(required_extensions::Vector{<:AbstractString}) -> Bool
Return `true` when all of the `required_extensions` are supported.
"""
function check_extensions(required_extensions::Vector{<:AbstractString})
    supported = get_supported_extensions()
    @info "available extensions:"
    for x in supported
        @info "  $(x.name): $(x.version)"
    end
    names = [x.name for x in supported]
    if all(x->x in names, required_extensions)
        return true
    else
        @error "not all required extensions are supported."
        @error "required extensions:"
        for extension in required_extensions
            @error "  $extension"
        end
        return false
    end
end

"""
    get_supported_layers() -> Vector{String}
Return a vector of supported layers.
"""
function get_supported_layers()
    count_ref = Ref{Cuint}(0)
    vkEnumerateInstanceLayerProperties(count_ref, C_NULL)
    count = count_ref[]
    layers = Vector{VkLayerProperties}(undef, count)
    vkEnumerateInstanceLayerProperties(count_ref, layers)
    return [LayerProperties(layer) for layer in layers]
end

"""
    check_layers(required_layers::Vector{<:AbstractString}) -> Bool
Return `true` when all of the `required_layers` are supported.
"""
function check_layers(required_layers::Vector{<:AbstractString})
    supported = get_supported_layers()
    isempty(supported) ? @warn("no layers found") : @info("available layers:")
    for x in supported
        @info "  $(x.name): $(x.description)($(x.spec_ver)) -- implementation version: $(x.impl_ver)"
    end
    names = getproperty.(supported, :name)
    all(in(names), required_layers)
end

# instance
function LibVulkan.VkApplicationInfo(app_name::AbstractString, app_ver::VersionNumber, engine_name::AbstractString, engine_ver::VersionNumber, api_ver::Integer)
    sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
    pNext = C_NULL    # reserved for extension-specific structure
    pApplicationName = pointer(app_name)
    vkApplicationVersion = VK_MAKE_VERSION(app_ver.major, app_ver.minor, app_ver.patch)
    pEngineName = pointer(engine_name)
    vkEngineVersion = VK_MAKE_VERSION(engine_ver.major, engine_ver.minor, engine_ver.patch)
    return VkApplicationInfo(sType, pNext, pApplicationName, vkApplicationVersion, pEngineName, vkEngineVersion, Cuint(api_ver))
end

function LibVulkan.VkInstanceCreateInfo(app_info_ref::Ref{VkApplicationInfo}, layers::Vector{String}, extensions::Vector{String})
    sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    pNext = C_NULL       # reserved for extension-specific structure
    flags = UInt32(0)    # reserved for future use
    ppEnabledLayerNames = isempty(layers) ? C_NULL : unsafe_strings2pp(layers)
    ppEnabledExtensionNames = isempty(extensions) ? C_NULL : unsafe_strings2pp(extensions)
    pApplicationInfo = Base.unsafe_convert(Ptr{VkApplicationInfo}, app_info_ref)
    return VkInstanceCreateInfo(sType, pNext, flags, pApplicationInfo, length(layers), ppEnabledLayerNames, length(extensions), ppEnabledExtensionNames)
end

function LibVulkan.VkInstanceCreateInfo(app_info_ref::Ref{VkApplicationInfo}, debug_info_ref::Ref{VkDebugUtilsMessengerCreateInfoEXT}, layers::Vector{String}, extensions::Vector{String})
    sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    pNext = Base.unsafe_convert(Ptr{Cvoid}, debug_info_ref)
    flags = UInt32(0)    # reserved for future use
    ppEnabledLayerNames = isempty(layers) ? C_NULL : unsafe_strings2pp(layers)
    ppEnabledExtensionNames = isempty(extensions) ? C_NULL : unsafe_strings2pp(extensions)
    pApplicationInfo = Base.unsafe_convert(Ptr{VkApplicationInfo}, app_info_ref)
    return VkInstanceCreateInfo(sType, pNext, flags, pApplicationInfo, length(layers), ppEnabledLayerNames, length(extensions), ppEnabledExtensionNames)
end


# debug
function debug_callback(severity::VkDebugUtilsMessageSeverityFlagBitsEXT, type::VkDebugUtilsMessageTypeFlagsEXT, pCallbackData::Ptr{VkDebugUtilsMessengerCallbackDataEXT}, pUserData::Ptr{Cvoid})::VkBool32
    data = unsafe_load(pCallbackData)
    if severity == VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT
        @debug "validation layer: $(Base.unsafe_string(data.pMessage))"
    elseif severity == VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT
        @info "validation layer: $(Base.unsafe_string(data.pMessage))"
    elseif severity == VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
        @warn "validation layer: $(Base.unsafe_string(data.pMessage))"
    elseif severity == VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
        @error "validation layer: $(Base.unsafe_string(data.pMessage))"
    end
    return VK_FALSE
end

function LibVulkan.VkDebugUtilsMessengerCreateInfoEXT(messageSeverity, messageType, pfnUserCallback, pUserData)
    sType = VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
    pNext = C_NULL       # reserved for extension-specific structure
    flags = UInt32(0)    # reserved for future use
    return VkDebugUtilsMessengerCreateInfoEXT(sType, pNext, flags, messageSeverity, messageType, pfnUserCallback, pUserData)
end

function LibVulkan.VkDebugUtilsMessengerCreateInfoEXT(pfnUserCallback, pUserData)
    messageSeverity = VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | 
                      VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT | 
                      VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | 
                      VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
    messageType = VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | 
                  VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | 
                  VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT
    return VkDebugUtilsMessengerCreateInfoEXT(messageSeverity, messageType, pfnUserCallback, pUserData)
end

function CreateDebugUtilsMessengerEXT(instance::VkInstance, pCreateInfo::Ref{VkDebugUtilsMessengerCreateInfoEXT}, pAllocator, pDebugMessenger::Ref{VkDebugUtilsMessengerEXT})
    fp = vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT")
    if fp != C_NULL
        ccall(fp, VkResult, (VkInstance, Ptr{VkDebugUtilsMessengerCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugUtilsMessengerEXT}), instance, pCreateInfo, pAllocator, pDebugMessenger)
    else
        return VK_ERROR_EXTENSION_NOT_PRESENT
    end
end

function DestroyDebugUtilsMessengerEXT(instance::VkInstance, debugMessenger::VkDebugUtilsMessengerEXT, pAllocator)
    fp = vkGetInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT")
    if fp != C_NULL
        ccall(fp, VkResult, (VkInstance, VkDebugUtilsMessengerEXT, Ptr{VkAllocationCallbacks}), instance, debugMessenger, pAllocator)
    end
end

## device and queue family
"""
    get_devices(instance::VkInstance) -> Vector{VkPhysicalDevice}
Return a vector of devices.
"""
function get_devices(instance::VkInstance)
    count_ref = Ref{Cuint}(0)
    vkEnumeratePhysicalDevices(instance, count_ref, C_NULL)
    count = count_ref[]
    if count == 0
        @error "failed to find GPUs with Vulkan support!"
    end
    devices = Vector{VkPhysicalDevice}(undef, count)
    vkEnumeratePhysicalDevices(instance, count_ref, devices)
    return devices
end

mutable struct QueueFamilyIndices
    graphicsFamily::Union{Nothing,Cuint}
end
QueueFamilyIndices() = QueueFamilyIndices(nothing)
is_complete(x::QueueFamilyIndices) = x.graphicsFamily != nothing

"""
    get_queue_family_properties(device::VkPhysicalDevice) -> Vector{VkQueueFamilyProperties}
Return a vector of `VkQueueFamilyProperties`.
"""
function get_queue_family_properties(device::VkPhysicalDevice)
    count_ref = Ref{Cuint}(0)
    vkGetPhysicalDeviceQueueFamilyProperties(device, count_ref, C_NULL)
    properties = Vector{VkQueueFamilyProperties}(undef, count_ref[])
    vkGetPhysicalDeviceQueueFamilyProperties(device, count_ref, properties)
    return properties
end

"""
    find_queue_families(device::VkPhysicalDevice) -> QueueFamilyIndices
Return a `QueueFamilyIndices` for the input device.
"""
function find_queue_families(device::VkPhysicalDevice)
    indices = QueueFamilyIndices()
    families = get_queue_family_properties(device)
    for (i,family) in enumerate(families)
        if Bool(family.queueFlags & VK_QUEUE_GRAPHICS_BIT)
            indices.graphicsFamily = i
        end
        is_complete(indices) && break
    end
    return indices
end

function LibVulkan.VkDeviceQueueCreateInfo(queue_idxs::QueueFamilyIndices, queue_count::Integer, priority::Ref{Cfloat})
    sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
    pNext = C_NULL       # reserved for extension-specific structure
    flags = UInt32(0)    # reserved for future use
    queueFamilyIndex = queue_idxs.graphicsFamily
    pQueuePriorities = Base.unsafe_convert(Ptr{Cfloat}, priority)
    return VkDeviceQueueCreateInfo(sType, pNext, flags, queueFamilyIndex, queue_count, pQueuePriorities)
end

function LibVulkan.VkDeviceCreateInfo(queue_count::Integer, queue_info::Ref{VkDeviceQueueCreateInfo}, features::Ref{VkPhysicalDeviceFeatures})
    sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
    pNext = C_NULL       # reserved for extension-specific structure
    flags = UInt32(0)    # reserved for future use
    queueCreateInfoCount = queue_count
    pQueueCreateInfos = Base.unsafe_convert(Ptr{VkDeviceQueueCreateInfo}, queueCreateInfoRef)
    pEnabledFeatures = Base.unsafe_convert(Ptr{VkPhysicalDeviceFeatures}, deviceFeaturesRef)
    return VkDeviceCreateInfo(sType, pNext, flags, queueCreateInfoCount, pQueueCreateInfos, 0, C_NULL, 0, C_NULL, pEnabledFeatures)
end

LibVulkan.VkPhysicalDeviceFeatures() = VkPhysicalDeviceFeatures(fill(VK_FALSE,55)...)
