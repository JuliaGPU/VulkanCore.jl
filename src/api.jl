module api

paths = ByteString[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan"], paths)
@assert libvulkan != ""

end
