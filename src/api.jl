module api

# We need our own CEnum, since Base.@enum does not support the full set of functionality of c's enums
# see JuliaLang/julia#15728
include("CEnum.jl")
using .CEnum

const version = v"1.0" # Latest branch  see generator.jl for other versions

paths = ByteString[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "libvulkan.so.1"], paths)
@assert libvulkan != ""

#### External definitions

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
