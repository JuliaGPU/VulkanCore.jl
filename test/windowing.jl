"""
XCB window manager wrapper
This should go into an own package, best with a highlevel interface abstracting away os 
specifics.
This will be pretty much GLFW in Julia!
"""
module XCB

@enum(xcb_cw_t, 
 	CW_BACK_PIXMAP = 1,
 	CW_BACK_PIXEL = 2,
 	CW_BORDER_PIXMAP = 4,
 	CW_BORDER_PIXEL = 8,
 	CW_BIT_GRAVITY = 16,
 	CW_WIN_GRAVITY = 32,
 	CW_BACKING_STORE = 64,
 	CW_BACKING_PLANES = 128,
 	CW_BACKING_PIXEL = 256,
 	CW_OVERRIDE_REDIRECT = 512,
 	CW_SAVE_UNDER = 1024,
	CW_EVENT_MASK = 2048,
	CW_DONT_PROPAGATE = 4096,
	CW_COLORMAP = 8192,
	CW_CURSOR = 16384
)

@enum(xcb_event_mask_t,
	EVENT_MASK_NO_EVENT = 0,
	EVENT_MASK_KEY_PRESS = 1,
	EVENT_MASK_KEY_RELEASE = 2,
	EVENT_MASK_BUTTON_PRESS = 4,
	EVENT_MASK_BUTTON_RELEASE = 8,
	EVENT_MASK_ENTER_WINDOW = 16,
	EVENT_MASK_LEAVE_WINDOW = 32,
	EVENT_MASK_POINTER_MOTION = 64,
	EVENT_MASK_POINTER_MOTION_HINT = 128,
	EVENT_MASK_BUTTON_1_MOTION = 256,
	EVENT_MASK_BUTTON_2_MOTION = 512,
	EVENT_MASK_BUTTON_3_MOTION = 1024,
	EVENT_MASK_BUTTON_4_MOTION = 2048,
	EVENT_MASK_BUTTON_5_MOTION = 4096,
	EVENT_MASK_BUTTON_MOTION = 8192,
	EVENT_MASK_KEYMAP_STATE = 16384,
	EVENT_MASK_EXPOSURE = 32768,
	EVENT_MASK_VISIBILITY_CHANGE = 65536,
	EVENT_MASK_STRUCTURE_NOTIFY = 131072,
	EVENT_MASK_RESIZE_REDIRECT = 262144,
	EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288,
	EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576,
	EVENT_MASK_FOCUS_CHANGE = 2097152,
	EVENT_MASK_PROPERTY_CHANGE = 4194304,
	EVENT_MASK_COLOR_MAP_CHANGE = 8388608,
	EVENT_MASK_OWNER_GRAB_BUTTON = 16777216
)

@enum(xcb_window_class_t,
	WINDOW_CLASS_COPY_FROM_PARENT = 0,
	WINDOW_CLASS_INPUT_OUTPUT = 1,
	WINDOW_CLASS_INPUT_ONLY = 2
)

const xcb_connection_t = Ptr{Void} # TODO create correct composite type
const xcb_window_t = UInt32
const xcb_colormap_t = UInt32
const xcb_visualid_t = UInt32
const xcb_keycode_t = UInt8

struct xcb_setup_t
	status::UInt8
	pad0::UInt8
	uprotocol_major_version::UInt16
	uprotocol_minor_version::UInt16
	length::UInt16
	release_number::UInt32
	resource_id_base::UInt32
	resource_id_mask::UInt32
	motion_buffer_size::UInt32
	vendor_len::UInt16
	umaximum_request_length::UInt16
	roots_len::UInt8
	pixmap_formats_len::UInt8
	image_byte_order::UInt8
	bitmap_format_bit_order::UInt8
	bitmap_format_scanline_unit::UInt8
	bitmap_format_scanline_pad::UInt8
	min_keycode::xcb_keycode_t
	max_keycode::xcb_keycode_t
	pad1::NTuple{4, UInt8}
end

struct xcb_screen_t
	root::xcb_window_t
	default_colormap::xcb_colormap_t 
	white_pixel::UInt32
	black_pixel::UInt32
	current_input_masks::UInt32
	width_in_pixels::UInt16
	height_in_pixels::UInt16
	width_in_millimeters::UInt16
	height_in_millimeters::UInt16
	min_installed_maps::UInt16
	max_installed_maps::UInt16
	root_visual::xcb_visualid_t
	backing_stores::UInt8
	save_unders::UInt8
	root_depth::UInt8
	allowed_depths_len::UInt8
end
const COPY_FROM_PARENT = Clong(0)
struct xcb_screen_iterator_t
	data::Ptr{xcb_screen_t}
	rem::Cint
	index::Cint
end
struct xcb_void_cookie_t
	sequence::Cuint
end
function xcb_connect(displayname, screenp)
	ccall((:xcb_connect, "libxcb"), xcb_connection_t, (Ptr{Cchar}, Ptr{Cint}), displayname, screenp)
end
function connect(displayname)
	err = Ref{Cint}(0)
	if isa(displayname, AbstractString)
		displayname = ascii(displayname)
	end
	connection = xcb_connect(displayname, err)
	if connection == C_NULL
		error("Cannot find a compatible Vulkan installable client driver (ICD).\nExiting ...\n")
	end
	connection, err[]
end	

function xcb_get_setup(connection)
	ccall((:xcb_get_setup, "libxcb"), Ptr{xcb_setup_t}, (xcb_connection_t,), connection)
end
function get_setup(connection)
	setup = xcb_get_setup(connection)
	if setup == C_NULL 
		error("Couldn't get setup")
	end
	setup
end

function xcb_setup_roots_iterator(setup)
	ccall((:xcb_setup_roots_iterator, "libxcb"), xcb_screen_iterator_t, (Ptr{xcb_setup_t},), setup)
end
setup_roots_iterator(setup) = xcb_setup_roots_iterator(setup)
function xcb_screen_next(iter)
	ccall((:xcb_screen_next, "libxcb"), Void, (Ptr{xcb_screen_iterator_t},), iter)
end
screen_next(iter) = xcb_screen_next(iter)

function xcb_generate_id(connection)
	ccall((:xcb_generate_id, "libxcb"), Cuint, (xcb_connection_t,), connection)
end
generate_id(connection) = xcb_generate_id(connection)



function create_window(
		connection,
		depth,
		wid,
		parent,
		x,
		y,
		width,
		height,
		border_width,
		_class,
		visual,
		value_mask,
		value_list
	)
	ccall(
		(:xcb_create_window, "libxcb"), xcb_void_cookie_t,
		(
			xcb_connection_t,
			UInt8           ,
			xcb_window_t    ,
			xcb_window_t    ,
			Int16           ,
			Int16           ,
			UInt16          ,
			UInt16          ,
			UInt16          ,
			UInt16          ,
			xcb_visualid_t  ,
			UInt32          ,
			Ptr{UInt32}
		),
		connection,
		depth,
		wid,
		parent,
		x,
		y,
		width,
		height,
		border_width,
		_class,
		visual,
		value_mask,
		value_list
	)
end

end