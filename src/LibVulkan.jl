module LibVulkan

import Libdl

paths = String[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "vulkan-1", "libvulkan.so.1"], paths)
@assert libvulkan != ""

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

include(joinpath(@__DIR__, "..", "gen", "vk_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "vk_api.jl"))

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "VK_") || startswith(string(s), "Vk") || startswith(string(s), "vk")
       @eval export $s
   end
end

end # module
