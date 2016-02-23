module api

paths = ByteString[]
const libvulkan = Libdl.find_library(["libvulkan", "vulkan", "libvulkan.so.1"], paths)
@assert libvulkan != ""

end
