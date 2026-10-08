module LibVulkan

include("CEnum.jl")
using .CEnum

import Libdl
using Preferences: @load_preference

"""
The name the system gives a Vulkan implementation, when nothing else says otherwise.
"""
const SYSTEM_LIBVULKAN = Sys.iswindows() ? "vulkan-1.dll" :
                         Sys.isapple()   ? "libvulkan.dylib" :
                         Sys.islinux()   ? "libvulkan.so.1" : "libvulkan"

"""
    default_libvulkan() -> String

The system's Vulkan loader when there is one, and `Vulkan_Loader_jll`'s otherwise.

A Mac has no loader of its own. With the jll's, a CPU driver such as
`Lavapipe_jll` gives it a Vulkan device all the same, the same way it gives one
to a Linux or Windows box without a GPU driver. The system loader comes first
because it is the one that knows the GPU drivers the machine has installed.

The jll is IMPORTED only where there is no system loader, decided when this
package precompiles. Its `__init__` loads its library, and once a module named
`vulkan-1.dll` (or with the soname `libvulkan.so.1`) is loaded, a lookup by that
bare name returns it rather than the system's. Importing it unconditionally made
every process use the jll's 1.3.243 loader, which predates the extensions the
drivers expose: `vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR` faulted in it
on AMD's Windows driver.
"""
function default_libvulkan end
@static if isempty(Libdl.find_library(SYSTEM_LIBVULKAN))
    import Vulkan_Loader_jll
    default_libvulkan() =
        Vulkan_Loader_jll.is_available() ? Vulkan_Loader_jll.libvulkan_path : SYSTEM_LIBVULKAN
else
    default_libvulkan() = SYSTEM_LIBVULKAN
end

"""
Which Vulkan library this package binds to.

A PREFERENCE first, because that is the only one of the three that works
reliably. This is read while the package precompiles, and a preference is part of
the precompile hash: change it and the bindings are rebuilt against the new
library on the next load. Set it with `Vulkan.set_driver`, or by hand with
`Preferences.set_preferences!("VulkanCore", "libvulkan" => path)`.

`JULIA_VULKAN_LIBNAME` still works and still comes before the system default, but
it is the fragile one and only a fallback now: an `ENV` read is NOT part of the
precompile hash, so setting it takes effect only if something else happens to
invalidate the cache. Observed directly -- setting it and restarting Julia reused
a cache built without it, and `HAS_LOADER` stayed `false` on a machine that then
had a perfectly good driver.
"""
const libvulkan = @load_preference("libvulkan",
                                   get(ENV, "JULIA_VULKAN_LIBNAME", default_libvulkan()))

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
    include("../lib/x86_64-unknown-freebsd13.2.jl")
elseif Sys.iswindows() && Sys.ARCH === :x86_64
    include("../lib/x86_64-w64-mingw32.jl")
else
    error("Unknown platform: $(Base.BUILD_TRIPLET)")
end

@static if HAS_LOADER
    include("blob_constructors.jl")
end

# exports
const PREFIXES = ["VK_", "Vk", "vk", "StdVideo", "STD_VIDEO"]
for name in names(@__MODULE__; all = true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
