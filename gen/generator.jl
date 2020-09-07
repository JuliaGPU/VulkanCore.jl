using Clang

import Vulkan_Headers_jll


# generate Vulkan bindings
VK_INCLUDE = joinpath(Vulkan_Headers_jll.artifact_dir, "include", "vulkan")
VK_HEADERS = [joinpath(VK_INCLUDE, "vulkan.h")]

# the other extensions require external libraries that are not present using a Linux machine
VK_EXTENSIONS = [
    "VK_USE_PLATFORM_ANDROID_KHR",
    # "VK_USE_PLATFORM_FUCHSIA",
    "VK_USE_PLATFORM_IOS_MVK",
    "VK_USE_PLATFORM_MACOS_MVK",
    "VK_USE_PLATFORM_METAL_EXT",
    "VK_USE_PLATFORM_VI_NN",
    # "VK_USE_PLATFORM_WAYLAND_KHR",
    # "VK_USE_PLATFORM_WIN32_KHR",
    "VK_USE_PLATFORM_XCB_KHR",
    "VK_USE_PLATFORM_XLIB_KHR",
    "VK_USE_PLATFORM_XLIB_XRANDR_EXT",
    # "VK_USE_PLATFORM_GGP",
    "VK_ENABLE_BETA_EXTENSIONS",
    ]

wc = init(; headers=VK_HEADERS,
            output_file=joinpath(@__DIR__, "vk_api.jl"),
            common_file=joinpath(@__DIR__, "vk_common.jl"),
            clang_includes=vcat(VK_INCLUDE, CLANG_INCLUDE),
            clang_args="-D" .* VK_EXTENSIONS,
            header_wrapped=(root, current) -> (startswith(current, VK_INCLUDE) ? (true) : false),
            header_library=x -> "libvulkan",
            clang_diagnostics=true,
            )
            
run(wc)
