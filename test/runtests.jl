using VulkanCore
using VulkanCore.LibVulkan
using Test
using GLFW

const api = vk

include("vk_utils.jl")

err = api.VkResult(0)
count = Ref{Cuint}(0)
# Scan layers
err = api.vkEnumerateInstanceLayerProperties(count, C_NULL)
@assert err == api.VK_SUCCESS
global_layer_properties = Vector{api.VkLayerProperties}(undef, count[])
err = api.vkEnumerateInstanceLayerProperties(count, global_layer_properties)
@assert err == api.VK_SUCCESS

function Base.show(io::IO, lp::api.VkLayerProperties)
	println(io, "Layer Properties: ")
	println(io, "    Layer Name: ", String(filter(x->x!=0, UInt8[lp.layerName...])))
	println(io, "    Spec Version: ", convert_vk(VersionNumber, lp.specVersion))
	println(io, "    Implementation Version: ", convert_vk(VersionNumber, lp.implementationVersion))
	println(io, "    description: ", String(filter(x->x!=0, UInt8[lp.description...])))
end
for elem in global_layer_properties
	println(elem)
end

appname = b"vulkaninfo"

app_info = Ref(VkApplicationInfo(VK_STRUCTURE_TYPE_APPLICATION_INFO,
								 C_NULL,
								 pointer(appname),
								 1,
								 pointer(appname),
								 1,
								 convert_vk_back(UInt32, v"1.1")))

inst_info = Ref(VkInstanceCreateInfo(VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
								     C_NULL,
									 UInt32(0),
									 Base.unsafe_convert(Ptr{VkApplicationInfo}, app_info),
									 0,
									 C_NULL,
									 0,
									 C_NULL))

instance = Ref{VkInstance}(C_NULL)

err = vkCreateInstance(inst_info, C_NULL, instance)
@test err == VK_SUCCESS
println(instance)

gpu_count = Ref{Cuint}(0)
err = vkEnumeratePhysicalDevices(instance[], gpu_count, C_NULL)
@test err == VK_SUCCESS
devices = Array{VkPhysicalDevice}(undef, gpu_count[])

err = vkEnumeratePhysicalDevices(instance[], gpu_count, devices)
@test err == VK_SUCCESS

deviceprops = Ref{VkPhysicalDeviceProperties}()
vkGetPhysicalDeviceProperties(devices[], deviceprops)


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

queue_count = Ref{Cuint}(0)
vkGetPhysicalDeviceQueueFamilyProperties(devices[], queue_count, C_NULL)
queueprops = Array{VkQueueFamilyProperties}(undef, queue_count[])
println(queue_count[])
vkGetPhysicalDeviceQueueFamilyProperties(devices[], queue_count, queueprops)
println(queueprops)

memprops = Ref{VkPhysicalDeviceMemoryProperties}()
vkGetPhysicalDeviceMemoryProperties(devices[], memprops)

println(memprops[])
devicefeatures = Ref{VkPhysicalDeviceFeatures}()
vkGetPhysicalDeviceFeatures(devices[], devicefeatures)

function Base.show(io::IO, df::VkPhysicalDeviceFeatures)
	println(io, "Physical device features: ")
	for name in fieldnames(typeof(df))
		println(io, "    ", name, ": ", getfield(df, name) != 1 ? "un" : "", "supported")
	end
end
println(devicefeatures[])

@static if GLFW.VulkanSupported()
	include("glfw.jl")
end
