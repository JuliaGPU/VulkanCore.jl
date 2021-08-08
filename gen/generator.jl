using Clang.Generators
using Clang.Generators.JLLEnvs
import Vulkan_Headers_jll
using Wayland_jll
using Xorg_libxcb_jll
using Xorg_xorgproto_jll
using Xorg_libX11_jll
using Xorg_libXrandr_jll
using Xorg_libXrender_jll

cd(@__DIR__)

# get include directory & vulkan.h
const VK_INCLUDE = joinpath(Vulkan_Headers_jll.artifact_dir, "include", "vulkan")
const VK_HEADERS = [joinpath(VK_INCLUDE, "vulkan.h")]

# config extensions for different platforms
# X-ref: https://github.com/SaschaWillems/Vulkan/blob/master/CMakeLists.txt
const VK_LINUX_EXTENSION_COMMON = [
    # "-DVK_USE_PLATFORM_DIRECTFB_EXT",  # no JLL package
    "-DVK_USE_PLATFORM_WAYLAND_KHR",
    "-DVK_USE_PLATFORM_XCB_KHR",
    "-DVK_USE_PLATFORM_XLIB_KHR",
    "-DVK_USE_PLATFORM_XLIB_XRANDR_EXT",
]
const VK_MACOS_EXTENSION_COMMON = ["-DVK_USE_PLATFORM_MACOS_MVK", "-DVK_USE_PLATFORM_METAL_EXT"]
const VK_WIN_EXTENSION_COMMON = ["-DVK_USE_PLATFORM_WIN32_KHR"]
const VK_EXTENSIONS_MAP = Dict(
    # "aarch64-apple-darwin20" => vcat(VK_MACOS_EXTENSION_COMMON, "-DVK_USE_PLATFORM_DIRECTFB_EXT"),
    # "x86_64-apple-darwin14" => vcat(VK_MACOS_EXTENSION_COMMON, "-DVK_USE_PLATFORM_DIRECTFB_EXT"),
    "aarch64-apple-darwin20" => VK_MACOS_EXTENSION_COMMON,
    "x86_64-apple-darwin14" => VK_MACOS_EXTENSION_COMMON,
    "i686-w64-mingw32" => VK_WIN_EXTENSION_COMMON,
    "x86_64-w64-mingw32" => VK_WIN_EXTENSION_COMMON,
    # "aarch64-linux-gnu" => vcat(VK_LINUX_EXTENSION_COMMON, "-DVK_USE_PLATFORM_FUCHSIA"),
    # "aarch64-linux-musl" => vcat(VK_LINUX_EXTENSION_COMMON, "-DVK_USE_PLATFORM_FUCHSIA"),
    "aarch64-linux-gnu" => VK_LINUX_EXTENSION_COMMON,
    "aarch64-linux-musl" => VK_LINUX_EXTENSION_COMMON,
    "armv7l-linux-gnueabihf" => VK_LINUX_EXTENSION_COMMON,
    "armv7l-linux-musleabihf" => VK_LINUX_EXTENSION_COMMON,
    "x86_64-linux-gnu" => VK_LINUX_EXTENSION_COMMON,
    "x86_64-linux-musl" => VK_LINUX_EXTENSION_COMMON,
    "i686-linux-gnu" => VK_LINUX_EXTENSION_COMMON,
    "i686-linux-musl" => VK_LINUX_EXTENSION_COMMON,
    "powerpc64le-linux-gnu" => VK_LINUX_EXTENSION_COMMON,
    "x86_64-unknown-freebsd11.1" => ["-DVK_USE_PLATFORM_XCB_KHR", "-DVK_USE_PLATFORM_XLIB_KHR", "-DVK_USE_PLATFORM_XLIB_XRANDR_EXT"],
)

for target in JLLEnvs.JLL_ENV_TRIPLES
    @info "processing $target"

    # programmatically add options
    options = Dict{String,Any}(
        "general" => Dict{String,Any}(),
        "codegen" => Dict{String,Any}(),
        )
    general, codegen = options["general"], options["codegen"]
    general["library_name"] = "libvulkan"
    general["output_file_path"] = joinpath(@__DIR__, "..", "lib", "$target.jl")
    general["use_deterministic_symbol"] = true
    general["print_using_CEnum"] = false
    general["printer_blacklist"] = [
        "VKAPI_PTR",
        "VKAPI_CALL",
        ]
    general["add_fptr_methods"] = true
    general["extract_c_comment_style"] = "doxygen"
    general["struct_field_comment_style"] = "outofline"
    general["enumerator_comment_style"] = "outofline"
    codegen["add_record_constructors"] = true
    codegen["union_single_constructor"] = true
    codegen["opaque_as_mutable_struct"] = false

    # add compiler flags
    args = get_default_args(target)
    push!(args, "-I$VK_INCLUDE")

    wayland_inc = JLLEnvs.get_pkg_include_dir(Wayland_jll, target)
    !isempty(wayland_inc) && push!(args, "-isystem$wayland_inc")

    xcb_inc = JLLEnvs.get_pkg_include_dir(Xorg_libxcb_jll, target)
    !isempty(xcb_inc) && push!(args, "-isystem$xcb_inc")

    xlibx_inc = JLLEnvs.get_pkg_include_dir(Xorg_xorgproto_jll, target)
    !isempty(xlibx_inc) && push!(args, "-isystem$xlibx_inc")

    xlib_inc = JLLEnvs.get_pkg_include_dir(Xorg_libX11_jll, target)
    !isempty(xlib_inc) && push!(args, "-isystem$xlib_inc")

    xlibXrandr_inc = JLLEnvs.get_pkg_include_dir(Xorg_libXrandr_jll, target)
    !isempty(xlibXrandr_inc) && push!(args, "-isystem$xlibXrandr_inc")

    xlibXrender_inc = JLLEnvs.get_pkg_include_dir(Xorg_libXrender_jll, target)
    !isempty(xlibXrender_inc) && push!(args, "-isystem$xlibXrender_inc")

    append!(args, VK_EXTENSIONS_MAP[target])

    ctx = create_context(VK_HEADERS, args, options)

    build!(ctx)
end
