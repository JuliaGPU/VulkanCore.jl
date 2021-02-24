import Libdl

@static if !isempty(get(ENV, "JULIA_VULKAN_LIBNAME", ""))
    const libvulkan = ENV["JULIA_VULKAN_LIBNAME"]
elseif Sys.iswindows()
    const libvulkan = "vulkan-1.dll"
elseif Sys.isapple()
    const libvulkan = "libvulkan.dylib"
elseif Sys.islinux()
    const libvulkan = "libvulkan.so.1"
else
    const libvulkan = "libvulkan"
end

const libvulkan_handle = Ref{Ptr{Cvoid}}(0)

function __init__()
    libname = Libdl.find_library(libvulkan)
    if isempty(libname)
            error("""
            Failed to retrieve a valid Vulkan library called '$libvulkan'.
            If you configure the `JULIA_VULKAN_LIBNAME` environment variable before precompiling VulkanCore, it will be used instead of '$libvulkan'. You may also manually add search paths by appending them to Lidbl.DL_LOAD_PATH, but note that this may have repercussions beyond this package.
            """)
    end
    libvulkan_handle[] = Libdl.dlopen(libname)
end

#### External definitions
VK_QUEUE_FAMILY_EXTERNAL = nothing
VK_SHADER_UNUSED_KHR = nothing

# X11/X.h
const Window = Culong
const VisualID = Culong
# X11/Xlib.h
const Display = Cvoid # opaque struct
# X11/Xrandr.h
const RROutput = UInt32
# xcb.h
const xcb_connection_t = Cvoid # opaque struct
const xcb_window_t = UInt32
const xcb_visualid_t = UInt32
# Wayland
const wl_display = Cvoid  # opaque struct
const wl_surface = Cvoid  # opaque struct
# Mir
const MirConnection = Cvoid # opaque struct
const MirSurface = Cvoid # opaque struct
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
VK_MAKE_VERSION(major, minor, patch) = (Cuint(major) << 22) | (Cuint(minor) << 12) | patch

VK_VERSION_MAJOR(version) = Cuint(version) >> 22
VK_VERSION_MINOR(version) = (Cuint(version) >> 12) & 0x3ff
VK_VERSION_PATCH(version) = Cuint(version) & 0xfff

const VK_API_VERSION_1_0 = VK_MAKE_VERSION(1, 0, 0)
const VK_API_VERSION_1_1 = VK_MAKE_VERSION(1, 1, 0)
const VK_API_VERSION_1_2 = VK_MAKE_VERSION(1, 2, 0)
