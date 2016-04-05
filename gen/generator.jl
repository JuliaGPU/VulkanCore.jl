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
const VK_HEADERS = map(x->joinpath(VK_INCLUDE, x), ["vk_platform.h", "vulkan.h"])
const VK_EXTENSIONS = [
  "VK_USE_PLATFORM_XCB_KHR",
  "VK_USE_PLATFORM_WAYLAND_KHR",
  "VK_USE_PLATFORM_MIR_KHR",
  "VK_USE_PLATFORM_WIN32_KHR",
  ]

# Map versions to revisions
const VK_VERSIONS = Dict(
  v"1.0.3" => "d204ac2",
  v"1.0.4" => "5a4c5e5",
  v"1.0.5" => "7380aee",
  v"1.0.6" => "13f85fa", # from here one VK_HEADER_VERSION is introduced
  v"1.0.7" => "8c3c9b4",
  v"1.0"   => "1.0", # Generate from master branch
)

# callback to test if a header should actually be wrapped (for exclusion)
function wrap_header(top_hdr::ASCIIString, cursor_header::ASCIIString)
  return startswith(dirname(cursor_header), VK_INCLUDE)
end

# These rewriters are taken from CUDArt.jl
function rewriter(ex :: Expr)
  # Empty types get converted to Void
  # This is important for opaque handles
  if ex.head == :type
    a3 = ex.args[3]
    if isempty(a3.args)
      objname = ex.args[2]
      return :(typealias $objname Void)
    end
  end

  # Early exit for everything but functions
  ex.head == :function || return ex

  decl, body = ex.args[1], ex.args[2]
  # omit types from function prototypes
  for i = 2:length(decl.args)
    a = decl.args[i]
    # a can be a symbol (and thus already have no type information attached)
    if !(typeof(a) == Symbol) && a.head == :(::)
      decl.args[i] = a.args[1]
    end
  end

  return ex
end

rewriter(A::Array) = [rewriter(a) for a in A]

rewriter(arg) = arg

function generate_bindings(version = v"1.0")
  clang_includes = ASCIIString[]
  push!(clang_includes, LLVM_INCLUDE)
  push!(clang_includes, VK_INCLUDE)

  clang_extraargs = ASCIIString[]
  for extension in VK_EXTENSIONS
    push!(clang_extraargs, "-D")
    push!(clang_extraargs, extension)
  end

  git_commit = VK_VERSIONS[version]

  run(`$git checkout $git_commit`)

  const wc = wrap_c.init(;
                        headers = VK_HEADERS,
                        output_file = "api/vk_$(version).jl",
                        common_file = "api/vk_common_$(version).jl",
                        clang_includes = clang_includes,
                        clang_args = clang_extraargs,
                        header_wrapped = wrap_header,
                        header_library = header_library,
                        clang_diagnostics = false,
                        rewriter = rewriter)

  # wrap_structs, immutable_structs
  wc.options = wrap_c.InternalOptions(true, true)
  run(wc)
end

function generate_spirv()
  download("https://www.khronos.org/registry/spir-v/api/1.0/spirv.h", "spirv.h")

  clang_includes = ASCIIString[]
  push!(clang_includes, LLVM_INCLUDE)

  const wc = wrap_c.init(;
                        headers = ["./spirv.h"],
                        output_file = "api/spirv.jl",
                        common_file = "api/spirv_common_.jl",
                        clang_includes = clang_includes,
                        header_library = x->"libspirv",
                        clang_diagnostics = false,
                        rewriter = rewriter)

  # wrap_structs, immutable_structs
  wc.options = wrap_c.InternalOptions(true, true)
  run(wc)
end

