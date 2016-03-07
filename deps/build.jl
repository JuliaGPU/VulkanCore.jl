using Clang.wrap_c
using Clang.cindex

LLVM_VERSION = readchomp(`llvm-config --version`)
LLVM_LIBDIR  = readchomp(`llvm-config --libdir`)
LLVM_INCLUDE = joinpath(LLVM_LIBDIR, "clang", LLVM_VERSION, "include")

VK_INCLUDE = "/usr/include/vulkan"
VK_HEADERS = map(x->joinpath(VK_INCLUDE, x), ["vulkan.h"])

clang_includes = ASCIIString[]
push!(clang_includes, LLVM_INCLUDE)
push!(clang_includes, VK_INCLUDE)

clang_extraargs = ["-v"]
# clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS"]

header_library(x) = "libvulkan"

const wc = wrap_c.init(;
                        headers = VK_HEADERS,
                        output_file = "gen/vk.jl",
                        common_file = "gen/vk_common.jl",
                        header_library = header_library,
                        clang_includes = clang_includes,
                        clang_args = clang_extraargs,
                        clang_diagnostics = true)

wc.options = wrap_c.InternalOptions(true, true)
run(wc)


