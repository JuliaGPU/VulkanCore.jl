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

"""
Whether a Vulkan loader was findable when this package was PRECOMPILED.

The gate on everything below. Without a loader the 34,000 generated lines of
`ccall` wrappers are not compiled at all: this package is then a name, a
constant and nothing else, so depending on it from a package that only uses
Vulkan on some platforms costs nothing on the others.

A precompile-time answer, so installing a driver afterwards needs
`Pkg.precompile(; force = true)` — Julia does not watch the library path.
"""
const HAS_LOADER = !isempty(Libdl.find_library(libvulkan))

const libvulkan_handle = Ref{Ptr{Cvoid}}(0)

"""Whether a Vulkan loader was found when this module was loaded.

`false` is a normal state, not a broken one: a machine with no driver can still
`using VulkanCore` and everything that does not call the API works. Ask this
before building an instance — see `__init__` for why it is not an error.
"""
loaded() = libvulkan_handle[] != C_NULL

function __init__()
    libname = Libdl.find_library(libvulkan)
    # NO error. Failing here made merely DEPENDING on VulkanCore fatal on a
    # machine with no loader — a Mac, a CI runner, a container — which forced
    # every package above it to reach the driver through a weak dependency and
    # an extension, and to hand-maintain the import list that a separate module
    # needs. Nothing here reads `libvulkan_handle`: the entry points are
    # `ccall((:vkCreateInstance, libvulkan), …)`, which bind by NAME and dlopen
    # themselves on the first call. So the absence is already representable, and
    # a caller that actually uses the API gets Julia's own "could not load
    # library '$libvulkan'" at the point of use, which says the same thing at
    # the moment it is true.
    isempty(libname) && return nothing
    libvulkan_handle[] = Libdl.dlopen(libname)
    return nothing
end

VK_MAKE_VERSION(major, minor, patch) = (Cuint(major) << 22) | (Cuint(minor) << 12) | patch
VK_MAKE_API_VERSION(variant, major, minor, patch) = (Cuint(variant) << 29) | (Cuint(major) << 22) | (Cuint(minor) << 12) | Cuint(patch)

VK_VERSION_MAJOR(version) = Cuint(version) >> 22
VK_VERSION_MINOR(version) = (Cuint(version) >> 12) & 0x3ff
VK_VERSION_PATCH(version) = Cuint(version) & 0xfff

VK_MAKE_VIDEO_STD_VERSION(major, minor, patch) = VK_MAKE_VERSION(major, minor, patch)

const IS_LIBC_MUSL = occursin("musl", Base.BUILD_TRIPLET)
@static if !HAS_LOADER
    # Nothing to bind to. See `HAS_LOADER`.
elseif Sys.isapple() && Sys.ARCH === :aarch64
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
    include("../lib/x86_64-unknown-freebsd.jl")
elseif Sys.iswindows() && Sys.ARCH === :x86_64
    include("../lib/x86_64-w64-mingw32.jl")
else
    error("Unknown platform: $(Base.BUILD_TRIPLET)")
end

# exports
const PREFIXES = ["VK_", "Vk", "vk", "StdVideo", "STD_VIDEO"]
for name in names(@__MODULE__; all = true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
