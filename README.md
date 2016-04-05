# VulkanCore

[![Build Status](https://travis-ci.org/vchuravy/Vulkan.jl.svg?branch=master)](https://travis-ci.org/vchuravy/Vulkan.jl)

VulkanCore wraps Vulkan and exposes the library calls necessary to work with
Vulkan. It is targeted for developers wanting to directly work with Vulkan in
Julia. 

If you are looking for a high-level julian API you might wish to take a look at
[Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl).

### Installation
You are required to have a Vulkan capable device and the appropriate drivers.

### References
- [Vulkan](https://www.khronos.org/vulkan/)
- [Vulkan Registry](https://www.khronos.org/registry/vulkan/)
- [Vulkan Specification](https://www.khronos.org/registry/vulkan/specs/1.0/apispec.html)

## Semantic Versioning
VulkanCore aims to follow a restricted semantic versioning scheme. Since we are
wrapping Vulkan the major and minor version are going to follow the Vulkan 
standart. Vulkan `v"1.0.8"` maps to VukanCore.jl `v"1.0"`.
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
and [OpenCL.jl](https://github.com/JuliaGPU/CUDArt.jl). 

A big thank you also to all core Julia developers, who made this possible in the 
first place.
