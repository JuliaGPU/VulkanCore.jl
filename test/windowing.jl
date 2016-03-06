using XCB

type Window
	platform_specific
	window
	connection
end

function create_window(title, w, h)
	scr = Ref{Cint}()
	connection = XCB.xcb_connect(Ptr{Cchar}(C_NULL), scr)
	setup = XCB.xcb_get_setup(connection)
	iter = XCB.xcb_setup_roots_iterator(setup)
	screen = unsafe_load(iter.data)
	window = XCB.xcb_generate_id(connection)
	mask = XCB.XCB_CW_BACK_PIXEL | XCB.XCB_CW_EVENT_MASK
	value_list = zeros(UInt32, 32)
	value_list[1] = screen.black_pixel
	value_list[2] = (
		XCB.XCB_EVENT_MASK_KEY_RELEASE | XCB.XCB_EVENT_MASK_EXPOSURE |
		XCB.XCB_EVENT_MASK_STRUCTURE_NOTIFY | XCB.XCB_EVENT_MASK_POINTER_MOTION |
		XCB.XCB_EVENT_MASK_BUTTON_PRESS | XCB.XCB_EVENT_MASK_BUTTON_RELEASE
	)

	XCB.xcb_create_window(
		connection, UInt8(XCB.XCB_COPY_FROM_PARENT), window,
		screen.root, Int16(0), Int16(0), UInt16(w), UInt16(h), UInt16(0),
		UInt16(XCB.XCB_WINDOW_CLASS_INPUT_OUTPUT), screen.root_visual,
		mask, value_list
	)

	#Magic code that will send notification when window is destroyed */
	cookie = XCB.xcb_intern_atom(connection, UInt8(1), UInt16(12), "WM_PROTOCOLS")
	reply_ptr = XCB.xcb_intern_atom_reply(connection, cookie, C_NULL)
	reply = unsafe_load(reply_ptr)
	cookie2 = XCB.xcb_intern_atom(connection, UInt8(0), UInt16(16), "WM_DELETE_WINDOW")
	atom_wm_delete_window_ptr = XCB.xcb_intern_atom_reply(connection, cookie2, C_NULL)
	atom_wm_delete_window = unsafe_load(atom_wm_delete_window_ptr)
	atomref = Ref(atom_wm_delete_window.atom)

	XCB.xcb_change_property(
		connection, UInt8(XCB.XCB_PROP_MODE_REPLACE),
		window, reply.atom, UInt32(4), UInt8(32), UInt32(1),
		atomref
	)

	XCB.xcb_change_property(
		connection, UInt8(XCB.XCB_PROP_MODE_REPLACE),
		window, XCB.XCB_ATOM_WM_NAME, XCB.XCB_ATOM_STRING, 8,
		length(title), title
	)

	mask = XCB.XCB_GC_FOREGROUND | XCB.XCB_GC_GRAPHICS_EXPOSURES
	value_list[1] = screen.black_pixel
	value_list[2] = 0
	g = XCB.xcb_generate_id(connection)
	XCB.xcb_create_gc(connection, g, window, mask, value_list)

	XCB.xcb_map_window(connection, window)
	XCB.xcb_flush(connection)
	Window(nothing, window, connection)
end

# ctx = create_context(b"hallo", 512, 512)

# # event loop
# done = false
# while !done
#     e = unsafe_load(XCB.xcb_wait_for_event(ctx.connection))
#     if e.response_type == XCB.XCB_EXPOSE
#         XCB.xcb_flush(ctx.connection)
#     elseif e.response_type == XCB.XCB_KEY_PRESS
#         # exit on keypress */
#         done = true
#     end
# end
# XCB.xcb_disconnect(connection)

@windows_only begin
	createInfo = Ref(api.VkWin32SurfaceCreateInfoKHR(
		VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
    	C_NULL,
    	0,
    	connection,
    	window
	))

    err = vkCreateWin32SurfaceKHR(instance[], createInfo, C_NULL, surface);
end

function create_surface(instance::api.VkInstance, window::Window)
	createInfo = Ref(api.VkXcbSurfaceCreateInfoKHR(
		api.VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
		C_NULL,
		0,
		window.connection,
		window.window
	))
	surface = Ref{api.VkSurfaceKHR}(C_NULL)
	err = api.vkCreateXcbSurfaceKHR(instance, createInfo, C_NULL, surface)
	check(err)
	surface[]
end
