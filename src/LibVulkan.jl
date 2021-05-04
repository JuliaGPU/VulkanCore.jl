module LibVulkan

include("CEnum.jl")
using .CEnum

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

VK_MAKE_VERSION(major, minor, patch) = (Cuint(major) << 22) | (Cuint(minor) << 12) | patch
VK_MAKE_API_VERSION(variant, major, minor, patch) = (Cuint(variant) << 29) | (Cuint(major) << 22) | (Cuint(minor) << 12) | Cuint(patch)

VK_VERSION_MAJOR(version) = Cuint(version) >> 22
VK_VERSION_MINOR(version) = (Cuint(version) >> 12) & 0x3ff
VK_VERSION_PATCH(version) = Cuint(version) & 0xfff

const IS_LIBC_MUSL = occursin("musl", Base.BUILD_TRIPLET)
if Sys.isapple() && Sys.ARCH === :aarch64
    include("../lib/aarch64-apple-darwin20.jl")
elseif Sys.islinux() && Sys.ARCH === :aarch64 && !IS_LIBC_MUSL
    include("../lib/aarch64-linux-gnu.jl")
elseif Sys.islinux() && Sys.ARCH === :aarch64 && IS_LIBC_MUSL
    include("../lib/aarch64-linux-musl.jl")
elseif Sys.islinux() && startswith(string(Sys.ARCH), "arm") && !IS_LIBC_MUSL
    include("../lib/armv7l-linux-gnueabihf.jl")
elseif Sys.islinux() && startswith(string(Sys.ARCH), "arm") && IS_LIBC_MUSL
    include("../lib/armv7l-linux-musleabihf.jl")
elseif Sys.islinux() && Sys.ARCH === :i686 && !IS_LIBC_MUSL
    include("../lib/i686-linux-gnu.jl")
elseif Sys.islinux() && Sys.ARCH === :i686 && IS_LIBC_MUSL
    include("../lib/i686-linux-musl.jl")
elseif Sys.iswindows() && Sys.ARCH === :i686
    include("../lib/i686-w64-mingw32.jl")
elseif Sys.islinux() && Sys.ARCH === :powerpc64le
    include("../lib/powerpc64le-linux-gnu.jl")
elseif Sys.isapple() && Sys.ARCH === :x86_64
    include("../lib/x86_64-apple-darwin14.jl")
elseif Sys.islinux() && Sys.ARCH === :x86_64 && !IS_LIBC_MUSL
    include("../lib/x86_64-linux-gnu.jl")
elseif Sys.islinux() && Sys.ARCH === :x86_64 && IS_LIBC_MUSL
    include("../lib/x86_64-linux-musl.jl")
elseif Sys.isbsd() && !Sys.isapple()
    include("../lib/x86_64-unknown-freebsd11.1.jl")
elseif Sys.iswindows() && Sys.ARCH === :x86_64
    include("../lib/x86_64-w64-mingw32.jl")
else
    error("Unknown platform: $(Base.BUILD_TRIPLET)")
end

# exports
const PREFIXES = ["VK_", "Vk", "vk"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
