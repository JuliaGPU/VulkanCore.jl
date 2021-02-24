# X11/X.h
struct Window <: AbstractJuliaSDT end
struct VisualID <: AbstractJuliaSDT end
# X11/Xlib.h
struct Display <: AbstractJuliaSIT end
# X11/Xrandr.h
struct RROutput <: AbstractJuliaSIT end
# xcb.h
struct xcb_connection_t <: AbstractJuliaSIT end
struct xcb_window_t <: AbstractJuliaSIT end
struct xcb_visualid_t <: AbstractJuliaSIT end
# Wayland
struct wl_display <: AbstractJuliaSIT end
struct wl_surface <: AbstractJuliaSIT end
# Mir
struct MirConnection <: AbstractJuliaSIT end
struct MirSurface <: AbstractJuliaSIT end
# Windows
struct HINSTANCE <: AbstractJuliaSIT end
struct HWND <: AbstractJuliaSIT end
struct HMONITOR <: AbstractJuliaSIT end
struct HANDLE <: AbstractJuliaSIT end
struct DWORD <: AbstractJuliaSIT end
struct LPCWSTR <: AbstractJuliaSIT end
struct SECURITY_ATTRIBUTES <: AbstractJuliaSIT end
# DirectFB
struct IDirectFB <: AbstractJuliaSIT end
struct IDirectFBSurface <: AbstractJuliaSIT end
# Zircon
struct zx_handle_t <: AbstractJuliaSIT end
# GGP C
struct GgpStreamDescriptor <: AbstractJuliaSIT end
struct GgpFrameToken <: AbstractJuliaSIT end

add_definition(Dict(
    :Window => Window(),
    :VisualID => VisualID(),
    :Display => Display(),
    :RROutput => RROutput(),
    :xcb_connection_t => xcb_connection_t(),
    :xcb_window_t => xcb_window_t(),
    :xcb_visualid_t => xcb_visualid_t(),
    :wl_display => wl_display(),
    :wl_surface => wl_surface(),
    :MirConnection => MirConnection(),
    :MirSurface => MirSurface(),
    :HINSTANCE => HINSTANCE(),
    :HWND => HWND(),
    :HMONITOR => HMONITOR(),
    :HANDLE => HANDLE(),
    :DWORD => DWORD(),
    :LPCWSTR => LPCWSTR(),
    :SECURITY_ATTRIBUTES => SECURITY_ATTRIBUTES(),
    :IDirectFB => IDirectFB(),
    :IDirectFBSurface => IDirectFBSurface(),
    :zx_handle_t => zx_handle_t(),
    :GgpStreamDescriptor => GgpStreamDescriptor(),
    :GgpFrameToken => GgpFrameToken(),
))

Generators.translate(::Window, options=Dict()) = :Window
Generators.translate(::VisualID, options=Dict()) = :VisualID
Generators.translate(::Display, options=Dict()) = :Display
Generators.translate(::RROutput, options=Dict()) = :RROutput
Generators.translate(::xcb_connection_t, options=Dict()) = :xcb_connection_t
Generators.translate(::xcb_window_t, options=Dict()) = :xcb_window_t
Generators.translate(::xcb_visualid_t, options=Dict()) = :xcb_visualid_t
Generators.translate(::wl_display, options=Dict()) = :wl_display
Generators.translate(::wl_surface, options=Dict()) = :wl_surface
Generators.translate(::MirConnection, options=Dict()) = :MirConnection
Generators.translate(::MirSurface, options=Dict()) = :MirSurface
Generators.translate(::HINSTANCE, options=Dict()) = :HINSTANCE
Generators.translate(::HWND, options=Dict()) = :HWND
Generators.translate(::HMONITOR, options=Dict()) = :HMONITOR
Generators.translate(::HANDLE, options=Dict()) = :HANDLE
Generators.translate(::DWORD, options=Dict()) = :DWORD
Generators.translate(::LPCWSTR, options=Dict()) = :LPCWSTR
Generators.translate(::SECURITY_ATTRIBUTES, options=Dict()) = :SECURITY_ATTRIBUTES
Generators.translate(::IDirectFB, options=Dict()) = :IDirectFB
Generators.translate(::IDirectFBSurface, options=Dict()) = :IDirectFBSurface
Generators.translate(::zx_handle_t, options=Dict()) = :zx_handle_t
Generators.translate(::GgpStreamDescriptor, options=Dict()) = :GgpStreamDescriptor
Generators.translate(::GgpFrameToken, options=Dict()) = :GgpFrameToken
