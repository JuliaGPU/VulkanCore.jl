module api

# We need our own CEnum, since Base.@enum does not support the full set of functionality of c's enums
# see JuliaLang/julia#15728
include("CEnum.jl")
using .CEnum

const version = v"1.0" # Latest branch  see generator.jl for other versions

paths = String[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "vulkan-1", "libvulkan.so.1"], paths)
@assert libvulkan != ""

#### External definitions

# X11/X.h
const Window = UInt32 # unsigned long
const VisualID = UInt32 # unsigned long
# X11/Xlib.h
const Display = Void # Opaque struct
# xcb.h
const xcb_connection_t = Void # opaque struct
const xcb_window_t = UInt32
const xcb_visualid_t = UInt32
# Wayland
const wl_display = Void # TODO: make opaque for now
const wl_surface = Void # TODO: make opaque for now
# Mir
const MirConnection = Void # TODO: make opaque for now
const MirSurface = Void # TODO: make opaque for now
# Android
const ANativeWindow = Void # TODO: make opaque for now
# Windows
const HINSTANCE = Ptr{Void}
const HWND = Ptr{Void}

# Define VK_MAKE_VERSION
VK_MAKE_VERSION(major, minor, patch) = (((major) << 22) | ((minor) << 12) | (patch))

const api_dir = joinpath(dirname(@__FILE__), "..", "gen", "api")
const common_file = joinpath(api_dir, "vk_common_$(version).jl")
const api_file    = joinpath(api_dir, "vk_$(version).jl")


if isfile(api_file) && isfile(common_file)
  include(common_file)
  include(api_file)
else
  error("Api version $version not supported")
end

if isdefined(:VK_API_VERSION)
  const VK_VERSION = VK_API_VERSION
else
  const VK_VERSION = VK_MAKE_VERSION(1,0,0)
end

end
