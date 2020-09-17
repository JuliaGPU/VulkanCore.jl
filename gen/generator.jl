using Clang

import Vulkan_Headers_jll


# get include directory & vulkan.h
VK_INCLUDE = joinpath(Vulkan_Headers_jll.artifact_dir, "include", "vulkan")
VK_HEADERS = [joinpath(VK_INCLUDE, "vulkan.h")]

# include all extensions
VK_EXTENSIONS = [
    "VK_USE_PLATFORM_ANDROID_KHR",
    "VK_USE_PLATFORM_FUCHSIA",
    "VK_USE_PLATFORM_IOS_MVK",
    "VK_USE_PLATFORM_MACOS_MVK",
    "VK_USE_PLATFORM_METAL_EXT",
    "VK_USE_PLATFORM_VI_NN",
    "VK_USE_PLATFORM_WAYLAND_KHR",
    "VK_USE_PLATFORM_WIN32_KHR",
    "VK_USE_PLATFORM_XCB_KHR",
    "VK_USE_PLATFORM_XLIB_KHR",
    "VK_USE_PLATFORM_XLIB_XRANDR_EXT",
    "VK_USE_PLATFORM_GGP",
    "VK_ENABLE_BETA_EXTENSIONS",
    ]

common_file = joinpath(@__DIR__, "vk_common.jl")
api_file = joinpath(@__DIR__, "vk_api.jl")

wc = init(; headers=VK_HEADERS,
output_file=api_file,
            common_file=common_file,
            clang_includes=vcat(VK_INCLUDE, CLANG_INCLUDE),
            clang_args="-D" .* VK_EXTENSIONS,
            header_wrapped=(root, current) -> (startswith(current, VK_INCLUDE) ? true : false),
            header_library=x -> "libvulkan",
            clang_diagnostics=true,
            )

# it should complain that some header files are not present (zircon/types.h, wayland-client.h...) but it should be OK since nothing from those files is actually wrapped
run(wc)

api_str = join(readlines(api_file), "\n")

# add an additional method which uses a function pointer for each API function
wrapped_funcs = String[]
for func ∈ eachmatch(r"function (.*)\((.*)\)\n    (ccall.*)\nend", api_str)
    name, args, body = func.captures
    wrapped_func = """
    function $name($args, fun_ptr)
        $(replace(body, "(:$name, libvulkan)" => "fun_ptr"))
    end
    """
    push!(wrapped_funcs, wrapped_func)
end
open(api_file, "a+") do io
    write(io, "\n" * join(wrapped_funcs, "\n"))
end