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
