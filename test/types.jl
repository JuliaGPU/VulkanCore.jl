"""
there are lots of pointer types to wrap. We introduce an abstract type for this
to share some functionality
"""
abstract VulkanPointerWrapper

Base.cconvert(::Type{Ptr{Void}}, x::VulkanPointerWrapper) = x
function Base.unsafe_convert(::Type{Ptr{Void}}, x::VulkanPointerWrapper)
    if x.ref == C_NULL
        error("$x is NULL")
    end
    x.ref
end

#TODO finalize

type PhysicalDevice <: VulkanPointerWrapper
    ref::api.VkPhysicalDevice
    memory_properties::api.VkPhysicalDeviceMemoryProperties
end

type Device <: VulkanPointerWrapper
    ref::api.VkDevice
    physical_device::PhysicalDevice
end

type Instance <: VulkanPointerWrapper
    ref::api.VkInstance
end


@enum CommandBufferState RECORDING READY_FOR_SUBMIT RESETTED
type CommandBuffer <: VulkanPointerWrapper
    ref::api.VkCommandBuffer
    state::CommandBufferState
    commandpool
end
