# VulkanCore

![CI](https://github.com/JuliaGPU/VulkanCore.jl/workflows/CI/badge.svg)
![TagBot](https://github.com/JuliaGPU/VulkanCore.jl/workflows/TagBot/badge.svg)

VulkanCore wraps Vulkan and exposes the library calls necessary to work with
Vulkan. It is targeted for developers wanting to directly work with Vulkan in
Julia.

If you are looking for a high-level idiomatic Julia API you might wish to take a look at
[Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl).

### Installation
You are required to have a Vulkan capable device and the appropriate drivers.

If these are present, run:

```
pkg> add VulkanCore
```

### References
- [Vulkan](https://www.khronos.org/vulkan/)
- [Vulkan Registry](https://www.khronos.org/registry/vulkan/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/#apispecs)

## Usage
The Vulkan wrapper is generated using [Clang.jl](https://github.com/JuliaInterop/Clang.jl)
with the [generator file](gen/generator.jl).

The API aims to replicate the Vulkan C-API and is thus very bare bones and hands-on.

```julia
using VulkanCore.LibVulkan

count = Ref{Cuint}(0)

# Scan layers
err = vkEnumerateInstanceLayerProperties(count, C_NULL)
@assert err == VK_SUCCESS

global_layer_properties = Vector{VkLayerProperties}(undef, count[])
err = vkEnumerateInstanceLayerProperties(count, global_layer_properties)
@assert err == VK_SUCCESS
```

## Contributing
You are welcome to submit pull-request for improvements, but since this is
primarily a wrapper you might focus your attention on the high-level API at
[Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl).

## Thanks
This package is inspired by the work done on [CUDArt.jl](https://github.com/JuliaGPU/CUDArt.jl)
and [OpenCL.jl](https://github.com/JuliaGPU/OpenCL.jl).

A big thank you also to all core Julia developers, who made this possible in the
first place.
