module api

paths = ByteString[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "libvulkan.so.1"], paths)
@assert libvulkan != ""

# External definitions

# X11/X.h
typealias Window UInt32 # unsigned long
typealias VisualID UInt32 # unsigned long
# X11/Xlib.h
typealias Display Void # Opaque struct
# xcb.h
typealias xcb_connection_t Void # opaque struct
typealias xcb_window_t UInt32
typealias xcb_visualid_t UInt32
# Wayland
typealias wl_display Void # TODO: make opaque for now
typealias wl_surface Void # TODO: make opaque for now
# Mir
typealias MirConnection Void # TODO: make opaque for now
typealias MirSurface Void # TODO: make opaque for now
# Android
typealias ANativeWindow Void # TODO: make opaque for now
# Windows
typealias HINSTANCE Ptr{Void}
typealias HWND Ptr{Void}

include("../deps/gen/vk_common.jl")
include("../deps/gen/vk.jl")
end
