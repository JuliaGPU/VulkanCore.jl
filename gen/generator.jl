using Clang

import Vulkan_Headers_jll


# generate Vulkan bindings
const VK_INCLUDE = joinpath(Vulkan_Headers_jll.artifact_dir, "include")
const VK_HEADERS = map(x -> joinpath(VK_INCLUDE, "vulkan", x), ["vk_platform.h", "vulkan.h", "vulkan_core.h", "vulkan_beta.h"])
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

clang_extraargs = String[]
for extension ∈ VK_EXTENSIONS
    push!(clang_extraargs, "-D")
    push!(clang_extraargs, extension)
end

wc = init(; headers=VK_HEADERS,
            output_file=joinpath(@__DIR__, "vk_api.jl"),
            common_file=joinpath(@__DIR__, "vk_common.jl"),
            clang_includes=vcat(VK_INCLUDE, CLANG_INCLUDE),
            clang_args=clang_extraargs,
            header_wrapped=(root, current) -> root == current,
            header_library=x -> "libvulkan",
            clang_diagnostics=true,
            )
run(wc)
