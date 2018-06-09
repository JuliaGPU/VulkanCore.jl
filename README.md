# VulkanCore

[![Build Status](https://travis-ci.org/JuliaGPU/VulkanCore.jl.svg?branch=master)](https://travis-ci.org/JuliaGPU/VulkanCore.jl)

VulkanCore wraps Vulkan and exposes the library calls necessary to work with
Vulkan. It is targeted for developers wanting to directly work with Vulkan in
Julia. 

If you are looking for a high-level julian API you might wish to take a look at
[Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl).

We parsed the [Vulkan XML specifications](https://github.com/JuliaGPU/Vulkan-Docs/blob/1.0/src/spec/vk.xml) and made them available via Julia's Documentation system. So this just works:
![selection_003](https://cloud.githubusercontent.com/assets/1010467/14315568/6fe80854-fbfe-11e5-88b2-53b11ddc37e0.png)

### Installation
You are required to have a Vulkan capable device and the appropriate drivers.
If these are present, just execute `Pkg.add("VulkanCore")` with Julia.

### References
- [Vulkan](https://www.khronos.org/vulkan/)
- [Vulkan Registry](https://www.khronos.org/registry/vulkan/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/specs/1.0/apispec.html)

## Usage
The Vulkan wrapper is generated using  [Clang.jl](https://github.com/ihnorton/Clang.jl)
with the [generator file](gen/generator.jl).

The API aims to replicate the Vulkan C-API and is thus very bare bones and hands-on.

```julia
using VulkanCore

count = Ref{Cuint}(0)

# Scan layers
err = vk.vkEnumerateInstanceLayerProperties(count, C_NULL)
@assert err == vk.VK_SUCCESS

global_layer_properties = Array(vk.VkLayerProperties, count[])
err = vk.vkEnumerateInstanceLayerProperties(count, global_layer_properties)
@assert err == vk.VK_SUCCESS
```

### Semantic Versioning
VulkanCore aims to follow a restricted semantic versioning scheme. Since we are
wrapping Vulkan the major and minor version are going to follow the Vulkan 
standard. Vulkan `v"1.0.8"` maps to VukanCore.jl `v"1.0"`.
Point releases are reserved for internal development *and* point release updates
to the Vulkan specfication.

As such you as a consumer of the package can target a specific Vulkan release by
requiring a specific version of VulkanCore.jl.

## Contributing
You are welcome to submit pull-request for improvments, but since this is
primarily a wrapper you might focus your attention on the high-level API at
[Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl).

## Thanks
This package is inspired by the work done on [CUDArt.jl](https://github.com/JuliaGPU/CUDArt.jl)
and [OpenCL.jl](https://github.com/JuliaGPU/OpenCL.jl). 

A big thank you also to all core Julia developers, who made this possible in the 
first place.
