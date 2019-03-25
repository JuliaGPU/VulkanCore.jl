using VulkanCore
using Test

const api = vk.api

err = api.VkResult(0)

toversion(version::Cuint) = VersionNumber(version >> 22,  (version >> 12) & 0x3ff, version & 0xfff)


count = Ref{Cuint}(0)
# Scan layers
err = api.vkEnumerateInstanceLayerProperties(count, C_NULL)
assert(err == api.VK_SUCCESS)
global_layer_properties = Array{api.VkLayerProperties}(count[])
err = api.vkEnumerateInstanceLayerProperties(count, global_layer_properties)
assert(err == api.VK_SUCCESS)




function Base.show(io::IO, lp::api.VkLayerProperties)
	println(io, "Layer Properties: ")
	println(io, "    Layer Name: ", String(filter(x->x!=0, UInt8[lp.layerName...])))
	println(io, "    Spec Version: ", toversion(lp.specVersion))
	println(io, "    Implementation Version: ", toversion(lp.implementationVersion))
	println(io, "    description: ", String(filter(x->x!=0, UInt8[lp.description...])))
end
for elem in global_layer_properties
	println(elem)
end

appname = b"vulkaninfo"

app_info = Ref(api.VkApplicationInfo(
	api.VK_STRUCTURE_TYPE_APPLICATION_INFO,
	C_NULL,
	pointer(appname),
	1,
	pointer(appname),
	1,
	api.VK_VERSION,
))

inst_info = Ref(api.VkInstanceCreateInfo(
		api.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
		C_NULL,
		UInt32(0),
		Base.unsafe_convert(Ptr{api.VkApplicationInfo}, app_info),
		0,
		C_NULL,
		0,
		C_NULL,
))

instance = Ref{api.VkInstance}(C_NULL)

err = api.vkCreateInstance(inst_info, C_NULL, instance)
println(err)
println(instance)

gpu_count = Ref{Cuint}(0)
err = api.vkEnumeratePhysicalDevices(instance[], gpu_count, C_NULL)
println(err)
devices = Array{api.VkPhysicalDevice}(gpu_count[])

err = api.vkEnumeratePhysicalDevices(instance[], gpu_count, devices)

println(err)

deviceprops = Ref{api.VkPhysicalDeviceProperties}()
err = api.vkGetPhysicalDeviceProperties(devices[], deviceprops)

println(err)

function Base.show(io::IO, pdsp::api.VkPhysicalDeviceSparseProperties)
	println(io, "Physical device Sparse Properties: ")
	for name in fieldnames(pdsp)
		println(io, "    ", name, " ", getfield(pdsp, name) == 1)
	end
end
function Base.show(io::IO, pdp::api.VkPhysicalDeviceProperties)
	println(io, "Physical Device Properties: ")
	println(io, "    API Version: ", toversion(pdp.apiVersion))
	println(io, "    Driver Version: ", toversion(pdp.driverVersion))

	println(io, "    Vendor ID ", pdp.vendorID)
	println(io, "    Device ID: ", pdp.deviceID)
	println(io, "    Device Type: ", pdp.deviceType)
	println(io, "    Device Name: ", String(filter(x->x!=0, UInt8[pdp.deviceName...])))
	println(io, "    Pipeline Cache UUID: ", pdp.pipelineCacheUUID)
	println(io, "    Limits: ", pdp.limits)
	println(io, "    Sparse Properties: \n    ", pdp.sparseProperties)
end

limitshow(x::Cuint) = Int(x)
limitshow(x::NTuple) = "<"*join(map(limitshow, x), " ")*">"
limitshow(x) = x

function Base.show(io::IO, pdl::api.VkPhysicalDeviceLimits)
	println(io, "Physical Device Limits: ")
	for name in fieldnames(pdl)
		println(io, "    ", name, " ", limitshow(getfield(pdl, name)))
	end
end



println(deviceprops[])
queue_count = Ref{Cuint}(0)

api.vkGetPhysicalDeviceQueueFamilyProperties(devices[], queue_count, C_NULL)
queueprops = Array{api.VkQueueFamilyProperties}(queue_count[])
println(queue_count[])
api.vkGetPhysicalDeviceQueueFamilyProperties(devices[], queue_count, queueprops)
println(queueprops)

memprops = Ref{api.VkPhysicalDeviceMemoryProperties}()
api.vkGetPhysicalDeviceMemoryProperties(devices[], memprops)

println(memprops[])
devicefeatures = Ref{api.VkPhysicalDeviceFeatures}()
api.vkGetPhysicalDeviceFeatures(devices[], devicefeatures)

function Base.show(io::IO, df::api.VkPhysicalDeviceFeatures)
	println(io, "Physical device features: ")
	for name in fieldnames(df)
		println(io, "    ", name, ": ", getfield(df, name) != 1 ? "un" : "", "supported")
	end
end
println(devicefeatures[])

# app_dev_init(&gpu->dev, gpu);
# app_dev_init_formats(&gpu->dev);

include("windowing.jl")


connection, scr = XCB.connect(C_NULL)
println(connection)
setup = XCB.get_setup(connection)
println(setup)
iter = Ref(XCB.setup_roots_iterator(setup))
println(iter)

for i=scr:-1:0
	XCB.screen_next(iter)
end
screen = unsafe_load(iter[].data, 1)

window = XCB.generate_id(connection)
value_mask = UInt32(XCB.CW_BACK_PIXEL) | UInt32(XCB.CW_EVENT_MASK)
value_list = zeros(UInt32, 32)
value_list[1] = screen.black_pixel
value_list[2] = (
	UInt32(XCB.EVENT_MASK_KEY_RELEASE) |
	UInt32(XCB.EVENT_MASK_EXPOSURE) |
	UInt32(XCB.EVENT_MASK_STRUCTURE_NOTIFY)
)
println(screen)

surface = Ref{api.VkSurfaceKHR}(C_NULL)
XCB.create_window(
	connection, XCB.COPY_FROM_PARENT, window,
	screen.root, 0, 0, 512, 512, 0,
	XCB.WINDOW_CLASS_INPUT_OUTPUT, screen.root_visual,
	value_mask, value_list
)

if is_windows()
	createInfo = Ref(api.VkWin32SurfaceCreateInfoKHR(
		VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
		C_NULL,
		0,
		connection,
		window
	))

	err = vkCreateWin32SurfaceKHR(instance[], createInfo, C_NULL, surface);
end

if is_unix()
	createInfo = Ref(api.VkXcbSurfaceCreateInfoKHR(
		api.VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
		C_NULL,
		0,
		connection,
		window
	))

	err = api.vkCreateXcbSurfaceKHR(instance[], createInfo, C_NULL, surface)
	println(err)
end
