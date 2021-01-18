using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

const api = VulkanCore.vk

convert_vk_back(::Type{UInt32}, version::VersionNumber) = (version.major << 22) + (version.minor << 12) + version.patch
convert_vk(::Type{VersionNumber}, version::UInt32) = VersionNumber(UInt32(version) >> 22, (UInt32(version) >> 12) & 0x3ff, UInt32(version) & 0xfff)

count = Ref{Cuint}()
# Scan layers
@test vkEnumerateInstanceLayerProperties(count, C_NULL) == VK_SUCCESS
global_layer_properties = Vector{VkLayerProperties}(undef, count[])
@test vkEnumerateInstanceLayerProperties(count, global_layer_properties) == VK_SUCCESS

function Base.show(io::IO, lp::VkLayerProperties)
	println(io, "Layer Properties: ")
	println(io, "    Layer Name: ", String(filter(x->x!=0, UInt8[lp.layerName...])))
	println(io, "    Spec Version: ", convert_vk(VersionNumber, lp.specVersion))
	println(io, "    Implementation Version: ", convert_vk(VersionNumber, lp.implementationVersion))
	println(io, "    description: ", String(filter(x->x!=0, UInt8[lp.description...])))
end

println.(global_layer_properties)

appname = "vulkaninfo"

app_info = Ref(VkApplicationInfo(VK_STRUCTURE_TYPE_APPLICATION_INFO,
								 C_NULL,
								 pointer(appname),
								 1,
								 pointer(appname),
								 1,
								 convert_vk_back(UInt32, v"1.2")))

inst_info = Ref(VkInstanceCreateInfo(VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
								     C_NULL,
									 UInt32(0),
									 Base.unsafe_convert(Ptr{VkApplicationInfo}, app_info),
									 0,
									 C_NULL,
									 0,
									 C_NULL))

instance = Ref{VkInstance}()

@test vkCreateInstance(inst_info, C_NULL, instance) == VK_SUCCESS
println(instance)

gpu_count = Ref{Cuint}()
@test vkEnumeratePhysicalDevices(instance[], gpu_count, C_NULL) == VK_SUCCESS
devices = Array{VkPhysicalDevice}(undef, gpu_count[])

@test vkEnumeratePhysicalDevices(instance[], gpu_count, devices) == VK_SUCCESS

deviceprops = Ref{VkPhysicalDeviceProperties}()
device = first(devices)
vkGetPhysicalDeviceProperties(device, deviceprops)


function Base.show(io::IO, pdsp::VkPhysicalDeviceSparseProperties)
	println(io, "Physical device Sparse Properties: ")
	for name in fieldnames(typeof(pdsp))
		println(io, "    ", name, " ", getfield(pdsp, name) == 1)
	end
end
function Base.show(io::IO, pdp::VkPhysicalDeviceProperties)
	println(io, "Physical Device Properties: ")
	println(io, "    API Version: ", convert_vk(VersionNumber, pdp.apiVersion))
	println(io, "    Driver Version: ", convert_vk(VersionNumber, pdp.driverVersion))

	println(io, "    Vendor ID ", pdp.vendorID)
	println(io, "    Device ID: ", pdp.deviceID)
	println(io, "    Device Type: ", pdp.deviceType)
	println(io, "    Device Name: ", String(filter(x->x!=0, UInt8[pdp.deviceName...])))
	println(io, "    Pipeline Cache UUID: ", String(collect(pdp.pipelineCacheUUID)))
	println(io, "    Limits: ", pdp.limits)
	println(io, "    Sparse Properties: \n    ", pdp.sparseProperties)
end

limitshow(x::Cuint) = Int(x)
limitshow(x::NTuple) = "<"*join(map(limitshow, x), " ")*">"
limitshow(x) = x

function Base.show(io::IO, pdl::VkPhysicalDeviceLimits)
	println(io, "Physical Device Limits: ")
	for name in fieldnames(typeof(pdl))
		println(io, "    ", name, " ", limitshow(getfield(pdl, name)))
	end
end

println(deviceprops[])

queue_count = Ref{Cuint}()
vkGetPhysicalDeviceQueueFamilyProperties(device, queue_count, C_NULL)
queueprops = Array{VkQueueFamilyProperties}(undef, queue_count[])
println(queue_count[])
vkGetPhysicalDeviceQueueFamilyProperties(device, queue_count, queueprops)
println(queueprops)

memprops = Ref{VkPhysicalDeviceMemoryProperties}()
vkGetPhysicalDeviceMemoryProperties(device, memprops)

println(memprops[])
devicefeatures = Ref{VkPhysicalDeviceFeatures}()
vkGetPhysicalDeviceFeatures(device, devicefeatures)

function Base.show(io::IO, df::VkPhysicalDeviceFeatures)
	println(io, "Physical device features: ")
	for name in fieldnames(typeof(df))
		println(io, "    ", name, ": ", getfield(df, name) != 1 ? "un" : "", "supported")
	end
end
println(devicefeatures[])
