module LibVulkan

import Libdl

const libnames = ["vulkan-1", "libvulkan", "libvulkan.so.1"]
const libvulkan = Libdl.find_library(libnames)

!isempty(libvulkan) || error("Failed to retrieve a valid Vulkan library. Tried: $(join(libnames, ", "))")

using CEnum

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt

export Ctm, Ctime_t, Cclock_t

#### External definitions

# X11/X.h
const Window = UInt32 # unsigned long
const VisualID = UInt32 # unsigned long
# X11/Xlib.h
const Display = Cvoid # Opaque struct
# X11/Xrandr.h
const RROutput = UInt32
# xcb.h
const xcb_connection_t = Cvoid # opaque struct
const xcb_window_t = UInt32
const xcb_visualid_t = UInt32
# Wayland
const wl_display = Cvoid # TODO: make opaque for now
const wl_surface = Cvoid # TODO: make opaque for now
# Mir
const MirConnection = Cvoid # TODO: make opaque for now
const MirSurface = Cvoid # TODO: make opaque for now
# Android
const ANativeWindow = Cvoid # TODO: make opaque for now
# Windows
const HINSTANCE = Ptr{Cvoid}
const HWND = Ptr{Cvoid}
const HMONITOR = Ptr{Cvoid}
const HANDLE = HMONITOR
const DWORD = UInt32
const LPCWSTR = UInt16
const SECURITY_ATTRIBUTES = Cvoid # opaque struct
# DirectFB
const IDirectFB = Cvoid # opaque struct
const IDirectFBSurface = Cvoid # opaque struct
# Zircon
const zx_handle_t = UInt32
# GGP C
const GgpStreamDescriptor = UInt32
const GgpFrameToken = UInt32

# TODO: Clang.jl should support this kinda macros
VK_MAKE_VERSION(major, minor, patch) = ( Cuint(major) << 22 ) | ( Cuint(minor) << 12 ) | patch

VK_VERSION_MAJOR(version) = Cuint(version) >> 22
VK_VERSION_MINOR(version) = (Cuint(version) >> 12) & 0x3ff
VK_VERSION_PATCH(version) = Cuint(version) & 0xfff

const VK_API_VERSION_1_0 = VK_MAKE_VERSION(1, 0, 0)
const VK_API_VERSION_1_1 = VK_MAKE_VERSION(1, 1, 0)
const VK_API_VERSION_1_2 = VK_MAKE_VERSION(1, 2, 0)

include(joinpath(@__DIR__, "..", "gen", "vk_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "vk_api.jl"))

const VK_HEADER_VERSION_COMPLETE = VK_MAKE_VERSION(1, 2, VK_HEADER_VERSION)

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "VK_") || startswith(string(s), "Vk") || startswith(string(s), "vk")
       @eval export $s
   end
end

end # module
