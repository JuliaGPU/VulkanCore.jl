################################################################################
## Copyright (c) 2015-2016 The Khronos Group Inc.
##
## Permission is hereby granted, free of charge, to any person obtaining a
## copy of this software and/or associated documentation files (the
## "Materials"), to deal in the Materials without restriction, including
## without limitation the rights to use, copy, modify, merge, publish,
## distribute, sublicense, and/or sell copies of the Materials, and to
## permit persons to whom the Materials are furnished to do so, subject to
## the following conditions:
##
## The above copyright notice and this permission notice shall be included
## in all copies or substantial portions of the Materials.
##
## THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
## IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
## CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
## TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
## MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
################################################################################

################################################################################
## This header is generated from the Khronos Vulkan XML API Registry.
##
################################################################################

VK_MAKE_VERSION(major, minor, patch) = (((major) << 22) | ((minor) << 12) | (patch))
# Vulkan API version supported by this file
const VK_API_VERSION = VK_MAKE_VERSION(1, 0, 4)

const VK_NULL_HANDLE = C_NULL
@enum(VkPipelineCacheHeaderVersion,
  VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1,
)
const VK_LOD_CLAMP_NONE = 1000.0f0
const VK_REMAINING_MIP_LEVELS = typemax(UInt32)
const VK_REMAINING_ARRAY_LAYERS = typemax(UInt32)
const VK_WHOLE_SIZE = typemax(UInt64)
const VK_ATTACHMENT_UNUSED = typemax(UInt32)
const VK_TRUE = 1
const VK_FALSE = 0
const VK_QUEUE_FAMILY_IGNORED = typemax(UInt32)
const VK_SUBPASS_EXTERNAL = typemax(UInt32)
@enum(VkResult,
  VK_SUCCESS = 0,
  VK_NOT_READY = 1,
  VK_TIMEOUT = 2,
  VK_EVENT_SET = 3,
  VK_EVENT_RESET = 4,
  VK_INCOMPLETE = 5,
  VK_ERROR_OUT_OF_HOST_MEMORY = -1,
  VK_ERROR_OUT_OF_DEVICE_MEMORY = -2,
  VK_ERROR_INITIALIZATION_FAILED = -3,
  VK_ERROR_DEVICE_LOST = -4,
  VK_ERROR_MEMORY_MAP_FAILED = -5,
  VK_ERROR_LAYER_NOT_PRESENT = -6,
  VK_ERROR_EXTENSION_NOT_PRESENT = -7,
  VK_ERROR_FEATURE_NOT_PRESENT = -8,
  VK_ERROR_INCOMPATIBLE_DRIVER = -9,
  VK_ERROR_TOO_MANY_OBJECTS = -10,
  VK_ERROR_FORMAT_NOT_SUPPORTED = -11,
  VK_ERROR_SURFACE_LOST_KHR = -1000000000,
  VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001,
  VK_SUBOPTIMAL_KHR = 1000001003,
  VK_ERROR_OUT_OF_DATE_KHR = -1000001004,
  VK_ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001,
  VK_ERROR_VALIDATION_FAILED_EXT = -1000011001,
  VK_NV_EXTENSION_0_ERROR = -1000012000,
  VK_NV_EXTENSION_1_ERROR = -1000013000,
)
@enum(VkStructureType,
  VK_STRUCTURE_TYPE_APPLICATION_INFO = 0,
  VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1,
  VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 2,
  VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO = 3,
  VK_STRUCTURE_TYPE_SUBMIT_INFO = 4,
  VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = 5,
  VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = 6,
  VK_STRUCTURE_TYPE_BIND_SPARSE_INFO = 7,
  VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = 8,
  VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = 9,
  VK_STRUCTURE_TYPE_EVENT_CREATE_INFO = 10,
  VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO = 11,
  VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO = 12,
  VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO = 13,
  VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO = 14,
  VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO = 15,
  VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO = 16,
  VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = 17,
  VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO = 18,
  VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO = 19,
  VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO = 20,
  VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO = 21,
  VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO = 22,
  VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO = 23,
  VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO = 24,
  VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO = 25,
  VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO = 26,
  VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO = 27,
  VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO = 28,
  VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO = 29,
  VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO = 30,
  VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO = 31,
  VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32,
  VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = 33,
  VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = 34,
  VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = 35,
  VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = 36,
  VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO = 37,
  VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = 38,
  VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = 39,
  VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = 40,
  VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO = 41,
  VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = 42,
  VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO = 43,
  VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER = 44,
  VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = 45,
  VK_STRUCTURE_TYPE_MEMORY_BARRIER = 46,
  VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO = 47,
  VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO = 48,
  VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR = 1000001000,
  VK_STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001001,
  VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR = 1000002000,
  VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001,
  VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR = 1000003000,
  VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = 1000004000,
  VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = 1000005000,
  VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR = 1000006000,
  VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR = 1000007000,
  VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR = 1000008000,
  VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR = 1000009000,
  VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000,
)


typealias VkFlags UInt32
typealias VkInstanceCreateFlags VkFlags

immutable VkApplicationInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  pApplicationName :: Ptr{Cchar}
  applicationVersion :: UInt32
  pEngineName :: Ptr{Cchar}
  engineVersion :: UInt32
  apiVersion :: UInt32
end

immutable VkInstanceCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkInstanceCreateFlags
  pApplicationInfo :: Ptr{VkApplicationInfo}
  enabledLayerCount :: UInt32
  ppEnabledLayerNames :: Ptr{Ptr{Cchar}}
  enabledExtensionCount :: UInt32
  ppEnabledExtensionNames :: Ptr{Ptr{Cchar}}
end


@enum(VkSystemAllocationScope,
  VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0,
  VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1,
  VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2,
  VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3,
  VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4,
)
typealias PFN_vkAllocationFunction Ptr{Void}
typealias PFN_vkReallocationFunction Ptr{Void}
typealias PFN_vkFreeFunction Ptr{Void}
@enum(VkInternalAllocationType,
  VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0,
)
typealias PFN_vkInternalAllocationNotification Ptr{Void}
typealias PFN_vkInternalFreeNotification Ptr{Void}
immutable VkAllocationCallbacks
  pUserData :: Ptr{Void}
  pfnAllocation :: PFN_vkAllocationFunction
  pfnReallocation :: PFN_vkReallocationFunction
  pfnFree :: PFN_vkFreeFunction
  pfnInternalAllocation :: PFN_vkInternalAllocationNotification
  pfnInternalFree :: PFN_vkInternalFreeNotification
end

macro VK_DEFINE_HANDLE(object)
  quote
    typealias $object Ptr{Void}
  end
end
@VK_DEFINE_HANDLE(VkInstance)
function vkCreateInstance(pCreateInfo, pAllocator, pInstance)
  ccall((:vkCreateInstance, libvulkan), VkResult, (Ptr{VkInstanceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkInstance}), pCreateInfo, pAllocator, pInstance)
end
function vkDestroyInstance(instance, pAllocator)
  ccall((:vkDestroyInstance, libvulkan), Void, (VkInstance, Ptr{VkAllocationCallbacks}), instance, pAllocator)
end
@VK_DEFINE_HANDLE(VkPhysicalDevice)
function vkEnumeratePhysicalDevices(instance, pPhysicalDeviceCount, pPhysicalDevices)
  ccall((:vkEnumeratePhysicalDevices, libvulkan), VkResult, (VkInstance, Ptr{UInt32}, Ptr{VkPhysicalDevice}), instance, pPhysicalDeviceCount, pPhysicalDevices)
end
typealias VkBool32 UInt32
immutable VkPhysicalDeviceFeatures
  robustBufferAccess :: VkBool32
  fullDrawIndexUint32 :: VkBool32
  imageCubeArray :: VkBool32
  independentBlend :: VkBool32
  geometryShader :: VkBool32
  tessellationShader :: VkBool32
  sampleRateShading :: VkBool32
  dualSrcBlend :: VkBool32
  logicOp :: VkBool32
  multiDrawIndirect :: VkBool32
  drawIndirectFirstInstance :: VkBool32
  depthClamp :: VkBool32
  depthBiasClamp :: VkBool32
  fillModeNonSolid :: VkBool32
  depthBounds :: VkBool32
  wideLines :: VkBool32
  largePoints :: VkBool32
  alphaToOne :: VkBool32
  multiViewport :: VkBool32
  samplerAnisotropy :: VkBool32
  textureCompressionETC2 :: VkBool32
  textureCompressionASTC_LDR :: VkBool32
  textureCompressionBC :: VkBool32
  occlusionQueryPrecise :: VkBool32
  pipelineStatisticsQuery :: VkBool32
  vertexPipelineStoresAndAtomics :: VkBool32
  fragmentStoresAndAtomics :: VkBool32
  shaderTessellationAndGeometryPointSize :: VkBool32
  shaderImageGatherExtended :: VkBool32
  shaderStorageImageExtendedFormats :: VkBool32
  shaderStorageImageMultisample :: VkBool32
  shaderStorageImageReadWithoutFormat :: VkBool32
  shaderStorageImageWriteWithoutFormat :: VkBool32
  shaderUniformBufferArrayDynamicIndexing :: VkBool32
  shaderSampledImageArrayDynamicIndexing :: VkBool32
  shaderStorageBufferArrayDynamicIndexing :: VkBool32
  shaderStorageImageArrayDynamicIndexing :: VkBool32
  shaderClipDistance :: VkBool32
  shaderCullDistance :: VkBool32
  shaderFloat64 :: VkBool32
  shaderInt64 :: VkBool32
  shaderInt16 :: VkBool32
  shaderResourceResidency :: VkBool32
  shaderResourceMinLod :: VkBool32
  sparseBinding :: VkBool32
  sparseResidencyBuffer :: VkBool32
  sparseResidencyImage2D :: VkBool32
  sparseResidencyImage3D :: VkBool32
  sparseResidency2Samples :: VkBool32
  sparseResidency4Samples :: VkBool32
  sparseResidency8Samples :: VkBool32
  sparseResidency16Samples :: VkBool32
  sparseResidencyAliased :: VkBool32
  variableMultisampleRate :: VkBool32
  inheritedQueries :: VkBool32
end

function vkGetPhysicalDeviceFeatures(physicalDevice, pFeatures)
  ccall((:vkGetPhysicalDeviceFeatures, libvulkan), Void, (VkPhysicalDevice, Ptr{VkPhysicalDeviceFeatures}), physicalDevice, pFeatures)
end
@enum(VkFormat,
  VK_FORMAT_UNDEFINED = 0,
  VK_FORMAT_R4G4_UNORM_PACK8 = 1,
  VK_FORMAT_R4G4B4A4_UNORM_PACK16 = 2,
  VK_FORMAT_B4G4R4A4_UNORM_PACK16 = 3,
  VK_FORMAT_R5G6B5_UNORM_PACK16 = 4,
  VK_FORMAT_B5G6R5_UNORM_PACK16 = 5,
  VK_FORMAT_R5G5B5A1_UNORM_PACK16 = 6,
  VK_FORMAT_B5G5R5A1_UNORM_PACK16 = 7,
  VK_FORMAT_A1R5G5B5_UNORM_PACK16 = 8,
  VK_FORMAT_R8_UNORM = 9,
  VK_FORMAT_R8_SNORM = 10,
  VK_FORMAT_R8_USCALED = 11,
  VK_FORMAT_R8_SSCALED = 12,
  VK_FORMAT_R8_UINT = 13,
  VK_FORMAT_R8_SINT = 14,
  VK_FORMAT_R8_SRGB = 15,
  VK_FORMAT_R8G8_UNORM = 16,
  VK_FORMAT_R8G8_SNORM = 17,
  VK_FORMAT_R8G8_USCALED = 18,
  VK_FORMAT_R8G8_SSCALED = 19,
  VK_FORMAT_R8G8_UINT = 20,
  VK_FORMAT_R8G8_SINT = 21,
  VK_FORMAT_R8G8_SRGB = 22,
  VK_FORMAT_R8G8B8_UNORM = 23,
  VK_FORMAT_R8G8B8_SNORM = 24,
  VK_FORMAT_R8G8B8_USCALED = 25,
  VK_FORMAT_R8G8B8_SSCALED = 26,
  VK_FORMAT_R8G8B8_UINT = 27,
  VK_FORMAT_R8G8B8_SINT = 28,
  VK_FORMAT_R8G8B8_SRGB = 29,
  VK_FORMAT_B8G8R8_UNORM = 30,
  VK_FORMAT_B8G8R8_SNORM = 31,
  VK_FORMAT_B8G8R8_USCALED = 32,
  VK_FORMAT_B8G8R8_SSCALED = 33,
  VK_FORMAT_B8G8R8_UINT = 34,
  VK_FORMAT_B8G8R8_SINT = 35,
  VK_FORMAT_B8G8R8_SRGB = 36,
  VK_FORMAT_R8G8B8A8_UNORM = 37,
  VK_FORMAT_R8G8B8A8_SNORM = 38,
  VK_FORMAT_R8G8B8A8_USCALED = 39,
  VK_FORMAT_R8G8B8A8_SSCALED = 40,
  VK_FORMAT_R8G8B8A8_UINT = 41,
  VK_FORMAT_R8G8B8A8_SINT = 42,
  VK_FORMAT_R8G8B8A8_SRGB = 43,
  VK_FORMAT_B8G8R8A8_UNORM = 44,
  VK_FORMAT_B8G8R8A8_SNORM = 45,
  VK_FORMAT_B8G8R8A8_USCALED = 46,
  VK_FORMAT_B8G8R8A8_SSCALED = 47,
  VK_FORMAT_B8G8R8A8_UINT = 48,
  VK_FORMAT_B8G8R8A8_SINT = 49,
  VK_FORMAT_B8G8R8A8_SRGB = 50,
  VK_FORMAT_A8B8G8R8_UNORM_PACK32 = 51,
  VK_FORMAT_A8B8G8R8_SNORM_PACK32 = 52,
  VK_FORMAT_A8B8G8R8_USCALED_PACK32 = 53,
  VK_FORMAT_A8B8G8R8_SSCALED_PACK32 = 54,
  VK_FORMAT_A8B8G8R8_UINT_PACK32 = 55,
  VK_FORMAT_A8B8G8R8_SINT_PACK32 = 56,
  VK_FORMAT_A8B8G8R8_SRGB_PACK32 = 57,
  VK_FORMAT_A2R10G10B10_UNORM_PACK32 = 58,
  VK_FORMAT_A2R10G10B10_SNORM_PACK32 = 59,
  VK_FORMAT_A2R10G10B10_USCALED_PACK32 = 60,
  VK_FORMAT_A2R10G10B10_SSCALED_PACK32 = 61,
  VK_FORMAT_A2R10G10B10_UINT_PACK32 = 62,
  VK_FORMAT_A2R10G10B10_SINT_PACK32 = 63,
  VK_FORMAT_A2B10G10R10_UNORM_PACK32 = 64,
  VK_FORMAT_A2B10G10R10_SNORM_PACK32 = 65,
  VK_FORMAT_A2B10G10R10_USCALED_PACK32 = 66,
  VK_FORMAT_A2B10G10R10_SSCALED_PACK32 = 67,
  VK_FORMAT_A2B10G10R10_UINT_PACK32 = 68,
  VK_FORMAT_A2B10G10R10_SINT_PACK32 = 69,
  VK_FORMAT_R16_UNORM = 70,
  VK_FORMAT_R16_SNORM = 71,
  VK_FORMAT_R16_USCALED = 72,
  VK_FORMAT_R16_SSCALED = 73,
  VK_FORMAT_R16_UINT = 74,
  VK_FORMAT_R16_SINT = 75,
  VK_FORMAT_R16_SFLOAT = 76,
  VK_FORMAT_R16G16_UNORM = 77,
  VK_FORMAT_R16G16_SNORM = 78,
  VK_FORMAT_R16G16_USCALED = 79,
  VK_FORMAT_R16G16_SSCALED = 80,
  VK_FORMAT_R16G16_UINT = 81,
  VK_FORMAT_R16G16_SINT = 82,
  VK_FORMAT_R16G16_SFLOAT = 83,
  VK_FORMAT_R16G16B16_UNORM = 84,
  VK_FORMAT_R16G16B16_SNORM = 85,
  VK_FORMAT_R16G16B16_USCALED = 86,
  VK_FORMAT_R16G16B16_SSCALED = 87,
  VK_FORMAT_R16G16B16_UINT = 88,
  VK_FORMAT_R16G16B16_SINT = 89,
  VK_FORMAT_R16G16B16_SFLOAT = 90,
  VK_FORMAT_R16G16B16A16_UNORM = 91,
  VK_FORMAT_R16G16B16A16_SNORM = 92,
  VK_FORMAT_R16G16B16A16_USCALED = 93,
  VK_FORMAT_R16G16B16A16_SSCALED = 94,
  VK_FORMAT_R16G16B16A16_UINT = 95,
  VK_FORMAT_R16G16B16A16_SINT = 96,
  VK_FORMAT_R16G16B16A16_SFLOAT = 97,
  VK_FORMAT_R32_UINT = 98,
  VK_FORMAT_R32_SINT = 99,
  VK_FORMAT_R32_SFLOAT = 100,
  VK_FORMAT_R32G32_UINT = 101,
  VK_FORMAT_R32G32_SINT = 102,
  VK_FORMAT_R32G32_SFLOAT = 103,
  VK_FORMAT_R32G32B32_UINT = 104,
  VK_FORMAT_R32G32B32_SINT = 105,
  VK_FORMAT_R32G32B32_SFLOAT = 106,
  VK_FORMAT_R32G32B32A32_UINT = 107,
  VK_FORMAT_R32G32B32A32_SINT = 108,
  VK_FORMAT_R32G32B32A32_SFLOAT = 109,
  VK_FORMAT_R64_UINT = 110,
  VK_FORMAT_R64_SINT = 111,
  VK_FORMAT_R64_SFLOAT = 112,
  VK_FORMAT_R64G64_UINT = 113,
  VK_FORMAT_R64G64_SINT = 114,
  VK_FORMAT_R64G64_SFLOAT = 115,
  VK_FORMAT_R64G64B64_UINT = 116,
  VK_FORMAT_R64G64B64_SINT = 117,
  VK_FORMAT_R64G64B64_SFLOAT = 118,
  VK_FORMAT_R64G64B64A64_UINT = 119,
  VK_FORMAT_R64G64B64A64_SINT = 120,
  VK_FORMAT_R64G64B64A64_SFLOAT = 121,
  VK_FORMAT_B10G11R11_UFLOAT_PACK32 = 122,
  VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123,
  VK_FORMAT_D16_UNORM = 124,
  VK_FORMAT_X8_D24_UNORM_PACK32 = 125,
  VK_FORMAT_D32_SFLOAT = 126,
  VK_FORMAT_S8_UINT = 127,
  VK_FORMAT_D16_UNORM_S8_UINT = 128,
  VK_FORMAT_D24_UNORM_S8_UINT = 129,
  VK_FORMAT_D32_SFLOAT_S8_UINT = 130,
  VK_FORMAT_BC1_RGB_UNORM_BLOCK = 131,
  VK_FORMAT_BC1_RGB_SRGB_BLOCK = 132,
  VK_FORMAT_BC1_RGBA_UNORM_BLOCK = 133,
  VK_FORMAT_BC1_RGBA_SRGB_BLOCK = 134,
  VK_FORMAT_BC2_UNORM_BLOCK = 135,
  VK_FORMAT_BC2_SRGB_BLOCK = 136,
  VK_FORMAT_BC3_UNORM_BLOCK = 137,
  VK_FORMAT_BC3_SRGB_BLOCK = 138,
  VK_FORMAT_BC4_UNORM_BLOCK = 139,
  VK_FORMAT_BC4_SNORM_BLOCK = 140,
  VK_FORMAT_BC5_UNORM_BLOCK = 141,
  VK_FORMAT_BC5_SNORM_BLOCK = 142,
  VK_FORMAT_BC6H_UFLOAT_BLOCK = 143,
  VK_FORMAT_BC6H_SFLOAT_BLOCK = 144,
  VK_FORMAT_BC7_UNORM_BLOCK = 145,
  VK_FORMAT_BC7_SRGB_BLOCK = 146,
  VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147,
  VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148,
  VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149,
  VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150,
  VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151,
  VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152,
  VK_FORMAT_EAC_R11_UNORM_BLOCK = 153,
  VK_FORMAT_EAC_R11_SNORM_BLOCK = 154,
  VK_FORMAT_EAC_R11G11_UNORM_BLOCK = 155,
  VK_FORMAT_EAC_R11G11_SNORM_BLOCK = 156,
  VK_FORMAT_ASTC_4x4_UNORM_BLOCK = 157,
  VK_FORMAT_ASTC_4x4_SRGB_BLOCK = 158,
  VK_FORMAT_ASTC_5x4_UNORM_BLOCK = 159,
  VK_FORMAT_ASTC_5x4_SRGB_BLOCK = 160,
  VK_FORMAT_ASTC_5x5_UNORM_BLOCK = 161,
  VK_FORMAT_ASTC_5x5_SRGB_BLOCK = 162,
  VK_FORMAT_ASTC_6x5_UNORM_BLOCK = 163,
  VK_FORMAT_ASTC_6x5_SRGB_BLOCK = 164,
  VK_FORMAT_ASTC_6x6_UNORM_BLOCK = 165,
  VK_FORMAT_ASTC_6x6_SRGB_BLOCK = 166,
  VK_FORMAT_ASTC_8x5_UNORM_BLOCK = 167,
  VK_FORMAT_ASTC_8x5_SRGB_BLOCK = 168,
  VK_FORMAT_ASTC_8x6_UNORM_BLOCK = 169,
  VK_FORMAT_ASTC_8x6_SRGB_BLOCK = 170,
  VK_FORMAT_ASTC_8x8_UNORM_BLOCK = 171,
  VK_FORMAT_ASTC_8x8_SRGB_BLOCK = 172,
  VK_FORMAT_ASTC_10x5_UNORM_BLOCK = 173,
  VK_FORMAT_ASTC_10x5_SRGB_BLOCK = 174,
  VK_FORMAT_ASTC_10x6_UNORM_BLOCK = 175,
  VK_FORMAT_ASTC_10x6_SRGB_BLOCK = 176,
  VK_FORMAT_ASTC_10x8_UNORM_BLOCK = 177,
  VK_FORMAT_ASTC_10x8_SRGB_BLOCK = 178,
  VK_FORMAT_ASTC_10x10_UNORM_BLOCK = 179,
  VK_FORMAT_ASTC_10x10_SRGB_BLOCK = 180,
  VK_FORMAT_ASTC_12x10_UNORM_BLOCK = 181,
  VK_FORMAT_ASTC_12x10_SRGB_BLOCK = 182,
  VK_FORMAT_ASTC_12x12_UNORM_BLOCK = 183,
  VK_FORMAT_ASTC_12x12_SRGB_BLOCK = 184,
)
@enum(VkFormatFeatureFlagBits,
  VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 0x00000001,
  VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT = 0x00000002,
  VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004,
  VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008,
  VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 0x00000010,
  VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020,
  VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT = 0x00000040,
  VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 0x00000080,
  VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100,
  VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200,
  VK_FORMAT_FEATURE_BLIT_SRC_BIT = 0x00000400,
  VK_FORMAT_FEATURE_BLIT_DST_BIT = 0x00000800,
  VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000,
)
typealias VkFormatFeatureFlags VkFlags
immutable VkFormatProperties
  linearTilingFeatures :: VkFormatFeatureFlags
  optimalTilingFeatures :: VkFormatFeatureFlags
  bufferFeatures :: VkFormatFeatureFlags
end

function vkGetPhysicalDeviceFormatProperties(physicalDevice, format, pFormatProperties)
  ccall((:vkGetPhysicalDeviceFormatProperties, libvulkan), Void, (VkPhysicalDevice, VkFormat, Ptr{VkFormatProperties}), physicalDevice, format, pFormatProperties)
end
@enum(VkImageType,
  VK_IMAGE_TYPE_1D = 0,
  VK_IMAGE_TYPE_2D = 1,
  VK_IMAGE_TYPE_3D = 2,
)
@enum(VkImageTiling,
  VK_IMAGE_TILING_OPTIMAL = 0,
  VK_IMAGE_TILING_LINEAR = 1,
)
@enum(VkImageUsageFlagBits,
  VK_IMAGE_USAGE_TRANSFER_SRC_BIT = 0x00000001,
  VK_IMAGE_USAGE_TRANSFER_DST_BIT = 0x00000002,
  VK_IMAGE_USAGE_SAMPLED_BIT = 0x00000004,
  VK_IMAGE_USAGE_STORAGE_BIT = 0x00000008,
  VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 0x00000010,
  VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000020,
  VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 0x00000040,
  VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 0x00000080,
)
typealias VkImageUsageFlags VkFlags
@enum(VkImageCreateFlagBits,
  VK_IMAGE_CREATE_SPARSE_BINDING_BIT = 0x00000001,
  VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002,
  VK_IMAGE_CREATE_SPARSE_ALIASED_BIT = 0x00000004,
  VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT = 0x00000008,
  VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 0x00000010,
)
typealias VkImageCreateFlags VkFlags
immutable VkExtent3D
  width :: UInt32
  height :: UInt32
  depth :: UInt32
end

@enum(VkSampleCountFlagBits,
  VK_SAMPLE_COUNT_1_BIT = 0x00000001,
  VK_SAMPLE_COUNT_2_BIT = 0x00000002,
  VK_SAMPLE_COUNT_4_BIT = 0x00000004,
  VK_SAMPLE_COUNT_8_BIT = 0x00000008,
  VK_SAMPLE_COUNT_16_BIT = 0x00000010,
  VK_SAMPLE_COUNT_32_BIT = 0x00000020,
  VK_SAMPLE_COUNT_64_BIT = 0x00000040,
)
typealias VkSampleCountFlags VkFlags

typealias VkDeviceSize UInt64
immutable VkImageFormatProperties
  maxExtent :: VkExtent3D
  maxMipLevels :: UInt32
  maxArrayLayers :: UInt32
  sampleCounts :: VkSampleCountFlags
  maxResourceSize :: VkDeviceSize
end

function vkGetPhysicalDeviceImageFormatProperties(physicalDevice, format, _type, tiling, usage, flags, pImageFormatProperties)
  ccall((:vkGetPhysicalDeviceImageFormatProperties, libvulkan), VkResult, (VkPhysicalDevice, VkFormat, VkImageType, VkImageTiling, VkImageUsageFlags, VkImageCreateFlags, Ptr{VkImageFormatProperties}), physicalDevice, format, _type, tiling, usage, flags, pImageFormatProperties)
end
@enum(VkPhysicalDeviceType,
  VK_PHYSICAL_DEVICE_TYPE_OTHER = 0,
  VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1,
  VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2,
  VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3,
  VK_PHYSICAL_DEVICE_TYPE_CPU = 4,
)



immutable VkPhysicalDeviceLimits
  maxImageDimension1D :: UInt32
  maxImageDimension2D :: UInt32
  maxImageDimension3D :: UInt32
  maxImageDimensionCube :: UInt32
  maxImageArrayLayers :: UInt32
  maxTexelBufferElements :: UInt32
  maxUniformBufferRange :: UInt32
  maxStorageBufferRange :: UInt32
  maxPushConstantsSize :: UInt32
  maxMemoryAllocationCount :: UInt32
  maxSamplerAllocationCount :: UInt32
  bufferImageGranularity :: VkDeviceSize
  sparseAddressSpaceSize :: VkDeviceSize
  maxBoundDescriptorSets :: UInt32
  maxPerStageDescriptorSamplers :: UInt32
  maxPerStageDescriptorUniformBuffers :: UInt32
  maxPerStageDescriptorStorageBuffers :: UInt32
  maxPerStageDescriptorSampledImages :: UInt32
  maxPerStageDescriptorStorageImages :: UInt32
  maxPerStageDescriptorInputAttachments :: UInt32
  maxPerStageResources :: UInt32
  maxDescriptorSetSamplers :: UInt32
  maxDescriptorSetUniformBuffers :: UInt32
  maxDescriptorSetUniformBuffersDynamic :: UInt32
  maxDescriptorSetStorageBuffers :: UInt32
  maxDescriptorSetStorageBuffersDynamic :: UInt32
  maxDescriptorSetSampledImages :: UInt32
  maxDescriptorSetStorageImages :: UInt32
  maxDescriptorSetInputAttachments :: UInt32
  maxVertexInputAttributes :: UInt32
  maxVertexInputBindings :: UInt32
  maxVertexInputAttributeOffset :: UInt32
  maxVertexInputBindingStride :: UInt32
  maxVertexOutputComponents :: UInt32
  maxTessellationGenerationLevel :: UInt32
  maxTessellationPatchSize :: UInt32
  maxTessellationControlPerVertexInputComponents :: UInt32
  maxTessellationControlPerVertexOutputComponents :: UInt32
  maxTessellationControlPerPatchOutputComponents :: UInt32
  maxTessellationControlTotalOutputComponents :: UInt32
  maxTessellationEvaluationInputComponents :: UInt32
  maxTessellationEvaluationOutputComponents :: UInt32
  maxGeometryShaderInvocations :: UInt32
  maxGeometryInputComponents :: UInt32
  maxGeometryOutputComponents :: UInt32
  maxGeometryOutputVertices :: UInt32
  maxGeometryTotalOutputComponents :: UInt32
  maxFragmentInputComponents :: UInt32
  maxFragmentOutputAttachments :: UInt32
  maxFragmentDualSrcAttachments :: UInt32
  maxFragmentCombinedOutputResources :: UInt32
  maxComputeSharedMemorySize :: UInt32
  maxComputeWorkGroupCount :: NTuple{3, UInt32}
  maxComputeWorkGroupInvocations :: UInt32
  maxComputeWorkGroupSize :: NTuple{3, UInt32}
  subPixelPrecisionBits :: UInt32
  subTexelPrecisionBits :: UInt32
  mipmapPrecisionBits :: UInt32
  maxDrawIndexedIndexValue :: UInt32
  maxDrawIndirectCount :: UInt32
  maxSamplerLodBias :: Cfloat
  maxSamplerAnisotropy :: Cfloat
  maxViewports :: UInt32
  maxViewportDimensions :: NTuple{2, UInt32}
  viewportBoundsRange :: NTuple{2, Cfloat}
  viewportSubPixelBits :: UInt32
  minMemoryMapAlignment :: Csize_t
  minTexelBufferOffsetAlignment :: VkDeviceSize
  minUniformBufferOffsetAlignment :: VkDeviceSize
  minStorageBufferOffsetAlignment :: VkDeviceSize
  minTexelOffset :: Int32
  maxTexelOffset :: UInt32
  minTexelGatherOffset :: Int32
  maxTexelGatherOffset :: UInt32
  minInterpolationOffset :: Cfloat
  maxInterpolationOffset :: Cfloat
  subPixelInterpolationOffsetBits :: UInt32
  maxFramebufferWidth :: UInt32
  maxFramebufferHeight :: UInt32
  maxFramebufferLayers :: UInt32
  framebufferColorSampleCounts :: VkSampleCountFlags
  framebufferDepthSampleCounts :: VkSampleCountFlags
  framebufferStencilSampleCounts :: VkSampleCountFlags
  framebufferNoAttachmentsSampleCounts :: VkSampleCountFlags
  maxColorAttachments :: UInt32
  sampledImageColorSampleCounts :: VkSampleCountFlags
  sampledImageIntegerSampleCounts :: VkSampleCountFlags
  sampledImageDepthSampleCounts :: VkSampleCountFlags
  sampledImageStencilSampleCounts :: VkSampleCountFlags
  storageImageSampleCounts :: VkSampleCountFlags
  maxSampleMaskWords :: UInt32
  timestampComputeAndGraphics :: VkBool32
  timestampPeriod :: Cfloat
  maxClipDistances :: UInt32
  maxCullDistances :: UInt32
  maxCombinedClipAndCullDistances :: UInt32
  discreteQueuePriorities :: UInt32
  pointSizeRange :: NTuple{2, Cfloat}
  lineWidthRange :: NTuple{2, Cfloat}
  pointSizeGranularity :: Cfloat
  lineWidthGranularity :: Cfloat
  strictLines :: VkBool32
  standardSampleLocations :: VkBool32
  optimalBufferCopyOffsetAlignment :: VkDeviceSize
  optimalBufferCopyRowPitchAlignment :: VkDeviceSize
  nonCoherentAtomSize :: VkDeviceSize
end

immutable VkPhysicalDeviceSparseProperties
  residencyStandard2DBlockShape :: VkBool32
  residencyStandard2DMultisampleBlockShape :: VkBool32
  residencyStandard3DBlockShape :: VkBool32
  residencyAlignedMipSize :: VkBool32
  residencyNonResidentStrict :: VkBool32
end

const VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256
const VK_UUID_SIZE = 16
immutable VkPhysicalDeviceProperties
  apiVersion :: UInt32
  driverVersion :: UInt32
  vendorID :: UInt32
  deviceID :: UInt32
  deviceType :: VkPhysicalDeviceType
  deviceName :: NTuple{VK_MAX_PHYSICAL_DEVICE_NAME_SIZE, Cchar}
  pipelineCacheUUID :: NTuple{VK_UUID_SIZE, UInt8}
  limits :: VkPhysicalDeviceLimits
  sparseProperties :: VkPhysicalDeviceSparseProperties
end

function vkGetPhysicalDeviceProperties(physicalDevice, pProperties)
  ccall((:vkGetPhysicalDeviceProperties, libvulkan), Void, (VkPhysicalDevice, Ptr{VkPhysicalDeviceProperties}), physicalDevice, pProperties)
end
@enum(VkQueueFlagBits,
  VK_QUEUE_GRAPHICS_BIT = 0x00000001,
  VK_QUEUE_COMPUTE_BIT = 0x00000002,
  VK_QUEUE_TRANSFER_BIT = 0x00000004,
  VK_QUEUE_SPARSE_BINDING_BIT = 0x00000008,
)
typealias VkQueueFlags VkFlags
immutable VkQueueFamilyProperties
  queueFlags :: VkQueueFlags
  queueCount :: UInt32
  timestampValidBits :: UInt32
  minImageTransferGranularity :: VkExtent3D
end

function vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
  ccall((:vkGetPhysicalDeviceQueueFamilyProperties, libvulkan), Void, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkQueueFamilyProperties}), physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties)
end
@enum(VkMemoryPropertyFlagBits,
  VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 0x00000001,
  VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = 0x00000002,
  VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = 0x00000004,
  VK_MEMORY_PROPERTY_HOST_CACHED_BIT = 0x00000008,
  VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 0x00000010,
)
typealias VkMemoryPropertyFlags VkFlags
immutable VkMemoryType
  propertyFlags :: VkMemoryPropertyFlags
  heapIndex :: UInt32
end

@enum(VkMemoryHeapFlagBits,
  VK_MEMORY_HEAP_DEVICE_LOCAL_BIT = 0x00000001,
)
typealias VkMemoryHeapFlags VkFlags
immutable VkMemoryHeap
  size :: VkDeviceSize
  flags :: VkMemoryHeapFlags
end

const VK_MAX_MEMORY_TYPES = 32
const VK_MAX_MEMORY_HEAPS = 16
immutable VkPhysicalDeviceMemoryProperties
  memoryTypeCount :: UInt32
  memoryTypes :: NTuple{VK_MAX_MEMORY_TYPES, VkMemoryType}
  memoryHeapCount :: UInt32
  memoryHeaps :: NTuple{VK_MAX_MEMORY_HEAPS, VkMemoryHeap}
end

function vkGetPhysicalDeviceMemoryProperties(physicalDevice, pMemoryProperties)
  ccall((:vkGetPhysicalDeviceMemoryProperties, libvulkan), Void, (VkPhysicalDevice, Ptr{VkPhysicalDeviceMemoryProperties}), physicalDevice, pMemoryProperties)
end
typealias PFN_vkVoidFunction Ptr{Void}
function vkGetInstanceProcAddr(instance, pName)
  ccall((:vkGetInstanceProcAddr, libvulkan), PFN_vkVoidFunction, (VkInstance, Ptr{Cchar}), instance, pName)
end
@VK_DEFINE_HANDLE(VkDevice)
function vkGetDeviceProcAddr(device, pName)
  ccall((:vkGetDeviceProcAddr, libvulkan), PFN_vkVoidFunction, (VkDevice, Ptr{Cchar}), device, pName)
end
typealias VkDeviceCreateFlags VkFlags
typealias VkDeviceQueueCreateFlags VkFlags
immutable VkDeviceQueueCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDeviceQueueCreateFlags
  queueFamilyIndex :: UInt32
  queueCount :: UInt32
  pQueuePriorities :: Ptr{Cfloat}
end

immutable VkDeviceCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDeviceCreateFlags
  queueCreateInfoCount :: UInt32
  pQueueCreateInfos :: Ptr{VkDeviceQueueCreateInfo}
  enabledLayerCount :: UInt32
  ppEnabledLayerNames :: Ptr{Ptr{Cchar}}
  enabledExtensionCount :: UInt32
  ppEnabledExtensionNames :: Ptr{Ptr{Cchar}}
  pEnabledFeatures :: Ptr{VkPhysicalDeviceFeatures}
end

function vkCreateDevice(physicalDevice, pCreateInfo, pAllocator, pDevice)
  ccall((:vkCreateDevice, libvulkan), VkResult, (VkPhysicalDevice, Ptr{VkDeviceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDevice}), physicalDevice, pCreateInfo, pAllocator, pDevice)
end
function vkDestroyDevice(device, pAllocator)
  ccall((:vkDestroyDevice, libvulkan), Void, (VkDevice, Ptr{VkAllocationCallbacks}), device, pAllocator)
end
const VK_MAX_EXTENSION_NAME_SIZE = 256
immutable VkExtensionProperties
  extensionName :: NTuple{VK_MAX_EXTENSION_NAME_SIZE, Cchar}
  specVersion :: UInt32
end

function vkEnumerateInstanceExtensionProperties(pLayerName, pPropertyCount, pProperties)
  ccall((:vkEnumerateInstanceExtensionProperties, libvulkan), VkResult, (Ptr{Cchar}, Ptr{UInt32}, Ptr{VkExtensionProperties}), pLayerName, pPropertyCount, pProperties)
end
function vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, pPropertyCount, pProperties)
  ccall((:vkEnumerateDeviceExtensionProperties, libvulkan), VkResult, (VkPhysicalDevice, Ptr{Cchar}, Ptr{UInt32}, Ptr{VkExtensionProperties}), physicalDevice, pLayerName, pPropertyCount, pProperties)
end
const VK_MAX_DESCRIPTION_SIZE = 256
immutable VkLayerProperties
  layerName :: NTuple{VK_MAX_EXTENSION_NAME_SIZE, Cchar}
  specVersion :: UInt32
  implementationVersion :: UInt32
  description :: NTuple{VK_MAX_DESCRIPTION_SIZE, Cchar}
end

function vkEnumerateInstanceLayerProperties(pPropertyCount, pProperties)
  ccall((:vkEnumerateInstanceLayerProperties, libvulkan), VkResult, (Ptr{UInt32}, Ptr{VkLayerProperties}), pPropertyCount, pProperties)
end
function vkEnumerateDeviceLayerProperties(physicalDevice, pPropertyCount, pProperties)
  ccall((:vkEnumerateDeviceLayerProperties, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkLayerProperties}), physicalDevice, pPropertyCount, pProperties)
end
@VK_DEFINE_HANDLE(VkQueue)
function vkGetDeviceQueue(device, queueFamilyIndex, queueIndex, pQueue)
  ccall((:vkGetDeviceQueue, libvulkan), Void, (VkDevice, UInt32, UInt32, Ptr{VkQueue}), device, queueFamilyIndex, queueIndex, pQueue)
end
macro VK_DEFINE_NON_DISPATCHABLE_HANDLE(object)
  quote
    typealias $object Ptr{Void}
  end
end
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkSemaphore)
@enum(VkPipelineStageFlagBits,
  VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = 0x00000001,
  VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT = 0x00000002,
  VK_PIPELINE_STAGE_VERTEX_INPUT_BIT = 0x00000004,
  VK_PIPELINE_STAGE_VERTEX_SHADER_BIT = 0x00000008,
  VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010,
  VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020,
  VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 0x00000040,
  VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 0x00000080,
  VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 0x00000100,
  VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 0x00000200,
  VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400,
  VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT = 0x00000800,
  VK_PIPELINE_STAGE_TRANSFER_BIT = 0x00001000,
  VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 0x00002000,
  VK_PIPELINE_STAGE_HOST_BIT = 0x00004000,
  VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT = 0x00008000,
  VK_PIPELINE_STAGE_ALL_COMMANDS_BIT = 0x00010000,
)
typealias VkPipelineStageFlags VkFlags
@VK_DEFINE_HANDLE(VkCommandBuffer)
immutable VkSubmitInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  waitSemaphoreCount :: UInt32
  pWaitSemaphores :: Ptr{VkSemaphore}
  pWaitDstStageMask :: Ptr{VkPipelineStageFlags}
  commandBufferCount :: UInt32
  pCommandBuffers :: Ptr{VkCommandBuffer}
  signalSemaphoreCount :: UInt32
  pSignalSemaphores :: Ptr{VkSemaphore}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkFence)
function vkQueueSubmit(queue, submitCount, pSubmits, fence)
  ccall((:vkQueueSubmit, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkSubmitInfo}, VkFence), queue, submitCount, pSubmits, fence)
end
function vkQueueWaitIdle(queue)
  ccall((:vkQueueWaitIdle, libvulkan), VkResult, (VkQueue,), queue)
end
function vkDeviceWaitIdle(device)
  ccall((:vkDeviceWaitIdle, libvulkan), VkResult, (VkDevice,), device)
end
immutable VkMemoryAllocateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  allocationSize :: VkDeviceSize
  memoryTypeIndex :: UInt32
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDeviceMemory)
function vkAllocateMemory(device, pAllocateInfo, pAllocator, pMemory)
  ccall((:vkAllocateMemory, libvulkan), VkResult, (VkDevice, Ptr{VkMemoryAllocateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDeviceMemory}), device, pAllocateInfo, pAllocator, pMemory)
end
function vkFreeMemory(device, memory, pAllocator)
  ccall((:vkFreeMemory, libvulkan), Void, (VkDevice, VkDeviceMemory, Ptr{VkAllocationCallbacks}), device, memory, pAllocator)
end
typealias VkMemoryMapFlags VkFlags
function vkMapMemory(device, memory, offset, size, flags, ppData)
  ccall((:vkMapMemory, libvulkan), VkResult, (VkDevice, VkDeviceMemory, VkDeviceSize, VkDeviceSize, VkMemoryMapFlags, Ptr{Ptr{Void}}), device, memory, offset, size, flags, ppData)
end
function vkUnmapMemory(device, memory)
  ccall((:vkUnmapMemory, libvulkan), Void, (VkDevice, VkDeviceMemory), device, memory)
end
immutable VkMappedMemoryRange
  sType :: VkStructureType
  pNext :: Ptr{Void}
  memory :: VkDeviceMemory
  offset :: VkDeviceSize
  size :: VkDeviceSize
end

function vkFlushMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
  ccall((:vkFlushMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end
function vkInvalidateMappedMemoryRanges(device, memoryRangeCount, pMemoryRanges)
  ccall((:vkInvalidateMappedMemoryRanges, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkMappedMemoryRange}), device, memoryRangeCount, pMemoryRanges)
end
function vkGetDeviceMemoryCommitment(device, memory, pCommittedMemoryInBytes)
  ccall((:vkGetDeviceMemoryCommitment, libvulkan), Void, (VkDevice, VkDeviceMemory, Ptr{VkDeviceSize}), device, memory, pCommittedMemoryInBytes)
end
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkBuffer)
function vkBindBufferMemory(device, buffer, memory, memoryOffset)
  ccall((:vkBindBufferMemory, libvulkan), VkResult, (VkDevice, VkBuffer, VkDeviceMemory, VkDeviceSize), device, buffer, memory, memoryOffset)
end
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkImage)
function vkBindImageMemory(device, image, memory, memoryOffset)
  ccall((:vkBindImageMemory, libvulkan), VkResult, (VkDevice, VkImage, VkDeviceMemory, VkDeviceSize), device, image, memory, memoryOffset)
end
immutable VkMemoryRequirements
  size :: VkDeviceSize
  alignment :: VkDeviceSize
  memoryTypeBits :: UInt32
end

function vkGetBufferMemoryRequirements(device, buffer, pMemoryRequirements)
  ccall((:vkGetBufferMemoryRequirements, libvulkan), Void, (VkDevice, VkBuffer, Ptr{VkMemoryRequirements}), device, buffer, pMemoryRequirements)
end
function vkGetImageMemoryRequirements(device, image, pMemoryRequirements)
  ccall((:vkGetImageMemoryRequirements, libvulkan), Void, (VkDevice, VkImage, Ptr{VkMemoryRequirements}), device, image, pMemoryRequirements)
end
@enum(VkImageAspectFlagBits,
  VK_IMAGE_ASPECT_COLOR_BIT = 0x00000001,
  VK_IMAGE_ASPECT_DEPTH_BIT = 0x00000002,
  VK_IMAGE_ASPECT_STENCIL_BIT = 0x00000004,
  VK_IMAGE_ASPECT_METADATA_BIT = 0x00000008,
)
typealias VkImageAspectFlags VkFlags
@enum(VkSparseImageFormatFlagBits,
  VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 0x00000001,
  VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 0x00000002,
  VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 0x00000004,
)
typealias VkSparseImageFormatFlags VkFlags
immutable VkSparseImageFormatProperties
  aspectMask :: VkImageAspectFlags
  imageGranularity :: VkExtent3D
  flags :: VkSparseImageFormatFlags
end

immutable VkSparseImageMemoryRequirements
  formatProperties :: VkSparseImageFormatProperties
  imageMipTailFirstLod :: UInt32
  imageMipTailSize :: VkDeviceSize
  imageMipTailOffset :: VkDeviceSize
  imageMipTailStride :: VkDeviceSize
end

function vkGetImageSparseMemoryRequirements(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
  ccall((:vkGetImageSparseMemoryRequirements, libvulkan), Void, (VkDevice, VkImage, Ptr{UInt32}, Ptr{VkSparseImageMemoryRequirements}), device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements)
end
function vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice, format, _type, samples, usage, tiling, pPropertyCount, pProperties)
  ccall((:vkGetPhysicalDeviceSparseImageFormatProperties, libvulkan), Void, (VkPhysicalDevice, VkFormat, VkImageType, VkSampleCountFlagBits, VkImageUsageFlags, VkImageTiling, Ptr{UInt32}, Ptr{VkSparseImageFormatProperties}), physicalDevice, format, _type, samples, usage, tiling, pPropertyCount, pProperties)
end
@enum(VkSparseMemoryBindFlagBits,
  VK_SPARSE_MEMORY_BIND_METADATA_BIT = 0x00000001,
)
typealias VkSparseMemoryBindFlags VkFlags
immutable VkSparseMemoryBind
  resourceOffset :: VkDeviceSize
  size :: VkDeviceSize
  memory :: VkDeviceMemory
  memoryOffset :: VkDeviceSize
  flags :: VkSparseMemoryBindFlags
end

immutable VkSparseBufferMemoryBindInfo
  buffer :: VkBuffer
  bindCount :: UInt32
  pBinds :: Ptr{VkSparseMemoryBind}
end

immutable VkSparseImageOpaqueMemoryBindInfo
  image :: VkImage
  bindCount :: UInt32
  pBinds :: Ptr{VkSparseMemoryBind}
end

immutable VkImageSubresource
  aspectMask :: VkImageAspectFlags
  mipLevel :: UInt32
  arrayLayer :: UInt32
end

immutable VkOffset3D
  x :: Int32
  y :: Int32
  z :: Int32
end

immutable VkSparseImageMemoryBind
  subresource :: VkImageSubresource
  offset :: VkOffset3D
  extent :: VkExtent3D
  memory :: VkDeviceMemory
  memoryOffset :: VkDeviceSize
  flags :: VkSparseMemoryBindFlags
end

immutable VkSparseImageMemoryBindInfo
  image :: VkImage
  bindCount :: UInt32
  pBinds :: Ptr{VkSparseImageMemoryBind}
end

immutable VkBindSparseInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  waitSemaphoreCount :: UInt32
  pWaitSemaphores :: Ptr{VkSemaphore}
  bufferBindCount :: UInt32
  pBufferBinds :: Ptr{VkSparseBufferMemoryBindInfo}
  imageOpaqueBindCount :: UInt32
  pImageOpaqueBinds :: Ptr{VkSparseImageOpaqueMemoryBindInfo}
  imageBindCount :: UInt32
  pImageBinds :: Ptr{VkSparseImageMemoryBindInfo}
  signalSemaphoreCount :: UInt32
  pSignalSemaphores :: Ptr{VkSemaphore}
end

function vkQueueBindSparse(queue, bindInfoCount, pBindInfo, fence)
  ccall((:vkQueueBindSparse, libvulkan), VkResult, (VkQueue, UInt32, Ptr{VkBindSparseInfo}, VkFence), queue, bindInfoCount, pBindInfo, fence)
end
@enum(VkFenceCreateFlagBits,
  VK_FENCE_CREATE_SIGNALED_BIT = 0x00000001,
)
typealias VkFenceCreateFlags VkFlags
immutable VkFenceCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkFenceCreateFlags
end

function vkCreateFence(device, pCreateInfo, pAllocator, pFence)
  ccall((:vkCreateFence, libvulkan), VkResult, (VkDevice, Ptr{VkFenceCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFence}), device, pCreateInfo, pAllocator, pFence)
end
function vkDestroyFence(device, fence, pAllocator)
  ccall((:vkDestroyFence, libvulkan), Void, (VkDevice, VkFence, Ptr{VkAllocationCallbacks}), device, fence, pAllocator)
end
function vkResetFences(device, fenceCount, pFences)
  ccall((:vkResetFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}), device, fenceCount, pFences)
end
function vkGetFenceStatus(device, fence)
  ccall((:vkGetFenceStatus, libvulkan), VkResult, (VkDevice, VkFence), device, fence)
end
function vkWaitForFences(device, fenceCount, pFences, waitAll, timeout)
  ccall((:vkWaitForFences, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkFence}, VkBool32, UInt64), device, fenceCount, pFences, waitAll, timeout)
end
typealias VkSemaphoreCreateFlags VkFlags
immutable VkSemaphoreCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkSemaphoreCreateFlags
end

function vkCreateSemaphore(device, pCreateInfo, pAllocator, pSemaphore)
  ccall((:vkCreateSemaphore, libvulkan), VkResult, (VkDevice, Ptr{VkSemaphoreCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSemaphore}), device, pCreateInfo, pAllocator, pSemaphore)
end
function vkDestroySemaphore(device, semaphore, pAllocator)
  ccall((:vkDestroySemaphore, libvulkan), Void, (VkDevice, VkSemaphore, Ptr{VkAllocationCallbacks}), device, semaphore, pAllocator)
end
typealias VkEventCreateFlags VkFlags
immutable VkEventCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkEventCreateFlags
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkEvent)
function vkCreateEvent(device, pCreateInfo, pAllocator, pEvent)
  ccall((:vkCreateEvent, libvulkan), VkResult, (VkDevice, Ptr{VkEventCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkEvent}), device, pCreateInfo, pAllocator, pEvent)
end
function vkDestroyEvent(device, event, pAllocator)
  ccall((:vkDestroyEvent, libvulkan), Void, (VkDevice, VkEvent, Ptr{VkAllocationCallbacks}), device, event, pAllocator)
end
function vkGetEventStatus(device, event)
  ccall((:vkGetEventStatus, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end
function vkSetEvent(device, event)
  ccall((:vkSetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end
function vkResetEvent(device, event)
  ccall((:vkResetEvent, libvulkan), VkResult, (VkDevice, VkEvent), device, event)
end
typealias VkQueryPoolCreateFlags VkFlags
@enum(VkQueryType,
  VK_QUERY_TYPE_OCCLUSION = 0,
  VK_QUERY_TYPE_PIPELINE_STATISTICS = 1,
  VK_QUERY_TYPE_TIMESTAMP = 2,
)
@enum(VkQueryPipelineStatisticFlagBits,
  VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT = 0x00000001,
  VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT = 0x00000002,
  VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT = 0x00000004,
  VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT = 0x00000008,
  VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT = 0x00000010,
  VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT = 0x00000020,
  VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT = 0x00000040,
  VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT = 0x00000080,
  VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT = 0x00000100,
  VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT = 0x00000200,
  VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT = 0x00000400,
)
typealias VkQueryPipelineStatisticFlags VkFlags
immutable VkQueryPoolCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkQueryPoolCreateFlags
  queryType :: VkQueryType
  queryCount :: UInt32
  pipelineStatistics :: VkQueryPipelineStatisticFlags
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkQueryPool)
function vkCreateQueryPool(device, pCreateInfo, pAllocator, pQueryPool)
  ccall((:vkCreateQueryPool, libvulkan), VkResult, (VkDevice, Ptr{VkQueryPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkQueryPool}), device, pCreateInfo, pAllocator, pQueryPool)
end
function vkDestroyQueryPool(device, queryPool, pAllocator)
  ccall((:vkDestroyQueryPool, libvulkan), Void, (VkDevice, VkQueryPool, Ptr{VkAllocationCallbacks}), device, queryPool, pAllocator)
end
@enum(VkQueryResultFlagBits,
  VK_QUERY_RESULT_64_BIT = 0x00000001,
  VK_QUERY_RESULT_WAIT_BIT = 0x00000002,
  VK_QUERY_RESULT_WITH_AVAILABILITY_BIT = 0x00000004,
  VK_QUERY_RESULT_PARTIAL_BIT = 0x00000008,
)
typealias VkQueryResultFlags VkFlags
function vkGetQueryPoolResults(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
  ccall((:vkGetQueryPoolResults, libvulkan), VkResult, (VkDevice, VkQueryPool, UInt32, UInt32, Csize_t, Ptr{Void}, VkDeviceSize, VkQueryResultFlags), device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags)
end
@enum(VkBufferCreateFlagBits,
  VK_BUFFER_CREATE_SPARSE_BINDING_BIT = 0x00000001,
  VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 0x00000002,
  VK_BUFFER_CREATE_SPARSE_ALIASED_BIT = 0x00000004,
)
typealias VkBufferCreateFlags VkFlags
@enum(VkBufferUsageFlagBits,
  VK_BUFFER_USAGE_TRANSFER_SRC_BIT = 0x00000001,
  VK_BUFFER_USAGE_TRANSFER_DST_BIT = 0x00000002,
  VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 0x00000004,
  VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 0x00000008,
  VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT = 0x00000010,
  VK_BUFFER_USAGE_STORAGE_BUFFER_BIT = 0x00000020,
  VK_BUFFER_USAGE_INDEX_BUFFER_BIT = 0x00000040,
  VK_BUFFER_USAGE_VERTEX_BUFFER_BIT = 0x00000080,
  VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT = 0x00000100,
)
typealias VkBufferUsageFlags VkFlags
@enum(VkSharingMode,
  VK_SHARING_MODE_EXCLUSIVE = 0,
  VK_SHARING_MODE_CONCURRENT = 1,
)
immutable VkBufferCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkBufferCreateFlags
  size :: VkDeviceSize
  usage :: VkBufferUsageFlags
  sharingMode :: VkSharingMode
  queueFamilyIndexCount :: UInt32
  pQueueFamilyIndices :: Ptr{UInt32}
end

function vkCreateBuffer(device, pCreateInfo, pAllocator, pBuffer)
  ccall((:vkCreateBuffer, libvulkan), VkResult, (VkDevice, Ptr{VkBufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBuffer}), device, pCreateInfo, pAllocator, pBuffer)
end
function vkDestroyBuffer(device, buffer, pAllocator)
  ccall((:vkDestroyBuffer, libvulkan), Void, (VkDevice, VkBuffer, Ptr{VkAllocationCallbacks}), device, buffer, pAllocator)
end
typealias VkBufferViewCreateFlags VkFlags
immutable VkBufferViewCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkBufferViewCreateFlags
  buffer :: VkBuffer
  format :: VkFormat
  offset :: VkDeviceSize
  range :: VkDeviceSize
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkBufferView)
function vkCreateBufferView(device, pCreateInfo, pAllocator, pView)
  ccall((:vkCreateBufferView, libvulkan), VkResult, (VkDevice, Ptr{VkBufferViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkBufferView}), device, pCreateInfo, pAllocator, pView)
end
function vkDestroyBufferView(device, bufferView, pAllocator)
  ccall((:vkDestroyBufferView, libvulkan), Void, (VkDevice, VkBufferView, Ptr{VkAllocationCallbacks}), device, bufferView, pAllocator)
end
@enum(VkImageLayout,
  VK_IMAGE_LAYOUT_UNDEFINED = 0,
  VK_IMAGE_LAYOUT_GENERAL = 1,
  VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2,
  VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3,
  VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4,
  VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5,
  VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6,
  VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7,
  VK_IMAGE_LAYOUT_PREINITIALIZED = 8,
  VK_IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002,
)
immutable VkImageCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkImageCreateFlags
  imageType :: VkImageType
  format :: VkFormat
  extent :: VkExtent3D
  mipLevels :: UInt32
  arrayLayers :: UInt32
  samples :: VkSampleCountFlagBits
  tiling :: VkImageTiling
  usage :: VkImageUsageFlags
  sharingMode :: VkSharingMode
  queueFamilyIndexCount :: UInt32
  pQueueFamilyIndices :: Ptr{UInt32}
  initialLayout :: VkImageLayout
end

function vkCreateImage(device, pCreateInfo, pAllocator, pImage)
  ccall((:vkCreateImage, libvulkan), VkResult, (VkDevice, Ptr{VkImageCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImage}), device, pCreateInfo, pAllocator, pImage)
end
function vkDestroyImage(device, image, pAllocator)
  ccall((:vkDestroyImage, libvulkan), Void, (VkDevice, VkImage, Ptr{VkAllocationCallbacks}), device, image, pAllocator)
end
immutable VkSubresourceLayout
  offset :: VkDeviceSize
  size :: VkDeviceSize
  rowPitch :: VkDeviceSize
  arrayPitch :: VkDeviceSize
  depthPitch :: VkDeviceSize
end

function vkGetImageSubresourceLayout(device, image, pSubresource, pLayout)
  ccall((:vkGetImageSubresourceLayout, libvulkan), Void, (VkDevice, VkImage, Ptr{VkImageSubresource}, Ptr{VkSubresourceLayout}), device, image, pSubresource, pLayout)
end
typealias VkImageViewCreateFlags VkFlags
@enum(VkImageViewType,
  VK_IMAGE_VIEW_TYPE_1D = 0,
  VK_IMAGE_VIEW_TYPE_2D = 1,
  VK_IMAGE_VIEW_TYPE_3D = 2,
  VK_IMAGE_VIEW_TYPE_CUBE = 3,
  VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4,
  VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5,
  VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6,
)
@enum(VkComponentSwizzle,
  VK_COMPONENT_SWIZZLE_IDENTITY = 0,
  VK_COMPONENT_SWIZZLE_ZERO = 1,
  VK_COMPONENT_SWIZZLE_ONE = 2,
  VK_COMPONENT_SWIZZLE_R = 3,
  VK_COMPONENT_SWIZZLE_G = 4,
  VK_COMPONENT_SWIZZLE_B = 5,
  VK_COMPONENT_SWIZZLE_A = 6,
)
immutable VkComponentMapping
  r :: VkComponentSwizzle
  g :: VkComponentSwizzle
  b :: VkComponentSwizzle
  a :: VkComponentSwizzle
end

immutable VkImageSubresourceRange
  aspectMask :: VkImageAspectFlags
  baseMipLevel :: UInt32
  levelCount :: UInt32
  baseArrayLayer :: UInt32
  layerCount :: UInt32
end

immutable VkImageViewCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkImageViewCreateFlags
  image :: VkImage
  viewType :: VkImageViewType
  format :: VkFormat
  components :: VkComponentMapping
  subresourceRange :: VkImageSubresourceRange
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkImageView)
function vkCreateImageView(device, pCreateInfo, pAllocator, pView)
  ccall((:vkCreateImageView, libvulkan), VkResult, (VkDevice, Ptr{VkImageViewCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkImageView}), device, pCreateInfo, pAllocator, pView)
end
function vkDestroyImageView(device, imageView, pAllocator)
  ccall((:vkDestroyImageView, libvulkan), Void, (VkDevice, VkImageView, Ptr{VkAllocationCallbacks}), device, imageView, pAllocator)
end
typealias VkShaderModuleCreateFlags VkFlags
immutable VkShaderModuleCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkShaderModuleCreateFlags
  codeSize :: Csize_t
  pCode :: Ptr{UInt32}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkShaderModule)
function vkCreateShaderModule(device, pCreateInfo, pAllocator, pShaderModule)
  ccall((:vkCreateShaderModule, libvulkan), VkResult, (VkDevice, Ptr{VkShaderModuleCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkShaderModule}), device, pCreateInfo, pAllocator, pShaderModule)
end
function vkDestroyShaderModule(device, shaderModule, pAllocator)
  ccall((:vkDestroyShaderModule, libvulkan), Void, (VkDevice, VkShaderModule, Ptr{VkAllocationCallbacks}), device, shaderModule, pAllocator)
end
typealias VkPipelineCacheCreateFlags VkFlags
immutable VkPipelineCacheCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineCacheCreateFlags
  initialDataSize :: Csize_t
  pInitialData :: Ptr{Void}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkPipelineCache)
function vkCreatePipelineCache(device, pCreateInfo, pAllocator, pPipelineCache)
  ccall((:vkCreatePipelineCache, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineCacheCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineCache}), device, pCreateInfo, pAllocator, pPipelineCache)
end
function vkDestroyPipelineCache(device, pipelineCache, pAllocator)
  ccall((:vkDestroyPipelineCache, libvulkan), Void, (VkDevice, VkPipelineCache, Ptr{VkAllocationCallbacks}), device, pipelineCache, pAllocator)
end
function vkGetPipelineCacheData(device, pipelineCache, pDataSize, pData)
  ccall((:vkGetPipelineCacheData, libvulkan), VkResult, (VkDevice, VkPipelineCache, Ptr{Csize_t}, Ptr{Void}), device, pipelineCache, pDataSize, pData)
end
function vkMergePipelineCaches(device, dstCache, srcCacheCount, pSrcCaches)
  ccall((:vkMergePipelineCaches, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkPipelineCache}), device, dstCache, srcCacheCount, pSrcCaches)
end
@enum(VkPipelineCreateFlagBits,
  VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 0x00000001,
  VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 0x00000002,
  VK_PIPELINE_CREATE_DERIVATIVE_BIT = 0x00000004,
)
typealias VkPipelineCreateFlags VkFlags
typealias VkPipelineShaderStageCreateFlags VkFlags
@enum(VkShaderStageFlagBits,
  VK_SHADER_STAGE_VERTEX_BIT = 0x00000001,
  VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 0x00000002,
  VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 0x00000004,
  VK_SHADER_STAGE_GEOMETRY_BIT = 0x00000008,
  VK_SHADER_STAGE_FRAGMENT_BIT = 0x00000010,
  VK_SHADER_STAGE_COMPUTE_BIT = 0x00000020,
  VK_SHADER_STAGE_ALL_GRAPHICS = 0x1F,
  VK_SHADER_STAGE_ALL = 0x7FFFFFFF,
)
immutable VkSpecializationMapEntry
  constantID :: UInt32
  offset :: UInt32
  size :: Csize_t
end

immutable VkSpecializationInfo
  mapEntryCount :: UInt32
  pMapEntries :: Ptr{VkSpecializationMapEntry}
  dataSize :: Csize_t
  pData :: Ptr{Void}
end

immutable VkPipelineShaderStageCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineShaderStageCreateFlags
  stage :: VkShaderStageFlagBits
  _module :: VkShaderModule
  pName :: Ptr{Cchar}
  pSpecializationInfo :: Ptr{VkSpecializationInfo}
end

typealias VkPipelineVertexInputStateCreateFlags VkFlags
@enum(VkVertexInputRate,
  VK_VERTEX_INPUT_RATE_VERTEX = 0,
  VK_VERTEX_INPUT_RATE_INSTANCE = 1,
)
immutable VkVertexInputBindingDescription
  binding :: UInt32
  stride :: UInt32
  inputRate :: VkVertexInputRate
end

immutable VkVertexInputAttributeDescription
  location :: UInt32
  binding :: UInt32
  format :: VkFormat
  offset :: UInt32
end

immutable VkPipelineVertexInputStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineVertexInputStateCreateFlags
  vertexBindingDescriptionCount :: UInt32
  pVertexBindingDescriptions :: Ptr{VkVertexInputBindingDescription}
  vertexAttributeDescriptionCount :: UInt32
  pVertexAttributeDescriptions :: Ptr{VkVertexInputAttributeDescription}
end

typealias VkPipelineInputAssemblyStateCreateFlags VkFlags
@enum(VkPrimitiveTopology,
  VK_PRIMITIVE_TOPOLOGY_POINT_LIST = 0,
  VK_PRIMITIVE_TOPOLOGY_LINE_LIST = 1,
  VK_PRIMITIVE_TOPOLOGY_LINE_STRIP = 2,
  VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST = 3,
  VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP = 4,
  VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN = 5,
  VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY = 6,
  VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY = 7,
  VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY = 8,
  VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY = 9,
  VK_PRIMITIVE_TOPOLOGY_PATCH_LIST = 10,
)
immutable VkPipelineInputAssemblyStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineInputAssemblyStateCreateFlags
  topology :: VkPrimitiveTopology
  primitiveRestartEnable :: VkBool32
end

typealias VkPipelineTessellationStateCreateFlags VkFlags
immutable VkPipelineTessellationStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineTessellationStateCreateFlags
  patchControlPoints :: UInt32
end

typealias VkPipelineViewportStateCreateFlags VkFlags
immutable VkViewport
  x :: Cfloat
  y :: Cfloat
  width :: Cfloat
  height :: Cfloat
  minDepth :: Cfloat
  maxDepth :: Cfloat
end

immutable VkOffset2D
  x :: Int32
  y :: Int32
end

immutable VkExtent2D
  width :: UInt32
  height :: UInt32
end

immutable VkRect2D
  offset :: VkOffset2D
  extent :: VkExtent2D
end

immutable VkPipelineViewportStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineViewportStateCreateFlags
  viewportCount :: UInt32
  pViewports :: Ptr{VkViewport}
  scissorCount :: UInt32
  pScissors :: Ptr{VkRect2D}
end

typealias VkPipelineRasterizationStateCreateFlags VkFlags
@enum(VkPolygonMode,
  VK_POLYGON_MODE_FILL = 0,
  VK_POLYGON_MODE_LINE = 1,
  VK_POLYGON_MODE_POINT = 2,
)
@enum(VkCullModeFlagBits,
  VK_CULL_MODE_NONE = 0,
  VK_CULL_MODE_FRONT_BIT = 0x00000001,
  VK_CULL_MODE_BACK_BIT = 0x00000002,
  VK_CULL_MODE_FRONT_AND_BACK = 0x3,
)
typealias VkCullModeFlags VkFlags
@enum(VkFrontFace,
  VK_FRONT_FACE_COUNTER_CLOCKWISE = 0,
  VK_FRONT_FACE_CLOCKWISE = 1,
)
immutable VkPipelineRasterizationStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineRasterizationStateCreateFlags
  depthClampEnable :: VkBool32
  rasterizerDiscardEnable :: VkBool32
  polygonMode :: VkPolygonMode
  cullMode :: VkCullModeFlags
  frontFace :: VkFrontFace
  depthBiasEnable :: VkBool32
  depthBiasConstantFactor :: Cfloat
  depthBiasClamp :: Cfloat
  depthBiasSlopeFactor :: Cfloat
  lineWidth :: Cfloat
end

typealias VkPipelineMultisampleStateCreateFlags VkFlags
typealias VkSampleMask UInt32
immutable VkPipelineMultisampleStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineMultisampleStateCreateFlags
  rasterizationSamples :: VkSampleCountFlagBits
  sampleShadingEnable :: VkBool32
  minSampleShading :: Cfloat
  pSampleMask :: Ptr{VkSampleMask}
  alphaToCoverageEnable :: VkBool32
  alphaToOneEnable :: VkBool32
end

typealias VkPipelineDepthStencilStateCreateFlags VkFlags
@enum(VkCompareOp,
  VK_COMPARE_OP_NEVER = 0,
  VK_COMPARE_OP_LESS = 1,
  VK_COMPARE_OP_EQUAL = 2,
  VK_COMPARE_OP_LESS_OR_EQUAL = 3,
  VK_COMPARE_OP_GREATER = 4,
  VK_COMPARE_OP_NOT_EQUAL = 5,
  VK_COMPARE_OP_GREATER_OR_EQUAL = 6,
  VK_COMPARE_OP_ALWAYS = 7,
)
@enum(VkStencilOp,
  VK_STENCIL_OP_KEEP = 0,
  VK_STENCIL_OP_ZERO = 1,
  VK_STENCIL_OP_REPLACE = 2,
  VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3,
  VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4,
  VK_STENCIL_OP_INVERT = 5,
  VK_STENCIL_OP_INCREMENT_AND_WRAP = 6,
  VK_STENCIL_OP_DECREMENT_AND_WRAP = 7,
)
immutable VkStencilOpState
  failOp :: VkStencilOp
  passOp :: VkStencilOp
  depthFailOp :: VkStencilOp
  compareOp :: VkCompareOp
  compareMask :: UInt32
  writeMask :: UInt32
  reference :: UInt32
end

immutable VkPipelineDepthStencilStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineDepthStencilStateCreateFlags
  depthTestEnable :: VkBool32
  depthWriteEnable :: VkBool32
  depthCompareOp :: VkCompareOp
  depthBoundsTestEnable :: VkBool32
  stencilTestEnable :: VkBool32
  front :: VkStencilOpState
  back :: VkStencilOpState
  minDepthBounds :: Cfloat
  maxDepthBounds :: Cfloat
end

typealias VkPipelineColorBlendStateCreateFlags VkFlags
@enum(VkLogicOp,
  VK_LOGIC_OP_CLEAR = 0,
  VK_LOGIC_OP_AND = 1,
  VK_LOGIC_OP_AND_REVERSE = 2,
  VK_LOGIC_OP_COPY = 3,
  VK_LOGIC_OP_AND_INVERTED = 4,
  VK_LOGIC_OP_NO_OP = 5,
  VK_LOGIC_OP_XOR = 6,
  VK_LOGIC_OP_OR = 7,
  VK_LOGIC_OP_NOR = 8,
  VK_LOGIC_OP_EQUIVALENT = 9,
  VK_LOGIC_OP_INVERT = 10,
  VK_LOGIC_OP_OR_REVERSE = 11,
  VK_LOGIC_OP_COPY_INVERTED = 12,
  VK_LOGIC_OP_OR_INVERTED = 13,
  VK_LOGIC_OP_NAND = 14,
  VK_LOGIC_OP_SET = 15,
)
@enum(VkBlendFactor,
  VK_BLEND_FACTOR_ZERO = 0,
  VK_BLEND_FACTOR_ONE = 1,
  VK_BLEND_FACTOR_SRC_COLOR = 2,
  VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3,
  VK_BLEND_FACTOR_DST_COLOR = 4,
  VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5,
  VK_BLEND_FACTOR_SRC_ALPHA = 6,
  VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7,
  VK_BLEND_FACTOR_DST_ALPHA = 8,
  VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9,
  VK_BLEND_FACTOR_CONSTANT_COLOR = 10,
  VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11,
  VK_BLEND_FACTOR_CONSTANT_ALPHA = 12,
  VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13,
  VK_BLEND_FACTOR_SRC_ALPHA_SATURATE = 14,
  VK_BLEND_FACTOR_SRC1_COLOR = 15,
  VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16,
  VK_BLEND_FACTOR_SRC1_ALPHA = 17,
  VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18,
)
@enum(VkBlendOp,
  VK_BLEND_OP_ADD = 0,
  VK_BLEND_OP_SUBTRACT = 1,
  VK_BLEND_OP_REVERSE_SUBTRACT = 2,
  VK_BLEND_OP_MIN = 3,
  VK_BLEND_OP_MAX = 4,
)
@enum(VkColorComponentFlagBits,
  VK_COLOR_COMPONENT_R_BIT = 0x00000001,
  VK_COLOR_COMPONENT_G_BIT = 0x00000002,
  VK_COLOR_COMPONENT_B_BIT = 0x00000004,
  VK_COLOR_COMPONENT_A_BIT = 0x00000008,
)
typealias VkColorComponentFlags VkFlags
immutable VkPipelineColorBlendAttachmentState
  blendEnable :: VkBool32
  srcColorBlendFactor :: VkBlendFactor
  dstColorBlendFactor :: VkBlendFactor
  colorBlendOp :: VkBlendOp
  srcAlphaBlendFactor :: VkBlendFactor
  dstAlphaBlendFactor :: VkBlendFactor
  alphaBlendOp :: VkBlendOp
  colorWriteMask :: VkColorComponentFlags
end

immutable VkPipelineColorBlendStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineColorBlendStateCreateFlags
  logicOpEnable :: VkBool32
  logicOp :: VkLogicOp
  attachmentCount :: UInt32
  pAttachments :: Ptr{VkPipelineColorBlendAttachmentState}
  blendConstants :: NTuple{4, Cfloat}
end

typealias VkPipelineDynamicStateCreateFlags VkFlags
@enum(VkDynamicState,
  VK_DYNAMIC_STATE_VIEWPORT = 0,
  VK_DYNAMIC_STATE_SCISSOR = 1,
  VK_DYNAMIC_STATE_LINE_WIDTH = 2,
  VK_DYNAMIC_STATE_DEPTH_BIAS = 3,
  VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4,
  VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5,
  VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6,
  VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7,
  VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8,
)
immutable VkPipelineDynamicStateCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineDynamicStateCreateFlags
  dynamicStateCount :: UInt32
  pDynamicStates :: Ptr{VkDynamicState}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkPipelineLayout)
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkRenderPass)
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkPipeline)
immutable VkGraphicsPipelineCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineCreateFlags
  stageCount :: UInt32
  pStages :: Ptr{VkPipelineShaderStageCreateInfo}
  pVertexInputState :: Ptr{VkPipelineVertexInputStateCreateInfo}
  pInputAssemblyState :: Ptr{VkPipelineInputAssemblyStateCreateInfo}
  pTessellationState :: Ptr{VkPipelineTessellationStateCreateInfo}
  pViewportState :: Ptr{VkPipelineViewportStateCreateInfo}
  pRasterizationState :: Ptr{VkPipelineRasterizationStateCreateInfo}
  pMultisampleState :: Ptr{VkPipelineMultisampleStateCreateInfo}
  pDepthStencilState :: Ptr{VkPipelineDepthStencilStateCreateInfo}
  pColorBlendState :: Ptr{VkPipelineColorBlendStateCreateInfo}
  pDynamicState :: Ptr{VkPipelineDynamicStateCreateInfo}
  layout :: VkPipelineLayout
  renderPass :: VkRenderPass
  subpass :: UInt32
  basePipelineHandle :: VkPipeline
  basePipelineIndex :: Int32
end

function vkCreateGraphicsPipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
  ccall((:vkCreateGraphicsPipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkGraphicsPipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end
immutable VkComputePipelineCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineCreateFlags
  stage :: VkPipelineShaderStageCreateInfo
  layout :: VkPipelineLayout
  basePipelineHandle :: VkPipeline
  basePipelineIndex :: Int32
end

function vkCreateComputePipelines(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
  ccall((:vkCreateComputePipelines, libvulkan), VkResult, (VkDevice, VkPipelineCache, UInt32, Ptr{VkComputePipelineCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipeline}), device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines)
end
function vkDestroyPipeline(device, pipeline, pAllocator)
  ccall((:vkDestroyPipeline, libvulkan), Void, (VkDevice, VkPipeline, Ptr{VkAllocationCallbacks}), device, pipeline, pAllocator)
end
typealias VkPipelineLayoutCreateFlags VkFlags
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDescriptorSetLayout)
typealias VkShaderStageFlags VkFlags
immutable VkPushConstantRange
  stageFlags :: VkShaderStageFlags
  offset :: UInt32
  size :: UInt32
end

immutable VkPipelineLayoutCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkPipelineLayoutCreateFlags
  setLayoutCount :: UInt32
  pSetLayouts :: Ptr{VkDescriptorSetLayout}
  pushConstantRangeCount :: UInt32
  pPushConstantRanges :: Ptr{VkPushConstantRange}
end

function vkCreatePipelineLayout(device, pCreateInfo, pAllocator, pPipelineLayout)
  ccall((:vkCreatePipelineLayout, libvulkan), VkResult, (VkDevice, Ptr{VkPipelineLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkPipelineLayout}), device, pCreateInfo, pAllocator, pPipelineLayout)
end
function vkDestroyPipelineLayout(device, pipelineLayout, pAllocator)
  ccall((:vkDestroyPipelineLayout, libvulkan), Void, (VkDevice, VkPipelineLayout, Ptr{VkAllocationCallbacks}), device, pipelineLayout, pAllocator)
end
typealias VkSamplerCreateFlags VkFlags
@enum(VkFilter,
  VK_FILTER_NEAREST = 0,
  VK_FILTER_LINEAR = 1,
)
@enum(VkSamplerMipmapMode,
  VK_SAMPLER_MIPMAP_MODE_NEAREST = 0,
  VK_SAMPLER_MIPMAP_MODE_LINEAR = 1,
)
@enum(VkSamplerAddressMode,
  VK_SAMPLER_ADDRESS_MODE_REPEAT = 0,
  VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1,
  VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2,
  VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3,
  VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4,
)
@enum(VkBorderColor,
  VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0,
  VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1,
  VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2,
  VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3,
  VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4,
  VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5,
)
immutable VkSamplerCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkSamplerCreateFlags
  magFilter :: VkFilter
  minFilter :: VkFilter
  mipmapMode :: VkSamplerMipmapMode
  addressModeU :: VkSamplerAddressMode
  addressModeV :: VkSamplerAddressMode
  addressModeW :: VkSamplerAddressMode
  mipLodBias :: Cfloat
  anisotropyEnable :: VkBool32
  maxAnisotropy :: Cfloat
  compareEnable :: VkBool32
  compareOp :: VkCompareOp
  minLod :: Cfloat
  maxLod :: Cfloat
  borderColor :: VkBorderColor
  unnormalizedCoordinates :: VkBool32
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkSampler)
function vkCreateSampler(device, pCreateInfo, pAllocator, pSampler)
  ccall((:vkCreateSampler, libvulkan), VkResult, (VkDevice, Ptr{VkSamplerCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkSampler}), device, pCreateInfo, pAllocator, pSampler)
end
function vkDestroySampler(device, sampler, pAllocator)
  ccall((:vkDestroySampler, libvulkan), Void, (VkDevice, VkSampler, Ptr{VkAllocationCallbacks}), device, sampler, pAllocator)
end
typealias VkDescriptorSetLayoutCreateFlags VkFlags
@enum(VkDescriptorType,
  VK_DESCRIPTOR_TYPE_SAMPLER = 0,
  VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1,
  VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2,
  VK_DESCRIPTOR_TYPE_STORAGE_IMAGE = 3,
  VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4,
  VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5,
  VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6,
  VK_DESCRIPTOR_TYPE_STORAGE_BUFFER = 7,
  VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8,
  VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9,
  VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10,
)
immutable VkDescriptorSetLayoutBinding
  binding :: UInt32
  descriptorType :: VkDescriptorType
  descriptorCount :: UInt32
  stageFlags :: VkShaderStageFlags
  pImmutableSamplers :: Ptr{VkSampler}
end

immutable VkDescriptorSetLayoutCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDescriptorSetLayoutCreateFlags
  bindingCount :: UInt32
  pBindings :: Ptr{VkDescriptorSetLayoutBinding}
end

function vkCreateDescriptorSetLayout(device, pCreateInfo, pAllocator, pSetLayout)
  ccall((:vkCreateDescriptorSetLayout, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetLayoutCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorSetLayout}), device, pCreateInfo, pAllocator, pSetLayout)
end
function vkDestroyDescriptorSetLayout(device, descriptorSetLayout, pAllocator)
  ccall((:vkDestroyDescriptorSetLayout, libvulkan), Void, (VkDevice, VkDescriptorSetLayout, Ptr{VkAllocationCallbacks}), device, descriptorSetLayout, pAllocator)
end
@enum(VkDescriptorPoolCreateFlagBits,
  VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 0x00000001,
)
typealias VkDescriptorPoolCreateFlags VkFlags
immutable VkDescriptorPoolSize
  _type :: VkDescriptorType
  descriptorCount :: UInt32
end

immutable VkDescriptorPoolCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDescriptorPoolCreateFlags
  maxSets :: UInt32
  poolSizeCount :: UInt32
  pPoolSizes :: Ptr{VkDescriptorPoolSize}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDescriptorPool)
function vkCreateDescriptorPool(device, pCreateInfo, pAllocator, pDescriptorPool)
  ccall((:vkCreateDescriptorPool, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkDescriptorPool}), device, pCreateInfo, pAllocator, pDescriptorPool)
end
function vkDestroyDescriptorPool(device, descriptorPool, pAllocator)
  ccall((:vkDestroyDescriptorPool, libvulkan), Void, (VkDevice, VkDescriptorPool, Ptr{VkAllocationCallbacks}), device, descriptorPool, pAllocator)
end
typealias VkDescriptorPoolResetFlags VkFlags
function vkResetDescriptorPool(device, descriptorPool, flags)
  ccall((:vkResetDescriptorPool, libvulkan), VkResult, (VkDevice, VkDescriptorPool, VkDescriptorPoolResetFlags), device, descriptorPool, flags)
end
immutable VkDescriptorSetAllocateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  descriptorPool :: VkDescriptorPool
  descriptorSetCount :: UInt32
  pSetLayouts :: Ptr{VkDescriptorSetLayout}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDescriptorSet)
function vkAllocateDescriptorSets(device, pAllocateInfo, pDescriptorSets)
  ccall((:vkAllocateDescriptorSets, libvulkan), VkResult, (VkDevice, Ptr{VkDescriptorSetAllocateInfo}, Ptr{VkDescriptorSet}), device, pAllocateInfo, pDescriptorSets)
end
function vkFreeDescriptorSets(device, descriptorPool, descriptorSetCount, pDescriptorSets)
  ccall((:vkFreeDescriptorSets, libvulkan), VkResult, (VkDevice, VkDescriptorPool, UInt32, Ptr{VkDescriptorSet}), device, descriptorPool, descriptorSetCount, pDescriptorSets)
end
immutable VkDescriptorImageInfo
  sampler :: VkSampler
  imageView :: VkImageView
  imageLayout :: VkImageLayout
end

immutable VkDescriptorBufferInfo
  buffer :: VkBuffer
  offset :: VkDeviceSize
  range :: VkDeviceSize
end

immutable VkWriteDescriptorSet
  sType :: VkStructureType
  pNext :: Ptr{Void}
  dstSet :: VkDescriptorSet
  dstBinding :: UInt32
  dstArrayElement :: UInt32
  descriptorCount :: UInt32
  descriptorType :: VkDescriptorType
  pImageInfo :: Ptr{VkDescriptorImageInfo}
  pBufferInfo :: Ptr{VkDescriptorBufferInfo}
  pTexelBufferView :: Ptr{VkBufferView}
end

immutable VkCopyDescriptorSet
  sType :: VkStructureType
  pNext :: Ptr{Void}
  srcSet :: VkDescriptorSet
  srcBinding :: UInt32
  srcArrayElement :: UInt32
  dstSet :: VkDescriptorSet
  dstBinding :: UInt32
  dstArrayElement :: UInt32
  descriptorCount :: UInt32
end

function vkUpdateDescriptorSets(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
  ccall((:vkUpdateDescriptorSets, libvulkan), Void, (VkDevice, UInt32, Ptr{VkWriteDescriptorSet}, UInt32, Ptr{VkCopyDescriptorSet}), device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies)
end
typealias VkFramebufferCreateFlags VkFlags
immutable VkFramebufferCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkFramebufferCreateFlags
  renderPass :: VkRenderPass
  attachmentCount :: UInt32
  pAttachments :: Ptr{VkImageView}
  width :: UInt32
  height :: UInt32
  layers :: UInt32
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkFramebuffer)
function vkCreateFramebuffer(device, pCreateInfo, pAllocator, pFramebuffer)
  ccall((:vkCreateFramebuffer, libvulkan), VkResult, (VkDevice, Ptr{VkFramebufferCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkFramebuffer}), device, pCreateInfo, pAllocator, pFramebuffer)
end
function vkDestroyFramebuffer(device, framebuffer, pAllocator)
  ccall((:vkDestroyFramebuffer, libvulkan), Void, (VkDevice, VkFramebuffer, Ptr{VkAllocationCallbacks}), device, framebuffer, pAllocator)
end
typealias VkRenderPassCreateFlags VkFlags
@enum(VkAttachmentDescriptionFlagBits,
  VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 0x00000001,
)
typealias VkAttachmentDescriptionFlags VkFlags
@enum(VkAttachmentLoadOp,
  VK_ATTACHMENT_LOAD_OP_LOAD = 0,
  VK_ATTACHMENT_LOAD_OP_CLEAR = 1,
  VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2,
)
@enum(VkAttachmentStoreOp,
  VK_ATTACHMENT_STORE_OP_STORE = 0,
  VK_ATTACHMENT_STORE_OP_DONT_CARE = 1,
)
immutable VkAttachmentDescription
  flags :: VkAttachmentDescriptionFlags
  format :: VkFormat
  samples :: VkSampleCountFlagBits
  loadOp :: VkAttachmentLoadOp
  storeOp :: VkAttachmentStoreOp
  stencilLoadOp :: VkAttachmentLoadOp
  stencilStoreOp :: VkAttachmentStoreOp
  initialLayout :: VkImageLayout
  finalLayout :: VkImageLayout
end

typealias VkSubpassDescriptionFlags VkFlags
@enum(VkPipelineBindPoint,
  VK_PIPELINE_BIND_POINT_GRAPHICS = 0,
  VK_PIPELINE_BIND_POINT_COMPUTE = 1,
)
immutable VkAttachmentReference
  attachment :: UInt32
  layout :: VkImageLayout
end

immutable VkSubpassDescription
  flags :: VkSubpassDescriptionFlags
  pipelineBindPoint :: VkPipelineBindPoint
  inputAttachmentCount :: UInt32
  pInputAttachments :: Ptr{VkAttachmentReference}
  colorAttachmentCount :: UInt32
  pColorAttachments :: Ptr{VkAttachmentReference}
  pResolveAttachments :: Ptr{VkAttachmentReference}
  pDepthStencilAttachment :: Ptr{VkAttachmentReference}
  preserveAttachmentCount :: UInt32
  pPreserveAttachments :: Ptr{UInt32}
end

@enum(VkAccessFlagBits,
  VK_ACCESS_INDIRECT_COMMAND_READ_BIT = 0x00000001,
  VK_ACCESS_INDEX_READ_BIT = 0x00000002,
  VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004,
  VK_ACCESS_UNIFORM_READ_BIT = 0x00000008,
  VK_ACCESS_INPUT_ATTACHMENT_READ_BIT = 0x00000010,
  VK_ACCESS_SHADER_READ_BIT = 0x00000020,
  VK_ACCESS_SHADER_WRITE_BIT = 0x00000040,
  VK_ACCESS_COLOR_ATTACHMENT_READ_BIT = 0x00000080,
  VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100,
  VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200,
  VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400,
  VK_ACCESS_TRANSFER_READ_BIT = 0x00000800,
  VK_ACCESS_TRANSFER_WRITE_BIT = 0x00001000,
  VK_ACCESS_HOST_READ_BIT = 0x00002000,
  VK_ACCESS_HOST_WRITE_BIT = 0x00004000,
  VK_ACCESS_MEMORY_READ_BIT = 0x00008000,
  VK_ACCESS_MEMORY_WRITE_BIT = 0x00010000,
)
typealias VkAccessFlags VkFlags
@enum(VkDependencyFlagBits,
  VK_DEPENDENCY_BY_REGION_BIT = 0x00000001,
)
typealias VkDependencyFlags VkFlags
immutable VkSubpassDependency
  srcSubpass :: UInt32
  dstSubpass :: UInt32
  srcStageMask :: VkPipelineStageFlags
  dstStageMask :: VkPipelineStageFlags
  srcAccessMask :: VkAccessFlags
  dstAccessMask :: VkAccessFlags
  dependencyFlags :: VkDependencyFlags
end

immutable VkRenderPassCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkRenderPassCreateFlags
  attachmentCount :: UInt32
  pAttachments :: Ptr{VkAttachmentDescription}
  subpassCount :: UInt32
  pSubpasses :: Ptr{VkSubpassDescription}
  dependencyCount :: UInt32
  pDependencies :: Ptr{VkSubpassDependency}
end

function vkCreateRenderPass(device, pCreateInfo, pAllocator, pRenderPass)
  ccall((:vkCreateRenderPass, libvulkan), VkResult, (VkDevice, Ptr{VkRenderPassCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkRenderPass}), device, pCreateInfo, pAllocator, pRenderPass)
end
function vkDestroyRenderPass(device, renderPass, pAllocator)
  ccall((:vkDestroyRenderPass, libvulkan), Void, (VkDevice, VkRenderPass, Ptr{VkAllocationCallbacks}), device, renderPass, pAllocator)
end
function vkGetRenderAreaGranularity(device, renderPass, pGranularity)
  ccall((:vkGetRenderAreaGranularity, libvulkan), Void, (VkDevice, VkRenderPass, Ptr{VkExtent2D}), device, renderPass, pGranularity)
end
@enum(VkCommandPoolCreateFlagBits,
  VK_COMMAND_POOL_CREATE_TRANSIENT_BIT = 0x00000001,
  VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 0x00000002,
)
typealias VkCommandPoolCreateFlags VkFlags
immutable VkCommandPoolCreateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkCommandPoolCreateFlags
  queueFamilyIndex :: UInt32
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkCommandPool)
function vkCreateCommandPool(device, pCreateInfo, pAllocator, pCommandPool)
  ccall((:vkCreateCommandPool, libvulkan), VkResult, (VkDevice, Ptr{VkCommandPoolCreateInfo}, Ptr{VkAllocationCallbacks}, Ptr{VkCommandPool}), device, pCreateInfo, pAllocator, pCommandPool)
end
function vkDestroyCommandPool(device, commandPool, pAllocator)
  ccall((:vkDestroyCommandPool, libvulkan), Void, (VkDevice, VkCommandPool, Ptr{VkAllocationCallbacks}), device, commandPool, pAllocator)
end
@enum(VkCommandPoolResetFlagBits,
  VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 0x00000001,
)
typealias VkCommandPoolResetFlags VkFlags
function vkResetCommandPool(device, commandPool, flags)
  ccall((:vkResetCommandPool, libvulkan), VkResult, (VkDevice, VkCommandPool, VkCommandPoolResetFlags), device, commandPool, flags)
end
@enum(VkCommandBufferLevel,
  VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0,
  VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1,
)
immutable VkCommandBufferAllocateInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  commandPool :: VkCommandPool
  level :: VkCommandBufferLevel
  commandBufferCount :: UInt32
end

function vkAllocateCommandBuffers(device, pAllocateInfo, pCommandBuffers)
  ccall((:vkAllocateCommandBuffers, libvulkan), VkResult, (VkDevice, Ptr{VkCommandBufferAllocateInfo}, Ptr{VkCommandBuffer}), device, pAllocateInfo, pCommandBuffers)
end
function vkFreeCommandBuffers(device, commandPool, commandBufferCount, pCommandBuffers)
  ccall((:vkFreeCommandBuffers, libvulkan), Void, (VkDevice, VkCommandPool, UInt32, Ptr{VkCommandBuffer}), device, commandPool, commandBufferCount, pCommandBuffers)
end
@enum(VkCommandBufferUsageFlagBits,
  VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 0x00000001,
  VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 0x00000002,
  VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 0x00000004,
)
typealias VkCommandBufferUsageFlags VkFlags
@enum(VkQueryControlFlagBits,
  VK_QUERY_CONTROL_PRECISE_BIT = 0x00000001,
)
typealias VkQueryControlFlags VkFlags
immutable VkCommandBufferInheritanceInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  renderPass :: VkRenderPass
  subpass :: UInt32
  framebuffer :: VkFramebuffer
  occlusionQueryEnable :: VkBool32
  queryFlags :: VkQueryControlFlags
  pipelineStatistics :: VkQueryPipelineStatisticFlags
end

immutable VkCommandBufferBeginInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkCommandBufferUsageFlags
  pInheritanceInfo :: Ptr{VkCommandBufferInheritanceInfo}
end

function vkBeginCommandBuffer(commandBuffer, pBeginInfo)
  ccall((:vkBeginCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, Ptr{VkCommandBufferBeginInfo}), commandBuffer, pBeginInfo)
end
function vkEndCommandBuffer(commandBuffer)
  ccall((:vkEndCommandBuffer, libvulkan), VkResult, (VkCommandBuffer,), commandBuffer)
end
@enum(VkCommandBufferResetFlagBits,
  VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 0x00000001,
)
typealias VkCommandBufferResetFlags VkFlags
function vkResetCommandBuffer(commandBuffer, flags)
  ccall((:vkResetCommandBuffer, libvulkan), VkResult, (VkCommandBuffer, VkCommandBufferResetFlags), commandBuffer, flags)
end
function vkCmdBindPipeline(commandBuffer, pipelineBindPoint, pipeline)
  ccall((:vkCmdBindPipeline, libvulkan), Void, (VkCommandBuffer, VkPipelineBindPoint, VkPipeline), commandBuffer, pipelineBindPoint, pipeline)
end
function vkCmdSetViewport(commandBuffer, firstViewport, viewportCount, pViewports)
  ccall((:vkCmdSetViewport, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, Ptr{VkViewport}), commandBuffer, firstViewport, viewportCount, pViewports)
end
function vkCmdSetScissor(commandBuffer, firstScissor, scissorCount, pScissors)
  ccall((:vkCmdSetScissor, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, Ptr{VkRect2D}), commandBuffer, firstScissor, scissorCount, pScissors)
end
function vkCmdSetLineWidth(commandBuffer, lineWidth)
  ccall((:vkCmdSetLineWidth, libvulkan), Void, (VkCommandBuffer, Cfloat), commandBuffer, lineWidth)
end
function vkCmdSetDepthBias(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
  ccall((:vkCmdSetDepthBias, libvulkan), Void, (VkCommandBuffer, Cfloat, Cfloat, Cfloat), commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor)
end
function vkCmdSetBlendConstants(commandBuffer, blendConstants)
  ccall((:vkCmdSetBlendConstants, libvulkan), Void, (VkCommandBuffer, NTuple{4, Cfloat}), commandBuffer, blendConstants)
end
function vkCmdSetDepthBounds(commandBuffer, minDepthBounds, maxDepthBounds)
  ccall((:vkCmdSetDepthBounds, libvulkan), Void, (VkCommandBuffer, Cfloat, Cfloat), commandBuffer, minDepthBounds, maxDepthBounds)
end
@enum(VkStencilFaceFlagBits,
  VK_STENCIL_FACE_FRONT_BIT = 0x00000001,
  VK_STENCIL_FACE_BACK_BIT = 0x00000002,
  VK_STENCIL_FRONT_AND_BACK = 0x3,
)
typealias VkStencilFaceFlags VkFlags
function vkCmdSetStencilCompareMask(commandBuffer, faceMask, compareMask)
  ccall((:vkCmdSetStencilCompareMask, libvulkan), Void, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, compareMask)
end
function vkCmdSetStencilWriteMask(commandBuffer, faceMask, writeMask)
  ccall((:vkCmdSetStencilWriteMask, libvulkan), Void, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, writeMask)
end
function vkCmdSetStencilReference(commandBuffer, faceMask, reference)
  ccall((:vkCmdSetStencilReference, libvulkan), Void, (VkCommandBuffer, VkStencilFaceFlags, UInt32), commandBuffer, faceMask, reference)
end
function vkCmdBindDescriptorSets(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
  ccall((:vkCmdBindDescriptorSets, libvulkan), Void, (VkCommandBuffer, VkPipelineBindPoint, VkPipelineLayout, UInt32, UInt32, Ptr{VkDescriptorSet}, UInt32, Ptr{UInt32}), commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets)
end
@enum(VkIndexType,
  VK_INDEX_TYPE_UINT16 = 0,
  VK_INDEX_TYPE_UINT32 = 1,
)
function vkCmdBindIndexBuffer(commandBuffer, buffer, offset, indexType)
  ccall((:vkCmdBindIndexBuffer, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkIndexType), commandBuffer, buffer, offset, indexType)
end
function vkCmdBindVertexBuffers(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
  ccall((:vkCmdBindVertexBuffers, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, Ptr{VkBuffer}, Ptr{VkDeviceSize}), commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets)
end
function vkCmdDraw(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
  ccall((:vkCmdDraw, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, UInt32, UInt32), commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance)
end
function vkCmdDrawIndexed(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
  ccall((:vkCmdDrawIndexed, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, UInt32, Int32, UInt32), commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance)
end
function vkCmdDrawIndirect(commandBuffer, buffer, offset, drawCount, stride)
  ccall((:vkCmdDrawIndirect, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end
function vkCmdDrawIndexedIndirect(commandBuffer, buffer, offset, drawCount, stride)
  ccall((:vkCmdDrawIndexedIndirect, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize, UInt32, UInt32), commandBuffer, buffer, offset, drawCount, stride)
end
function vkCmdDispatch(commandBuffer, x, y, z)
  ccall((:vkCmdDispatch, libvulkan), Void, (VkCommandBuffer, UInt32, UInt32, UInt32), commandBuffer, x, y, z)
end
function vkCmdDispatchIndirect(commandBuffer, buffer, offset)
  ccall((:vkCmdDispatchIndirect, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize), commandBuffer, buffer, offset)
end
immutable VkBufferCopy
  srcOffset :: VkDeviceSize
  dstOffset :: VkDeviceSize
  size :: VkDeviceSize
end

function vkCmdCopyBuffer(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
  ccall((:vkCmdCopyBuffer, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkBuffer, UInt32, Ptr{VkBufferCopy}), commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions)
end
immutable VkImageSubresourceLayers
  aspectMask :: VkImageAspectFlags
  mipLevel :: UInt32
  baseArrayLayer :: UInt32
  layerCount :: UInt32
end

immutable VkImageCopy
  srcSubresource :: VkImageSubresourceLayers
  srcOffset :: VkOffset3D
  dstSubresource :: VkImageSubresourceLayers
  dstOffset :: VkOffset3D
  extent :: VkExtent3D
end

function vkCmdCopyImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
  ccall((:vkCmdCopyImage, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageCopy}), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
end
immutable VkImageBlit
  srcSubresource :: VkImageSubresourceLayers
  srcOffsets :: NTuple{2, VkOffset3D}
  dstSubresource :: VkImageSubresourceLayers
  dstOffsets :: NTuple{2, VkOffset3D}
end

function vkCmdBlitImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
  ccall((:vkCmdBlitImage, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageBlit}, VkFilter), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter)
end
immutable VkBufferImageCopy
  bufferOffset :: VkDeviceSize
  bufferRowLength :: UInt32
  bufferImageHeight :: UInt32
  imageSubresource :: VkImageSubresourceLayers
  imageOffset :: VkOffset3D
  imageExtent :: VkExtent3D
end

function vkCmdCopyBufferToImage(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
  ccall((:vkCmdCopyBufferToImage, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkImage, VkImageLayout, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions)
end
function vkCmdCopyImageToBuffer(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
  ccall((:vkCmdCopyImageToBuffer, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, VkBuffer, UInt32, Ptr{VkBufferImageCopy}), commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions)
end
function vkCmdUpdateBuffer(commandBuffer, dstBuffer, dstOffset, dataSize, pData)
  ccall((:vkCmdUpdateBuffer, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, Ptr{UInt32}), commandBuffer, dstBuffer, dstOffset, dataSize, pData)
end
function vkCmdFillBuffer(commandBuffer, dstBuffer, dstOffset, size, data)
  ccall((:vkCmdFillBuffer, libvulkan), Void, (VkCommandBuffer, VkBuffer, VkDeviceSize, VkDeviceSize, UInt32), commandBuffer, dstBuffer, dstOffset, size, data)
end
immutable VkClearColorValue{T <: Union{Float32, Int32, UInt32}}
  val :: NTuple{4, T}
end
function vkCmdClearColorImage(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
  ccall((:vkCmdClearColorImage, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearColorValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image, imageLayout, pColor, rangeCount, pRanges)
end
immutable VkClearDepthStencilValue
  depth :: Cfloat
  stencil :: UInt32
end

function vkCmdClearDepthStencilImage(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
  ccall((:vkCmdClearDepthStencilImage, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, Ptr{VkClearDepthStencilValue}, UInt32, Ptr{VkImageSubresourceRange}), commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges)
end
immutable VkClearValue
  color :: VkClearColorValue
end
immutable VkClearAttachment
  aspectMask :: VkImageAspectFlags
  colorAttachment :: UInt32
  clearValue :: VkClearValue
end

immutable VkClearRect
  rect :: VkRect2D
  baseArrayLayer :: UInt32
  layerCount :: UInt32
end

function vkCmdClearAttachments(commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
  ccall((:vkCmdClearAttachments, libvulkan), Void, (VkCommandBuffer, UInt32, Ptr{VkClearAttachment}, UInt32, Ptr{VkClearRect}), commandBuffer, attachmentCount, pAttachments, rectCount, pRects)
end
immutable VkImageResolve
  srcSubresource :: VkImageSubresourceLayers
  srcOffset :: VkOffset3D
  dstSubresource :: VkImageSubresourceLayers
  dstOffset :: VkOffset3D
  extent :: VkExtent3D
end

function vkCmdResolveImage(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
  ccall((:vkCmdResolveImage, libvulkan), Void, (VkCommandBuffer, VkImage, VkImageLayout, VkImage, VkImageLayout, UInt32, Ptr{VkImageResolve}), commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions)
end
function vkCmdSetEvent(commandBuffer, event, stageMask)
  ccall((:vkCmdSetEvent, libvulkan), Void, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end
function vkCmdResetEvent(commandBuffer, event, stageMask)
  ccall((:vkCmdResetEvent, libvulkan), Void, (VkCommandBuffer, VkEvent, VkPipelineStageFlags), commandBuffer, event, stageMask)
end
immutable VkMemoryBarrier
  sType :: VkStructureType
  pNext :: Ptr{Void}
  srcAccessMask :: VkAccessFlags
  dstAccessMask :: VkAccessFlags
end

immutable VkBufferMemoryBarrier
  sType :: VkStructureType
  pNext :: Ptr{Void}
  srcAccessMask :: VkAccessFlags
  dstAccessMask :: VkAccessFlags
  srcQueueFamilyIndex :: UInt32
  dstQueueFamilyIndex :: UInt32
  buffer :: VkBuffer
  offset :: VkDeviceSize
  size :: VkDeviceSize
end

immutable VkImageMemoryBarrier
  sType :: VkStructureType
  pNext :: Ptr{Void}
  srcAccessMask :: VkAccessFlags
  dstAccessMask :: VkAccessFlags
  oldLayout :: VkImageLayout
  newLayout :: VkImageLayout
  srcQueueFamilyIndex :: UInt32
  dstQueueFamilyIndex :: UInt32
  image :: VkImage
  subresourceRange :: VkImageSubresourceRange
end

function vkCmdWaitEvents(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
  ccall((:vkCmdWaitEvents, libvulkan), Void, (VkCommandBuffer, UInt32, Ptr{VkEvent}, VkPipelineStageFlags, VkPipelineStageFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}), commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
end
function vkCmdPipelineBarrier(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
  ccall((:vkCmdPipelineBarrier, libvulkan), Void, (VkCommandBuffer, VkPipelineStageFlags, VkPipelineStageFlags, VkDependencyFlags, UInt32, Ptr{VkMemoryBarrier}, UInt32, Ptr{VkBufferMemoryBarrier}, UInt32, Ptr{VkImageMemoryBarrier}), commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers)
end
function vkCmdBeginQuery(commandBuffer, queryPool, query, flags)
  ccall((:vkCmdBeginQuery, libvulkan), Void, (VkCommandBuffer, VkQueryPool, UInt32, VkQueryControlFlags), commandBuffer, queryPool, query, flags)
end
function vkCmdEndQuery(commandBuffer, queryPool, query)
  ccall((:vkCmdEndQuery, libvulkan), Void, (VkCommandBuffer, VkQueryPool, UInt32), commandBuffer, queryPool, query)
end
function vkCmdResetQueryPool(commandBuffer, queryPool, firstQuery, queryCount)
  ccall((:vkCmdResetQueryPool, libvulkan), Void, (VkCommandBuffer, VkQueryPool, UInt32, UInt32), commandBuffer, queryPool, firstQuery, queryCount)
end
function vkCmdWriteTimestamp(commandBuffer, pipelineStage, queryPool, query)
  ccall((:vkCmdWriteTimestamp, libvulkan), Void, (VkCommandBuffer, VkPipelineStageFlagBits, VkQueryPool, UInt32), commandBuffer, pipelineStage, queryPool, query)
end
function vkCmdCopyQueryPoolResults(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
  ccall((:vkCmdCopyQueryPoolResults, libvulkan), Void, (VkCommandBuffer, VkQueryPool, UInt32, UInt32, VkBuffer, VkDeviceSize, VkDeviceSize, VkQueryResultFlags), commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags)
end
function vkCmdPushConstants(commandBuffer, layout, stageFlags, offset, size, pValues)
  ccall((:vkCmdPushConstants, libvulkan), Void, (VkCommandBuffer, VkPipelineLayout, VkShaderStageFlags, UInt32, UInt32, Ptr{Void}), commandBuffer, layout, stageFlags, offset, size, pValues)
end
immutable VkRenderPassBeginInfo
  sType :: VkStructureType
  pNext :: Ptr{Void}
  renderPass :: VkRenderPass
  framebuffer :: VkFramebuffer
  renderArea :: VkRect2D
  clearValueCount :: UInt32
  pClearValues :: Ptr{VkClearValue}
end

@enum(VkSubpassContents,
  VK_SUBPASS_CONTENTS_INLINE = 0,
  VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1,
)
function vkCmdBeginRenderPass(commandBuffer, pRenderPassBegin, contents)
  ccall((:vkCmdBeginRenderPass, libvulkan), Void, (VkCommandBuffer, Ptr{VkRenderPassBeginInfo}, VkSubpassContents), commandBuffer, pRenderPassBegin, contents)
end
function vkCmdNextSubpass(commandBuffer, contents)
  ccall((:vkCmdNextSubpass, libvulkan), Void, (VkCommandBuffer, VkSubpassContents), commandBuffer, contents)
end
function vkCmdEndRenderPass(commandBuffer)
  ccall((:vkCmdEndRenderPass, libvulkan), Void, (VkCommandBuffer,), commandBuffer)
end
function vkCmdExecuteCommands(commandBuffer, commandBufferCount, pCommandBuffers)
  ccall((:vkCmdExecuteCommands, libvulkan), Void, (VkCommandBuffer, UInt32, Ptr{VkCommandBuffer}), commandBuffer, commandBufferCount, pCommandBuffers)
end
immutable VkDispatchIndirectCommand
  x :: UInt32
  y :: UInt32
  z :: UInt32
end

immutable VkDrawIndexedIndirectCommand
  indexCount :: UInt32
  instanceCount :: UInt32
  firstIndex :: UInt32
  vertexOffset :: Int32
  firstInstance :: UInt32
end

immutable VkDrawIndirectCommand
  vertexCount :: UInt32
  instanceCount :: UInt32
  firstVertex :: UInt32
  firstInstance :: UInt32
end

const VK_KHR_SURFACE_SPEC_VERSION = 25
const VK_KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface"
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkSurfaceKHR)
function vkDestroySurfaceKHR(instance, surface, pAllocator)
  ccall((:vkDestroySurfaceKHR, libvulkan), Void, (VkInstance, VkSurfaceKHR, Ptr{VkAllocationCallbacks}), instance, surface, pAllocator)
end
function vkGetPhysicalDeviceSurfaceSupportKHR(physicalDevice, queueFamilyIndex, surface, pSupported)
  ccall((:vkGetPhysicalDeviceSurfaceSupportKHR, libvulkan), VkResult, (VkPhysicalDevice, UInt32, VkSurfaceKHR, Ptr{VkBool32}), physicalDevice, queueFamilyIndex, surface, pSupported)
end
@enum(VkSurfaceTransformFlagBitsKHR,
  VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 0x00000001,
  VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 0x00000002,
  VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 0x00000004,
  VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 0x00000008,
  VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 0x00000010,
  VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 0x00000020,
  VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 0x00000040,
  VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 0x00000080,
  VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR = 0x00000100,
)
typealias VkSurfaceTransformFlagsKHR VkFlags
@enum(VkCompositeAlphaFlagBitsKHR,
  VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 0x00000001,
  VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 0x00000002,
  VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 0x00000004,
  VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR = 0x00000008,
)
typealias VkCompositeAlphaFlagsKHR VkFlags
immutable VkSurfaceCapabilitiesKHR
  minImageCount :: UInt32
  maxImageCount :: UInt32
  currentExtent :: VkExtent2D
  minImageExtent :: VkExtent2D
  maxImageExtent :: VkExtent2D
  maxImageArrayLayers :: UInt32
  supportedTransforms :: VkSurfaceTransformFlagsKHR
  currentTransform :: VkSurfaceTransformFlagBitsKHR
  supportedCompositeAlpha :: VkCompositeAlphaFlagsKHR
  supportedUsageFlags :: VkImageUsageFlags
end

function vkGetPhysicalDeviceSurfaceCapabilitiesKHR(physicalDevice, surface, pSurfaceCapabilities)
  ccall((:vkGetPhysicalDeviceSurfaceCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{VkSurfaceCapabilitiesKHR}), physicalDevice, surface, pSurfaceCapabilities)
end
@enum(VkColorSpaceKHR,
  VK_COLORSPACE_SRGB_NONLINEAR_KHR = 0,
)
immutable VkSurfaceFormatKHR
  format :: VkFormat
  colorSpace :: VkColorSpaceKHR
end

function vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats)
  ccall((:vkGetPhysicalDeviceSurfaceFormatsKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{UInt32}, Ptr{VkSurfaceFormatKHR}), physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats)
end
@enum(VkPresentModeKHR,
  VK_PRESENT_MODE_IMMEDIATE_KHR = 0,
  VK_PRESENT_MODE_MAILBOX_KHR = 1,
  VK_PRESENT_MODE_FIFO_KHR = 2,
  VK_PRESENT_MODE_FIFO_RELAXED_KHR = 3,
)
function vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, pPresentModeCount, pPresentModes)
  ccall((:vkGetPhysicalDeviceSurfacePresentModesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkSurfaceKHR, Ptr{UInt32}, Ptr{VkPresentModeKHR}), physicalDevice, surface, pPresentModeCount, pPresentModes)
end
const VK_KHR_SWAPCHAIN_SPEC_VERSION = 67
const VK_KHR_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_swapchain"
typealias VkSwapchainCreateFlagsKHR VkFlags
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkSwapchainKHR)
immutable VkSwapchainCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkSwapchainCreateFlagsKHR
  surface :: VkSurfaceKHR
  minImageCount :: UInt32
  imageFormat :: VkFormat
  imageColorSpace :: VkColorSpaceKHR
  imageExtent :: VkExtent2D
  imageArrayLayers :: UInt32
  imageUsage :: VkImageUsageFlags
  imageSharingMode :: VkSharingMode
  queueFamilyIndexCount :: UInt32
  pQueueFamilyIndices :: Ptr{UInt32}
  preTransform :: VkSurfaceTransformFlagBitsKHR
  compositeAlpha :: VkCompositeAlphaFlagBitsKHR
  presentMode :: VkPresentModeKHR
  clipped :: VkBool32
  oldSwapchain :: VkSwapchainKHR
end

function vkCreateSwapchainKHR(device, pCreateInfo, pAllocator, pSwapchain)
  ccall((:vkCreateSwapchainKHR, libvulkan), VkResult, (VkDevice, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, pCreateInfo, pAllocator, pSwapchain)
end
function vkDestroySwapchainKHR(device, swapchain, pAllocator)
  ccall((:vkDestroySwapchainKHR, libvulkan), Void, (VkDevice, VkSwapchainKHR, Ptr{VkAllocationCallbacks}), device, swapchain, pAllocator)
end
function vkGetSwapchainImagesKHR(device, swapchain, pSwapchainImageCount, pSwapchainImages)
  ccall((:vkGetSwapchainImagesKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, Ptr{UInt32}, Ptr{VkImage}), device, swapchain, pSwapchainImageCount, pSwapchainImages)
end
function vkAcquireNextImageKHR(device, swapchain, timeout, semaphore, fence, pImageIndex)
  ccall((:vkAcquireNextImageKHR, libvulkan), VkResult, (VkDevice, VkSwapchainKHR, UInt64, VkSemaphore, VkFence, Ptr{UInt32}), device, swapchain, timeout, semaphore, fence, pImageIndex)
end
immutable VkPresentInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  waitSemaphoreCount :: UInt32
  pWaitSemaphores :: Ptr{VkSemaphore}
  swapchainCount :: UInt32
  pSwapchains :: Ptr{VkSwapchainKHR}
  pImageIndices :: Ptr{UInt32}
  pResults :: Ptr{VkResult}
end

function vkQueuePresentKHR(queue, pPresentInfo)
  ccall((:vkQueuePresentKHR, libvulkan), VkResult, (VkQueue, Ptr{VkPresentInfoKHR}), queue, pPresentInfo)
end
@enum(VkDisplayPlaneAlphaFlagBitsKHR,
  VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 0x00000001,
  VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 0x00000002,
  VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 0x00000004,
  VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 0x00000008,
)
typealias VkDisplayPlaneAlphaFlagsKHR VkFlags
@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDisplayKHR)
immutable VkDisplayPropertiesKHR
  display :: VkDisplayKHR
  displayName :: Ptr{Cchar}
  physicalDimensions :: VkExtent2D
  physicalResolution :: VkExtent2D
  supportedTransforms :: VkSurfaceTransformFlagsKHR
  planeReorderPossible :: VkBool32
  persistentContent :: VkBool32
end

immutable VkDisplayModeParametersKHR
  visibleRegion :: VkExtent2D
  refreshRate :: UInt32
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDisplayModeKHR)
immutable VkDisplayModePropertiesKHR
  displayMode :: VkDisplayModeKHR
  parameters :: VkDisplayModeParametersKHR
end

typealias VkDisplayModeCreateFlagsKHR VkFlags
immutable VkDisplayModeCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDisplayModeCreateFlagsKHR
  parameters :: VkDisplayModeParametersKHR
end

immutable VkDisplayPlaneCapabilitiesKHR
  supportedAlpha :: VkDisplayPlaneAlphaFlagsKHR
  minSrcPosition :: VkOffset2D
  maxSrcPosition :: VkOffset2D
  minSrcExtent :: VkExtent2D
  maxSrcExtent :: VkExtent2D
  minDstPosition :: VkOffset2D
  maxDstPosition :: VkOffset2D
  minDstExtent :: VkExtent2D
  maxDstExtent :: VkExtent2D
end

immutable VkDisplayPlanePropertiesKHR
  currentDisplay :: VkDisplayKHR
  currentStackIndex :: UInt32
end

typealias VkDisplaySurfaceCreateFlagsKHR VkFlags
immutable VkDisplaySurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDisplaySurfaceCreateFlagsKHR
  displayMode :: VkDisplayModeKHR
  planeIndex :: UInt32
  planeStackIndex :: UInt32
  transform :: VkSurfaceTransformFlagBitsKHR
  globalAlpha :: Cfloat
  alphaMode :: VkDisplayPlaneAlphaFlagBitsKHR
  imageExtent :: VkExtent2D
end

const VK_KHR_DISPLAY_SPEC_VERSION = 21
const VK_KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display"
function vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, pPropertyCount, pProperties)
  ccall((:vkGetPhysicalDeviceDisplayPropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayPropertiesKHR}), physicalDevice, pPropertyCount, pProperties)
end
function vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, pPropertyCount, pProperties)
  ccall((:vkGetPhysicalDeviceDisplayPlanePropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, Ptr{UInt32}, Ptr{VkDisplayPlanePropertiesKHR}), physicalDevice, pPropertyCount, pProperties)
end
function vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, pDisplayCount, pDisplays)
  ccall((:vkGetDisplayPlaneSupportedDisplaysKHR, libvulkan), VkResult, (VkPhysicalDevice, UInt32, Ptr{UInt32}, Ptr{VkDisplayKHR}), physicalDevice, planeIndex, pDisplayCount, pDisplays)
end
function vkGetDisplayModePropertiesKHR(physicalDevice, display, pPropertyCount, pProperties)
  ccall((:vkGetDisplayModePropertiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{UInt32}, Ptr{VkDisplayModePropertiesKHR}), physicalDevice, display, pPropertyCount, pProperties)
end
function vkCreateDisplayModeKHR(physicalDevice, display, pCreateInfo, pAllocator, pMode)
  ccall((:vkCreateDisplayModeKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayKHR, Ptr{VkDisplayModeCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkDisplayModeKHR}), physicalDevice, display, pCreateInfo, pAllocator, pMode)
end
function vkGetDisplayPlaneCapabilitiesKHR(physicalDevice, mode, planeIndex, pCapabilities)
  ccall((:vkGetDisplayPlaneCapabilitiesKHR, libvulkan), VkResult, (VkPhysicalDevice, VkDisplayModeKHR, UInt32, Ptr{VkDisplayPlaneCapabilitiesKHR}), physicalDevice, mode, planeIndex, pCapabilities)
end
function vkCreateDisplayPlaneSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateDisplayPlaneSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkDisplaySurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end
immutable VkDisplayPresentInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  srcRect :: VkRect2D
  dstRect :: VkRect2D
  persistent :: VkBool32
end

const VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION = 9
const VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_display_swapchain"
function vkCreateSharedSwapchainsKHR(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
  ccall((:vkCreateSharedSwapchainsKHR, libvulkan), VkResult, (VkDevice, UInt32, Ptr{VkSwapchainCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSwapchainKHR}), device, swapchainCount, pCreateInfos, pAllocator, pSwapchains)
end
typealias VkXlibSurfaceCreateFlagsKHR VkFlags


immutable VkXlibSurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkXlibSurfaceCreateFlagsKHR
  dpy :: Ptr{Display}
  window :: Window
end

const VK_KHR_XLIB_SURFACE_SPEC_VERSION = 6
const VK_KHR_XLIB_SURFACE_EXTENSION_NAME = "VK_KHR_xlib_surface"
function vkCreateXlibSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateXlibSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkXlibSurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end

function vkGetPhysicalDeviceXlibPresentationSupportKHR(physicalDevice, queueFamilyIndex, dpy, visualID)
  ccall((:vkGetPhysicalDeviceXlibPresentationSupportKHR, libvulkan), VkBool32, (VkPhysicalDevice, UInt32, Ptr{Display}, VisualID), physicalDevice, queueFamilyIndex, dpy, visualID)
end
typealias VkXcbSurfaceCreateFlagsKHR VkFlags


immutable VkXcbSurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkXcbSurfaceCreateFlagsKHR
  connection :: Ptr{xcb_connection_t}
  window :: xcb_window_t
end

const VK_KHR_XCB_SURFACE_SPEC_VERSION = 6
const VK_KHR_XCB_SURFACE_EXTENSION_NAME = "VK_KHR_xcb_surface"
function vkCreateXcbSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateXcbSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkXcbSurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end

function vkGetPhysicalDeviceXcbPresentationSupportKHR(physicalDevice, queueFamilyIndex, connection, visual_id)
  ccall((:vkGetPhysicalDeviceXcbPresentationSupportKHR, libvulkan), VkBool32, (VkPhysicalDevice, UInt32, Ptr{xcb_connection_t}, xcb_visualid_t), physicalDevice, queueFamilyIndex, connection, visual_id)
end
typealias VkWaylandSurfaceCreateFlagsKHR VkFlags


immutable VkWaylandSurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkWaylandSurfaceCreateFlagsKHR
  display :: Ptr{wl_display}
  surface :: Ptr{wl_surface}
end

const VK_KHR_WAYLAND_SURFACE_SPEC_VERSION = 5
const VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME = "VK_KHR_wayland_surface"
function vkCreateWaylandSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateWaylandSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkWaylandSurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end
function vkGetPhysicalDeviceWaylandPresentationSupportKHR(physicalDevice, queueFamilyIndex, display)
  ccall((:vkGetPhysicalDeviceWaylandPresentationSupportKHR, libvulkan), VkBool32, (VkPhysicalDevice, UInt32, Ptr{wl_display}), physicalDevice, queueFamilyIndex, display)
end
typealias VkMirSurfaceCreateFlagsKHR VkFlags


immutable VkMirSurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkMirSurfaceCreateFlagsKHR
  connection :: Ptr{MirConnection}
  mirSurface :: Ptr{MirSurface}
end

const VK_KHR_MIR_SURFACE_SPEC_VERSION = 4
const VK_KHR_MIR_SURFACE_EXTENSION_NAME = "VK_KHR_mir_surface"
function vkCreateMirSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateMirSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkMirSurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end
function vkGetPhysicalDeviceMirPresentationSupportKHR(physicalDevice, queueFamilyIndex, connection)
  ccall((:vkGetPhysicalDeviceMirPresentationSupportKHR, libvulkan), VkBool32, (VkPhysicalDevice, UInt32, Ptr{MirConnection}), physicalDevice, queueFamilyIndex, connection)
end
typealias VkAndroidSurfaceCreateFlagsKHR VkFlags

immutable VkAndroidSurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkAndroidSurfaceCreateFlagsKHR
  window :: Ptr{ANativeWindow}
end

const VK_KHR_ANDROID_SURFACE_SPEC_VERSION = 6
const VK_KHR_ANDROID_SURFACE_EXTENSION_NAME = "VK_KHR_android_surface"
function vkCreateAndroidSurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateAndroidSurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkAndroidSurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end
typealias VkWin32SurfaceCreateFlagsKHR VkFlags


immutable VkWin32SurfaceCreateInfoKHR
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkWin32SurfaceCreateFlagsKHR
  hinstance :: HINSTANCE
  hwnd :: HWND
end

const VK_KHR_WIN32_SURFACE_SPEC_VERSION = 5
const VK_KHR_WIN32_SURFACE_EXTENSION_NAME = "VK_KHR_win32_surface"
function vkCreateWin32SurfaceKHR(instance, pCreateInfo, pAllocator, pSurface)
  ccall((:vkCreateWin32SurfaceKHR, libvulkan), VkResult, (VkInstance, Ptr{VkWin32SurfaceCreateInfoKHR}, Ptr{VkAllocationCallbacks}, Ptr{VkSurfaceKHR}), instance, pCreateInfo, pAllocator, pSurface)
end
function vkGetPhysicalDeviceWin32PresentationSupportKHR(physicalDevice, queueFamilyIndex)
  ccall((:vkGetPhysicalDeviceWin32PresentationSupportKHR, libvulkan), VkBool32, (VkPhysicalDevice, UInt32), physicalDevice, queueFamilyIndex)
end
const VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION = 1
const VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME = "VK_KHR_sampler_mirror_clamp_to_edge"
@enum(VkDebugReportObjectTypeEXT,
  VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0,
  VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1,
  VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2,
  VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3,
  VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4,
  VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5,
  VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6,
  VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7,
  VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8,
  VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9,
  VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10,
  VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11,
  VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12,
  VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13,
  VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14,
  VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15,
  VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16,
  VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17,
  VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18,
  VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19,
  VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20,
  VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21,
  VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22,
  VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23,
  VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24,
  VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25,
  VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26,
  VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27,
  VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT = 28,
)
@enum(VkDebugReportErrorEXT,
  VK_DEBUG_REPORT_ERROR_NONE_EXT = 0,
  VK_DEBUG_REPORT_ERROR_CALLBACK_REF_EXT = 1,
)
const VK_EXT_DEBUG_REPORT_SPEC_VERSION = 2
const VK_EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report"
const VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT = VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT
@enum(VkDebugReportFlagBitsEXT,
  VK_DEBUG_REPORT_INFORMATION_BIT_EXT = 0x00000001,
  VK_DEBUG_REPORT_WARNING_BIT_EXT = 0x00000002,
  VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 0x00000004,
  VK_DEBUG_REPORT_ERROR_BIT_EXT = 0x00000008,
  VK_DEBUG_REPORT_DEBUG_BIT_EXT = 0x00000010,
)
typealias VkDebugReportFlagsEXT VkFlags
typealias PFN_vkDebugReportCallbackEXT Ptr{Void}
immutable VkDebugReportCallbackCreateInfoEXT
  sType :: VkStructureType
  pNext :: Ptr{Void}
  flags :: VkDebugReportFlagsEXT
  pfnCallback :: PFN_vkDebugReportCallbackEXT
  pUserData :: Ptr{Void}
end

@VK_DEFINE_NON_DISPATCHABLE_HANDLE(VkDebugReportCallbackEXT)
function vkCreateDebugReportCallbackEXT(instance, pCreateInfo, pAllocator, pCallback)
  ccall((:vkCreateDebugReportCallbackEXT, libvulkan), VkResult, (VkInstance, Ptr{VkDebugReportCallbackCreateInfoEXT}, Ptr{VkAllocationCallbacks}, Ptr{VkDebugReportCallbackEXT}), instance, pCreateInfo, pAllocator, pCallback)
end
function vkDestroyDebugReportCallbackEXT(instance, callback, pAllocator)
  ccall((:vkDestroyDebugReportCallbackEXT, libvulkan), Void, (VkInstance, VkDebugReportCallbackEXT, Ptr{VkAllocationCallbacks}), instance, callback, pAllocator)
end
function vkDebugReportMessageEXT(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
  ccall((:vkDebugReportMessageEXT, libvulkan), Void, (VkInstance, VkDebugReportFlagsEXT, VkDebugReportObjectTypeEXT, UInt64, Csize_t, Int32, Ptr{Cchar}, Ptr{Cchar}), instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage)
end
