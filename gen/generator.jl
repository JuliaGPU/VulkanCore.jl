###
# This script generates julia bindings for different Vulkan versions

using Clang.wrap_c
using Clang.cindex

const LLVM_VERSION = readchomp(`llvm-config --version`)
const LLVM_LIBDIR  = readchomp(`llvm-config --libdir`)
const LLVM_INCLUDE = joinpath(LLVM_LIBDIR, "clang", LLVM_VERSION, "include")

# Which variable contains the library later onr
header_library(x) = "libvulkan"

git = `git -C Vulkan-Docs`
# Setup Vulkan-Docs for getting the headers
if !isdir("Vulkan-Docs")
  run(`git clone https://github.com/KhronosGroup/Vulkan-Docs`)
else
  run(`$git fetch`)
end

const VK_INCLUDE = "Vulkan-Docs/src/vulkan"
const VK_HEADERS = map(x->joinpath(VK_INCLUDE, x), ["vulkan.h"])

# Map versions to revisions
const VK_VERSIONS = Dict(
  v"1.0.3" => "d204ac2",
  v"1.0.4" => "5a4c5e5",
  v"1.0.5" => "7380aee",
  v"1.0.6" => "13f85fa", # from here one VK_HEADER_VERSION is introduced
  v"1.0.7" => "8c3c9b4",
)

# callback to test if a header should actually be wrapped (for exclusion)
function wrap_header(top_hdr::ASCIIString, cursor_header::ASCIIString)
  return startswith(dirname(cursor_header), VK_INCLUDE)
end

function generate_bindings(version = last(sort(collect(keys(VK_VERSIONS)))))
  clang_includes = ASCIIString[]
  push!(clang_includes, LLVM_INCLUDE)
  push!(clang_includes, VK_INCLUDE)

  clang_extraargs = ["-v"]
  # clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS"]

  run(`$git checkout $(VK_VERSIONS[version])`)

  const wc = wrap_c.init(;
                        headers = VK_HEADERS,
                        output_file = "api/vk_$(version).jl",
                        common_file = "api/vk_common_$(version).jl",
                        clang_includes = clang_includes,
                        clang_args = clang_extraargs,
                        header_wrapped = wrap_header,
                        header_library = header_library,
                        clang_diagnostics = true)

  wc.options = wrap_c.InternalOptions(true, true)
  run(wc)
end


