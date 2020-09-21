# Automatically generated using Clang.jl


const VULKAN_H_ = 1
const VULKAN_CORE_H_ = 1
const VK_VERSION_1_0 = 1

# Skipping MacroDefinition: VK_DEFINE_HANDLE ( object ) typedef struct object ## _T * object ;
# Skipping MacroDefinition: VK_DEFINE_NON_DISPATCHABLE_HANDLE ( object ) typedef struct object ## _T * object ;
# Skipping MacroDefinition: VK_MAKE_VERSION ( major , minor , patch ) ( ( ( ( uint32_t ) ( major ) ) << 22 ) | ( ( ( uint32_t ) ( minor ) ) << 12 ) | ( ( uint32_t ) ( patch ) ) )
# Skipping MacroDefinition: VK_API_VERSION_1_0 VK_MAKE_VERSION ( 1 , 0 , 0 )

const VK_HEADER_VERSION = 151

# Skipping MacroDefinition: VK_HEADER_VERSION_COMPLETE VK_MAKE_VERSION ( 1 , 2 , VK_HEADER_VERSION )
# Skipping MacroDefinition: VK_VERSION_MAJOR ( version ) ( ( uint32_t ) ( version ) >> 22 )
# Skipping MacroDefinition: VK_VERSION_MINOR ( version ) ( ( ( uint32_t ) ( version ) >> 12 ) & 0x3ff )
# Skipping MacroDefinition: VK_VERSION_PATCH ( version ) ( ( uint32_t ) ( version ) & 0xfff )

const VK_NULL_HANDLE = 0
const VK_ATTACHMENT_UNUSED = ~(UInt32(0))
const VK_FALSE = 0
const VK_LOD_CLAMP_NONE = Float32(1000.0)
const VK_QUEUE_FAMILY_IGNORED = ~(UInt32(0))
const VK_REMAINING_ARRAY_LAYERS = ~(UInt32(0))
const VK_REMAINING_MIP_LEVELS = ~(UInt32(0))
const VK_SUBPASS_EXTERNAL = ~(UInt32(0))
const VK_TRUE = 1
const VK_WHOLE_SIZE = ~(UInt64(0))
const VK_MAX_MEMORY_TYPES = 32
const VK_MAX_MEMORY_HEAPS = 16
const VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256
const VK_UUID_SIZE = 16
const VK_MAX_EXTENSION_NAME_SIZE = 256
const VK_MAX_DESCRIPTION_SIZE = 256
const VK_VERSION_1_1 = 1

# Skipping MacroDefinition: VK_API_VERSION_1_1 VK_MAKE_VERSION ( 1 , 1 , 0 )

const VK_MAX_DEVICE_GROUP_SIZE = 32
const VK_LUID_SIZE = 8
const VK_QUEUE_FAMILY_EXTERNAL = ~(UInt32(0)) - 1
const VK_VERSION_1_2 = 1

# Skipping MacroDefinition: VK_API_VERSION_1_2 VK_MAKE_VERSION ( 1 , 2 , 0 )

const VK_MAX_DRIVER_NAME_SIZE = 256
const VK_MAX_DRIVER_INFO_SIZE = 256
const VK_KHR_surface = 1
const VK_KHR_SURFACE_SPEC_VERSION = 25
const VK_KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface"
const VK_KHR_swapchain = 1
const VK_KHR_SWAPCHAIN_SPEC_VERSION = 70
const VK_KHR_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_swapchain"
const VK_KHR_display = 1
const VK_KHR_DISPLAY_SPEC_VERSION = 23
const VK_KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display"
const VK_KHR_display_swapchain = 1
const VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION = 10
const VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_display_swapchain"
const VK_KHR_sampler_mirror_clamp_to_edge = 1
const VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION = 3
const VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME = "VK_KHR_sampler_mirror_clamp_to_edge"
const VK_KHR_multiview = 1
const VK_KHR_MULTIVIEW_SPEC_VERSION = 1
const VK_KHR_MULTIVIEW_EXTENSION_NAME = "VK_KHR_multiview"
const VK_KHR_get_physical_device_properties2 = 1
const VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION = 2
const VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_physical_device_properties2"
const VK_KHR_device_group = 1
const VK_KHR_DEVICE_GROUP_SPEC_VERSION = 4
const VK_KHR_DEVICE_GROUP_EXTENSION_NAME = "VK_KHR_device_group"
const VK_KHR_shader_draw_parameters = 1
const VK_KHR_SHADER_DRAW_PARAMETERS_SPEC_VERSION = 1
const VK_KHR_SHADER_DRAW_PARAMETERS_EXTENSION_NAME = "VK_KHR_shader_draw_parameters"
const VK_KHR_maintenance1 = 1
const VK_KHR_MAINTENANCE1_SPEC_VERSION = 2
const VK_KHR_MAINTENANCE1_EXTENSION_NAME = "VK_KHR_maintenance1"
const VK_KHR_device_group_creation = 1
const VK_KHR_DEVICE_GROUP_CREATION_SPEC_VERSION = 1
const VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME = "VK_KHR_device_group_creation"
const VK_MAX_DEVICE_GROUP_SIZE_KHR = VK_MAX_DEVICE_GROUP_SIZE
const VK_KHR_external_memory_capabilities = 1
const VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_memory_capabilities"
const VK_LUID_SIZE_KHR = VK_LUID_SIZE
const VK_KHR_external_memory = 1
const VK_KHR_EXTERNAL_MEMORY_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_KHR_external_memory"
const VK_QUEUE_FAMILY_EXTERNAL_KHR = VK_QUEUE_FAMILY_EXTERNAL
const VK_KHR_external_memory_fd = 1
const VK_KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME = "VK_KHR_external_memory_fd"
const VK_KHR_external_semaphore_capabilities = 1
const VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_semaphore_capabilities"
const VK_KHR_external_semaphore = 1
const VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME = "VK_KHR_external_semaphore"
const VK_KHR_external_semaphore_fd = 1
const VK_KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME = "VK_KHR_external_semaphore_fd"
const VK_KHR_push_descriptor = 1
const VK_KHR_PUSH_DESCRIPTOR_SPEC_VERSION = 2
const VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME = "VK_KHR_push_descriptor"
const VK_KHR_shader_float16_int8 = 1
const VK_KHR_SHADER_FLOAT16_INT8_SPEC_VERSION = 1
const VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME = "VK_KHR_shader_float16_int8"
const VK_KHR_16bit_storage = 1
const VK_KHR_16BIT_STORAGE_SPEC_VERSION = 1
const VK_KHR_16BIT_STORAGE_EXTENSION_NAME = "VK_KHR_16bit_storage"
const VK_KHR_incremental_present = 1
const VK_KHR_INCREMENTAL_PRESENT_SPEC_VERSION = 1
const VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME = "VK_KHR_incremental_present"
const VK_KHR_descriptor_update_template = 1
const VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION = 1
const VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME = "VK_KHR_descriptor_update_template"
const VK_KHR_imageless_framebuffer = 1
const VK_KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION = 1
const VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME = "VK_KHR_imageless_framebuffer"
const VK_KHR_create_renderpass2 = 1
const VK_KHR_CREATE_RENDERPASS_2_SPEC_VERSION = 1
const VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME = "VK_KHR_create_renderpass2"
const VK_KHR_shared_presentable_image = 1
const VK_KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION = 1
const VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME = "VK_KHR_shared_presentable_image"
const VK_KHR_external_fence_capabilities = 1
const VK_KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_fence_capabilities"
const VK_KHR_external_fence = 1
const VK_KHR_EXTERNAL_FENCE_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME = "VK_KHR_external_fence"
const VK_KHR_external_fence_fd = 1
const VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = "VK_KHR_external_fence_fd"
const VK_KHR_performance_query = 1
const VK_KHR_PERFORMANCE_QUERY_SPEC_VERSION = 1
const VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_KHR_performance_query"
const VK_KHR_maintenance2 = 1
const VK_KHR_MAINTENANCE2_SPEC_VERSION = 1
const VK_KHR_MAINTENANCE2_EXTENSION_NAME = "VK_KHR_maintenance2"
const VK_KHR_get_surface_capabilities2 = 1
const VK_KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION = 1
const VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME = "VK_KHR_get_surface_capabilities2"
const VK_KHR_variable_pointers = 1
const VK_KHR_VARIABLE_POINTERS_SPEC_VERSION = 1
const VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME = "VK_KHR_variable_pointers"
const VK_KHR_get_display_properties2 = 1
const VK_KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION = 1
const VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_display_properties2"
const VK_KHR_dedicated_allocation = 1
const VK_KHR_DEDICATED_ALLOCATION_SPEC_VERSION = 3
const VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_KHR_dedicated_allocation"
const VK_KHR_storage_buffer_storage_class = 1
const VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION = 1
const VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME = "VK_KHR_storage_buffer_storage_class"
const VK_KHR_relaxed_block_layout = 1
const VK_KHR_RELAXED_BLOCK_LAYOUT_SPEC_VERSION = 1
const VK_KHR_RELAXED_BLOCK_LAYOUT_EXTENSION_NAME = "VK_KHR_relaxed_block_layout"
const VK_KHR_get_memory_requirements2 = 1
const VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION = 1
const VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME = "VK_KHR_get_memory_requirements2"
const VK_KHR_image_format_list = 1
const VK_KHR_IMAGE_FORMAT_LIST_SPEC_VERSION = 1
const VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME = "VK_KHR_image_format_list"
const VK_KHR_sampler_ycbcr_conversion = 1
const VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION = 14
const VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME = "VK_KHR_sampler_ycbcr_conversion"
const VK_KHR_bind_memory2 = 1
const VK_KHR_BIND_MEMORY_2_SPEC_VERSION = 1
const VK_KHR_BIND_MEMORY_2_EXTENSION_NAME = "VK_KHR_bind_memory2"
const VK_KHR_maintenance3 = 1
const VK_KHR_MAINTENANCE3_SPEC_VERSION = 1
const VK_KHR_MAINTENANCE3_EXTENSION_NAME = "VK_KHR_maintenance3"
const VK_KHR_draw_indirect_count = 1
const VK_KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION = 1
const VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_KHR_draw_indirect_count"
const VK_KHR_shader_subgroup_extended_types = 1
const VK_KHR_SHADER_SUBGROUP_EXTENDED_TYPES_SPEC_VERSION = 1
const VK_KHR_SHADER_SUBGROUP_EXTENDED_TYPES_EXTENSION_NAME = "VK_KHR_shader_subgroup_extended_types"
const VK_KHR_8bit_storage = 1
const VK_KHR_8BIT_STORAGE_SPEC_VERSION = 1
const VK_KHR_8BIT_STORAGE_EXTENSION_NAME = "VK_KHR_8bit_storage"
const VK_KHR_shader_atomic_int64 = 1
const VK_KHR_SHADER_ATOMIC_INT64_SPEC_VERSION = 1
const VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME = "VK_KHR_shader_atomic_int64"
const VK_KHR_shader_clock = 1
const VK_KHR_SHADER_CLOCK_SPEC_VERSION = 1
const VK_KHR_SHADER_CLOCK_EXTENSION_NAME = "VK_KHR_shader_clock"
const VK_KHR_driver_properties = 1
const VK_KHR_DRIVER_PROPERTIES_SPEC_VERSION = 1
const VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME = "VK_KHR_driver_properties"
const VK_MAX_DRIVER_NAME_SIZE_KHR = VK_MAX_DRIVER_NAME_SIZE
const VK_MAX_DRIVER_INFO_SIZE_KHR = VK_MAX_DRIVER_INFO_SIZE
const VK_KHR_shader_float_controls = 1
const VK_KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION = 4
const VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME = "VK_KHR_shader_float_controls"
const VK_KHR_depth_stencil_resolve = 1
const VK_KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION = 1
const VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME = "VK_KHR_depth_stencil_resolve"
const VK_KHR_swapchain_mutable_format = 1
const VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION = 1
const VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME = "VK_KHR_swapchain_mutable_format"
const VK_KHR_timeline_semaphore = 1
const VK_KHR_TIMELINE_SEMAPHORE_SPEC_VERSION = 2
const VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME = "VK_KHR_timeline_semaphore"
const VK_KHR_vulkan_memory_model = 1
const VK_KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION = 3
const VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME = "VK_KHR_vulkan_memory_model"
const VK_KHR_spirv_1_4 = 1
const VK_KHR_SPIRV_1_4_SPEC_VERSION = 1
const VK_KHR_SPIRV_1_4_EXTENSION_NAME = "VK_KHR_spirv_1_4"
const VK_KHR_surface_protected_capabilities = 1
const VK_KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION = 1
const VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME = "VK_KHR_surface_protected_capabilities"
const VK_KHR_separate_depth_stencil_layouts = 1
const VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION = 1
const VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME = "VK_KHR_separate_depth_stencil_layouts"
const VK_KHR_uniform_buffer_standard_layout = 1
const VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION = 1
const VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME = "VK_KHR_uniform_buffer_standard_layout"
const VK_KHR_buffer_device_address = 1
const VK_KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 1
const VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_KHR_buffer_device_address"
const VK_KHR_pipeline_executable_properties = 1
const VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION = 1
const VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME = "VK_KHR_pipeline_executable_properties"
const VK_KHR_shader_non_semantic_info = 1
const VK_KHR_SHADER_NON_SEMANTIC_INFO_SPEC_VERSION = 1
const VK_KHR_SHADER_NON_SEMANTIC_INFO_EXTENSION_NAME = "VK_KHR_shader_non_semantic_info"
const VK_EXT_debug_report = 1
const VK_EXT_DEBUG_REPORT_SPEC_VERSION = 9
const VK_EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report"
const VK_NV_glsl_shader = 1
const VK_NV_GLSL_SHADER_SPEC_VERSION = 1
const VK_NV_GLSL_SHADER_EXTENSION_NAME = "VK_NV_glsl_shader"
const VK_EXT_depth_range_unrestricted = 1
const VK_EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION = 1
const VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME = "VK_EXT_depth_range_unrestricted"
const VK_IMG_filter_cubic = 1
const VK_IMG_FILTER_CUBIC_SPEC_VERSION = 1
const VK_IMG_FILTER_CUBIC_EXTENSION_NAME = "VK_IMG_filter_cubic"
const VK_AMD_rasterization_order = 1
const VK_AMD_RASTERIZATION_ORDER_SPEC_VERSION = 1
const VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME = "VK_AMD_rasterization_order"
const VK_AMD_shader_trinary_minmax = 1
const VK_AMD_SHADER_TRINARY_MINMAX_SPEC_VERSION = 1
const VK_AMD_SHADER_TRINARY_MINMAX_EXTENSION_NAME = "VK_AMD_shader_trinary_minmax"
const VK_AMD_shader_explicit_vertex_parameter = 1
const VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_SPEC_VERSION = 1
const VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_EXTENSION_NAME = "VK_AMD_shader_explicit_vertex_parameter"
const VK_EXT_debug_marker = 1
const VK_EXT_DEBUG_MARKER_SPEC_VERSION = 4
const VK_EXT_DEBUG_MARKER_EXTENSION_NAME = "VK_EXT_debug_marker"
const VK_AMD_gcn_shader = 1
const VK_AMD_GCN_SHADER_SPEC_VERSION = 1
const VK_AMD_GCN_SHADER_EXTENSION_NAME = "VK_AMD_gcn_shader"
const VK_NV_dedicated_allocation = 1
const VK_NV_DEDICATED_ALLOCATION_SPEC_VERSION = 1
const VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_NV_dedicated_allocation"
const VK_EXT_transform_feedback = 1
const VK_EXT_TRANSFORM_FEEDBACK_SPEC_VERSION = 1
const VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME = "VK_EXT_transform_feedback"
const VK_NVX_image_view_handle = 1
const VK_NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION = 2
const VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME = "VK_NVX_image_view_handle"
const VK_AMD_draw_indirect_count = 1
const VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION = 2
const VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_AMD_draw_indirect_count"
const VK_AMD_negative_viewport_height = 1
const VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION = 1
const VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME = "VK_AMD_negative_viewport_height"
const VK_AMD_gpu_shader_half_float = 1
const VK_AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION = 2
const VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME = "VK_AMD_gpu_shader_half_float"
const VK_AMD_shader_ballot = 1
const VK_AMD_SHADER_BALLOT_SPEC_VERSION = 1
const VK_AMD_SHADER_BALLOT_EXTENSION_NAME = "VK_AMD_shader_ballot"
const VK_AMD_texture_gather_bias_lod = 1
const VK_AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION = 1
const VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME = "VK_AMD_texture_gather_bias_lod"
const VK_AMD_shader_info = 1
const VK_AMD_SHADER_INFO_SPEC_VERSION = 1
const VK_AMD_SHADER_INFO_EXTENSION_NAME = "VK_AMD_shader_info"
const VK_AMD_shader_image_load_store_lod = 1
const VK_AMD_SHADER_IMAGE_LOAD_STORE_LOD_SPEC_VERSION = 1
const VK_AMD_SHADER_IMAGE_LOAD_STORE_LOD_EXTENSION_NAME = "VK_AMD_shader_image_load_store_lod"
const VK_NV_corner_sampled_image = 1
const VK_NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION = 2
const VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME = "VK_NV_corner_sampled_image"
const VK_IMG_format_pvrtc = 1
const VK_IMG_FORMAT_PVRTC_SPEC_VERSION = 1
const VK_IMG_FORMAT_PVRTC_EXTENSION_NAME = "VK_IMG_format_pvrtc"
const VK_NV_external_memory_capabilities = 1
const VK_NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1
const VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_NV_external_memory_capabilities"
const VK_NV_external_memory = 1
const VK_NV_EXTERNAL_MEMORY_SPEC_VERSION = 1
const VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_NV_external_memory"
const VK_EXT_validation_flags = 1
const VK_EXT_VALIDATION_FLAGS_SPEC_VERSION = 2
const VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME = "VK_EXT_validation_flags"
const VK_EXT_shader_subgroup_ballot = 1
const VK_EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION = 1
const VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME = "VK_EXT_shader_subgroup_ballot"
const VK_EXT_shader_subgroup_vote = 1
const VK_EXT_SHADER_SUBGROUP_VOTE_SPEC_VERSION = 1
const VK_EXT_SHADER_SUBGROUP_VOTE_EXTENSION_NAME = "VK_EXT_shader_subgroup_vote"
const VK_EXT_texture_compression_astc_hdr = 1
const VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION = 1
const VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME = "VK_EXT_texture_compression_astc_hdr"
const VK_EXT_astc_decode_mode = 1
const VK_EXT_ASTC_DECODE_MODE_SPEC_VERSION = 1
const VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME = "VK_EXT_astc_decode_mode"
const VK_EXT_conditional_rendering = 1
const VK_EXT_CONDITIONAL_RENDERING_SPEC_VERSION = 2
const VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME = "VK_EXT_conditional_rendering"
const VK_NV_clip_space_w_scaling = 1
const VK_NV_CLIP_SPACE_W_SCALING_SPEC_VERSION = 1
const VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME = "VK_NV_clip_space_w_scaling"
const VK_EXT_direct_mode_display = 1
const VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION = 1
const VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME = "VK_EXT_direct_mode_display"
const VK_EXT_display_surface_counter = 1
const VK_EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION = 1
const VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME = "VK_EXT_display_surface_counter"
const VK_EXT_display_control = 1
const VK_EXT_DISPLAY_CONTROL_SPEC_VERSION = 1
const VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME = "VK_EXT_display_control"
const VK_GOOGLE_display_timing = 1
const VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION = 1
const VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME = "VK_GOOGLE_display_timing"
const VK_NV_sample_mask_override_coverage = 1
const VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION = 1
const VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME = "VK_NV_sample_mask_override_coverage"
const VK_NV_geometry_shader_passthrough = 1
const VK_NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION = 1
const VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME = "VK_NV_geometry_shader_passthrough"
const VK_NV_viewport_array2 = 1
const VK_NV_VIEWPORT_ARRAY2_SPEC_VERSION = 1
const VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME = "VK_NV_viewport_array2"
const VK_NVX_multiview_per_view_attributes = 1
const VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_SPEC_VERSION = 1
const VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_EXTENSION_NAME = "VK_NVX_multiview_per_view_attributes"
const VK_NV_viewport_swizzle = 1
const VK_NV_VIEWPORT_SWIZZLE_SPEC_VERSION = 1
const VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME = "VK_NV_viewport_swizzle"
const VK_EXT_discard_rectangles = 1
const VK_EXT_DISCARD_RECTANGLES_SPEC_VERSION = 1
const VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME = "VK_EXT_discard_rectangles"
const VK_EXT_conservative_rasterization = 1
const VK_EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION = 1
const VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_conservative_rasterization"
const VK_EXT_depth_clip_enable = 1
const VK_EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION = 1
const VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME = "VK_EXT_depth_clip_enable"
const VK_EXT_swapchain_colorspace = 1
const VK_EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION = 4
const VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME = "VK_EXT_swapchain_colorspace"
const VK_EXT_hdr_metadata = 1
const VK_EXT_HDR_METADATA_SPEC_VERSION = 2
const VK_EXT_HDR_METADATA_EXTENSION_NAME = "VK_EXT_hdr_metadata"
const VK_EXT_external_memory_dma_buf = 1
const VK_EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION = 1
const VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME = "VK_EXT_external_memory_dma_buf"
const VK_EXT_queue_family_foreign = 1
const VK_EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION = 1
const VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME = "VK_EXT_queue_family_foreign"
const VK_QUEUE_FAMILY_FOREIGN_EXT = ~(UInt32(0)) - 2
const VK_EXT_debug_utils = 1
const VK_EXT_DEBUG_UTILS_SPEC_VERSION = 2
const VK_EXT_DEBUG_UTILS_EXTENSION_NAME = "VK_EXT_debug_utils"
const VK_EXT_sampler_filter_minmax = 1
const VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION = 2
const VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME = "VK_EXT_sampler_filter_minmax"
const VK_AMD_gpu_shader_int16 = 1
const VK_AMD_GPU_SHADER_INT16_SPEC_VERSION = 2
const VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME = "VK_AMD_gpu_shader_int16"
const VK_AMD_mixed_attachment_samples = 1
const VK_AMD_MIXED_ATTACHMENT_SAMPLES_SPEC_VERSION = 1
const VK_AMD_MIXED_ATTACHMENT_SAMPLES_EXTENSION_NAME = "VK_AMD_mixed_attachment_samples"
const VK_AMD_shader_fragment_mask = 1
const VK_AMD_SHADER_FRAGMENT_MASK_SPEC_VERSION = 1
const VK_AMD_SHADER_FRAGMENT_MASK_EXTENSION_NAME = "VK_AMD_shader_fragment_mask"
const VK_EXT_inline_uniform_block = 1
const VK_EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION = 1
const VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME = "VK_EXT_inline_uniform_block"
const VK_EXT_shader_stencil_export = 1
const VK_EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION = 1
const VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME = "VK_EXT_shader_stencil_export"
const VK_EXT_sample_locations = 1
const VK_EXT_SAMPLE_LOCATIONS_SPEC_VERSION = 1
const VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME = "VK_EXT_sample_locations"
const VK_EXT_blend_operation_advanced = 1
const VK_EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION = 2
const VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME = "VK_EXT_blend_operation_advanced"
const VK_NV_fragment_coverage_to_color = 1
const VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION = 1
const VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME = "VK_NV_fragment_coverage_to_color"
const VK_NV_framebuffer_mixed_samples = 1
const VK_NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION = 1
const VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME = "VK_NV_framebuffer_mixed_samples"
const VK_NV_fill_rectangle = 1
const VK_NV_FILL_RECTANGLE_SPEC_VERSION = 1
const VK_NV_FILL_RECTANGLE_EXTENSION_NAME = "VK_NV_fill_rectangle"
const VK_NV_shader_sm_builtins = 1
const VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION = 1
const VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME = "VK_NV_shader_sm_builtins"
const VK_EXT_post_depth_coverage = 1
const VK_EXT_POST_DEPTH_COVERAGE_SPEC_VERSION = 1
const VK_EXT_POST_DEPTH_COVERAGE_EXTENSION_NAME = "VK_EXT_post_depth_coverage"
const VK_EXT_image_drm_format_modifier = 1
const VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION = 1
const VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME = "VK_EXT_image_drm_format_modifier"
const VK_EXT_validation_cache = 1
const VK_EXT_VALIDATION_CACHE_SPEC_VERSION = 1
const VK_EXT_VALIDATION_CACHE_EXTENSION_NAME = "VK_EXT_validation_cache"
const VK_EXT_descriptor_indexing = 1
const VK_EXT_DESCRIPTOR_INDEXING_SPEC_VERSION = 2
const VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME = "VK_EXT_descriptor_indexing"
const VK_EXT_shader_viewport_index_layer = 1
const VK_EXT_SHADER_VIEWPORT_INDEX_LAYER_SPEC_VERSION = 1
const VK_EXT_SHADER_VIEWPORT_INDEX_LAYER_EXTENSION_NAME = "VK_EXT_shader_viewport_index_layer"
const VK_NV_shading_rate_image = 1
const VK_NV_SHADING_RATE_IMAGE_SPEC_VERSION = 3
const VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME = "VK_NV_shading_rate_image"
const VK_NV_ray_tracing = 1
const VK_NV_RAY_TRACING_SPEC_VERSION = 3
const VK_NV_RAY_TRACING_EXTENSION_NAME = "VK_NV_ray_tracing"
const VK_SHADER_UNUSED_KHR = ~(UInt32(0))
const VK_SHADER_UNUSED_NV = VK_SHADER_UNUSED_KHR
const VK_NV_representative_fragment_test = 1
const VK_NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION = 2
const VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME = "VK_NV_representative_fragment_test"
const VK_EXT_filter_cubic = 1
const VK_EXT_FILTER_CUBIC_SPEC_VERSION = 3
const VK_EXT_FILTER_CUBIC_EXTENSION_NAME = "VK_EXT_filter_cubic"
const VK_QCOM_render_pass_shader_resolve = 1
const VK_QCOM_RENDER_PASS_SHADER_RESOLVE_SPEC_VERSION = 4
const VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME = "VK_QCOM_render_pass_shader_resolve"
const VK_EXT_global_priority = 1
const VK_EXT_GLOBAL_PRIORITY_SPEC_VERSION = 2
const VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME = "VK_EXT_global_priority"
const VK_EXT_external_memory_host = 1
const VK_EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION = 1
const VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME = "VK_EXT_external_memory_host"
const VK_AMD_buffer_marker = 1
const VK_AMD_BUFFER_MARKER_SPEC_VERSION = 1
const VK_AMD_BUFFER_MARKER_EXTENSION_NAME = "VK_AMD_buffer_marker"
const VK_AMD_pipeline_compiler_control = 1
const VK_AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION = 1
const VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME = "VK_AMD_pipeline_compiler_control"
const VK_EXT_calibrated_timestamps = 1
const VK_EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION = 1
const VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME = "VK_EXT_calibrated_timestamps"
const VK_AMD_shader_core_properties = 1
const VK_AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION = 2
const VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME = "VK_AMD_shader_core_properties"
const VK_AMD_memory_overallocation_behavior = 1
const VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION = 1
const VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME = "VK_AMD_memory_overallocation_behavior"
const VK_EXT_vertex_attribute_divisor = 1
const VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION = 3
const VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME = "VK_EXT_vertex_attribute_divisor"
const VK_EXT_pipeline_creation_feedback = 1
const VK_EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION = 1
const VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME = "VK_EXT_pipeline_creation_feedback"
const VK_NV_shader_subgroup_partitioned = 1
const VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION = 1
const VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME = "VK_NV_shader_subgroup_partitioned"
const VK_NV_compute_shader_derivatives = 1
const VK_NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION = 1
const VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME = "VK_NV_compute_shader_derivatives"
const VK_NV_mesh_shader = 1
const VK_NV_MESH_SHADER_SPEC_VERSION = 1
const VK_NV_MESH_SHADER_EXTENSION_NAME = "VK_NV_mesh_shader"
const VK_NV_fragment_shader_barycentric = 1
const VK_NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION = 1
const VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME = "VK_NV_fragment_shader_barycentric"
const VK_NV_shader_image_footprint = 1
const VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION = 2
const VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME = "VK_NV_shader_image_footprint"
const VK_NV_scissor_exclusive = 1
const VK_NV_SCISSOR_EXCLUSIVE_SPEC_VERSION = 1
const VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME = "VK_NV_scissor_exclusive"
const VK_NV_device_diagnostic_checkpoints = 1
const VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION = 2
const VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME = "VK_NV_device_diagnostic_checkpoints"
const VK_INTEL_shader_integer_functions2 = 1
const VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION = 1
const VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME = "VK_INTEL_shader_integer_functions2"
const VK_INTEL_performance_query = 1
const VK_INTEL_PERFORMANCE_QUERY_SPEC_VERSION = 2
const VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_INTEL_performance_query"
const VK_EXT_pci_bus_info = 1
const VK_EXT_PCI_BUS_INFO_SPEC_VERSION = 2
const VK_EXT_PCI_BUS_INFO_EXTENSION_NAME = "VK_EXT_pci_bus_info"
const VK_AMD_display_native_hdr = 1
const VK_AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION = 1
const VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME = "VK_AMD_display_native_hdr"
const VK_EXT_fragment_density_map = 1
const VK_EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION = 1
const VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME = "VK_EXT_fragment_density_map"
const VK_EXT_scalar_block_layout = 1
const VK_EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION = 1
const VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME = "VK_EXT_scalar_block_layout"
const VK_GOOGLE_hlsl_functionality1 = 1
const VK_GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION = 1
const VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME = "VK_GOOGLE_hlsl_functionality1"
const VK_GOOGLE_decorate_string = 1
const VK_GOOGLE_DECORATE_STRING_SPEC_VERSION = 1
const VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME = "VK_GOOGLE_decorate_string"
const VK_EXT_subgroup_size_control = 1
const VK_EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION = 2
const VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME = "VK_EXT_subgroup_size_control"
const VK_AMD_shader_core_properties2 = 1
const VK_AMD_SHADER_CORE_PROPERTIES_2_SPEC_VERSION = 1
const VK_AMD_SHADER_CORE_PROPERTIES_2_EXTENSION_NAME = "VK_AMD_shader_core_properties2"
const VK_AMD_device_coherent_memory = 1
const VK_AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION = 1
const VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME = "VK_AMD_device_coherent_memory"
const VK_EXT_memory_budget = 1
const VK_EXT_MEMORY_BUDGET_SPEC_VERSION = 1
const VK_EXT_MEMORY_BUDGET_EXTENSION_NAME = "VK_EXT_memory_budget"
const VK_EXT_memory_priority = 1
const VK_EXT_MEMORY_PRIORITY_SPEC_VERSION = 1
const VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME = "VK_EXT_memory_priority"
const VK_NV_dedicated_allocation_image_aliasing = 1
const VK_NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_SPEC_VERSION = 1
const VK_NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_EXTENSION_NAME = "VK_NV_dedicated_allocation_image_aliasing"
const VK_EXT_buffer_device_address = 1
const VK_EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 2
const VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_EXT_buffer_device_address"
const VK_EXT_tooling_info = 1
const VK_EXT_TOOLING_INFO_SPEC_VERSION = 1
const VK_EXT_TOOLING_INFO_EXTENSION_NAME = "VK_EXT_tooling_info"
const VK_EXT_separate_stencil_usage = 1
const VK_EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION = 1
const VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME = "VK_EXT_separate_stencil_usage"
const VK_EXT_validation_features = 1
const VK_EXT_VALIDATION_FEATURES_SPEC_VERSION = 4
const VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME = "VK_EXT_validation_features"
const VK_NV_cooperative_matrix = 1
const VK_NV_COOPERATIVE_MATRIX_SPEC_VERSION = 1
const VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME = "VK_NV_cooperative_matrix"
const VK_NV_coverage_reduction_mode = 1
const VK_NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION = 1
const VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME = "VK_NV_coverage_reduction_mode"
const VK_EXT_fragment_shader_interlock = 1
const VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION = 1
const VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME = "VK_EXT_fragment_shader_interlock"
const VK_EXT_ycbcr_image_arrays = 1
const VK_EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION = 1
const VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME = "VK_EXT_ycbcr_image_arrays"
const VK_EXT_headless_surface = 1
const VK_EXT_HEADLESS_SURFACE_SPEC_VERSION = 1
const VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME = "VK_EXT_headless_surface"
const VK_EXT_line_rasterization = 1
const VK_EXT_LINE_RASTERIZATION_SPEC_VERSION = 1
const VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_line_rasterization"
const VK_EXT_shader_atomic_float = 1
const VK_EXT_SHADER_ATOMIC_FLOAT_SPEC_VERSION = 1
const VK_EXT_SHADER_ATOMIC_FLOAT_EXTENSION_NAME = "VK_EXT_shader_atomic_float"
const VK_EXT_host_query_reset = 1
const VK_EXT_HOST_QUERY_RESET_SPEC_VERSION = 1
const VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME = "VK_EXT_host_query_reset"
const VK_EXT_index_type_uint8 = 1
const VK_EXT_INDEX_TYPE_UINT8_SPEC_VERSION = 1
const VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME = "VK_EXT_index_type_uint8"
const VK_EXT_extended_dynamic_state = 1
const VK_EXT_EXTENDED_DYNAMIC_STATE_SPEC_VERSION = 1
const VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME = "VK_EXT_extended_dynamic_state"
const VK_EXT_shader_demote_to_helper_invocation = 1
const VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION = 1
const VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME = "VK_EXT_shader_demote_to_helper_invocation"
const VK_NV_device_generated_commands = 1
const VK_NV_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3
const VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME = "VK_NV_device_generated_commands"
const VK_EXT_texel_buffer_alignment = 1
const VK_EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION = 1
const VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME = "VK_EXT_texel_buffer_alignment"
const VK_QCOM_render_pass_transform = 1
const VK_QCOM_RENDER_PASS_TRANSFORM_SPEC_VERSION = 1
const VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME = "VK_QCOM_render_pass_transform"
const VK_EXT_robustness2 = 1
const VK_EXT_ROBUSTNESS_2_SPEC_VERSION = 1
const VK_EXT_ROBUSTNESS_2_EXTENSION_NAME = "VK_EXT_robustness2"
const VK_EXT_custom_border_color = 1
const VK_EXT_CUSTOM_BORDER_COLOR_SPEC_VERSION = 12
const VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME = "VK_EXT_custom_border_color"
const VK_GOOGLE_user_type = 1
const VK_GOOGLE_USER_TYPE_SPEC_VERSION = 1
const VK_GOOGLE_USER_TYPE_EXTENSION_NAME = "VK_GOOGLE_user_type"
const VK_EXT_private_data = 1
const VK_EXT_PRIVATE_DATA_SPEC_VERSION = 1
const VK_EXT_PRIVATE_DATA_EXTENSION_NAME = "VK_EXT_private_data"
const VK_EXT_pipeline_creation_cache_control = 1
const VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_SPEC_VERSION = 3
const VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME = "VK_EXT_pipeline_creation_cache_control"
const VK_NV_device_diagnostics_config = 1
const VK_NV_DEVICE_DIAGNOSTICS_CONFIG_SPEC_VERSION = 1
const VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME = "VK_NV_device_diagnostics_config"
const VK_QCOM_render_pass_store_ops = 1
const VK_QCOM_render_pass_store_ops_SPEC_VERSION = 2
const VK_QCOM_render_pass_store_ops_EXTENSION_NAME = "VK_QCOM_render_pass_store_ops"
const VK_EXT_fragment_density_map2 = 1
const VK_EXT_FRAGMENT_DENSITY_MAP_2_SPEC_VERSION = 1
const VK_EXT_FRAGMENT_DENSITY_MAP_2_EXTENSION_NAME = "VK_EXT_fragment_density_map2"
const VK_EXT_image_robustness = 1
const VK_EXT_IMAGE_ROBUSTNESS_SPEC_VERSION = 1
const VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME = "VK_EXT_image_robustness"
const VK_EXT_4444_formats = 1
const VK_EXT_4444_FORMATS_SPEC_VERSION = 1
const VK_EXT_4444_FORMATS_EXTENSION_NAME = "VK_EXT_4444_formats"
const VULKAN_ANDROID_H_ = 1
const VK_KHR_android_surface = 1
const VK_KHR_ANDROID_SURFACE_SPEC_VERSION = 6
const VK_KHR_ANDROID_SURFACE_EXTENSION_NAME = "VK_KHR_android_surface"
const VK_ANDROID_external_memory_android_hardware_buffer = 1
const VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_SPEC_VERSION = 3
const VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_EXTENSION_NAME = "VK_ANDROID_external_memory_android_hardware_buffer"
const VULKAN_FUCHSIA_H_ = 1
const VK_FUCHSIA_imagepipe_surface = 1
const VK_FUCHSIA_IMAGEPIPE_SURFACE_SPEC_VERSION = 1
const VK_FUCHSIA_IMAGEPIPE_SURFACE_EXTENSION_NAME = "VK_FUCHSIA_imagepipe_surface"
const VULKAN_IOS_H_ = 1
const VK_MVK_ios_surface = 1
const VK_MVK_IOS_SURFACE_SPEC_VERSION = 3
const VK_MVK_IOS_SURFACE_EXTENSION_NAME = "VK_MVK_ios_surface"
const VULKAN_MACOS_H_ = 1
const VK_MVK_macos_surface = 1
const VK_MVK_MACOS_SURFACE_SPEC_VERSION = 3
const VK_MVK_MACOS_SURFACE_EXTENSION_NAME = "VK_MVK_macos_surface"
const VULKAN_METAL_H_ = 1
const VK_EXT_metal_surface = 1
const VK_EXT_METAL_SURFACE_SPEC_VERSION = 1
const VK_EXT_METAL_SURFACE_EXTENSION_NAME = "VK_EXT_metal_surface"
const VULKAN_VI_H_ = 1
const VK_NN_vi_surface = 1
const VK_NN_VI_SURFACE_SPEC_VERSION = 1
const VK_NN_VI_SURFACE_EXTENSION_NAME = "VK_NN_vi_surface"
const VULKAN_WAYLAND_H_ = 1
const VK_KHR_wayland_surface = 1
const VK_KHR_WAYLAND_SURFACE_SPEC_VERSION = 6
const VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME = "VK_KHR_wayland_surface"
const VULKAN_WIN32_H_ = 1
const VK_KHR_win32_surface = 1
const VK_KHR_WIN32_SURFACE_SPEC_VERSION = 6
const VK_KHR_WIN32_SURFACE_EXTENSION_NAME = "VK_KHR_win32_surface"
const VK_KHR_external_memory_win32 = 1
const VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME = "VK_KHR_external_memory_win32"
const VK_KHR_win32_keyed_mutex = 1
const VK_KHR_WIN32_KEYED_MUTEX_SPEC_VERSION = 1
const VK_KHR_WIN32_KEYED_MUTEX_EXTENSION_NAME = "VK_KHR_win32_keyed_mutex"
const VK_KHR_external_semaphore_win32 = 1
const VK_KHR_EXTERNAL_SEMAPHORE_WIN32_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME = "VK_KHR_external_semaphore_win32"
const VK_KHR_external_fence_win32 = 1
const VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION = 1
const VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME = "VK_KHR_external_fence_win32"
const VK_NV_external_memory_win32 = 1
const VK_NV_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1
const VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME = "VK_NV_external_memory_win32"
const VK_NV_win32_keyed_mutex = 1
const VK_NV_WIN32_KEYED_MUTEX_SPEC_VERSION = 2
const VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME = "VK_NV_win32_keyed_mutex"
const VK_EXT_full_screen_exclusive = 1
const VK_EXT_FULL_SCREEN_EXCLUSIVE_SPEC_VERSION = 4
const VK_EXT_FULL_SCREEN_EXCLUSIVE_EXTENSION_NAME = "VK_EXT_full_screen_exclusive"
const VULKAN_XCB_H_ = 1
const VK_KHR_xcb_surface = 1
const VK_KHR_XCB_SURFACE_SPEC_VERSION = 6
const VK_KHR_XCB_SURFACE_EXTENSION_NAME = "VK_KHR_xcb_surface"
const VULKAN_XLIB_H_ = 1
const VK_KHR_xlib_surface = 1
const VK_KHR_XLIB_SURFACE_SPEC_VERSION = 6
const VK_KHR_XLIB_SURFACE_EXTENSION_NAME = "VK_KHR_xlib_surface"
const VULKAN_XLIB_XRANDR_H_ = 1
const VK_EXT_acquire_xlib_display = 1
const VK_EXT_ACQUIRE_XLIB_DISPLAY_SPEC_VERSION = 1
const VK_EXT_ACQUIRE_XLIB_DISPLAY_EXTENSION_NAME = "VK_EXT_acquire_xlib_display"
const VULKAN_GGP_H_ = 1
const VK_GGP_stream_descriptor_surface = 1
const VK_GGP_STREAM_DESCRIPTOR_SURFACE_SPEC_VERSION = 1
const VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME = "VK_GGP_stream_descriptor_surface"
const VK_GGP_frame_token = 1
const VK_GGP_FRAME_TOKEN_SPEC_VERSION = 1
const VK_GGP_FRAME_TOKEN_EXTENSION_NAME = "VK_GGP_frame_token"
const VULKAN_BETA_H_ = 1
const VK_KHR_deferred_host_operations = 1
const VK_KHR_DEFERRED_HOST_OPERATIONS_SPEC_VERSION = 3
const VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME = "VK_KHR_deferred_host_operations"
const VK_KHR_pipeline_library = 1
const VK_KHR_PIPELINE_LIBRARY_SPEC_VERSION = 1
const VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME = "VK_KHR_pipeline_library"
const VK_KHR_ray_tracing = 1
const VK_KHR_RAY_TRACING_SPEC_VERSION = 8
const VK_KHR_RAY_TRACING_EXTENSION_NAME = "VK_KHR_ray_tracing"
const VkBool32 = UInt32
const VkDeviceAddress = UInt64
const VkDeviceSize = UInt64
const VkFlags = UInt32
const VkSampleMask = UInt32
const VkBuffer_T = Cvoid
const VkBuffer = Ptr{VkBuffer_T}
const VkImage_T = Cvoid
const VkImage = Ptr{VkImage_T}
const VkInstance_T = Cvoid
const VkInstance = Ptr{VkInstance_T}
const VkPhysicalDevice_T = Cvoid
const VkPhysicalDevice = Ptr{VkPhysicalDevice_T}
const VkDevice_T = Cvoid
const VkDevice = Ptr{VkDevice_T}
const VkQueue_T = Cvoid
const VkQueue = Ptr{VkQueue_T}
const VkSemaphore_T = Cvoid
const VkSemaphore = Ptr{VkSemaphore_T}
const VkCommandBuffer_T = Cvoid
const VkCommandBuffer = Ptr{VkCommandBuffer_T}
const VkFence_T = Cvoid
const VkFence = Ptr{VkFence_T}
const VkDeviceMemory_T = Cvoid
const VkDeviceMemory = Ptr{VkDeviceMemory_T}
const VkEvent_T = Cvoid
const VkEvent = Ptr{VkEvent_T}
const VkQueryPool_T = Cvoid
const VkQueryPool = Ptr{VkQueryPool_T}
const VkBufferView_T = Cvoid
const VkBufferView = Ptr{VkBufferView_T}
const VkImageView_T = Cvoid
const VkImageView = Ptr{VkImageView_T}
const VkShaderModule_T = Cvoid
const VkShaderModule = Ptr{VkShaderModule_T}
const VkPipelineCache_T = Cvoid
const VkPipelineCache = Ptr{VkPipelineCache_T}
const VkPipelineLayout_T = Cvoid
const VkPipelineLayout = Ptr{VkPipelineLayout_T}
const VkPipeline_T = Cvoid
const VkPipeline = Ptr{VkPipeline_T}
const VkRenderPass_T = Cvoid
const VkRenderPass = Ptr{VkRenderPass_T}
const VkDescriptorSetLayout_T = Cvoid
const VkDescriptorSetLayout = Ptr{VkDescriptorSetLayout_T}
const VkSampler_T = Cvoid
const VkSampler = Ptr{VkSampler_T}
const VkDescriptorSet_T = Cvoid
const VkDescriptorSet = Ptr{VkDescriptorSet_T}
const VkDescriptorPool_T = Cvoid
const VkDescriptorPool = Ptr{VkDescriptorPool_T}
const VkFramebuffer_T = Cvoid
const VkFramebuffer = Ptr{VkFramebuffer_T}
const VkCommandPool_T = Cvoid
const VkCommandPool = Ptr{VkCommandPool_T}

@cenum VkResult::Int32 begin
    VK_SUCCESS = 0
    VK_NOT_READY = 1
    VK_TIMEOUT = 2
    VK_EVENT_SET = 3
    VK_EVENT_RESET = 4
    VK_INCOMPLETE = 5
    VK_ERROR_OUT_OF_HOST_MEMORY = -1
    VK_ERROR_OUT_OF_DEVICE_MEMORY = -2
    VK_ERROR_INITIALIZATION_FAILED = -3
    VK_ERROR_DEVICE_LOST = -4
    VK_ERROR_MEMORY_MAP_FAILED = -5
    VK_ERROR_LAYER_NOT_PRESENT = -6
    VK_ERROR_EXTENSION_NOT_PRESENT = -7
    VK_ERROR_FEATURE_NOT_PRESENT = -8
    VK_ERROR_INCOMPATIBLE_DRIVER = -9
    VK_ERROR_TOO_MANY_OBJECTS = -10
    VK_ERROR_FORMAT_NOT_SUPPORTED = -11
    VK_ERROR_FRAGMENTED_POOL = -12
    VK_ERROR_UNKNOWN = -13
    VK_ERROR_OUT_OF_POOL_MEMORY = -1000069000
    VK_ERROR_INVALID_EXTERNAL_HANDLE = -1000072003
    VK_ERROR_FRAGMENTATION = -1000161000
    VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS = -1000257000
    VK_ERROR_SURFACE_LOST_KHR = -1000000000
    VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001
    VK_SUBOPTIMAL_KHR = 1000001003
    VK_ERROR_OUT_OF_DATE_KHR = -1000001004
    VK_ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001
    VK_ERROR_VALIDATION_FAILED_EXT = -1000011001
    VK_ERROR_INVALID_SHADER_NV = -1000012000
    VK_ERROR_INCOMPATIBLE_VERSION_KHR = -1000150000
    VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000
    VK_ERROR_NOT_PERMITTED_EXT = -1000174001
    VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000
    VK_THREAD_IDLE_KHR = 1000268000
    VK_THREAD_DONE_KHR = 1000268001
    VK_OPERATION_DEFERRED_KHR = 1000268002
    VK_OPERATION_NOT_DEFERRED_KHR = 1000268003
    VK_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
    VK_ERROR_OUT_OF_POOL_MEMORY_KHR = -1000069000
    VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR = -1000072003
    VK_ERROR_FRAGMENTATION_EXT = -1000161000
    VK_ERROR_INVALID_DEVICE_ADDRESS_EXT = -1000257000
    VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR = -1000257000
    VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
    VK_RESULT_MAX_ENUM = 2147483647
end

@cenum VkStructureType::UInt32 begin
    VK_STRUCTURE_TYPE_APPLICATION_INFO = 0
    VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1
    VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 2
    VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO = 3
    VK_STRUCTURE_TYPE_SUBMIT_INFO = 4
    VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = 5
    VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = 6
    VK_STRUCTURE_TYPE_BIND_SPARSE_INFO = 7
    VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = 8
    VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = 9
    VK_STRUCTURE_TYPE_EVENT_CREATE_INFO = 10
    VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO = 11
    VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO = 12
    VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO = 13
    VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO = 14
    VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO = 15
    VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO = 16
    VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = 17
    VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO = 18
    VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO = 19
    VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO = 20
    VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO = 21
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO = 22
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO = 23
    VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO = 24
    VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO = 25
    VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO = 26
    VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO = 27
    VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO = 28
    VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO = 29
    VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO = 30
    VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO = 31
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32
    VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = 33
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = 34
    VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = 35
    VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = 36
    VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO = 37
    VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = 38
    VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = 39
    VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = 40
    VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO = 41
    VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = 42
    VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO = 43
    VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER = 44
    VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = 45
    VK_STRUCTURE_TYPE_MEMORY_BARRIER = 46
    VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO = 47
    VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO = 48
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES = 1000094000
    VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO = 1000157000
    VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO = 1000157001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES = 1000083000
    VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS = 1000127000
    VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO = 1000127001
    VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO = 1000060000
    VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO = 1000060003
    VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO = 1000060004
    VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO = 1000060005
    VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO = 1000060006
    VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO = 1000060013
    VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO = 1000060014
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES = 1000070000
    VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO = 1000070001
    VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2 = 1000146000
    VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2 = 1000146001
    VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2 = 1000146002
    VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2 = 1000146003
    VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2 = 1000146004
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2 = 1000059000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2 = 1000059001
    VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2 = 1000059002
    VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2 = 1000059003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2 = 1000059004
    VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2 = 1000059005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2 = 1000059006
    VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2 = 1000059007
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2 = 1000059008
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES = 1000117000
    VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO = 1000117001
    VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO = 1000117002
    VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO = 1000117003
    VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO = 1000053000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES = 1000053001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES = 1000053002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES = 1000120000
    VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO = 1000145000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES = 1000145001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES = 1000145002
    VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2 = 1000145003
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO = 1000156000
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO = 1000156001
    VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO = 1000156002
    VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO = 1000156003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES = 1000156004
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES = 1000156005
    VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO = 1000085000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO = 1000071000
    VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES = 1000071001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO = 1000071002
    VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES = 1000071003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES = 1000071004
    VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO = 1000072000
    VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO = 1000072001
    VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO = 1000072002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO = 1000112000
    VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES = 1000112001
    VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO = 1000113000
    VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO = 1000077000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO = 1000076000
    VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES = 1000076001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES = 1000168000
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT = 1000168001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES = 1000063000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES = 49
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES = 50
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES = 51
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES = 52
    VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO = 1000147000
    VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2 = 1000109000
    VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2 = 1000109001
    VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2 = 1000109002
    VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2 = 1000109003
    VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2 = 1000109004
    VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO = 1000109005
    VK_STRUCTURE_TYPE_SUBPASS_END_INFO = 1000109006
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES = 1000177000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES = 1000196000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES = 1000180000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES = 1000082000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES = 1000197000
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO = 1000161000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES = 1000161001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES = 1000161002
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO = 1000161003
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT = 1000161004
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES = 1000199000
    VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE = 1000199001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES = 1000221000
    VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO = 1000246000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES = 1000130000
    VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO = 1000130001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES = 1000211000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES = 1000108000
    VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO = 1000108001
    VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO = 1000108002
    VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO = 1000108003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES = 1000253000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES = 1000175000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES = 1000241000
    VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT = 1000241001
    VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT = 1000241002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES = 1000261000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES = 1000207000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES = 1000207001
    VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO = 1000207002
    VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO = 1000207003
    VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO = 1000207004
    VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO = 1000207005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES = 1000257000
    VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO = 1000244001
    VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO = 1000257002
    VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO = 1000257003
    VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO = 1000257004
    VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR = 1000001000
    VK_STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001001
    VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR = 1000060007
    VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR = 1000060008
    VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000060009
    VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000060010
    VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR = 1000060011
    VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000060012
    VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR = 1000002000
    VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001
    VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR = 1000003000
    VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = 1000004000
    VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = 1000005000
    VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR = 1000006000
    VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR = 1000008000
    VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR = 1000009000
    VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD = 1000018000
    VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT = 1000022000
    VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT = 1000022001
    VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT = 1000022002
    VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV = 1000026000
    VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV = 1000026001
    VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV = 1000026002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT = 1000028000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT = 1000028001
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT = 1000028002
    VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX = 1000030000
    VK_STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX = 1000030001
    VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD = 1000041000
    VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP = 1000049000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV = 1000050000
    VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV = 1000056000
    VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV = 1000056001
    VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057000
    VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057001
    VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV = 1000058000
    VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT = 1000061000
    VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN = 1000062000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT = 1000066000
    VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT = 1000067000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT = 1000067001
    VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073000
    VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073001
    VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR = 1000073002
    VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR = 1000073003
    VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR = 1000074000
    VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR = 1000074001
    VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR = 1000074002
    VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR = 1000075000
    VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078000
    VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078001
    VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR = 1000078002
    VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR = 1000078003
    VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR = 1000079000
    VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR = 1000079001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR = 1000080000
    VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT = 1000081000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT = 1000081001
    VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT = 1000081002
    VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR = 1000084000
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV = 1000087000
    VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT = 1000090000
    VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT = 1000091000
    VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT = 1000091001
    VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT = 1000091002
    VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT = 1000091003
    VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE = 1000092000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX = 1000097000
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV = 1000098000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT = 1000099000
    VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT = 1000099001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT = 1000101000
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT = 1000101001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT = 1000102000
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT = 1000102001
    VK_STRUCTURE_TYPE_HDR_METADATA_EXT = 1000105000
    VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR = 1000111000
    VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114000
    VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114001
    VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR = 1000114002
    VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR = 1000115000
    VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR = 1000115001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR = 1000116000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR = 1000116001
    VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR = 1000116002
    VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR = 1000116003
    VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR = 1000116004
    VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR = 1000116005
    VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR = 1000116006
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR = 1000119000
    VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR = 1000119001
    VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR = 1000119002
    VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR = 1000121000
    VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR = 1000121001
    VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR = 1000121002
    VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR = 1000121003
    VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR = 1000121004
    VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK = 1000122000
    VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK = 1000123000
    VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000128000
    VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT = 1000128001
    VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT = 1000128002
    VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000128003
    VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000128004
    VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID = 1000129000
    VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID = 1000129001
    VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID = 1000129002
    VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129003
    VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129004
    VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID = 1000129005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT = 1000138000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT = 1000138001
    VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT = 1000138002
    VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT = 1000138003
    VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT = 1000143000
    VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT = 1000143001
    VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT = 1000143002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT = 1000143003
    VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT = 1000143004
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT = 1000148000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT = 1000148001
    VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT = 1000148002
    VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV = 1000149000
    VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_KHR = 1000165006
    VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR = 1000165007
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR = 1000150000
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_GEOMETRY_TYPE_INFO_KHR = 1000150001
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR = 1000150002
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR = 1000150003
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR = 1000150004
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR = 1000150005
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR = 1000150006
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_KHR = 1000150008
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_KHR = 1000150009
    VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR = 1000150010
    VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR = 1000150011
    VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR = 1000150012
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_FEATURES_KHR = 1000150013
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_KHR = 1000150014
    VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR = 1000150015
    VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR = 1000150016
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR = 1000150017
    VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR = 1000150018
    VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV = 1000152000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV = 1000154000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV = 1000154001
    VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT = 1000158000
    VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT = 1000158002
    VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT = 1000158003
    VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT = 1000158004
    VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158005
    VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160000
    VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160001
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV = 1000164000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV = 1000164001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV = 1000164002
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV = 1000164005
    VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV = 1000165000
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV = 1000165001
    VK_STRUCTURE_TYPE_GEOMETRY_NV = 1000165003
    VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV = 1000165004
    VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV = 1000165005
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV = 1000165008
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV = 1000165009
    VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV = 1000165011
    VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV = 1000165012
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV = 1000166000
    VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV = 1000166001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT = 1000170000
    VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT = 1000170001
    VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT = 1000174000
    VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT = 1000178000
    VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT = 1000178001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT = 1000178002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR = 1000181000
    VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD = 1000183000
    VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT = 1000184000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD = 1000185000
    VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD = 1000189000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT = 1000190000
    VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT = 1000190001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT = 1000190002
    VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP = 1000191000
    VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT = 1000192000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV = 1000201000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV = 1000202000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV = 1000202001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV = 1000203000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV = 1000204000
    VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV = 1000205000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV = 1000205002
    VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV = 1000206000
    VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV = 1000206001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL = 1000209000
    VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL = 1000210000
    VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL = 1000210001
    VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL = 1000210002
    VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL = 1000210003
    VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL = 1000210004
    VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL = 1000210005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT = 1000212000
    VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD = 1000213000
    VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD = 1000213001
    VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA = 1000214000
    VK_STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT = 1000217000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT = 1000218000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT = 1000218001
    VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT = 1000218002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT = 1000225000
    VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT = 1000225002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD = 1000227000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD = 1000229000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT = 1000237000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT = 1000238000
    VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT = 1000238001
    VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR = 1000239000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV = 1000240000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT = 1000244000
    VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT = 1000244002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT = 1000245000
    VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT = 1000247000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV = 1000249000
    VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV = 1000250000
    VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV = 1000250001
    VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV = 1000250002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT = 1000251000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT = 1000252000
    VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT = 1000255000
    VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT = 1000255002
    VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT = 1000255001
    VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT = 1000256000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT = 1000259000
    VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT = 1000259001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT = 1000259002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT = 1000260000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT = 1000265000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT = 1000267000
    VK_STRUCTURE_TYPE_DEFERRED_OPERATION_INFO_KHR = 1000268000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR = 1000269000
    VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR = 1000269001
    VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR = 1000269002
    VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR = 1000269003
    VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR = 1000269004
    VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR = 1000269005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT = 1000276000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV = 1000277000
    VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV = 1000277001
    VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV = 1000277002
    VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV = 1000277003
    VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV = 1000277004
    VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV = 1000277005
    VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV = 1000277006
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV = 1000277007
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT = 1000281000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT = 1000281001
    VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM = 1000282000
    VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM = 1000282001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT = 1000286000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT = 1000286001
    VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT = 1000287000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT = 1000287001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT = 1000287002
    VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR = 1000290000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT = 1000295000
    VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT = 1000295001
    VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT = 1000295002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT = 1000297000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV = 1000300000
    VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV = 1000300001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT = 1000332000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT = 1000332001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT = 1000335000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT = 1000340000
    VK_STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT = 1000346000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES = 1000120000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES = 1000063000
    VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT = 1000011000
    VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR = 1000053000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR = 1000053001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR = 1000053002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR = 1000059000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR = 1000059001
    VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR = 1000059002
    VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR = 1000059004
    VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR = 1000059005
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR = 1000059006
    VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059007
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR = 1000059008
    VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR = 1000060000
    VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR = 1000060003
    VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR = 1000060004
    VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR = 1000060005
    VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR = 1000060006
    VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060013
    VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060014
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR = 1000070000
    VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR = 1000070001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR = 1000071000
    VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR = 1000071001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR = 1000071002
    VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR = 1000071003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR = 1000071004
    VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR = 1000072000
    VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR = 1000072001
    VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR = 1000072002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR = 1000076000
    VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR = 1000076001
    VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR = 1000077000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR = 1000082000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR = 1000082000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR = 1000083000
    VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR = 1000085000
    VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT = 1000090000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR = 1000108000
    VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR = 1000108001
    VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR = 1000108002
    VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR = 1000108003
    VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR = 1000109000
    VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR = 1000109001
    VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR = 1000109002
    VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR = 1000109003
    VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR = 1000109004
    VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR = 1000109005
    VK_STRUCTURE_TYPE_SUBPASS_END_INFO_KHR = 1000109006
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR = 1000112000
    VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR = 1000112001
    VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR = 1000113000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR = 1000117000
    VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR = 1000117001
    VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR = 1000117002
    VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR = 1000117003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR = 1000120000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR = 1000120000
    VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR = 1000127000
    VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR = 1000127001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT = 1000130000
    VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT = 1000130001
    VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146000
    VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146001
    VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146002
    VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR = 1000146003
    VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR = 1000146004
    VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR = 1000147000
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR = 1000156000
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR = 1000156001
    VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR = 1000156002
    VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR = 1000156003
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR = 1000156004
    VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR = 1000156005
    VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR = 1000157000
    VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR = 1000157001
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT = 1000161000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT = 1000161001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT = 1000161002
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT = 1000161003
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT = 1000161004
    VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV = 1000165006
    VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV = 1000165007
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR = 1000168000
    VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR = 1000168001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR = 1000175000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR = 1000177000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR = 1000180000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR = 1000196000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR = 1000197000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR = 1000199000
    VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR = 1000199001
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR = 1000207000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR = 1000207001
    VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR = 1000207002
    VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR = 1000207003
    VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR = 1000207004
    VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR = 1000207005
    VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL = 1000210000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR = 1000211000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT = 1000221000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR = 1000241000
    VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR = 1000241001
    VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR = 1000241002
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT = 1000244000
    VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT = 1000244001
    VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT = 1000246000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR = 1000253000
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR = 1000257000
    VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR = 1000244001
    VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR = 1000257002
    VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR = 1000257003
    VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR = 1000257004
    VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT = 1000261000
    VK_STRUCTURE_TYPE_MAX_ENUM = 2147483647
end

@cenum VkImageLayout::UInt32 begin
    VK_IMAGE_LAYOUT_UNDEFINED = 0
    VK_IMAGE_LAYOUT_GENERAL = 1
    VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2
    VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3
    VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4
    VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5
    VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7
    VK_IMAGE_LAYOUT_PREINITIALIZED = 8
    VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL = 1000117000
    VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL = 1000117001
    VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL = 1000241000
    VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL = 1000241001
    VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL = 1000241002
    VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL = 1000241003
    VK_IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002
    VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR = 1000111000
    VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV = 1000164003
    VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT = 1000218000
    VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000117000
    VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000117001
    VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR = 1000241000
    VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR = 1000241001
    VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000241002
    VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000241003
    VK_IMAGE_LAYOUT_MAX_ENUM = 2147483647
end

@cenum VkObjectType::UInt32 begin
    VK_OBJECT_TYPE_UNKNOWN = 0
    VK_OBJECT_TYPE_INSTANCE = 1
    VK_OBJECT_TYPE_PHYSICAL_DEVICE = 2
    VK_OBJECT_TYPE_DEVICE = 3
    VK_OBJECT_TYPE_QUEUE = 4
    VK_OBJECT_TYPE_SEMAPHORE = 5
    VK_OBJECT_TYPE_COMMAND_BUFFER = 6
    VK_OBJECT_TYPE_FENCE = 7
    VK_OBJECT_TYPE_DEVICE_MEMORY = 8
    VK_OBJECT_TYPE_BUFFER = 9
    VK_OBJECT_TYPE_IMAGE = 10
    VK_OBJECT_TYPE_EVENT = 11
    VK_OBJECT_TYPE_QUERY_POOL = 12
    VK_OBJECT_TYPE_BUFFER_VIEW = 13
    VK_OBJECT_TYPE_IMAGE_VIEW = 14
    VK_OBJECT_TYPE_SHADER_MODULE = 15
    VK_OBJECT_TYPE_PIPELINE_CACHE = 16
    VK_OBJECT_TYPE_PIPELINE_LAYOUT = 17
    VK_OBJECT_TYPE_RENDER_PASS = 18
    VK_OBJECT_TYPE_PIPELINE = 19
    VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20
    VK_OBJECT_TYPE_SAMPLER = 21
    VK_OBJECT_TYPE_DESCRIPTOR_POOL = 22
    VK_OBJECT_TYPE_DESCRIPTOR_SET = 23
    VK_OBJECT_TYPE_FRAMEBUFFER = 24
    VK_OBJECT_TYPE_COMMAND_POOL = 25
    VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION = 1000156000
    VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE = 1000085000
    VK_OBJECT_TYPE_SURFACE_KHR = 1000000000
    VK_OBJECT_TYPE_SWAPCHAIN_KHR = 1000001000
    VK_OBJECT_TYPE_DISPLAY_KHR = 1000002000
    VK_OBJECT_TYPE_DISPLAY_MODE_KHR = 1000002001
    VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT = 1000011000
    VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000
    VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000165000
    VK_OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000
    VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000
    VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000
    VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000
    VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT = 1000295000
    VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR = 1000085000
    VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR = 1000156000
    VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
    VK_OBJECT_TYPE_MAX_ENUM = 2147483647
end

@cenum VkVendorId::UInt32 begin
    VK_VENDOR_ID_VIV = 65537
    VK_VENDOR_ID_VSI = 65538
    VK_VENDOR_ID_KAZAN = 65539
    VK_VENDOR_ID_CODEPLAY = 65540
    VK_VENDOR_ID_MESA = 65541
    VK_VENDOR_ID_MAX_ENUM = 2147483647
end

@cenum VkPipelineCacheHeaderVersion::UInt32 begin
    VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1
    VK_PIPELINE_CACHE_HEADER_VERSION_MAX_ENUM = 2147483647
end

@cenum VkSystemAllocationScope::UInt32 begin
    VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0
    VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1
    VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2
    VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3
    VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4
    VK_SYSTEM_ALLOCATION_SCOPE_MAX_ENUM = 2147483647
end

@cenum VkInternalAllocationType::UInt32 begin
    VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0
    VK_INTERNAL_ALLOCATION_TYPE_MAX_ENUM = 2147483647
end

@cenum VkFormat::UInt32 begin
    VK_FORMAT_UNDEFINED = 0
    VK_FORMAT_R4G4_UNORM_PACK8 = 1
    VK_FORMAT_R4G4B4A4_UNORM_PACK16 = 2
    VK_FORMAT_B4G4R4A4_UNORM_PACK16 = 3
    VK_FORMAT_R5G6B5_UNORM_PACK16 = 4
    VK_FORMAT_B5G6R5_UNORM_PACK16 = 5
    VK_FORMAT_R5G5B5A1_UNORM_PACK16 = 6
    VK_FORMAT_B5G5R5A1_UNORM_PACK16 = 7
    VK_FORMAT_A1R5G5B5_UNORM_PACK16 = 8
    VK_FORMAT_R8_UNORM = 9
    VK_FORMAT_R8_SNORM = 10
    VK_FORMAT_R8_USCALED = 11
    VK_FORMAT_R8_SSCALED = 12
    VK_FORMAT_R8_UINT = 13
    VK_FORMAT_R8_SINT = 14
    VK_FORMAT_R8_SRGB = 15
    VK_FORMAT_R8G8_UNORM = 16
    VK_FORMAT_R8G8_SNORM = 17
    VK_FORMAT_R8G8_USCALED = 18
    VK_FORMAT_R8G8_SSCALED = 19
    VK_FORMAT_R8G8_UINT = 20
    VK_FORMAT_R8G8_SINT = 21
    VK_FORMAT_R8G8_SRGB = 22
    VK_FORMAT_R8G8B8_UNORM = 23
    VK_FORMAT_R8G8B8_SNORM = 24
    VK_FORMAT_R8G8B8_USCALED = 25
    VK_FORMAT_R8G8B8_SSCALED = 26
    VK_FORMAT_R8G8B8_UINT = 27
    VK_FORMAT_R8G8B8_SINT = 28
    VK_FORMAT_R8G8B8_SRGB = 29
    VK_FORMAT_B8G8R8_UNORM = 30
    VK_FORMAT_B8G8R8_SNORM = 31
    VK_FORMAT_B8G8R8_USCALED = 32
    VK_FORMAT_B8G8R8_SSCALED = 33
    VK_FORMAT_B8G8R8_UINT = 34
    VK_FORMAT_B8G8R8_SINT = 35
    VK_FORMAT_B8G8R8_SRGB = 36
    VK_FORMAT_R8G8B8A8_UNORM = 37
    VK_FORMAT_R8G8B8A8_SNORM = 38
    VK_FORMAT_R8G8B8A8_USCALED = 39
    VK_FORMAT_R8G8B8A8_SSCALED = 40
    VK_FORMAT_R8G8B8A8_UINT = 41
    VK_FORMAT_R8G8B8A8_SINT = 42
    VK_FORMAT_R8G8B8A8_SRGB = 43
    VK_FORMAT_B8G8R8A8_UNORM = 44
    VK_FORMAT_B8G8R8A8_SNORM = 45
    VK_FORMAT_B8G8R8A8_USCALED = 46
    VK_FORMAT_B8G8R8A8_SSCALED = 47
    VK_FORMAT_B8G8R8A8_UINT = 48
    VK_FORMAT_B8G8R8A8_SINT = 49
    VK_FORMAT_B8G8R8A8_SRGB = 50
    VK_FORMAT_A8B8G8R8_UNORM_PACK32 = 51
    VK_FORMAT_A8B8G8R8_SNORM_PACK32 = 52
    VK_FORMAT_A8B8G8R8_USCALED_PACK32 = 53
    VK_FORMAT_A8B8G8R8_SSCALED_PACK32 = 54
    VK_FORMAT_A8B8G8R8_UINT_PACK32 = 55
    VK_FORMAT_A8B8G8R8_SINT_PACK32 = 56
    VK_FORMAT_A8B8G8R8_SRGB_PACK32 = 57
    VK_FORMAT_A2R10G10B10_UNORM_PACK32 = 58
    VK_FORMAT_A2R10G10B10_SNORM_PACK32 = 59
    VK_FORMAT_A2R10G10B10_USCALED_PACK32 = 60
    VK_FORMAT_A2R10G10B10_SSCALED_PACK32 = 61
    VK_FORMAT_A2R10G10B10_UINT_PACK32 = 62
    VK_FORMAT_A2R10G10B10_SINT_PACK32 = 63
    VK_FORMAT_A2B10G10R10_UNORM_PACK32 = 64
    VK_FORMAT_A2B10G10R10_SNORM_PACK32 = 65
    VK_FORMAT_A2B10G10R10_USCALED_PACK32 = 66
    VK_FORMAT_A2B10G10R10_SSCALED_PACK32 = 67
    VK_FORMAT_A2B10G10R10_UINT_PACK32 = 68
    VK_FORMAT_A2B10G10R10_SINT_PACK32 = 69
    VK_FORMAT_R16_UNORM = 70
    VK_FORMAT_R16_SNORM = 71
    VK_FORMAT_R16_USCALED = 72
    VK_FORMAT_R16_SSCALED = 73
    VK_FORMAT_R16_UINT = 74
    VK_FORMAT_R16_SINT = 75
    VK_FORMAT_R16_SFLOAT = 76
    VK_FORMAT_R16G16_UNORM = 77
    VK_FORMAT_R16G16_SNORM = 78
    VK_FORMAT_R16G16_USCALED = 79
    VK_FORMAT_R16G16_SSCALED = 80
    VK_FORMAT_R16G16_UINT = 81
    VK_FORMAT_R16G16_SINT = 82
    VK_FORMAT_R16G16_SFLOAT = 83
    VK_FORMAT_R16G16B16_UNORM = 84
    VK_FORMAT_R16G16B16_SNORM = 85
    VK_FORMAT_R16G16B16_USCALED = 86
    VK_FORMAT_R16G16B16_SSCALED = 87
    VK_FORMAT_R16G16B16_UINT = 88
    VK_FORMAT_R16G16B16_SINT = 89
    VK_FORMAT_R16G16B16_SFLOAT = 90
    VK_FORMAT_R16G16B16A16_UNORM = 91
    VK_FORMAT_R16G16B16A16_SNORM = 92
    VK_FORMAT_R16G16B16A16_USCALED = 93
    VK_FORMAT_R16G16B16A16_SSCALED = 94
    VK_FORMAT_R16G16B16A16_UINT = 95
    VK_FORMAT_R16G16B16A16_SINT = 96
    VK_FORMAT_R16G16B16A16_SFLOAT = 97
    VK_FORMAT_R32_UINT = 98
    VK_FORMAT_R32_SINT = 99
    VK_FORMAT_R32_SFLOAT = 100
    VK_FORMAT_R32G32_UINT = 101
    VK_FORMAT_R32G32_SINT = 102
    VK_FORMAT_R32G32_SFLOAT = 103
    VK_FORMAT_R32G32B32_UINT = 104
    VK_FORMAT_R32G32B32_SINT = 105
    VK_FORMAT_R32G32B32_SFLOAT = 106
    VK_FORMAT_R32G32B32A32_UINT = 107
    VK_FORMAT_R32G32B32A32_SINT = 108
    VK_FORMAT_R32G32B32A32_SFLOAT = 109
    VK_FORMAT_R64_UINT = 110
    VK_FORMAT_R64_SINT = 111
    VK_FORMAT_R64_SFLOAT = 112
    VK_FORMAT_R64G64_UINT = 113
    VK_FORMAT_R64G64_SINT = 114
    VK_FORMAT_R64G64_SFLOAT = 115
    VK_FORMAT_R64G64B64_UINT = 116
    VK_FORMAT_R64G64B64_SINT = 117
    VK_FORMAT_R64G64B64_SFLOAT = 118
    VK_FORMAT_R64G64B64A64_UINT = 119
    VK_FORMAT_R64G64B64A64_SINT = 120
    VK_FORMAT_R64G64B64A64_SFLOAT = 121
    VK_FORMAT_B10G11R11_UFLOAT_PACK32 = 122
    VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123
    VK_FORMAT_D16_UNORM = 124
    VK_FORMAT_X8_D24_UNORM_PACK32 = 125
    VK_FORMAT_D32_SFLOAT = 126
    VK_FORMAT_S8_UINT = 127
    VK_FORMAT_D16_UNORM_S8_UINT = 128
    VK_FORMAT_D24_UNORM_S8_UINT = 129
    VK_FORMAT_D32_SFLOAT_S8_UINT = 130
    VK_FORMAT_BC1_RGB_UNORM_BLOCK = 131
    VK_FORMAT_BC1_RGB_SRGB_BLOCK = 132
    VK_FORMAT_BC1_RGBA_UNORM_BLOCK = 133
    VK_FORMAT_BC1_RGBA_SRGB_BLOCK = 134
    VK_FORMAT_BC2_UNORM_BLOCK = 135
    VK_FORMAT_BC2_SRGB_BLOCK = 136
    VK_FORMAT_BC3_UNORM_BLOCK = 137
    VK_FORMAT_BC3_SRGB_BLOCK = 138
    VK_FORMAT_BC4_UNORM_BLOCK = 139
    VK_FORMAT_BC4_SNORM_BLOCK = 140
    VK_FORMAT_BC5_UNORM_BLOCK = 141
    VK_FORMAT_BC5_SNORM_BLOCK = 142
    VK_FORMAT_BC6H_UFLOAT_BLOCK = 143
    VK_FORMAT_BC6H_SFLOAT_BLOCK = 144
    VK_FORMAT_BC7_UNORM_BLOCK = 145
    VK_FORMAT_BC7_SRGB_BLOCK = 146
    VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147
    VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148
    VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149
    VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150
    VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151
    VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152
    VK_FORMAT_EAC_R11_UNORM_BLOCK = 153
    VK_FORMAT_EAC_R11_SNORM_BLOCK = 154
    VK_FORMAT_EAC_R11G11_UNORM_BLOCK = 155
    VK_FORMAT_EAC_R11G11_SNORM_BLOCK = 156
    VK_FORMAT_ASTC_4x4_UNORM_BLOCK = 157
    VK_FORMAT_ASTC_4x4_SRGB_BLOCK = 158
    VK_FORMAT_ASTC_5x4_UNORM_BLOCK = 159
    VK_FORMAT_ASTC_5x4_SRGB_BLOCK = 160
    VK_FORMAT_ASTC_5x5_UNORM_BLOCK = 161
    VK_FORMAT_ASTC_5x5_SRGB_BLOCK = 162
    VK_FORMAT_ASTC_6x5_UNORM_BLOCK = 163
    VK_FORMAT_ASTC_6x5_SRGB_BLOCK = 164
    VK_FORMAT_ASTC_6x6_UNORM_BLOCK = 165
    VK_FORMAT_ASTC_6x6_SRGB_BLOCK = 166
    VK_FORMAT_ASTC_8x5_UNORM_BLOCK = 167
    VK_FORMAT_ASTC_8x5_SRGB_BLOCK = 168
    VK_FORMAT_ASTC_8x6_UNORM_BLOCK = 169
    VK_FORMAT_ASTC_8x6_SRGB_BLOCK = 170
    VK_FORMAT_ASTC_8x8_UNORM_BLOCK = 171
    VK_FORMAT_ASTC_8x8_SRGB_BLOCK = 172
    VK_FORMAT_ASTC_10x5_UNORM_BLOCK = 173
    VK_FORMAT_ASTC_10x5_SRGB_BLOCK = 174
    VK_FORMAT_ASTC_10x6_UNORM_BLOCK = 175
    VK_FORMAT_ASTC_10x6_SRGB_BLOCK = 176
    VK_FORMAT_ASTC_10x8_UNORM_BLOCK = 177
    VK_FORMAT_ASTC_10x8_SRGB_BLOCK = 178
    VK_FORMAT_ASTC_10x10_UNORM_BLOCK = 179
    VK_FORMAT_ASTC_10x10_SRGB_BLOCK = 180
    VK_FORMAT_ASTC_12x10_UNORM_BLOCK = 181
    VK_FORMAT_ASTC_12x10_SRGB_BLOCK = 182
    VK_FORMAT_ASTC_12x12_UNORM_BLOCK = 183
    VK_FORMAT_ASTC_12x12_SRGB_BLOCK = 184
    VK_FORMAT_G8B8G8R8_422_UNORM = 1000156000
    VK_FORMAT_B8G8R8G8_422_UNORM = 1000156001
    VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM = 1000156002
    VK_FORMAT_G8_B8R8_2PLANE_420_UNORM = 1000156003
    VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM = 1000156004
    VK_FORMAT_G8_B8R8_2PLANE_422_UNORM = 1000156005
    VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM = 1000156006
    VK_FORMAT_R10X6_UNORM_PACK16 = 1000156007
    VK_FORMAT_R10X6G10X6_UNORM_2PACK16 = 1000156008
    VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 = 1000156009
    VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 = 1000156010
    VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 = 1000156011
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 = 1000156012
    VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 = 1000156013
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 = 1000156014
    VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 = 1000156015
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 = 1000156016
    VK_FORMAT_R12X4_UNORM_PACK16 = 1000156017
    VK_FORMAT_R12X4G12X4_UNORM_2PACK16 = 1000156018
    VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 = 1000156019
    VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 = 1000156020
    VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 = 1000156021
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 = 1000156022
    VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 = 1000156023
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 = 1000156024
    VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 = 1000156025
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 = 1000156026
    VK_FORMAT_G16B16G16R16_422_UNORM = 1000156027
    VK_FORMAT_B16G16R16G16_422_UNORM = 1000156028
    VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM = 1000156029
    VK_FORMAT_G16_B16R16_2PLANE_420_UNORM = 1000156030
    VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM = 1000156031
    VK_FORMAT_G16_B16R16_2PLANE_422_UNORM = 1000156032
    VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM = 1000156033
    VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG = 1000054000
    VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG = 1000054001
    VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG = 1000054002
    VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG = 1000054003
    VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG = 1000054004
    VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG = 1000054005
    VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG = 1000054006
    VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG = 1000054007
    VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT = 1000066000
    VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT = 1000066001
    VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT = 1000066002
    VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT = 1000066003
    VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT = 1000066004
    VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT = 1000066005
    VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT = 1000066006
    VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT = 1000066007
    VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT = 1000066008
    VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT = 1000066009
    VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT = 1000066010
    VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT = 1000066011
    VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT = 1000066012
    VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT = 1000066013
    VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT = 1000340000
    VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT = 1000340001
    VK_FORMAT_G8B8G8R8_422_UNORM_KHR = 1000156000
    VK_FORMAT_B8G8R8G8_422_UNORM_KHR = 1000156001
    VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR = 1000156002
    VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR = 1000156003
    VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR = 1000156004
    VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR = 1000156005
    VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR = 1000156006
    VK_FORMAT_R10X6_UNORM_PACK16_KHR = 1000156007
    VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR = 1000156008
    VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR = 1000156009
    VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR = 1000156010
    VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR = 1000156011
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR = 1000156012
    VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR = 1000156013
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR = 1000156014
    VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR = 1000156015
    VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR = 1000156016
    VK_FORMAT_R12X4_UNORM_PACK16_KHR = 1000156017
    VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR = 1000156018
    VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR = 1000156019
    VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR = 1000156020
    VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR = 1000156021
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR = 1000156022
    VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR = 1000156023
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR = 1000156024
    VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR = 1000156025
    VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR = 1000156026
    VK_FORMAT_G16B16G16R16_422_UNORM_KHR = 1000156027
    VK_FORMAT_B16G16R16G16_422_UNORM_KHR = 1000156028
    VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR = 1000156029
    VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR = 1000156030
    VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR = 1000156031
    VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR = 1000156032
    VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR = 1000156033
    VK_FORMAT_MAX_ENUM = 2147483647
end

@cenum VkImageTiling::UInt32 begin
    VK_IMAGE_TILING_OPTIMAL = 0
    VK_IMAGE_TILING_LINEAR = 1
    VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT = 1000158000
    VK_IMAGE_TILING_MAX_ENUM = 2147483647
end

@cenum VkImageType::UInt32 begin
    VK_IMAGE_TYPE_1D = 0
    VK_IMAGE_TYPE_2D = 1
    VK_IMAGE_TYPE_3D = 2
    VK_IMAGE_TYPE_MAX_ENUM = 2147483647
end

@cenum VkPhysicalDeviceType::UInt32 begin
    VK_PHYSICAL_DEVICE_TYPE_OTHER = 0
    VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1
    VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2
    VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3
    VK_PHYSICAL_DEVICE_TYPE_CPU = 4
    VK_PHYSICAL_DEVICE_TYPE_MAX_ENUM = 2147483647
end

@cenum VkQueryType::UInt32 begin
    VK_QUERY_TYPE_OCCLUSION = 0
    VK_QUERY_TYPE_PIPELINE_STATISTICS = 1
    VK_QUERY_TYPE_TIMESTAMP = 2
    VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT = 1000028004
    VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR = 1000116000
    VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR = 1000165000
    VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR = 1000150000
    VK_QUERY_TYPE_PERFORMANCE_QUERY_INTEL = 1000210000
    VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV = 1000165000
    VK_QUERY_TYPE_MAX_ENUM = 2147483647
end

@cenum VkSharingMode::UInt32 begin
    VK_SHARING_MODE_EXCLUSIVE = 0
    VK_SHARING_MODE_CONCURRENT = 1
    VK_SHARING_MODE_MAX_ENUM = 2147483647
end

@cenum VkComponentSwizzle::UInt32 begin
    VK_COMPONENT_SWIZZLE_IDENTITY = 0
    VK_COMPONENT_SWIZZLE_ZERO = 1
    VK_COMPONENT_SWIZZLE_ONE = 2
    VK_COMPONENT_SWIZZLE_R = 3
    VK_COMPONENT_SWIZZLE_G = 4
    VK_COMPONENT_SWIZZLE_B = 5
    VK_COMPONENT_SWIZZLE_A = 6
    VK_COMPONENT_SWIZZLE_MAX_ENUM = 2147483647
end

@cenum VkImageViewType::UInt32 begin
    VK_IMAGE_VIEW_TYPE_1D = 0
    VK_IMAGE_VIEW_TYPE_2D = 1
    VK_IMAGE_VIEW_TYPE_3D = 2
    VK_IMAGE_VIEW_TYPE_CUBE = 3
    VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4
    VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5
    VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6
    VK_IMAGE_VIEW_TYPE_MAX_ENUM = 2147483647
end

@cenum VkBlendFactor::UInt32 begin
    VK_BLEND_FACTOR_ZERO = 0
    VK_BLEND_FACTOR_ONE = 1
    VK_BLEND_FACTOR_SRC_COLOR = 2
    VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3
    VK_BLEND_FACTOR_DST_COLOR = 4
    VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5
    VK_BLEND_FACTOR_SRC_ALPHA = 6
    VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7
    VK_BLEND_FACTOR_DST_ALPHA = 8
    VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9
    VK_BLEND_FACTOR_CONSTANT_COLOR = 10
    VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11
    VK_BLEND_FACTOR_CONSTANT_ALPHA = 12
    VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13
    VK_BLEND_FACTOR_SRC_ALPHA_SATURATE = 14
    VK_BLEND_FACTOR_SRC1_COLOR = 15
    VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16
    VK_BLEND_FACTOR_SRC1_ALPHA = 17
    VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18
    VK_BLEND_FACTOR_MAX_ENUM = 2147483647
end

@cenum VkBlendOp::UInt32 begin
    VK_BLEND_OP_ADD = 0
    VK_BLEND_OP_SUBTRACT = 1
    VK_BLEND_OP_REVERSE_SUBTRACT = 2
    VK_BLEND_OP_MIN = 3
    VK_BLEND_OP_MAX = 4
    VK_BLEND_OP_ZERO_EXT = 1000148000
    VK_BLEND_OP_SRC_EXT = 1000148001
    VK_BLEND_OP_DST_EXT = 1000148002
    VK_BLEND_OP_SRC_OVER_EXT = 1000148003
    VK_BLEND_OP_DST_OVER_EXT = 1000148004
    VK_BLEND_OP_SRC_IN_EXT = 1000148005
    VK_BLEND_OP_DST_IN_EXT = 1000148006
    VK_BLEND_OP_SRC_OUT_EXT = 1000148007
    VK_BLEND_OP_DST_OUT_EXT = 1000148008
    VK_BLEND_OP_SRC_ATOP_EXT = 1000148009
    VK_BLEND_OP_DST_ATOP_EXT = 1000148010
    VK_BLEND_OP_XOR_EXT = 1000148011
    VK_BLEND_OP_MULTIPLY_EXT = 1000148012
    VK_BLEND_OP_SCREEN_EXT = 1000148013
    VK_BLEND_OP_OVERLAY_EXT = 1000148014
    VK_BLEND_OP_DARKEN_EXT = 1000148015
    VK_BLEND_OP_LIGHTEN_EXT = 1000148016
    VK_BLEND_OP_COLORDODGE_EXT = 1000148017
    VK_BLEND_OP_COLORBURN_EXT = 1000148018
    VK_BLEND_OP_HARDLIGHT_EXT = 1000148019
    VK_BLEND_OP_SOFTLIGHT_EXT = 1000148020
    VK_BLEND_OP_DIFFERENCE_EXT = 1000148021
    VK_BLEND_OP_EXCLUSION_EXT = 1000148022
    VK_BLEND_OP_INVERT_EXT = 1000148023
    VK_BLEND_OP_INVERT_RGB_EXT = 1000148024
    VK_BLEND_OP_LINEARDODGE_EXT = 1000148025
    VK_BLEND_OP_LINEARBURN_EXT = 1000148026
    VK_BLEND_OP_VIVIDLIGHT_EXT = 1000148027
    VK_BLEND_OP_LINEARLIGHT_EXT = 1000148028
    VK_BLEND_OP_PINLIGHT_EXT = 1000148029
    VK_BLEND_OP_HARDMIX_EXT = 1000148030
    VK_BLEND_OP_HSL_HUE_EXT = 1000148031
    VK_BLEND_OP_HSL_SATURATION_EXT = 1000148032
    VK_BLEND_OP_HSL_COLOR_EXT = 1000148033
    VK_BLEND_OP_HSL_LUMINOSITY_EXT = 1000148034
    VK_BLEND_OP_PLUS_EXT = 1000148035
    VK_BLEND_OP_PLUS_CLAMPED_EXT = 1000148036
    VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT = 1000148037
    VK_BLEND_OP_PLUS_DARKER_EXT = 1000148038
    VK_BLEND_OP_MINUS_EXT = 1000148039
    VK_BLEND_OP_MINUS_CLAMPED_EXT = 1000148040
    VK_BLEND_OP_CONTRAST_EXT = 1000148041
    VK_BLEND_OP_INVERT_OVG_EXT = 1000148042
    VK_BLEND_OP_RED_EXT = 1000148043
    VK_BLEND_OP_GREEN_EXT = 1000148044
    VK_BLEND_OP_BLUE_EXT = 1000148045
    VK_BLEND_OP_MAX_ENUM = 2147483647
end

@cenum VkCompareOp::UInt32 begin
    VK_COMPARE_OP_NEVER = 0
    VK_COMPARE_OP_LESS = 1
    VK_COMPARE_OP_EQUAL = 2
    VK_COMPARE_OP_LESS_OR_EQUAL = 3
    VK_COMPARE_OP_GREATER = 4
    VK_COMPARE_OP_NOT_EQUAL = 5
    VK_COMPARE_OP_GREATER_OR_EQUAL = 6
    VK_COMPARE_OP_ALWAYS = 7
    VK_COMPARE_OP_MAX_ENUM = 2147483647
end

@cenum VkDynamicState::UInt32 begin
    VK_DYNAMIC_STATE_VIEWPORT = 0
    VK_DYNAMIC_STATE_SCISSOR = 1
    VK_DYNAMIC_STATE_LINE_WIDTH = 2
    VK_DYNAMIC_STATE_DEPTH_BIAS = 3
    VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4
    VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5
    VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6
    VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7
    VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8
    VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV = 1000087000
    VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT = 1000099000
    VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT = 1000143000
    VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV = 1000164004
    VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV = 1000164006
    VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV = 1000205001
    VK_DYNAMIC_STATE_LINE_STIPPLE_EXT = 1000259000
    VK_DYNAMIC_STATE_CULL_MODE_EXT = 1000267000
    VK_DYNAMIC_STATE_FRONT_FACE_EXT = 1000267001
    VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT = 1000267002
    VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT = 1000267003
    VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT = 1000267004
    VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT = 1000267005
    VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT = 1000267006
    VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT = 1000267007
    VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT = 1000267008
    VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT = 1000267009
    VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT = 1000267010
    VK_DYNAMIC_STATE_STENCIL_OP_EXT = 1000267011
    VK_DYNAMIC_STATE_MAX_ENUM = 2147483647
end

@cenum VkFrontFace::UInt32 begin
    VK_FRONT_FACE_COUNTER_CLOCKWISE = 0
    VK_FRONT_FACE_CLOCKWISE = 1
    VK_FRONT_FACE_MAX_ENUM = 2147483647
end

@cenum VkVertexInputRate::UInt32 begin
    VK_VERTEX_INPUT_RATE_VERTEX = 0
    VK_VERTEX_INPUT_RATE_INSTANCE = 1
    VK_VERTEX_INPUT_RATE_MAX_ENUM = 2147483647
end

@cenum VkPrimitiveTopology::UInt32 begin
    VK_PRIMITIVE_TOPOLOGY_POINT_LIST = 0
    VK_PRIMITIVE_TOPOLOGY_LINE_LIST = 1
    VK_PRIMITIVE_TOPOLOGY_LINE_STRIP = 2
    VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST = 3
    VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP = 4
    VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN = 5
    VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY = 6
    VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY = 7
    VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY = 8
    VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY = 9
    VK_PRIMITIVE_TOPOLOGY_PATCH_LIST = 10
    VK_PRIMITIVE_TOPOLOGY_MAX_ENUM = 2147483647
end

@cenum VkPolygonMode::UInt32 begin
    VK_POLYGON_MODE_FILL = 0
    VK_POLYGON_MODE_LINE = 1
    VK_POLYGON_MODE_POINT = 2
    VK_POLYGON_MODE_FILL_RECTANGLE_NV = 1000153000
    VK_POLYGON_MODE_MAX_ENUM = 2147483647
end

@cenum VkStencilOp::UInt32 begin
    VK_STENCIL_OP_KEEP = 0
    VK_STENCIL_OP_ZERO = 1
    VK_STENCIL_OP_REPLACE = 2
    VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3
    VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4
    VK_STENCIL_OP_INVERT = 5
    VK_STENCIL_OP_INCREMENT_AND_WRAP = 6
    VK_STENCIL_OP_DECREMENT_AND_WRAP = 7
    VK_STENCIL_OP_MAX_ENUM = 2147483647
end

@cenum VkLogicOp::UInt32 begin
    VK_LOGIC_OP_CLEAR = 0
    VK_LOGIC_OP_AND = 1
    VK_LOGIC_OP_AND_REVERSE = 2
    VK_LOGIC_OP_COPY = 3
    VK_LOGIC_OP_AND_INVERTED = 4
    VK_LOGIC_OP_NO_OP = 5
    VK_LOGIC_OP_XOR = 6
    VK_LOGIC_OP_OR = 7
    VK_LOGIC_OP_NOR = 8
    VK_LOGIC_OP_EQUIVALENT = 9
    VK_LOGIC_OP_INVERT = 10
    VK_LOGIC_OP_OR_REVERSE = 11
    VK_LOGIC_OP_COPY_INVERTED = 12
    VK_LOGIC_OP_OR_INVERTED = 13
    VK_LOGIC_OP_NAND = 14
    VK_LOGIC_OP_SET = 15
    VK_LOGIC_OP_MAX_ENUM = 2147483647
end

@cenum VkBorderColor::UInt32 begin
    VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0
    VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1
    VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2
    VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3
    VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4
    VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5
    VK_BORDER_COLOR_FLOAT_CUSTOM_EXT = 1000287003
    VK_BORDER_COLOR_INT_CUSTOM_EXT = 1000287004
    VK_BORDER_COLOR_MAX_ENUM = 2147483647
end

@cenum VkFilter::UInt32 begin
    VK_FILTER_NEAREST = 0
    VK_FILTER_LINEAR = 1
    VK_FILTER_CUBIC_IMG = 1000015000
    VK_FILTER_CUBIC_EXT = 1000015000
    VK_FILTER_MAX_ENUM = 2147483647
end

@cenum VkSamplerAddressMode::UInt32 begin
    VK_SAMPLER_ADDRESS_MODE_REPEAT = 0
    VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1
    VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2
    VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3
    VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4
    VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR = 4
    VK_SAMPLER_ADDRESS_MODE_MAX_ENUM = 2147483647
end

@cenum VkSamplerMipmapMode::UInt32 begin
    VK_SAMPLER_MIPMAP_MODE_NEAREST = 0
    VK_SAMPLER_MIPMAP_MODE_LINEAR = 1
    VK_SAMPLER_MIPMAP_MODE_MAX_ENUM = 2147483647
end

@cenum VkDescriptorType::UInt32 begin
    VK_DESCRIPTOR_TYPE_SAMPLER = 0
    VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1
    VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2
    VK_DESCRIPTOR_TYPE_STORAGE_IMAGE = 3
    VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4
    VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5
    VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6
    VK_DESCRIPTOR_TYPE_STORAGE_BUFFER = 7
    VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8
    VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9
    VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10
    VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT = 1000138000
    VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000165000
    VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
    VK_DESCRIPTOR_TYPE_MAX_ENUM = 2147483647
end

@cenum VkAttachmentLoadOp::UInt32 begin
    VK_ATTACHMENT_LOAD_OP_LOAD = 0
    VK_ATTACHMENT_LOAD_OP_CLEAR = 1
    VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2
    VK_ATTACHMENT_LOAD_OP_MAX_ENUM = 2147483647
end

@cenum VkAttachmentStoreOp::UInt32 begin
    VK_ATTACHMENT_STORE_OP_STORE = 0
    VK_ATTACHMENT_STORE_OP_DONT_CARE = 1
    VK_ATTACHMENT_STORE_OP_NONE_QCOM = 1000301000
    VK_ATTACHMENT_STORE_OP_MAX_ENUM = 2147483647
end

@cenum VkPipelineBindPoint::UInt32 begin
    VK_PIPELINE_BIND_POINT_GRAPHICS = 0
    VK_PIPELINE_BIND_POINT_COMPUTE = 1
    VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR = 1000165000
    VK_PIPELINE_BIND_POINT_RAY_TRACING_NV = 1000165000
    VK_PIPELINE_BIND_POINT_MAX_ENUM = 2147483647
end

@cenum VkCommandBufferLevel::UInt32 begin
    VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0
    VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1
    VK_COMMAND_BUFFER_LEVEL_MAX_ENUM = 2147483647
end

@cenum VkIndexType::UInt32 begin
    VK_INDEX_TYPE_UINT16 = 0
    VK_INDEX_TYPE_UINT32 = 1
    VK_INDEX_TYPE_NONE_KHR = 1000165000
    VK_INDEX_TYPE_UINT8_EXT = 1000265000
    VK_INDEX_TYPE_NONE_NV = 1000165000
    VK_INDEX_TYPE_MAX_ENUM = 2147483647
end

@cenum VkSubpassContents::UInt32 begin
    VK_SUBPASS_CONTENTS_INLINE = 0
    VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS = 1
    VK_SUBPASS_CONTENTS_MAX_ENUM = 2147483647
end

@cenum VkAccessFlagBits::UInt32 begin
    VK_ACCESS_INDIRECT_COMMAND_READ_BIT = 1
    VK_ACCESS_INDEX_READ_BIT = 2
    VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 4
    VK_ACCESS_UNIFORM_READ_BIT = 8
    VK_ACCESS_INPUT_ATTACHMENT_READ_BIT = 16
    VK_ACCESS_SHADER_READ_BIT = 32
    VK_ACCESS_SHADER_WRITE_BIT = 64
    VK_ACCESS_COLOR_ATTACHMENT_READ_BIT = 128
    VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 256
    VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 512
    VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 1024
    VK_ACCESS_TRANSFER_READ_BIT = 2048
    VK_ACCESS_TRANSFER_WRITE_BIT = 4096
    VK_ACCESS_HOST_READ_BIT = 8192
    VK_ACCESS_HOST_WRITE_BIT = 16384
    VK_ACCESS_MEMORY_READ_BIT = 32768
    VK_ACCESS_MEMORY_WRITE_BIT = 65536
    VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 33554432
    VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 67108864
    VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 134217728
    VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT = 1048576
    VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 524288
    VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR = 2097152
    VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 4194304
    VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV = 8388608
    VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 16777216
    VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV = 131072
    VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV = 262144
    VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV = 2097152
    VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 4194304
    VK_ACCESS_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkAccessFlags = VkFlags

@cenum VkImageAspectFlagBits::UInt32 begin
    VK_IMAGE_ASPECT_COLOR_BIT = 1
    VK_IMAGE_ASPECT_DEPTH_BIT = 2
    VK_IMAGE_ASPECT_STENCIL_BIT = 4
    VK_IMAGE_ASPECT_METADATA_BIT = 8
    VK_IMAGE_ASPECT_PLANE_0_BIT = 16
    VK_IMAGE_ASPECT_PLANE_1_BIT = 32
    VK_IMAGE_ASPECT_PLANE_2_BIT = 64
    VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT = 128
    VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT = 256
    VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT = 512
    VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT = 1024
    VK_IMAGE_ASPECT_PLANE_0_BIT_KHR = 16
    VK_IMAGE_ASPECT_PLANE_1_BIT_KHR = 32
    VK_IMAGE_ASPECT_PLANE_2_BIT_KHR = 64
    VK_IMAGE_ASPECT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkImageAspectFlags = VkFlags

@cenum VkFormatFeatureFlagBits::UInt32 begin
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 1
    VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT = 2
    VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 4
    VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 8
    VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 16
    VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 32
    VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT = 64
    VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 128
    VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 256
    VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 512
    VK_FORMAT_FEATURE_BLIT_SRC_BIT = 1024
    VK_FORMAT_FEATURE_BLIT_DST_BIT = 2048
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 4096
    VK_FORMAT_FEATURE_TRANSFER_SRC_BIT = 16384
    VK_FORMAT_FEATURE_TRANSFER_DST_BIT = 32768
    VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT = 131072
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 262144
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 524288
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 1048576
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 2097152
    VK_FORMAT_FEATURE_DISJOINT_BIT = 4194304
    VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT = 8388608
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 65536
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG = 8192
    VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 536870912
    VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT = 16777216
    VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR = 16384
    VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR = 32768
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT = 65536
    VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = 131072
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = 262144
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = 524288
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = 1048576
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = 2097152
    VK_FORMAT_FEATURE_DISJOINT_BIT_KHR = 4194304
    VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR = 8388608
    VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 8192
    VK_FORMAT_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkFormatFeatureFlags = VkFlags

@cenum VkImageCreateFlagBits::UInt32 begin
    VK_IMAGE_CREATE_SPARSE_BINDING_BIT = 1
    VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 2
    VK_IMAGE_CREATE_SPARSE_ALIASED_BIT = 4
    VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT = 8
    VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 16
    VK_IMAGE_CREATE_ALIAS_BIT = 1024
    VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT = 64
    VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT = 32
    VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT = 128
    VK_IMAGE_CREATE_EXTENDED_USAGE_BIT = 256
    VK_IMAGE_CREATE_PROTECTED_BIT = 2048
    VK_IMAGE_CREATE_DISJOINT_BIT = 512
    VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV = 8192
    VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT = 4096
    VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT = 16384
    VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 64
    VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR = 32
    VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR = 128
    VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR = 256
    VK_IMAGE_CREATE_DISJOINT_BIT_KHR = 512
    VK_IMAGE_CREATE_ALIAS_BIT_KHR = 1024
    VK_IMAGE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkImageCreateFlags = VkFlags

@cenum VkSampleCountFlagBits::UInt32 begin
    VK_SAMPLE_COUNT_1_BIT = 1
    VK_SAMPLE_COUNT_2_BIT = 2
    VK_SAMPLE_COUNT_4_BIT = 4
    VK_SAMPLE_COUNT_8_BIT = 8
    VK_SAMPLE_COUNT_16_BIT = 16
    VK_SAMPLE_COUNT_32_BIT = 32
    VK_SAMPLE_COUNT_64_BIT = 64
    VK_SAMPLE_COUNT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSampleCountFlags = VkFlags

@cenum VkImageUsageFlagBits::UInt32 begin
    VK_IMAGE_USAGE_TRANSFER_SRC_BIT = 1
    VK_IMAGE_USAGE_TRANSFER_DST_BIT = 2
    VK_IMAGE_USAGE_SAMPLED_BIT = 4
    VK_IMAGE_USAGE_STORAGE_BIT = 8
    VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 16
    VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 32
    VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 64
    VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 128
    VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV = 256
    VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT = 512
    VK_IMAGE_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkImageUsageFlags = VkFlags
const VkInstanceCreateFlags = VkFlags

@cenum VkMemoryHeapFlagBits::UInt32 begin
    VK_MEMORY_HEAP_DEVICE_LOCAL_BIT = 1
    VK_MEMORY_HEAP_MULTI_INSTANCE_BIT = 2
    VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR = 2
    VK_MEMORY_HEAP_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkMemoryHeapFlags = VkFlags

@cenum VkMemoryPropertyFlagBits::UInt32 begin
    VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 1
    VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = 2
    VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = 4
    VK_MEMORY_PROPERTY_HOST_CACHED_BIT = 8
    VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 16
    VK_MEMORY_PROPERTY_PROTECTED_BIT = 32
    VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD = 64
    VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD = 128
    VK_MEMORY_PROPERTY_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkMemoryPropertyFlags = VkFlags

@cenum VkQueueFlagBits::UInt32 begin
    VK_QUEUE_GRAPHICS_BIT = 1
    VK_QUEUE_COMPUTE_BIT = 2
    VK_QUEUE_TRANSFER_BIT = 4
    VK_QUEUE_SPARSE_BINDING_BIT = 8
    VK_QUEUE_PROTECTED_BIT = 16
    VK_QUEUE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkQueueFlags = VkFlags
const VkDeviceCreateFlags = VkFlags

@cenum VkDeviceQueueCreateFlagBits::UInt32 begin
    VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT = 1
    VK_DEVICE_QUEUE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkDeviceQueueCreateFlags = VkFlags

@cenum VkPipelineStageFlagBits::UInt32 begin
    VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = 1
    VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT = 2
    VK_PIPELINE_STAGE_VERTEX_INPUT_BIT = 4
    VK_PIPELINE_STAGE_VERTEX_SHADER_BIT = 8
    VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 16
    VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 32
    VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 64
    VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 128
    VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 256
    VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 512
    VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 1024
    VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT = 2048
    VK_PIPELINE_STAGE_TRANSFER_BIT = 4096
    VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 8192
    VK_PIPELINE_STAGE_HOST_BIT = 16384
    VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT = 32768
    VK_PIPELINE_STAGE_ALL_COMMANDS_BIT = 65536
    VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT = 16777216
    VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT = 262144
    VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR = 2097152
    VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 33554432
    VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV = 4194304
    VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV = 524288
    VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV = 1048576
    VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 8388608
    VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV = 131072
    VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV = 2097152
    VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 33554432
    VK_PIPELINE_STAGE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkPipelineStageFlags = VkFlags
const VkMemoryMapFlags = VkFlags

@cenum VkSparseMemoryBindFlagBits::UInt32 begin
    VK_SPARSE_MEMORY_BIND_METADATA_BIT = 1
    VK_SPARSE_MEMORY_BIND_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSparseMemoryBindFlags = VkFlags

@cenum VkSparseImageFormatFlagBits::UInt32 begin
    VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 1
    VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 2
    VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 4
    VK_SPARSE_IMAGE_FORMAT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSparseImageFormatFlags = VkFlags

@cenum VkFenceCreateFlagBits::UInt32 begin
    VK_FENCE_CREATE_SIGNALED_BIT = 1
    VK_FENCE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkFenceCreateFlags = VkFlags
const VkSemaphoreCreateFlags = VkFlags
const VkEventCreateFlags = VkFlags

@cenum VkQueryPipelineStatisticFlagBits::UInt32 begin
    VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT = 1
    VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT = 2
    VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT = 4
    VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT = 8
    VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT = 16
    VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT = 32
    VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT = 64
    VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT = 128
    VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT = 256
    VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT = 512
    VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT = 1024
    VK_QUERY_PIPELINE_STATISTIC_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkQueryPipelineStatisticFlags = VkFlags
const VkQueryPoolCreateFlags = VkFlags

@cenum VkQueryResultFlagBits::UInt32 begin
    VK_QUERY_RESULT_64_BIT = 1
    VK_QUERY_RESULT_WAIT_BIT = 2
    VK_QUERY_RESULT_WITH_AVAILABILITY_BIT = 4
    VK_QUERY_RESULT_PARTIAL_BIT = 8
    VK_QUERY_RESULT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkQueryResultFlags = VkFlags

@cenum VkBufferCreateFlagBits::UInt32 begin
    VK_BUFFER_CREATE_SPARSE_BINDING_BIT = 1
    VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 2
    VK_BUFFER_CREATE_SPARSE_ALIASED_BIT = 4
    VK_BUFFER_CREATE_PROTECTED_BIT = 8
    VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 16
    VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 16
    VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 16
    VK_BUFFER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkBufferCreateFlags = VkFlags

@cenum VkBufferUsageFlagBits::UInt32 begin
    VK_BUFFER_USAGE_TRANSFER_SRC_BIT = 1
    VK_BUFFER_USAGE_TRANSFER_DST_BIT = 2
    VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 4
    VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 8
    VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT = 16
    VK_BUFFER_USAGE_STORAGE_BUFFER_BIT = 32
    VK_BUFFER_USAGE_INDEX_BUFFER_BIT = 64
    VK_BUFFER_USAGE_VERTEX_BUFFER_BIT = 128
    VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT = 256
    VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT = 131072
    VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT = 2048
    VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT = 4096
    VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT = 512
    VK_BUFFER_USAGE_RAY_TRACING_BIT_KHR = 1024
    VK_BUFFER_USAGE_RAY_TRACING_BIT_NV = 1024
    VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT = 131072
    VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR = 131072
    VK_BUFFER_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkBufferUsageFlags = VkFlags
const VkBufferViewCreateFlags = VkFlags

@cenum VkImageViewCreateFlagBits::UInt32 begin
    VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT = 1
    VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT = 2
    VK_IMAGE_VIEW_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkImageViewCreateFlags = VkFlags

@cenum VkShaderModuleCreateFlagBits::UInt32 begin
    VK_SHADER_MODULE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkShaderModuleCreateFlags = VkFlags

@cenum VkPipelineCacheCreateFlagBits::UInt32 begin
    VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT = 1
    VK_PIPELINE_CACHE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkPipelineCacheCreateFlags = VkFlags

@cenum VkColorComponentFlagBits::UInt32 begin
    VK_COLOR_COMPONENT_R_BIT = 1
    VK_COLOR_COMPONENT_G_BIT = 2
    VK_COLOR_COMPONENT_B_BIT = 4
    VK_COLOR_COMPONENT_A_BIT = 8
    VK_COLOR_COMPONENT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkColorComponentFlags = VkFlags

@cenum VkPipelineCreateFlagBits::UInt32 begin
    VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 1
    VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 2
    VK_PIPELINE_CREATE_DERIVATIVE_BIT = 4
    VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 8
    VK_PIPELINE_CREATE_DISPATCH_BASE_BIT = 16
    VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR = 16384
    VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR = 32768
    VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR = 65536
    VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR = 131072
    VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR = 4096
    VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR = 8192
    VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV = 32
    VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR = 64
    VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR = 128
    VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV = 262144
    VK_PIPELINE_CREATE_LIBRARY_BIT_KHR = 2048
    VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT = 256
    VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT = 512
    VK_PIPELINE_CREATE_DISPATCH_BASE = 16
    VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR = 8
    VK_PIPELINE_CREATE_DISPATCH_BASE_KHR = 16
    VK_PIPELINE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkPipelineCreateFlags = VkFlags

@cenum VkPipelineShaderStageCreateFlagBits::UInt32 begin
    VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT = 1
    VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT = 2
    VK_PIPELINE_SHADER_STAGE_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkPipelineShaderStageCreateFlags = VkFlags

@cenum VkShaderStageFlagBits::UInt32 begin
    VK_SHADER_STAGE_VERTEX_BIT = 1
    VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 2
    VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 4
    VK_SHADER_STAGE_GEOMETRY_BIT = 8
    VK_SHADER_STAGE_FRAGMENT_BIT = 16
    VK_SHADER_STAGE_COMPUTE_BIT = 32
    VK_SHADER_STAGE_ALL_GRAPHICS = 31
    VK_SHADER_STAGE_ALL = 2147483647
    VK_SHADER_STAGE_RAYGEN_BIT_KHR = 256
    VK_SHADER_STAGE_ANY_HIT_BIT_KHR = 512
    VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR = 1024
    VK_SHADER_STAGE_MISS_BIT_KHR = 2048
    VK_SHADER_STAGE_INTERSECTION_BIT_KHR = 4096
    VK_SHADER_STAGE_CALLABLE_BIT_KHR = 8192
    VK_SHADER_STAGE_TASK_BIT_NV = 64
    VK_SHADER_STAGE_MESH_BIT_NV = 128
    VK_SHADER_STAGE_RAYGEN_BIT_NV = 256
    VK_SHADER_STAGE_ANY_HIT_BIT_NV = 512
    VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV = 1024
    VK_SHADER_STAGE_MISS_BIT_NV = 2048
    VK_SHADER_STAGE_INTERSECTION_BIT_NV = 4096
    VK_SHADER_STAGE_CALLABLE_BIT_NV = 8192
    VK_SHADER_STAGE_FLAG_BITS_MAX_ENUM = 2147483647
end

@cenum VkCullModeFlagBits::UInt32 begin
    VK_CULL_MODE_NONE = 0
    VK_CULL_MODE_FRONT_BIT = 1
    VK_CULL_MODE_BACK_BIT = 2
    VK_CULL_MODE_FRONT_AND_BACK = 3
    VK_CULL_MODE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkCullModeFlags = VkFlags
const VkPipelineVertexInputStateCreateFlags = VkFlags
const VkPipelineInputAssemblyStateCreateFlags = VkFlags
const VkPipelineTessellationStateCreateFlags = VkFlags
const VkPipelineViewportStateCreateFlags = VkFlags
const VkPipelineRasterizationStateCreateFlags = VkFlags
const VkPipelineMultisampleStateCreateFlags = VkFlags
const VkPipelineDepthStencilStateCreateFlags = VkFlags
const VkPipelineColorBlendStateCreateFlags = VkFlags
const VkPipelineDynamicStateCreateFlags = VkFlags
const VkPipelineLayoutCreateFlags = VkFlags
const VkShaderStageFlags = VkFlags

@cenum VkSamplerCreateFlagBits::UInt32 begin
    VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT = 1
    VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT = 2
    VK_SAMPLER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSamplerCreateFlags = VkFlags

@cenum VkDescriptorPoolCreateFlagBits::UInt32 begin
    VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 1
    VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT = 2
    VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT = 2
    VK_DESCRIPTOR_POOL_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkDescriptorPoolCreateFlags = VkFlags
const VkDescriptorPoolResetFlags = VkFlags

@cenum VkDescriptorSetLayoutCreateFlagBits::UInt32 begin
    VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT = 2
    VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR = 1
    VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT = 2
    VK_DESCRIPTOR_SET_LAYOUT_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkDescriptorSetLayoutCreateFlags = VkFlags

@cenum VkAttachmentDescriptionFlagBits::UInt32 begin
    VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 1
    VK_ATTACHMENT_DESCRIPTION_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkAttachmentDescriptionFlags = VkFlags

@cenum VkDependencyFlagBits::UInt32 begin
    VK_DEPENDENCY_BY_REGION_BIT = 1
    VK_DEPENDENCY_DEVICE_GROUP_BIT = 4
    VK_DEPENDENCY_VIEW_LOCAL_BIT = 2
    VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR = 2
    VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR = 4
    VK_DEPENDENCY_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkDependencyFlags = VkFlags

@cenum VkFramebufferCreateFlagBits::UInt32 begin
    VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT = 1
    VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR = 1
    VK_FRAMEBUFFER_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkFramebufferCreateFlags = VkFlags

@cenum VkRenderPassCreateFlagBits::UInt32 begin
    VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM = 2
    VK_RENDER_PASS_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkRenderPassCreateFlags = VkFlags

@cenum VkSubpassDescriptionFlagBits::UInt32 begin
    VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX = 1
    VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX = 2
    VK_SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM = 4
    VK_SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM = 8
    VK_SUBPASS_DESCRIPTION_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSubpassDescriptionFlags = VkFlags

@cenum VkCommandPoolCreateFlagBits::UInt32 begin
    VK_COMMAND_POOL_CREATE_TRANSIENT_BIT = 1
    VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 2
    VK_COMMAND_POOL_CREATE_PROTECTED_BIT = 4
    VK_COMMAND_POOL_CREATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkCommandPoolCreateFlags = VkFlags

@cenum VkCommandPoolResetFlagBits::UInt32 begin
    VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 1
    VK_COMMAND_POOL_RESET_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkCommandPoolResetFlags = VkFlags

@cenum VkCommandBufferUsageFlagBits::UInt32 begin
    VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 1
    VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 2
    VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 4
    VK_COMMAND_BUFFER_USAGE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkCommandBufferUsageFlags = VkFlags

@cenum VkQueryControlFlagBits::UInt32 begin
    VK_QUERY_CONTROL_PRECISE_BIT = 1
    VK_QUERY_CONTROL_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkQueryControlFlags = VkFlags

@cenum VkCommandBufferResetFlagBits::UInt32 begin
    VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 1
    VK_COMMAND_BUFFER_RESET_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkCommandBufferResetFlags = VkFlags

@cenum VkStencilFaceFlagBits::UInt32 begin
    VK_STENCIL_FACE_FRONT_BIT = 1
    VK_STENCIL_FACE_BACK_BIT = 2
    VK_STENCIL_FACE_FRONT_AND_BACK = 3
    VK_STENCIL_FRONT_AND_BACK = 3
    VK_STENCIL_FACE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkStencilFaceFlags = VkFlags

struct VkExtent2D
    width::UInt32
    height::UInt32
end

struct VkExtent3D
    width::UInt32
    height::UInt32
    depth::UInt32
end

struct VkOffset2D
    x::Int32
    y::Int32
end

struct VkOffset3D
    x::Int32
    y::Int32
    z::Int32
end

struct VkRect2D
    offset::VkOffset2D
    extent::VkExtent2D
end

struct VkBaseInStructure
    sType::VkStructureType
    pNext::Ptr{VkBaseInStructure}
end

struct VkBaseOutStructure
    sType::VkStructureType
    pNext::Ptr{VkBaseOutStructure}
end

struct VkBufferMemoryBarrier
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcAccessMask::VkAccessFlags
    dstAccessMask::VkAccessFlags
    srcQueueFamilyIndex::UInt32
    dstQueueFamilyIndex::UInt32
    buffer::VkBuffer
    offset::VkDeviceSize
    size::VkDeviceSize
end

struct VkDispatchIndirectCommand
    x::UInt32
    y::UInt32
    z::UInt32
end

struct VkDrawIndexedIndirectCommand
    indexCount::UInt32
    instanceCount::UInt32
    firstIndex::UInt32
    vertexOffset::Int32
    firstInstance::UInt32
end

struct VkDrawIndirectCommand
    vertexCount::UInt32
    instanceCount::UInt32
    firstVertex::UInt32
    firstInstance::UInt32
end

struct VkImageSubresourceRange
    aspectMask::VkImageAspectFlags
    baseMipLevel::UInt32
    levelCount::UInt32
    baseArrayLayer::UInt32
    layerCount::UInt32
end

struct VkImageMemoryBarrier
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcAccessMask::VkAccessFlags
    dstAccessMask::VkAccessFlags
    oldLayout::VkImageLayout
    newLayout::VkImageLayout
    srcQueueFamilyIndex::UInt32
    dstQueueFamilyIndex::UInt32
    image::VkImage
    subresourceRange::VkImageSubresourceRange
end

struct VkMemoryBarrier
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcAccessMask::VkAccessFlags
    dstAccessMask::VkAccessFlags
end

const PFN_vkAllocationFunction = Ptr{Cvoid}
const PFN_vkFreeFunction = Ptr{Cvoid}
const PFN_vkInternalAllocationNotification = Ptr{Cvoid}
const PFN_vkInternalFreeNotification = Ptr{Cvoid}
const PFN_vkReallocationFunction = Ptr{Cvoid}
const PFN_vkVoidFunction = Ptr{Cvoid}

struct VkAllocationCallbacks
    pUserData::Ptr{Cvoid}
    pfnAllocation::PFN_vkAllocationFunction
    pfnReallocation::PFN_vkReallocationFunction
    pfnFree::PFN_vkFreeFunction
    pfnInternalAllocation::PFN_vkInternalAllocationNotification
    pfnInternalFree::PFN_vkInternalFreeNotification
end

struct VkApplicationInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pApplicationName::Cstring
    applicationVersion::UInt32
    pEngineName::Cstring
    engineVersion::UInt32
    apiVersion::UInt32
end

struct VkFormatProperties
    linearTilingFeatures::VkFormatFeatureFlags
    optimalTilingFeatures::VkFormatFeatureFlags
    bufferFeatures::VkFormatFeatureFlags
end

struct VkImageFormatProperties
    maxExtent::VkExtent3D
    maxMipLevels::UInt32
    maxArrayLayers::UInt32
    sampleCounts::VkSampleCountFlags
    maxResourceSize::VkDeviceSize
end

struct VkInstanceCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkInstanceCreateFlags
    pApplicationInfo::Ptr{VkApplicationInfo}
    enabledLayerCount::UInt32
    ppEnabledLayerNames::Ptr{Cstring}
    enabledExtensionCount::UInt32
    ppEnabledExtensionNames::Ptr{Cstring}
end

struct VkMemoryHeap
    size::VkDeviceSize
    flags::VkMemoryHeapFlags
end

struct VkMemoryType
    propertyFlags::VkMemoryPropertyFlags
    heapIndex::UInt32
end

struct VkPhysicalDeviceFeatures
    robustBufferAccess::VkBool32
    fullDrawIndexUint32::VkBool32
    imageCubeArray::VkBool32
    independentBlend::VkBool32
    geometryShader::VkBool32
    tessellationShader::VkBool32
    sampleRateShading::VkBool32
    dualSrcBlend::VkBool32
    logicOp::VkBool32
    multiDrawIndirect::VkBool32
    drawIndirectFirstInstance::VkBool32
    depthClamp::VkBool32
    depthBiasClamp::VkBool32
    fillModeNonSolid::VkBool32
    depthBounds::VkBool32
    wideLines::VkBool32
    largePoints::VkBool32
    alphaToOne::VkBool32
    multiViewport::VkBool32
    samplerAnisotropy::VkBool32
    textureCompressionETC2::VkBool32
    textureCompressionASTC_LDR::VkBool32
    textureCompressionBC::VkBool32
    occlusionQueryPrecise::VkBool32
    pipelineStatisticsQuery::VkBool32
    vertexPipelineStoresAndAtomics::VkBool32
    fragmentStoresAndAtomics::VkBool32
    shaderTessellationAndGeometryPointSize::VkBool32
    shaderImageGatherExtended::VkBool32
    shaderStorageImageExtendedFormats::VkBool32
    shaderStorageImageMultisample::VkBool32
    shaderStorageImageReadWithoutFormat::VkBool32
    shaderStorageImageWriteWithoutFormat::VkBool32
    shaderUniformBufferArrayDynamicIndexing::VkBool32
    shaderSampledImageArrayDynamicIndexing::VkBool32
    shaderStorageBufferArrayDynamicIndexing::VkBool32
    shaderStorageImageArrayDynamicIndexing::VkBool32
    shaderClipDistance::VkBool32
    shaderCullDistance::VkBool32
    shaderFloat64::VkBool32
    shaderInt64::VkBool32
    shaderInt16::VkBool32
    shaderResourceResidency::VkBool32
    shaderResourceMinLod::VkBool32
    sparseBinding::VkBool32
    sparseResidencyBuffer::VkBool32
    sparseResidencyImage2D::VkBool32
    sparseResidencyImage3D::VkBool32
    sparseResidency2Samples::VkBool32
    sparseResidency4Samples::VkBool32
    sparseResidency8Samples::VkBool32
    sparseResidency16Samples::VkBool32
    sparseResidencyAliased::VkBool32
    variableMultisampleRate::VkBool32
    inheritedQueries::VkBool32
end

struct VkPhysicalDeviceLimits
    maxImageDimension1D::UInt32
    maxImageDimension2D::UInt32
    maxImageDimension3D::UInt32
    maxImageDimensionCube::UInt32
    maxImageArrayLayers::UInt32
    maxTexelBufferElements::UInt32
    maxUniformBufferRange::UInt32
    maxStorageBufferRange::UInt32
    maxPushConstantsSize::UInt32
    maxMemoryAllocationCount::UInt32
    maxSamplerAllocationCount::UInt32
    bufferImageGranularity::VkDeviceSize
    sparseAddressSpaceSize::VkDeviceSize
    maxBoundDescriptorSets::UInt32
    maxPerStageDescriptorSamplers::UInt32
    maxPerStageDescriptorUniformBuffers::UInt32
    maxPerStageDescriptorStorageBuffers::UInt32
    maxPerStageDescriptorSampledImages::UInt32
    maxPerStageDescriptorStorageImages::UInt32
    maxPerStageDescriptorInputAttachments::UInt32
    maxPerStageResources::UInt32
    maxDescriptorSetSamplers::UInt32
    maxDescriptorSetUniformBuffers::UInt32
    maxDescriptorSetUniformBuffersDynamic::UInt32
    maxDescriptorSetStorageBuffers::UInt32
    maxDescriptorSetStorageBuffersDynamic::UInt32
    maxDescriptorSetSampledImages::UInt32
    maxDescriptorSetStorageImages::UInt32
    maxDescriptorSetInputAttachments::UInt32
    maxVertexInputAttributes::UInt32
    maxVertexInputBindings::UInt32
    maxVertexInputAttributeOffset::UInt32
    maxVertexInputBindingStride::UInt32
    maxVertexOutputComponents::UInt32
    maxTessellationGenerationLevel::UInt32
    maxTessellationPatchSize::UInt32
    maxTessellationControlPerVertexInputComponents::UInt32
    maxTessellationControlPerVertexOutputComponents::UInt32
    maxTessellationControlPerPatchOutputComponents::UInt32
    maxTessellationControlTotalOutputComponents::UInt32
    maxTessellationEvaluationInputComponents::UInt32
    maxTessellationEvaluationOutputComponents::UInt32
    maxGeometryShaderInvocations::UInt32
    maxGeometryInputComponents::UInt32
    maxGeometryOutputComponents::UInt32
    maxGeometryOutputVertices::UInt32
    maxGeometryTotalOutputComponents::UInt32
    maxFragmentInputComponents::UInt32
    maxFragmentOutputAttachments::UInt32
    maxFragmentDualSrcAttachments::UInt32
    maxFragmentCombinedOutputResources::UInt32
    maxComputeSharedMemorySize::UInt32
    maxComputeWorkGroupCount::NTuple{3, UInt32}
    maxComputeWorkGroupInvocations::UInt32
    maxComputeWorkGroupSize::NTuple{3, UInt32}
    subPixelPrecisionBits::UInt32
    subTexelPrecisionBits::UInt32
    mipmapPrecisionBits::UInt32
    maxDrawIndexedIndexValue::UInt32
    maxDrawIndirectCount::UInt32
    maxSamplerLodBias::Cfloat
    maxSamplerAnisotropy::Cfloat
    maxViewports::UInt32
    maxViewportDimensions::NTuple{2, UInt32}
    viewportBoundsRange::NTuple{2, Cfloat}
    viewportSubPixelBits::UInt32
    minMemoryMapAlignment::Csize_t
    minTexelBufferOffsetAlignment::VkDeviceSize
    minUniformBufferOffsetAlignment::VkDeviceSize
    minStorageBufferOffsetAlignment::VkDeviceSize
    minTexelOffset::Int32
    maxTexelOffset::UInt32
    minTexelGatherOffset::Int32
    maxTexelGatherOffset::UInt32
    minInterpolationOffset::Cfloat
    maxInterpolationOffset::Cfloat
    subPixelInterpolationOffsetBits::UInt32
    maxFramebufferWidth::UInt32
    maxFramebufferHeight::UInt32
    maxFramebufferLayers::UInt32
    framebufferColorSampleCounts::VkSampleCountFlags
    framebufferDepthSampleCounts::VkSampleCountFlags
    framebufferStencilSampleCounts::VkSampleCountFlags
    framebufferNoAttachmentsSampleCounts::VkSampleCountFlags
    maxColorAttachments::UInt32
    sampledImageColorSampleCounts::VkSampleCountFlags
    sampledImageIntegerSampleCounts::VkSampleCountFlags
    sampledImageDepthSampleCounts::VkSampleCountFlags
    sampledImageStencilSampleCounts::VkSampleCountFlags
    storageImageSampleCounts::VkSampleCountFlags
    maxSampleMaskWords::UInt32
    timestampComputeAndGraphics::VkBool32
    timestampPeriod::Cfloat
    maxClipDistances::UInt32
    maxCullDistances::UInt32
    maxCombinedClipAndCullDistances::UInt32
    discreteQueuePriorities::UInt32
    pointSizeRange::NTuple{2, Cfloat}
    lineWidthRange::NTuple{2, Cfloat}
    pointSizeGranularity::Cfloat
    lineWidthGranularity::Cfloat
    strictLines::VkBool32
    standardSampleLocations::VkBool32
    optimalBufferCopyOffsetAlignment::VkDeviceSize
    optimalBufferCopyRowPitchAlignment::VkDeviceSize
    nonCoherentAtomSize::VkDeviceSize
end

struct VkPhysicalDeviceMemoryProperties
    memoryTypeCount::UInt32
    memoryTypes::NTuple{32, VkMemoryType}
    memoryHeapCount::UInt32
    memoryHeaps::NTuple{16, VkMemoryHeap}
end

struct VkPhysicalDeviceSparseProperties
    residencyStandard2DBlockShape::VkBool32
    residencyStandard2DMultisampleBlockShape::VkBool32
    residencyStandard3DBlockShape::VkBool32
    residencyAlignedMipSize::VkBool32
    residencyNonResidentStrict::VkBool32
end

struct VkPhysicalDeviceProperties
    apiVersion::UInt32
    driverVersion::UInt32
    vendorID::UInt32
    deviceID::UInt32
    deviceType::VkPhysicalDeviceType
    deviceName::NTuple{256, UInt8}
    pipelineCacheUUID::NTuple{16, UInt8}
    limits::VkPhysicalDeviceLimits
    sparseProperties::VkPhysicalDeviceSparseProperties
end

struct VkQueueFamilyProperties
    queueFlags::VkQueueFlags
    queueCount::UInt32
    timestampValidBits::UInt32
    minImageTransferGranularity::VkExtent3D
end

struct VkDeviceQueueCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDeviceQueueCreateFlags
    queueFamilyIndex::UInt32
    queueCount::UInt32
    pQueuePriorities::Ptr{Cfloat}
end

struct VkDeviceCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDeviceCreateFlags
    queueCreateInfoCount::UInt32
    pQueueCreateInfos::Ptr{VkDeviceQueueCreateInfo}
    enabledLayerCount::UInt32
    ppEnabledLayerNames::Ptr{Cstring}
    enabledExtensionCount::UInt32
    ppEnabledExtensionNames::Ptr{Cstring}
    pEnabledFeatures::Ptr{VkPhysicalDeviceFeatures}
end

struct VkExtensionProperties
    extensionName::NTuple{256, UInt8}
    specVersion::UInt32
end

struct VkLayerProperties
    layerName::NTuple{256, UInt8}
    specVersion::UInt32
    implementationVersion::UInt32
    description::NTuple{256, UInt8}
end

struct VkSubmitInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreCount::UInt32
    pWaitSemaphores::Ptr{VkSemaphore}
    pWaitDstStageMask::Ptr{VkPipelineStageFlags}
    commandBufferCount::UInt32
    pCommandBuffers::Ptr{VkCommandBuffer}
    signalSemaphoreCount::UInt32
    pSignalSemaphores::Ptr{VkSemaphore}
end

struct VkMappedMemoryRange
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memory::VkDeviceMemory
    offset::VkDeviceSize
    size::VkDeviceSize
end

struct VkMemoryAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    allocationSize::VkDeviceSize
    memoryTypeIndex::UInt32
end

struct VkMemoryRequirements
    size::VkDeviceSize
    alignment::VkDeviceSize
    memoryTypeBits::UInt32
end

struct VkSparseMemoryBind
    resourceOffset::VkDeviceSize
    size::VkDeviceSize
    memory::VkDeviceMemory
    memoryOffset::VkDeviceSize
    flags::VkSparseMemoryBindFlags
end

struct VkSparseBufferMemoryBindInfo
    buffer::VkBuffer
    bindCount::UInt32
    pBinds::Ptr{VkSparseMemoryBind}
end

struct VkSparseImageOpaqueMemoryBindInfo
    image::VkImage
    bindCount::UInt32
    pBinds::Ptr{VkSparseMemoryBind}
end

struct VkImageSubresource
    aspectMask::VkImageAspectFlags
    mipLevel::UInt32
    arrayLayer::UInt32
end

struct VkSparseImageMemoryBind
    subresource::VkImageSubresource
    offset::VkOffset3D
    extent::VkExtent3D
    memory::VkDeviceMemory
    memoryOffset::VkDeviceSize
    flags::VkSparseMemoryBindFlags
end

struct VkSparseImageMemoryBindInfo
    image::VkImage
    bindCount::UInt32
    pBinds::Ptr{VkSparseImageMemoryBind}
end

struct VkBindSparseInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreCount::UInt32
    pWaitSemaphores::Ptr{VkSemaphore}
    bufferBindCount::UInt32
    pBufferBinds::Ptr{VkSparseBufferMemoryBindInfo}
    imageOpaqueBindCount::UInt32
    pImageOpaqueBinds::Ptr{VkSparseImageOpaqueMemoryBindInfo}
    imageBindCount::UInt32
    pImageBinds::Ptr{VkSparseImageMemoryBindInfo}
    signalSemaphoreCount::UInt32
    pSignalSemaphores::Ptr{VkSemaphore}
end

struct VkSparseImageFormatProperties
    aspectMask::VkImageAspectFlags
    imageGranularity::VkExtent3D
    flags::VkSparseImageFormatFlags
end

struct VkSparseImageMemoryRequirements
    formatProperties::VkSparseImageFormatProperties
    imageMipTailFirstLod::UInt32
    imageMipTailSize::VkDeviceSize
    imageMipTailOffset::VkDeviceSize
    imageMipTailStride::VkDeviceSize
end

struct VkFenceCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkFenceCreateFlags
end

struct VkSemaphoreCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkSemaphoreCreateFlags
end

struct VkEventCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkEventCreateFlags
end

struct VkQueryPoolCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkQueryPoolCreateFlags
    queryType::VkQueryType
    queryCount::UInt32
    pipelineStatistics::VkQueryPipelineStatisticFlags
end

struct VkBufferCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkBufferCreateFlags
    size::VkDeviceSize
    usage::VkBufferUsageFlags
    sharingMode::VkSharingMode
    queueFamilyIndexCount::UInt32
    pQueueFamilyIndices::Ptr{UInt32}
end

struct VkBufferViewCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkBufferViewCreateFlags
    buffer::VkBuffer
    format::VkFormat
    offset::VkDeviceSize
    range::VkDeviceSize
end

struct VkImageCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkImageCreateFlags
    imageType::VkImageType
    format::VkFormat
    extent::VkExtent3D
    mipLevels::UInt32
    arrayLayers::UInt32
    samples::VkSampleCountFlagBits
    tiling::VkImageTiling
    usage::VkImageUsageFlags
    sharingMode::VkSharingMode
    queueFamilyIndexCount::UInt32
    pQueueFamilyIndices::Ptr{UInt32}
    initialLayout::VkImageLayout
end

struct VkSubresourceLayout
    offset::VkDeviceSize
    size::VkDeviceSize
    rowPitch::VkDeviceSize
    arrayPitch::VkDeviceSize
    depthPitch::VkDeviceSize
end

struct VkComponentMapping
    r::VkComponentSwizzle
    g::VkComponentSwizzle
    b::VkComponentSwizzle
    a::VkComponentSwizzle
end

struct VkImageViewCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkImageViewCreateFlags
    image::VkImage
    viewType::VkImageViewType
    format::VkFormat
    components::VkComponentMapping
    subresourceRange::VkImageSubresourceRange
end

struct VkShaderModuleCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkShaderModuleCreateFlags
    codeSize::Csize_t
    pCode::Ptr{UInt32}
end

struct VkPipelineCacheCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCacheCreateFlags
    initialDataSize::Csize_t
    pInitialData::Ptr{Cvoid}
end

struct VkSpecializationMapEntry
    constantID::UInt32
    offset::UInt32
    size::Csize_t
end

struct VkSpecializationInfo
    mapEntryCount::UInt32
    pMapEntries::Ptr{VkSpecializationMapEntry}
    dataSize::Csize_t
    pData::Ptr{Cvoid}
end

struct VkPipelineShaderStageCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineShaderStageCreateFlags
    stage::VkShaderStageFlagBits
    _module::VkShaderModule
    pName::Cstring
    pSpecializationInfo::Ptr{VkSpecializationInfo}
end

struct VkComputePipelineCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCreateFlags
    stage::VkPipelineShaderStageCreateInfo
    layout::VkPipelineLayout
    basePipelineHandle::VkPipeline
    basePipelineIndex::Int32
end

struct VkVertexInputBindingDescription
    binding::UInt32
    stride::UInt32
    inputRate::VkVertexInputRate
end

struct VkVertexInputAttributeDescription
    location::UInt32
    binding::UInt32
    format::VkFormat
    offset::UInt32
end

struct VkPipelineVertexInputStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineVertexInputStateCreateFlags
    vertexBindingDescriptionCount::UInt32
    pVertexBindingDescriptions::Ptr{VkVertexInputBindingDescription}
    vertexAttributeDescriptionCount::UInt32
    pVertexAttributeDescriptions::Ptr{VkVertexInputAttributeDescription}
end

struct VkPipelineInputAssemblyStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineInputAssemblyStateCreateFlags
    topology::VkPrimitiveTopology
    primitiveRestartEnable::VkBool32
end

struct VkPipelineTessellationStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineTessellationStateCreateFlags
    patchControlPoints::UInt32
end

struct VkViewport
    x::Cfloat
    y::Cfloat
    width::Cfloat
    height::Cfloat
    minDepth::Cfloat
    maxDepth::Cfloat
end

struct VkPipelineViewportStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineViewportStateCreateFlags
    viewportCount::UInt32
    pViewports::Ptr{VkViewport}
    scissorCount::UInt32
    pScissors::Ptr{VkRect2D}
end

struct VkPipelineRasterizationStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineRasterizationStateCreateFlags
    depthClampEnable::VkBool32
    rasterizerDiscardEnable::VkBool32
    polygonMode::VkPolygonMode
    cullMode::VkCullModeFlags
    frontFace::VkFrontFace
    depthBiasEnable::VkBool32
    depthBiasConstantFactor::Cfloat
    depthBiasClamp::Cfloat
    depthBiasSlopeFactor::Cfloat
    lineWidth::Cfloat
end

struct VkPipelineMultisampleStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineMultisampleStateCreateFlags
    rasterizationSamples::VkSampleCountFlagBits
    sampleShadingEnable::VkBool32
    minSampleShading::Cfloat
    pSampleMask::Ptr{VkSampleMask}
    alphaToCoverageEnable::VkBool32
    alphaToOneEnable::VkBool32
end

struct VkStencilOpState
    failOp::VkStencilOp
    passOp::VkStencilOp
    depthFailOp::VkStencilOp
    compareOp::VkCompareOp
    compareMask::UInt32
    writeMask::UInt32
    reference::UInt32
end

struct VkPipelineDepthStencilStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineDepthStencilStateCreateFlags
    depthTestEnable::VkBool32
    depthWriteEnable::VkBool32
    depthCompareOp::VkCompareOp
    depthBoundsTestEnable::VkBool32
    stencilTestEnable::VkBool32
    front::VkStencilOpState
    back::VkStencilOpState
    minDepthBounds::Cfloat
    maxDepthBounds::Cfloat
end

struct VkPipelineColorBlendAttachmentState
    blendEnable::VkBool32
    srcColorBlendFactor::VkBlendFactor
    dstColorBlendFactor::VkBlendFactor
    colorBlendOp::VkBlendOp
    srcAlphaBlendFactor::VkBlendFactor
    dstAlphaBlendFactor::VkBlendFactor
    alphaBlendOp::VkBlendOp
    colorWriteMask::VkColorComponentFlags
end

struct VkPipelineColorBlendStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineColorBlendStateCreateFlags
    logicOpEnable::VkBool32
    logicOp::VkLogicOp
    attachmentCount::UInt32
    pAttachments::Ptr{VkPipelineColorBlendAttachmentState}
    blendConstants::NTuple{4, Cfloat}
end

struct VkPipelineDynamicStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineDynamicStateCreateFlags
    dynamicStateCount::UInt32
    pDynamicStates::Ptr{VkDynamicState}
end

struct VkGraphicsPipelineCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCreateFlags
    stageCount::UInt32
    pStages::Ptr{VkPipelineShaderStageCreateInfo}
    pVertexInputState::Ptr{VkPipelineVertexInputStateCreateInfo}
    pInputAssemblyState::Ptr{VkPipelineInputAssemblyStateCreateInfo}
    pTessellationState::Ptr{VkPipelineTessellationStateCreateInfo}
    pViewportState::Ptr{VkPipelineViewportStateCreateInfo}
    pRasterizationState::Ptr{VkPipelineRasterizationStateCreateInfo}
    pMultisampleState::Ptr{VkPipelineMultisampleStateCreateInfo}
    pDepthStencilState::Ptr{VkPipelineDepthStencilStateCreateInfo}
    pColorBlendState::Ptr{VkPipelineColorBlendStateCreateInfo}
    pDynamicState::Ptr{VkPipelineDynamicStateCreateInfo}
    layout::VkPipelineLayout
    renderPass::VkRenderPass
    subpass::UInt32
    basePipelineHandle::VkPipeline
    basePipelineIndex::Int32
end

struct VkPushConstantRange
    stageFlags::VkShaderStageFlags
    offset::UInt32
    size::UInt32
end

struct VkPipelineLayoutCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineLayoutCreateFlags
    setLayoutCount::UInt32
    pSetLayouts::Ptr{VkDescriptorSetLayout}
    pushConstantRangeCount::UInt32
    pPushConstantRanges::Ptr{VkPushConstantRange}
end

struct VkSamplerCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkSamplerCreateFlags
    magFilter::VkFilter
    minFilter::VkFilter
    mipmapMode::VkSamplerMipmapMode
    addressModeU::VkSamplerAddressMode
    addressModeV::VkSamplerAddressMode
    addressModeW::VkSamplerAddressMode
    mipLodBias::Cfloat
    anisotropyEnable::VkBool32
    maxAnisotropy::Cfloat
    compareEnable::VkBool32
    compareOp::VkCompareOp
    minLod::Cfloat
    maxLod::Cfloat
    borderColor::VkBorderColor
    unnormalizedCoordinates::VkBool32
end

struct VkCopyDescriptorSet
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcSet::VkDescriptorSet
    srcBinding::UInt32
    srcArrayElement::UInt32
    dstSet::VkDescriptorSet
    dstBinding::UInt32
    dstArrayElement::UInt32
    descriptorCount::UInt32
end

struct VkDescriptorBufferInfo
    buffer::VkBuffer
    offset::VkDeviceSize
    range::VkDeviceSize
end

struct VkDescriptorImageInfo
    sampler::VkSampler
    imageView::VkImageView
    imageLayout::VkImageLayout
end

struct VkDescriptorPoolSize
    type::VkDescriptorType
    descriptorCount::UInt32
end

struct VkDescriptorPoolCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDescriptorPoolCreateFlags
    maxSets::UInt32
    poolSizeCount::UInt32
    pPoolSizes::Ptr{VkDescriptorPoolSize}
end

struct VkDescriptorSetAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    descriptorPool::VkDescriptorPool
    descriptorSetCount::UInt32
    pSetLayouts::Ptr{VkDescriptorSetLayout}
end

struct VkDescriptorSetLayoutBinding
    binding::UInt32
    descriptorType::VkDescriptorType
    descriptorCount::UInt32
    stageFlags::VkShaderStageFlags
    pImmutableSamplers::Ptr{VkSampler}
end

struct VkDescriptorSetLayoutCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDescriptorSetLayoutCreateFlags
    bindingCount::UInt32
    pBindings::Ptr{VkDescriptorSetLayoutBinding}
end

struct VkWriteDescriptorSet
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    dstSet::VkDescriptorSet
    dstBinding::UInt32
    dstArrayElement::UInt32
    descriptorCount::UInt32
    descriptorType::VkDescriptorType
    pImageInfo::Ptr{VkDescriptorImageInfo}
    pBufferInfo::Ptr{VkDescriptorBufferInfo}
    pTexelBufferView::Ptr{VkBufferView}
end

struct VkAttachmentDescription
    flags::VkAttachmentDescriptionFlags
    format::VkFormat
    samples::VkSampleCountFlagBits
    loadOp::VkAttachmentLoadOp
    storeOp::VkAttachmentStoreOp
    stencilLoadOp::VkAttachmentLoadOp
    stencilStoreOp::VkAttachmentStoreOp
    initialLayout::VkImageLayout
    finalLayout::VkImageLayout
end

struct VkAttachmentReference
    attachment::UInt32
    layout::VkImageLayout
end

struct VkFramebufferCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkFramebufferCreateFlags
    renderPass::VkRenderPass
    attachmentCount::UInt32
    pAttachments::Ptr{VkImageView}
    width::UInt32
    height::UInt32
    layers::UInt32
end

struct VkSubpassDescription
    flags::VkSubpassDescriptionFlags
    pipelineBindPoint::VkPipelineBindPoint
    inputAttachmentCount::UInt32
    pInputAttachments::Ptr{VkAttachmentReference}
    colorAttachmentCount::UInt32
    pColorAttachments::Ptr{VkAttachmentReference}
    pResolveAttachments::Ptr{VkAttachmentReference}
    pDepthStencilAttachment::Ptr{VkAttachmentReference}
    preserveAttachmentCount::UInt32
    pPreserveAttachments::Ptr{UInt32}
end

struct VkSubpassDependency
    srcSubpass::UInt32
    dstSubpass::UInt32
    srcStageMask::VkPipelineStageFlags
    dstStageMask::VkPipelineStageFlags
    srcAccessMask::VkAccessFlags
    dstAccessMask::VkAccessFlags
    dependencyFlags::VkDependencyFlags
end

struct VkRenderPassCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkRenderPassCreateFlags
    attachmentCount::UInt32
    pAttachments::Ptr{VkAttachmentDescription}
    subpassCount::UInt32
    pSubpasses::Ptr{VkSubpassDescription}
    dependencyCount::UInt32
    pDependencies::Ptr{VkSubpassDependency}
end

struct VkCommandPoolCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkCommandPoolCreateFlags
    queueFamilyIndex::UInt32
end

struct VkCommandBufferAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    commandPool::VkCommandPool
    level::VkCommandBufferLevel
    commandBufferCount::UInt32
end

struct VkCommandBufferInheritanceInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    renderPass::VkRenderPass
    subpass::UInt32
    framebuffer::VkFramebuffer
    occlusionQueryEnable::VkBool32
    queryFlags::VkQueryControlFlags
    pipelineStatistics::VkQueryPipelineStatisticFlags
end

struct VkCommandBufferBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkCommandBufferUsageFlags
    pInheritanceInfo::Ptr{VkCommandBufferInheritanceInfo}
end

struct VkBufferCopy
    srcOffset::VkDeviceSize
    dstOffset::VkDeviceSize
    size::VkDeviceSize
end

struct VkImageSubresourceLayers
    aspectMask::VkImageAspectFlags
    mipLevel::UInt32
    baseArrayLayer::UInt32
    layerCount::UInt32
end

struct VkBufferImageCopy
    bufferOffset::VkDeviceSize
    bufferRowLength::UInt32
    bufferImageHeight::UInt32
    imageSubresource::VkImageSubresourceLayers
    imageOffset::VkOffset3D
    imageExtent::VkExtent3D
end

struct VkClearColorValue
    float32::NTuple{4, Cfloat}
end

struct VkClearDepthStencilValue
    depth::Cfloat
    stencil::UInt32
end

struct VkClearValue
    color::VkClearColorValue
end

struct VkClearAttachment
    aspectMask::VkImageAspectFlags
    colorAttachment::UInt32
    clearValue::VkClearValue
end

struct VkClearRect
    rect::VkRect2D
    baseArrayLayer::UInt32
    layerCount::UInt32
end

struct VkImageBlit
    srcSubresource::VkImageSubresourceLayers
    srcOffsets::NTuple{2, VkOffset3D}
    dstSubresource::VkImageSubresourceLayers
    dstOffsets::NTuple{2, VkOffset3D}
end

struct VkImageCopy
    srcSubresource::VkImageSubresourceLayers
    srcOffset::VkOffset3D
    dstSubresource::VkImageSubresourceLayers
    dstOffset::VkOffset3D
    extent::VkExtent3D
end

struct VkImageResolve
    srcSubresource::VkImageSubresourceLayers
    srcOffset::VkOffset3D
    dstSubresource::VkImageSubresourceLayers
    dstOffset::VkOffset3D
    extent::VkExtent3D
end

struct VkRenderPassBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    renderPass::VkRenderPass
    framebuffer::VkFramebuffer
    renderArea::VkRect2D
    clearValueCount::UInt32
    pClearValues::Ptr{VkClearValue}
end

const PFN_vkCreateInstance = Ptr{Cvoid}
const PFN_vkDestroyInstance = Ptr{Cvoid}
const PFN_vkEnumeratePhysicalDevices = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFeatures = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties = Ptr{Cvoid}
const PFN_vkGetInstanceProcAddr = Ptr{Cvoid}
const PFN_vkGetDeviceProcAddr = Ptr{Cvoid}
const PFN_vkCreateDevice = Ptr{Cvoid}
const PFN_vkDestroyDevice = Ptr{Cvoid}
const PFN_vkEnumerateInstanceExtensionProperties = Ptr{Cvoid}
const PFN_vkEnumerateDeviceExtensionProperties = Ptr{Cvoid}
const PFN_vkEnumerateInstanceLayerProperties = Ptr{Cvoid}
const PFN_vkEnumerateDeviceLayerProperties = Ptr{Cvoid}
const PFN_vkGetDeviceQueue = Ptr{Cvoid}
const PFN_vkQueueSubmit = Ptr{Cvoid}
const PFN_vkQueueWaitIdle = Ptr{Cvoid}
const PFN_vkDeviceWaitIdle = Ptr{Cvoid}
const PFN_vkAllocateMemory = Ptr{Cvoid}
const PFN_vkFreeMemory = Ptr{Cvoid}
const PFN_vkMapMemory = Ptr{Cvoid}
const PFN_vkUnmapMemory = Ptr{Cvoid}
const PFN_vkFlushMappedMemoryRanges = Ptr{Cvoid}
const PFN_vkInvalidateMappedMemoryRanges = Ptr{Cvoid}
const PFN_vkGetDeviceMemoryCommitment = Ptr{Cvoid}
const PFN_vkBindBufferMemory = Ptr{Cvoid}
const PFN_vkBindImageMemory = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements = Ptr{Cvoid}
const PFN_vkGetImageMemoryRequirements = Ptr{Cvoid}
const PFN_vkGetImageSparseMemoryRequirements = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties = Ptr{Cvoid}
const PFN_vkQueueBindSparse = Ptr{Cvoid}
const PFN_vkCreateFence = Ptr{Cvoid}
const PFN_vkDestroyFence = Ptr{Cvoid}
const PFN_vkResetFences = Ptr{Cvoid}
const PFN_vkGetFenceStatus = Ptr{Cvoid}
const PFN_vkWaitForFences = Ptr{Cvoid}
const PFN_vkCreateSemaphore = Ptr{Cvoid}
const PFN_vkDestroySemaphore = Ptr{Cvoid}
const PFN_vkCreateEvent = Ptr{Cvoid}
const PFN_vkDestroyEvent = Ptr{Cvoid}
const PFN_vkGetEventStatus = Ptr{Cvoid}
const PFN_vkSetEvent = Ptr{Cvoid}
const PFN_vkResetEvent = Ptr{Cvoid}
const PFN_vkCreateQueryPool = Ptr{Cvoid}
const PFN_vkDestroyQueryPool = Ptr{Cvoid}
const PFN_vkGetQueryPoolResults = Ptr{Cvoid}
const PFN_vkCreateBuffer = Ptr{Cvoid}
const PFN_vkDestroyBuffer = Ptr{Cvoid}
const PFN_vkCreateBufferView = Ptr{Cvoid}
const PFN_vkDestroyBufferView = Ptr{Cvoid}
const PFN_vkCreateImage = Ptr{Cvoid}
const PFN_vkDestroyImage = Ptr{Cvoid}
const PFN_vkGetImageSubresourceLayout = Ptr{Cvoid}
const PFN_vkCreateImageView = Ptr{Cvoid}
const PFN_vkDestroyImageView = Ptr{Cvoid}
const PFN_vkCreateShaderModule = Ptr{Cvoid}
const PFN_vkDestroyShaderModule = Ptr{Cvoid}
const PFN_vkCreatePipelineCache = Ptr{Cvoid}
const PFN_vkDestroyPipelineCache = Ptr{Cvoid}
const PFN_vkGetPipelineCacheData = Ptr{Cvoid}
const PFN_vkMergePipelineCaches = Ptr{Cvoid}
const PFN_vkCreateGraphicsPipelines = Ptr{Cvoid}
const PFN_vkCreateComputePipelines = Ptr{Cvoid}
const PFN_vkDestroyPipeline = Ptr{Cvoid}
const PFN_vkCreatePipelineLayout = Ptr{Cvoid}
const PFN_vkDestroyPipelineLayout = Ptr{Cvoid}
const PFN_vkCreateSampler = Ptr{Cvoid}
const PFN_vkDestroySampler = Ptr{Cvoid}
const PFN_vkCreateDescriptorSetLayout = Ptr{Cvoid}
const PFN_vkDestroyDescriptorSetLayout = Ptr{Cvoid}
const PFN_vkCreateDescriptorPool = Ptr{Cvoid}
const PFN_vkDestroyDescriptorPool = Ptr{Cvoid}
const PFN_vkResetDescriptorPool = Ptr{Cvoid}
const PFN_vkAllocateDescriptorSets = Ptr{Cvoid}
const PFN_vkFreeDescriptorSets = Ptr{Cvoid}
const PFN_vkUpdateDescriptorSets = Ptr{Cvoid}
const PFN_vkCreateFramebuffer = Ptr{Cvoid}
const PFN_vkDestroyFramebuffer = Ptr{Cvoid}
const PFN_vkCreateRenderPass = Ptr{Cvoid}
const PFN_vkDestroyRenderPass = Ptr{Cvoid}
const PFN_vkGetRenderAreaGranularity = Ptr{Cvoid}
const PFN_vkCreateCommandPool = Ptr{Cvoid}
const PFN_vkDestroyCommandPool = Ptr{Cvoid}
const PFN_vkResetCommandPool = Ptr{Cvoid}
const PFN_vkAllocateCommandBuffers = Ptr{Cvoid}
const PFN_vkFreeCommandBuffers = Ptr{Cvoid}
const PFN_vkBeginCommandBuffer = Ptr{Cvoid}
const PFN_vkEndCommandBuffer = Ptr{Cvoid}
const PFN_vkResetCommandBuffer = Ptr{Cvoid}
const PFN_vkCmdBindPipeline = Ptr{Cvoid}
const PFN_vkCmdSetViewport = Ptr{Cvoid}
const PFN_vkCmdSetScissor = Ptr{Cvoid}
const PFN_vkCmdSetLineWidth = Ptr{Cvoid}
const PFN_vkCmdSetDepthBias = Ptr{Cvoid}
const PFN_vkCmdSetBlendConstants = Ptr{Cvoid}
const PFN_vkCmdSetDepthBounds = Ptr{Cvoid}
const PFN_vkCmdSetStencilCompareMask = Ptr{Cvoid}
const PFN_vkCmdSetStencilWriteMask = Ptr{Cvoid}
const PFN_vkCmdSetStencilReference = Ptr{Cvoid}
const PFN_vkCmdBindDescriptorSets = Ptr{Cvoid}
const PFN_vkCmdBindIndexBuffer = Ptr{Cvoid}
const PFN_vkCmdBindVertexBuffers = Ptr{Cvoid}
const PFN_vkCmdDraw = Ptr{Cvoid}
const PFN_vkCmdDrawIndexed = Ptr{Cvoid}
const PFN_vkCmdDrawIndirect = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirect = Ptr{Cvoid}
const PFN_vkCmdDispatch = Ptr{Cvoid}
const PFN_vkCmdDispatchIndirect = Ptr{Cvoid}
const PFN_vkCmdCopyBuffer = Ptr{Cvoid}
const PFN_vkCmdCopyImage = Ptr{Cvoid}
const PFN_vkCmdBlitImage = Ptr{Cvoid}
const PFN_vkCmdCopyBufferToImage = Ptr{Cvoid}
const PFN_vkCmdCopyImageToBuffer = Ptr{Cvoid}
const PFN_vkCmdUpdateBuffer = Ptr{Cvoid}
const PFN_vkCmdFillBuffer = Ptr{Cvoid}
const PFN_vkCmdClearColorImage = Ptr{Cvoid}
const PFN_vkCmdClearDepthStencilImage = Ptr{Cvoid}
const PFN_vkCmdClearAttachments = Ptr{Cvoid}
const PFN_vkCmdResolveImage = Ptr{Cvoid}
const PFN_vkCmdSetEvent = Ptr{Cvoid}
const PFN_vkCmdResetEvent = Ptr{Cvoid}
const PFN_vkCmdWaitEvents = Ptr{Cvoid}
const PFN_vkCmdPipelineBarrier = Ptr{Cvoid}
const PFN_vkCmdBeginQuery = Ptr{Cvoid}
const PFN_vkCmdEndQuery = Ptr{Cvoid}
const PFN_vkCmdResetQueryPool = Ptr{Cvoid}
const PFN_vkCmdWriteTimestamp = Ptr{Cvoid}
const PFN_vkCmdCopyQueryPoolResults = Ptr{Cvoid}
const PFN_vkCmdPushConstants = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass = Ptr{Cvoid}
const PFN_vkCmdNextSubpass = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass = Ptr{Cvoid}
const PFN_vkCmdExecuteCommands = Ptr{Cvoid}
const VkSamplerYcbcrConversion_T = Cvoid
const VkSamplerYcbcrConversion = Ptr{VkSamplerYcbcrConversion_T}
const VkDescriptorUpdateTemplate_T = Cvoid
const VkDescriptorUpdateTemplate = Ptr{VkDescriptorUpdateTemplate_T}

@cenum VkPointClippingBehavior::UInt32 begin
    VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0
    VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1
    VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR = 0
    VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR = 1
    VK_POINT_CLIPPING_BEHAVIOR_MAX_ENUM = 2147483647
end

@cenum VkTessellationDomainOrigin::UInt32 begin
    VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0
    VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1
    VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR = 0
    VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR = 1
    VK_TESSELLATION_DOMAIN_ORIGIN_MAX_ENUM = 2147483647
end

@cenum VkSamplerYcbcrModelConversion::UInt32 begin
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY = 0
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY = 1
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709 = 2
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601 = 3
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020 = 4
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR = 0
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR = 1
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR = 2
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR = 3
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR = 4
    VK_SAMPLER_YCBCR_MODEL_CONVERSION_MAX_ENUM = 2147483647
end

@cenum VkSamplerYcbcrRange::UInt32 begin
    VK_SAMPLER_YCBCR_RANGE_ITU_FULL = 0
    VK_SAMPLER_YCBCR_RANGE_ITU_NARROW = 1
    VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR = 0
    VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR = 1
    VK_SAMPLER_YCBCR_RANGE_MAX_ENUM = 2147483647
end

@cenum VkChromaLocation::UInt32 begin
    VK_CHROMA_LOCATION_COSITED_EVEN = 0
    VK_CHROMA_LOCATION_MIDPOINT = 1
    VK_CHROMA_LOCATION_COSITED_EVEN_KHR = 0
    VK_CHROMA_LOCATION_MIDPOINT_KHR = 1
    VK_CHROMA_LOCATION_MAX_ENUM = 2147483647
end

@cenum VkDescriptorUpdateTemplateType::UInt32 begin
    VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0
    VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1
    VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR = 0
    VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_MAX_ENUM = 2147483647
end

@cenum VkSubgroupFeatureFlagBits::UInt32 begin
    VK_SUBGROUP_FEATURE_BASIC_BIT = 1
    VK_SUBGROUP_FEATURE_VOTE_BIT = 2
    VK_SUBGROUP_FEATURE_ARITHMETIC_BIT = 4
    VK_SUBGROUP_FEATURE_BALLOT_BIT = 8
    VK_SUBGROUP_FEATURE_SHUFFLE_BIT = 16
    VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 32
    VK_SUBGROUP_FEATURE_CLUSTERED_BIT = 64
    VK_SUBGROUP_FEATURE_QUAD_BIT = 128
    VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV = 256
    VK_SUBGROUP_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSubgroupFeatureFlags = VkFlags

@cenum VkPeerMemoryFeatureFlagBits::UInt32 begin
    VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT = 1
    VK_PEER_MEMORY_FEATURE_COPY_DST_BIT = 2
    VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 4
    VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 8
    VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR = 1
    VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR = 2
    VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR = 4
    VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR = 8
    VK_PEER_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkPeerMemoryFeatureFlags = VkFlags

@cenum VkMemoryAllocateFlagBits::UInt32 begin
    VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT = 1
    VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT = 2
    VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 4
    VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR = 1
    VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR = 2
    VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 4
    VK_MEMORY_ALLOCATE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkMemoryAllocateFlags = VkFlags
const VkCommandPoolTrimFlags = VkFlags
const VkDescriptorUpdateTemplateCreateFlags = VkFlags

@cenum VkExternalMemoryHandleTypeFlagBits::UInt32 begin
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 8
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 16
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 32
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 64
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT = 512
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID = 1024
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT = 128
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT = 256
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR = 8
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR = 16
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR = 32
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR = 64
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalMemoryHandleTypeFlags = VkFlags

@cenum VkExternalMemoryFeatureFlagBits::UInt32 begin
    VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 1
    VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 2
    VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 4
    VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR = 1
    VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR = 2
    VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR = 4
    VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalMemoryFeatureFlags = VkFlags

@cenum VkExternalFenceHandleTypeFlagBits::UInt32 begin
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 8
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 8
    VK_EXTERNAL_FENCE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalFenceHandleTypeFlags = VkFlags

@cenum VkExternalFenceFeatureFlagBits::UInt32 begin
    VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 1
    VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 2
    VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR = 1
    VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR = 2
    VK_EXTERNAL_FENCE_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalFenceFeatureFlags = VkFlags

@cenum VkFenceImportFlagBits::UInt32 begin
    VK_FENCE_IMPORT_TEMPORARY_BIT = 1
    VK_FENCE_IMPORT_TEMPORARY_BIT_KHR = 1
    VK_FENCE_IMPORT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkFenceImportFlags = VkFlags

@cenum VkSemaphoreImportFlagBits::UInt32 begin
    VK_SEMAPHORE_IMPORT_TEMPORARY_BIT = 1
    VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR = 1
    VK_SEMAPHORE_IMPORT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSemaphoreImportFlags = VkFlags

@cenum VkExternalSemaphoreHandleTypeFlagBits::UInt32 begin
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT = 1
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT = 8
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT = 16
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D11_FENCE_BIT = 8
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR = 8
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 16
    VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalSemaphoreHandleTypeFlags = VkFlags

@cenum VkExternalSemaphoreFeatureFlagBits::UInt32 begin
    VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT = 1
    VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT = 2
    VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR = 1
    VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR = 2
    VK_EXTERNAL_SEMAPHORE_FEATURE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkExternalSemaphoreFeatureFlags = VkFlags

struct VkPhysicalDeviceSubgroupProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    subgroupSize::UInt32
    supportedStages::VkShaderStageFlags
    supportedOperations::VkSubgroupFeatureFlags
    quadOperationsInAllStages::VkBool32
end

struct VkBindBufferMemoryInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    buffer::VkBuffer
    memory::VkDeviceMemory
    memoryOffset::VkDeviceSize
end

struct VkBindImageMemoryInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    image::VkImage
    memory::VkDeviceMemory
    memoryOffset::VkDeviceSize
end

struct VkPhysicalDevice16BitStorageFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    storageBuffer16BitAccess::VkBool32
    uniformAndStorageBuffer16BitAccess::VkBool32
    storagePushConstant16::VkBool32
    storageInputOutput16::VkBool32
end

struct VkMemoryDedicatedRequirements
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    prefersDedicatedAllocation::VkBool32
    requiresDedicatedAllocation::VkBool32
end

struct VkMemoryDedicatedAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    image::VkImage
    buffer::VkBuffer
end

struct VkMemoryAllocateFlagsInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkMemoryAllocateFlags
    deviceMask::UInt32
end

struct VkDeviceGroupRenderPassBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceMask::UInt32
    deviceRenderAreaCount::UInt32
    pDeviceRenderAreas::Ptr{VkRect2D}
end

struct VkDeviceGroupCommandBufferBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceMask::UInt32
end

struct VkDeviceGroupSubmitInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreCount::UInt32
    pWaitSemaphoreDeviceIndices::Ptr{UInt32}
    commandBufferCount::UInt32
    pCommandBufferDeviceMasks::Ptr{UInt32}
    signalSemaphoreCount::UInt32
    pSignalSemaphoreDeviceIndices::Ptr{UInt32}
end

struct VkDeviceGroupBindSparseInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    resourceDeviceIndex::UInt32
    memoryDeviceIndex::UInt32
end

struct VkBindBufferMemoryDeviceGroupInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceIndexCount::UInt32
    pDeviceIndices::Ptr{UInt32}
end

struct VkBindImageMemoryDeviceGroupInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceIndexCount::UInt32
    pDeviceIndices::Ptr{UInt32}
    splitInstanceBindRegionCount::UInt32
    pSplitInstanceBindRegions::Ptr{VkRect2D}
end

struct VkPhysicalDeviceGroupProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    physicalDeviceCount::UInt32
    physicalDevices::NTuple{32, VkPhysicalDevice}
    subsetAllocation::VkBool32
end

struct VkDeviceGroupDeviceCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    physicalDeviceCount::UInt32
    pPhysicalDevices::Ptr{VkPhysicalDevice}
end

struct VkBufferMemoryRequirementsInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    buffer::VkBuffer
end

struct VkImageMemoryRequirementsInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    image::VkImage
end

struct VkImageSparseMemoryRequirementsInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    image::VkImage
end

struct VkMemoryRequirements2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryRequirements::VkMemoryRequirements
end

struct VkSparseImageMemoryRequirements2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryRequirements::VkSparseImageMemoryRequirements
end

struct VkPhysicalDeviceFeatures2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    features::VkPhysicalDeviceFeatures
end

struct VkPhysicalDeviceProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    properties::VkPhysicalDeviceProperties
end

struct VkFormatProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    formatProperties::VkFormatProperties
end

struct VkImageFormatProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    imageFormatProperties::VkImageFormatProperties
end

struct VkPhysicalDeviceImageFormatInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    format::VkFormat
    type::VkImageType
    tiling::VkImageTiling
    usage::VkImageUsageFlags
    flags::VkImageCreateFlags
end

struct VkQueueFamilyProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    queueFamilyProperties::VkQueueFamilyProperties
end

struct VkPhysicalDeviceMemoryProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryProperties::VkPhysicalDeviceMemoryProperties
end

struct VkSparseImageFormatProperties2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    properties::VkSparseImageFormatProperties
end

struct VkPhysicalDeviceSparseImageFormatInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    format::VkFormat
    type::VkImageType
    samples::VkSampleCountFlagBits
    usage::VkImageUsageFlags
    tiling::VkImageTiling
end

struct VkPhysicalDevicePointClippingProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pointClippingBehavior::VkPointClippingBehavior
end

struct VkInputAttachmentAspectReference
    subpass::UInt32
    inputAttachmentIndex::UInt32
    aspectMask::VkImageAspectFlags
end

struct VkRenderPassInputAttachmentAspectCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    aspectReferenceCount::UInt32
    pAspectReferences::Ptr{VkInputAttachmentAspectReference}
end

struct VkImageViewUsageCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    usage::VkImageUsageFlags
end

struct VkPipelineTessellationDomainOriginStateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    domainOrigin::VkTessellationDomainOrigin
end

struct VkRenderPassMultiviewCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    subpassCount::UInt32
    pViewMasks::Ptr{UInt32}
    dependencyCount::UInt32
    pViewOffsets::Ptr{Int32}
    correlationMaskCount::UInt32
    pCorrelationMasks::Ptr{UInt32}
end

struct VkPhysicalDeviceMultiviewFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    multiview::VkBool32
    multiviewGeometryShader::VkBool32
    multiviewTessellationShader::VkBool32
end

struct VkPhysicalDeviceMultiviewProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxMultiviewViewCount::UInt32
    maxMultiviewInstanceIndex::UInt32
end

struct VkPhysicalDeviceVariablePointersFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    variablePointersStorageBuffer::VkBool32
    variablePointers::VkBool32
end

const VkPhysicalDeviceVariablePointerFeatures = VkPhysicalDeviceVariablePointersFeatures

struct VkPhysicalDeviceProtectedMemoryFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    protectedMemory::VkBool32
end

struct VkPhysicalDeviceProtectedMemoryProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    protectedNoFault::VkBool32
end

struct VkDeviceQueueInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDeviceQueueCreateFlags
    queueFamilyIndex::UInt32
    queueIndex::UInt32
end

struct VkProtectedSubmitInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    protectedSubmit::VkBool32
end

struct VkSamplerYcbcrConversionCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    format::VkFormat
    ycbcrModel::VkSamplerYcbcrModelConversion
    ycbcrRange::VkSamplerYcbcrRange
    components::VkComponentMapping
    xChromaOffset::VkChromaLocation
    yChromaOffset::VkChromaLocation
    chromaFilter::VkFilter
    forceExplicitReconstruction::VkBool32
end

struct VkSamplerYcbcrConversionInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    conversion::VkSamplerYcbcrConversion
end

struct VkBindImagePlaneMemoryInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    planeAspect::VkImageAspectFlagBits
end

struct VkImagePlaneMemoryRequirementsInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    planeAspect::VkImageAspectFlagBits
end

struct VkPhysicalDeviceSamplerYcbcrConversionFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    samplerYcbcrConversion::VkBool32
end

struct VkSamplerYcbcrConversionImageFormatProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    combinedImageSamplerDescriptorCount::UInt32
end

struct VkDescriptorUpdateTemplateEntry
    dstBinding::UInt32
    dstArrayElement::UInt32
    descriptorCount::UInt32
    descriptorType::VkDescriptorType
    offset::Csize_t
    stride::Csize_t
end

struct VkDescriptorUpdateTemplateCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDescriptorUpdateTemplateCreateFlags
    descriptorUpdateEntryCount::UInt32
    pDescriptorUpdateEntries::Ptr{VkDescriptorUpdateTemplateEntry}
    templateType::VkDescriptorUpdateTemplateType
    descriptorSetLayout::VkDescriptorSetLayout
    pipelineBindPoint::VkPipelineBindPoint
    pipelineLayout::VkPipelineLayout
    set::UInt32
end

struct VkExternalMemoryProperties
    externalMemoryFeatures::VkExternalMemoryFeatureFlags
    exportFromImportedHandleTypes::VkExternalMemoryHandleTypeFlags
    compatibleHandleTypes::VkExternalMemoryHandleTypeFlags
end

struct VkPhysicalDeviceExternalImageFormatInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalMemoryHandleTypeFlagBits
end

struct VkExternalImageFormatProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    externalMemoryProperties::VkExternalMemoryProperties
end

struct VkPhysicalDeviceExternalBufferInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkBufferCreateFlags
    usage::VkBufferUsageFlags
    handleType::VkExternalMemoryHandleTypeFlagBits
end

struct VkExternalBufferProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    externalMemoryProperties::VkExternalMemoryProperties
end

struct VkPhysicalDeviceIDProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceUUID::NTuple{16, UInt8}
    driverUUID::NTuple{16, UInt8}
    deviceLUID::NTuple{8, UInt8}
    deviceNodeMask::UInt32
    deviceLUIDValid::VkBool32
end

struct VkExternalMemoryImageCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalMemoryHandleTypeFlags
end

struct VkExternalMemoryBufferCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalMemoryHandleTypeFlags
end

struct VkExportMemoryAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalMemoryHandleTypeFlags
end

struct VkPhysicalDeviceExternalFenceInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalFenceHandleTypeFlagBits
end

struct VkExternalFenceProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    exportFromImportedHandleTypes::VkExternalFenceHandleTypeFlags
    compatibleHandleTypes::VkExternalFenceHandleTypeFlags
    externalFenceFeatures::VkExternalFenceFeatureFlags
end

struct VkExportFenceCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalFenceHandleTypeFlags
end

struct VkExportSemaphoreCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalSemaphoreHandleTypeFlags
end

struct VkPhysicalDeviceExternalSemaphoreInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalSemaphoreHandleTypeFlagBits
end

struct VkExternalSemaphoreProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    exportFromImportedHandleTypes::VkExternalSemaphoreHandleTypeFlags
    compatibleHandleTypes::VkExternalSemaphoreHandleTypeFlags
    externalSemaphoreFeatures::VkExternalSemaphoreFeatureFlags
end

struct VkPhysicalDeviceMaintenance3Properties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxPerSetDescriptors::UInt32
    maxMemoryAllocationSize::VkDeviceSize
end

struct VkDescriptorSetLayoutSupport
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    supported::VkBool32
end

struct VkPhysicalDeviceShaderDrawParametersFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderDrawParameters::VkBool32
end

const VkPhysicalDeviceShaderDrawParameterFeatures = VkPhysicalDeviceShaderDrawParametersFeatures
const PFN_vkEnumerateInstanceVersion = Ptr{Cvoid}
const PFN_vkBindBufferMemory2 = Ptr{Cvoid}
const PFN_vkBindImageMemory2 = Ptr{Cvoid}
const PFN_vkGetDeviceGroupPeerMemoryFeatures = Ptr{Cvoid}
const PFN_vkCmdSetDeviceMask = Ptr{Cvoid}
const PFN_vkCmdDispatchBase = Ptr{Cvoid}
const PFN_vkEnumeratePhysicalDeviceGroups = Ptr{Cvoid}
const PFN_vkGetImageMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkGetImageSparseMemoryRequirements2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFeatures2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties2 = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties2 = Ptr{Cvoid}
const PFN_vkTrimCommandPool = Ptr{Cvoid}
const PFN_vkGetDeviceQueue2 = Ptr{Cvoid}
const PFN_vkCreateSamplerYcbcrConversion = Ptr{Cvoid}
const PFN_vkDestroySamplerYcbcrConversion = Ptr{Cvoid}
const PFN_vkCreateDescriptorUpdateTemplate = Ptr{Cvoid}
const PFN_vkDestroyDescriptorUpdateTemplate = Ptr{Cvoid}
const PFN_vkUpdateDescriptorSetWithTemplate = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalBufferProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalFenceProperties = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceExternalSemaphoreProperties = Ptr{Cvoid}
const PFN_vkGetDescriptorSetLayoutSupport = Ptr{Cvoid}

@cenum VkDriverId::UInt32 begin
    VK_DRIVER_ID_AMD_PROPRIETARY = 1
    VK_DRIVER_ID_AMD_OPEN_SOURCE = 2
    VK_DRIVER_ID_MESA_RADV = 3
    VK_DRIVER_ID_NVIDIA_PROPRIETARY = 4
    VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS = 5
    VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA = 6
    VK_DRIVER_ID_IMAGINATION_PROPRIETARY = 7
    VK_DRIVER_ID_QUALCOMM_PROPRIETARY = 8
    VK_DRIVER_ID_ARM_PROPRIETARY = 9
    VK_DRIVER_ID_GOOGLE_SWIFTSHADER = 10
    VK_DRIVER_ID_GGP_PROPRIETARY = 11
    VK_DRIVER_ID_BROADCOM_PROPRIETARY = 12
    VK_DRIVER_ID_MESA_LLVMPIPE = 13
    VK_DRIVER_ID_MOLTENVK = 14
    VK_DRIVER_ID_AMD_PROPRIETARY_KHR = 1
    VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR = 2
    VK_DRIVER_ID_MESA_RADV_KHR = 3
    VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR = 4
    VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR = 5
    VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR = 6
    VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR = 7
    VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR = 8
    VK_DRIVER_ID_ARM_PROPRIETARY_KHR = 9
    VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR = 10
    VK_DRIVER_ID_GGP_PROPRIETARY_KHR = 11
    VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR = 12
    VK_DRIVER_ID_MAX_ENUM = 2147483647
end

@cenum VkShaderFloatControlsIndependence::UInt32 begin
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR = 0
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR = 1
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR = 2
    VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_MAX_ENUM = 2147483647
end

@cenum VkSamplerReductionMode::UInt32 begin
    VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0
    VK_SAMPLER_REDUCTION_MODE_MIN = 1
    VK_SAMPLER_REDUCTION_MODE_MAX = 2
    VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT = 0
    VK_SAMPLER_REDUCTION_MODE_MIN_EXT = 1
    VK_SAMPLER_REDUCTION_MODE_MAX_EXT = 2
    VK_SAMPLER_REDUCTION_MODE_MAX_ENUM = 2147483647
end

@cenum VkSemaphoreType::UInt32 begin
    VK_SEMAPHORE_TYPE_BINARY = 0
    VK_SEMAPHORE_TYPE_TIMELINE = 1
    VK_SEMAPHORE_TYPE_BINARY_KHR = 0
    VK_SEMAPHORE_TYPE_TIMELINE_KHR = 1
    VK_SEMAPHORE_TYPE_MAX_ENUM = 2147483647
end

@cenum VkResolveModeFlagBits::UInt32 begin
    VK_RESOLVE_MODE_NONE = 0
    VK_RESOLVE_MODE_SAMPLE_ZERO_BIT = 1
    VK_RESOLVE_MODE_AVERAGE_BIT = 2
    VK_RESOLVE_MODE_MIN_BIT = 4
    VK_RESOLVE_MODE_MAX_BIT = 8
    VK_RESOLVE_MODE_NONE_KHR = 0
    VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR = 1
    VK_RESOLVE_MODE_AVERAGE_BIT_KHR = 2
    VK_RESOLVE_MODE_MIN_BIT_KHR = 4
    VK_RESOLVE_MODE_MAX_BIT_KHR = 8
    VK_RESOLVE_MODE_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkResolveModeFlags = VkFlags

@cenum VkDescriptorBindingFlagBits::UInt32 begin
    VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT = 1
    VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT = 2
    VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT = 4
    VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT = 8
    VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT = 1
    VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT = 2
    VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT = 4
    VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT = 8
    VK_DESCRIPTOR_BINDING_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkDescriptorBindingFlags = VkFlags

@cenum VkSemaphoreWaitFlagBits::UInt32 begin
    VK_SEMAPHORE_WAIT_ANY_BIT = 1
    VK_SEMAPHORE_WAIT_ANY_BIT_KHR = 1
    VK_SEMAPHORE_WAIT_FLAG_BITS_MAX_ENUM = 2147483647
end


const VkSemaphoreWaitFlags = VkFlags

struct VkPhysicalDeviceVulkan11Features
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    storageBuffer16BitAccess::VkBool32
    uniformAndStorageBuffer16BitAccess::VkBool32
    storagePushConstant16::VkBool32
    storageInputOutput16::VkBool32
    multiview::VkBool32
    multiviewGeometryShader::VkBool32
    multiviewTessellationShader::VkBool32
    variablePointersStorageBuffer::VkBool32
    variablePointers::VkBool32
    protectedMemory::VkBool32
    samplerYcbcrConversion::VkBool32
    shaderDrawParameters::VkBool32
end

struct VkPhysicalDeviceVulkan11Properties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceUUID::NTuple{16, UInt8}
    driverUUID::NTuple{16, UInt8}
    deviceLUID::NTuple{8, UInt8}
    deviceNodeMask::UInt32
    deviceLUIDValid::VkBool32
    subgroupSize::UInt32
    subgroupSupportedStages::VkShaderStageFlags
    subgroupSupportedOperations::VkSubgroupFeatureFlags
    subgroupQuadOperationsInAllStages::VkBool32
    pointClippingBehavior::VkPointClippingBehavior
    maxMultiviewViewCount::UInt32
    maxMultiviewInstanceIndex::UInt32
    protectedNoFault::VkBool32
    maxPerSetDescriptors::UInt32
    maxMemoryAllocationSize::VkDeviceSize
end

struct VkPhysicalDeviceVulkan12Features
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    samplerMirrorClampToEdge::VkBool32
    drawIndirectCount::VkBool32
    storageBuffer8BitAccess::VkBool32
    uniformAndStorageBuffer8BitAccess::VkBool32
    storagePushConstant8::VkBool32
    shaderBufferInt64Atomics::VkBool32
    shaderSharedInt64Atomics::VkBool32
    shaderFloat16::VkBool32
    shaderInt8::VkBool32
    descriptorIndexing::VkBool32
    shaderInputAttachmentArrayDynamicIndexing::VkBool32
    shaderUniformTexelBufferArrayDynamicIndexing::VkBool32
    shaderStorageTexelBufferArrayDynamicIndexing::VkBool32
    shaderUniformBufferArrayNonUniformIndexing::VkBool32
    shaderSampledImageArrayNonUniformIndexing::VkBool32
    shaderStorageBufferArrayNonUniformIndexing::VkBool32
    shaderStorageImageArrayNonUniformIndexing::VkBool32
    shaderInputAttachmentArrayNonUniformIndexing::VkBool32
    shaderUniformTexelBufferArrayNonUniformIndexing::VkBool32
    shaderStorageTexelBufferArrayNonUniformIndexing::VkBool32
    descriptorBindingUniformBufferUpdateAfterBind::VkBool32
    descriptorBindingSampledImageUpdateAfterBind::VkBool32
    descriptorBindingStorageImageUpdateAfterBind::VkBool32
    descriptorBindingStorageBufferUpdateAfterBind::VkBool32
    descriptorBindingUniformTexelBufferUpdateAfterBind::VkBool32
    descriptorBindingStorageTexelBufferUpdateAfterBind::VkBool32
    descriptorBindingUpdateUnusedWhilePending::VkBool32
    descriptorBindingPartiallyBound::VkBool32
    descriptorBindingVariableDescriptorCount::VkBool32
    runtimeDescriptorArray::VkBool32
    samplerFilterMinmax::VkBool32
    scalarBlockLayout::VkBool32
    imagelessFramebuffer::VkBool32
    uniformBufferStandardLayout::VkBool32
    shaderSubgroupExtendedTypes::VkBool32
    separateDepthStencilLayouts::VkBool32
    hostQueryReset::VkBool32
    timelineSemaphore::VkBool32
    bufferDeviceAddress::VkBool32
    bufferDeviceAddressCaptureReplay::VkBool32
    bufferDeviceAddressMultiDevice::VkBool32
    vulkanMemoryModel::VkBool32
    vulkanMemoryModelDeviceScope::VkBool32
    vulkanMemoryModelAvailabilityVisibilityChains::VkBool32
    shaderOutputViewportIndex::VkBool32
    shaderOutputLayer::VkBool32
    subgroupBroadcastDynamicId::VkBool32
end

struct VkConformanceVersion
    major::UInt8
    minor::UInt8
    subminor::UInt8
    patch::UInt8
end

struct VkPhysicalDeviceVulkan12Properties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    driverID::VkDriverId
    driverName::NTuple{256, UInt8}
    driverInfo::NTuple{256, UInt8}
    conformanceVersion::VkConformanceVersion
    denormBehaviorIndependence::VkShaderFloatControlsIndependence
    roundingModeIndependence::VkShaderFloatControlsIndependence
    shaderSignedZeroInfNanPreserveFloat16::VkBool32
    shaderSignedZeroInfNanPreserveFloat32::VkBool32
    shaderSignedZeroInfNanPreserveFloat64::VkBool32
    shaderDenormPreserveFloat16::VkBool32
    shaderDenormPreserveFloat32::VkBool32
    shaderDenormPreserveFloat64::VkBool32
    shaderDenormFlushToZeroFloat16::VkBool32
    shaderDenormFlushToZeroFloat32::VkBool32
    shaderDenormFlushToZeroFloat64::VkBool32
    shaderRoundingModeRTEFloat16::VkBool32
    shaderRoundingModeRTEFloat32::VkBool32
    shaderRoundingModeRTEFloat64::VkBool32
    shaderRoundingModeRTZFloat16::VkBool32
    shaderRoundingModeRTZFloat32::VkBool32
    shaderRoundingModeRTZFloat64::VkBool32
    maxUpdateAfterBindDescriptorsInAllPools::UInt32
    shaderUniformBufferArrayNonUniformIndexingNative::VkBool32
    shaderSampledImageArrayNonUniformIndexingNative::VkBool32
    shaderStorageBufferArrayNonUniformIndexingNative::VkBool32
    shaderStorageImageArrayNonUniformIndexingNative::VkBool32
    shaderInputAttachmentArrayNonUniformIndexingNative::VkBool32
    robustBufferAccessUpdateAfterBind::VkBool32
    quadDivergentImplicitLod::VkBool32
    maxPerStageDescriptorUpdateAfterBindSamplers::UInt32
    maxPerStageDescriptorUpdateAfterBindUniformBuffers::UInt32
    maxPerStageDescriptorUpdateAfterBindStorageBuffers::UInt32
    maxPerStageDescriptorUpdateAfterBindSampledImages::UInt32
    maxPerStageDescriptorUpdateAfterBindStorageImages::UInt32
    maxPerStageDescriptorUpdateAfterBindInputAttachments::UInt32
    maxPerStageUpdateAfterBindResources::UInt32
    maxDescriptorSetUpdateAfterBindSamplers::UInt32
    maxDescriptorSetUpdateAfterBindUniformBuffers::UInt32
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic::UInt32
    maxDescriptorSetUpdateAfterBindStorageBuffers::UInt32
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic::UInt32
    maxDescriptorSetUpdateAfterBindSampledImages::UInt32
    maxDescriptorSetUpdateAfterBindStorageImages::UInt32
    maxDescriptorSetUpdateAfterBindInputAttachments::UInt32
    supportedDepthResolveModes::VkResolveModeFlags
    supportedStencilResolveModes::VkResolveModeFlags
    independentResolveNone::VkBool32
    independentResolve::VkBool32
    filterMinmaxSingleComponentFormats::VkBool32
    filterMinmaxImageComponentMapping::VkBool32
    maxTimelineSemaphoreValueDifference::UInt64
    framebufferIntegerColorSampleCounts::VkSampleCountFlags
end

struct VkImageFormatListCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    viewFormatCount::UInt32
    pViewFormats::Ptr{VkFormat}
end

struct VkAttachmentDescription2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkAttachmentDescriptionFlags
    format::VkFormat
    samples::VkSampleCountFlagBits
    loadOp::VkAttachmentLoadOp
    storeOp::VkAttachmentStoreOp
    stencilLoadOp::VkAttachmentLoadOp
    stencilStoreOp::VkAttachmentStoreOp
    initialLayout::VkImageLayout
    finalLayout::VkImageLayout
end

struct VkAttachmentReference2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    attachment::UInt32
    layout::VkImageLayout
    aspectMask::VkImageAspectFlags
end

struct VkSubpassDescription2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkSubpassDescriptionFlags
    pipelineBindPoint::VkPipelineBindPoint
    viewMask::UInt32
    inputAttachmentCount::UInt32
    pInputAttachments::Ptr{VkAttachmentReference2}
    colorAttachmentCount::UInt32
    pColorAttachments::Ptr{VkAttachmentReference2}
    pResolveAttachments::Ptr{VkAttachmentReference2}
    pDepthStencilAttachment::Ptr{VkAttachmentReference2}
    preserveAttachmentCount::UInt32
    pPreserveAttachments::Ptr{UInt32}
end

struct VkSubpassDependency2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcSubpass::UInt32
    dstSubpass::UInt32
    srcStageMask::VkPipelineStageFlags
    dstStageMask::VkPipelineStageFlags
    srcAccessMask::VkAccessFlags
    dstAccessMask::VkAccessFlags
    dependencyFlags::VkDependencyFlags
    viewOffset::Int32
end

struct VkRenderPassCreateInfo2
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkRenderPassCreateFlags
    attachmentCount::UInt32
    pAttachments::Ptr{VkAttachmentDescription2}
    subpassCount::UInt32
    pSubpasses::Ptr{VkSubpassDescription2}
    dependencyCount::UInt32
    pDependencies::Ptr{VkSubpassDependency2}
    correlatedViewMaskCount::UInt32
    pCorrelatedViewMasks::Ptr{UInt32}
end

struct VkSubpassBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    contents::VkSubpassContents
end

struct VkSubpassEndInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
end

struct VkPhysicalDevice8BitStorageFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    storageBuffer8BitAccess::VkBool32
    uniformAndStorageBuffer8BitAccess::VkBool32
    storagePushConstant8::VkBool32
end

struct VkPhysicalDeviceDriverProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    driverID::VkDriverId
    driverName::NTuple{256, UInt8}
    driverInfo::NTuple{256, UInt8}
    conformanceVersion::VkConformanceVersion
end

struct VkPhysicalDeviceShaderAtomicInt64Features
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderBufferInt64Atomics::VkBool32
    shaderSharedInt64Atomics::VkBool32
end

struct VkPhysicalDeviceShaderFloat16Int8Features
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderFloat16::VkBool32
    shaderInt8::VkBool32
end

struct VkPhysicalDeviceFloatControlsProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    denormBehaviorIndependence::VkShaderFloatControlsIndependence
    roundingModeIndependence::VkShaderFloatControlsIndependence
    shaderSignedZeroInfNanPreserveFloat16::VkBool32
    shaderSignedZeroInfNanPreserveFloat32::VkBool32
    shaderSignedZeroInfNanPreserveFloat64::VkBool32
    shaderDenormPreserveFloat16::VkBool32
    shaderDenormPreserveFloat32::VkBool32
    shaderDenormPreserveFloat64::VkBool32
    shaderDenormFlushToZeroFloat16::VkBool32
    shaderDenormFlushToZeroFloat32::VkBool32
    shaderDenormFlushToZeroFloat64::VkBool32
    shaderRoundingModeRTEFloat16::VkBool32
    shaderRoundingModeRTEFloat32::VkBool32
    shaderRoundingModeRTEFloat64::VkBool32
    shaderRoundingModeRTZFloat16::VkBool32
    shaderRoundingModeRTZFloat32::VkBool32
    shaderRoundingModeRTZFloat64::VkBool32
end

struct VkDescriptorSetLayoutBindingFlagsCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    bindingCount::UInt32
    pBindingFlags::Ptr{VkDescriptorBindingFlags}
end

struct VkPhysicalDeviceDescriptorIndexingFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderInputAttachmentArrayDynamicIndexing::VkBool32
    shaderUniformTexelBufferArrayDynamicIndexing::VkBool32
    shaderStorageTexelBufferArrayDynamicIndexing::VkBool32
    shaderUniformBufferArrayNonUniformIndexing::VkBool32
    shaderSampledImageArrayNonUniformIndexing::VkBool32
    shaderStorageBufferArrayNonUniformIndexing::VkBool32
    shaderStorageImageArrayNonUniformIndexing::VkBool32
    shaderInputAttachmentArrayNonUniformIndexing::VkBool32
    shaderUniformTexelBufferArrayNonUniformIndexing::VkBool32
    shaderStorageTexelBufferArrayNonUniformIndexing::VkBool32
    descriptorBindingUniformBufferUpdateAfterBind::VkBool32
    descriptorBindingSampledImageUpdateAfterBind::VkBool32
    descriptorBindingStorageImageUpdateAfterBind::VkBool32
    descriptorBindingStorageBufferUpdateAfterBind::VkBool32
    descriptorBindingUniformTexelBufferUpdateAfterBind::VkBool32
    descriptorBindingStorageTexelBufferUpdateAfterBind::VkBool32
    descriptorBindingUpdateUnusedWhilePending::VkBool32
    descriptorBindingPartiallyBound::VkBool32
    descriptorBindingVariableDescriptorCount::VkBool32
    runtimeDescriptorArray::VkBool32
end

struct VkPhysicalDeviceDescriptorIndexingProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxUpdateAfterBindDescriptorsInAllPools::UInt32
    shaderUniformBufferArrayNonUniformIndexingNative::VkBool32
    shaderSampledImageArrayNonUniformIndexingNative::VkBool32
    shaderStorageBufferArrayNonUniformIndexingNative::VkBool32
    shaderStorageImageArrayNonUniformIndexingNative::VkBool32
    shaderInputAttachmentArrayNonUniformIndexingNative::VkBool32
    robustBufferAccessUpdateAfterBind::VkBool32
    quadDivergentImplicitLod::VkBool32
    maxPerStageDescriptorUpdateAfterBindSamplers::UInt32
    maxPerStageDescriptorUpdateAfterBindUniformBuffers::UInt32
    maxPerStageDescriptorUpdateAfterBindStorageBuffers::UInt32
    maxPerStageDescriptorUpdateAfterBindSampledImages::UInt32
    maxPerStageDescriptorUpdateAfterBindStorageImages::UInt32
    maxPerStageDescriptorUpdateAfterBindInputAttachments::UInt32
    maxPerStageUpdateAfterBindResources::UInt32
    maxDescriptorSetUpdateAfterBindSamplers::UInt32
    maxDescriptorSetUpdateAfterBindUniformBuffers::UInt32
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic::UInt32
    maxDescriptorSetUpdateAfterBindStorageBuffers::UInt32
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic::UInt32
    maxDescriptorSetUpdateAfterBindSampledImages::UInt32
    maxDescriptorSetUpdateAfterBindStorageImages::UInt32
    maxDescriptorSetUpdateAfterBindInputAttachments::UInt32
end

struct VkDescriptorSetVariableDescriptorCountAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    descriptorSetCount::UInt32
    pDescriptorCounts::Ptr{UInt32}
end

struct VkDescriptorSetVariableDescriptorCountLayoutSupport
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxVariableDescriptorCount::UInt32
end

struct VkSubpassDescriptionDepthStencilResolve
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    depthResolveMode::VkResolveModeFlagBits
    stencilResolveMode::VkResolveModeFlagBits
    pDepthStencilResolveAttachment::Ptr{VkAttachmentReference2}
end

struct VkPhysicalDeviceDepthStencilResolveProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    supportedDepthResolveModes::VkResolveModeFlags
    supportedStencilResolveModes::VkResolveModeFlags
    independentResolveNone::VkBool32
    independentResolve::VkBool32
end

struct VkPhysicalDeviceScalarBlockLayoutFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    scalarBlockLayout::VkBool32
end

struct VkImageStencilUsageCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stencilUsage::VkImageUsageFlags
end

struct VkSamplerReductionModeCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    reductionMode::VkSamplerReductionMode
end

struct VkPhysicalDeviceSamplerFilterMinmaxProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    filterMinmaxSingleComponentFormats::VkBool32
    filterMinmaxImageComponentMapping::VkBool32
end

struct VkPhysicalDeviceVulkanMemoryModelFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    vulkanMemoryModel::VkBool32
    vulkanMemoryModelDeviceScope::VkBool32
    vulkanMemoryModelAvailabilityVisibilityChains::VkBool32
end

struct VkPhysicalDeviceImagelessFramebufferFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    imagelessFramebuffer::VkBool32
end

struct VkFramebufferAttachmentImageInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkImageCreateFlags
    usage::VkImageUsageFlags
    width::UInt32
    height::UInt32
    layerCount::UInt32
    viewFormatCount::UInt32
    pViewFormats::Ptr{VkFormat}
end

struct VkFramebufferAttachmentsCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    attachmentImageInfoCount::UInt32
    pAttachmentImageInfos::Ptr{VkFramebufferAttachmentImageInfo}
end

struct VkRenderPassAttachmentBeginInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    attachmentCount::UInt32
    pAttachments::Ptr{VkImageView}
end

struct VkPhysicalDeviceUniformBufferStandardLayoutFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    uniformBufferStandardLayout::VkBool32
end

struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderSubgroupExtendedTypes::VkBool32
end

struct VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    separateDepthStencilLayouts::VkBool32
end

struct VkAttachmentReferenceStencilLayout
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stencilLayout::VkImageLayout
end

struct VkAttachmentDescriptionStencilLayout
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stencilInitialLayout::VkImageLayout
    stencilFinalLayout::VkImageLayout
end

struct VkPhysicalDeviceHostQueryResetFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    hostQueryReset::VkBool32
end

struct VkPhysicalDeviceTimelineSemaphoreFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    timelineSemaphore::VkBool32
end

struct VkPhysicalDeviceTimelineSemaphoreProperties
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxTimelineSemaphoreValueDifference::UInt64
end

struct VkSemaphoreTypeCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphoreType::VkSemaphoreType
    initialValue::UInt64
end

struct VkTimelineSemaphoreSubmitInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreValueCount::UInt32
    pWaitSemaphoreValues::Ptr{UInt64}
    signalSemaphoreValueCount::UInt32
    pSignalSemaphoreValues::Ptr{UInt64}
end

struct VkSemaphoreWaitInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkSemaphoreWaitFlags
    semaphoreCount::UInt32
    pSemaphores::Ptr{VkSemaphore}
    pValues::Ptr{UInt64}
end

struct VkSemaphoreSignalInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphore::VkSemaphore
    value::UInt64
end

struct VkPhysicalDeviceBufferDeviceAddressFeatures
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    bufferDeviceAddress::VkBool32
    bufferDeviceAddressCaptureReplay::VkBool32
    bufferDeviceAddressMultiDevice::VkBool32
end

struct VkBufferDeviceAddressInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    buffer::VkBuffer
end

struct VkBufferOpaqueCaptureAddressCreateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    opaqueCaptureAddress::UInt64
end

struct VkMemoryOpaqueCaptureAddressAllocateInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    opaqueCaptureAddress::UInt64
end

struct VkDeviceMemoryOpaqueCaptureAddressInfo
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memory::VkDeviceMemory
end

const PFN_vkCmdDrawIndirectCount = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirectCount = Ptr{Cvoid}
const PFN_vkCreateRenderPass2 = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass2 = Ptr{Cvoid}
const PFN_vkCmdNextSubpass2 = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass2 = Ptr{Cvoid}
const PFN_vkResetQueryPool = Ptr{Cvoid}
const PFN_vkGetSemaphoreCounterValue = Ptr{Cvoid}
const PFN_vkWaitSemaphores = Ptr{Cvoid}
const PFN_vkSignalSemaphore = Ptr{Cvoid}
const PFN_vkGetBufferDeviceAddress = Ptr{Cvoid}
const PFN_vkGetBufferOpaqueCaptureAddress = Ptr{Cvoid}
const PFN_vkGetDeviceMemoryOpaqueCaptureAddress = Ptr{Cvoid}
const VkSurfaceKHR_T = Cvoid
const VkSurfaceKHR = Ptr{VkSurfaceKHR_T}

@cenum VkPresentModeKHR::UInt32 begin
    VK_PRESENT_MODE_IMMEDIATE_KHR = 0
    VK_PRESENT_MODE_MAILBOX_KHR = 1
    VK_PRESENT_MODE_FIFO_KHR = 2
    VK_PRESENT_MODE_FIFO_RELAXED_KHR = 3
    VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR = 1000111000
    VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR = 1000111001
    VK_PRESENT_MODE_MAX_ENUM_KHR = 2147483647
end

@cenum VkColorSpaceKHR::UInt32 begin
    VK_COLOR_SPACE_SRGB_NONLINEAR_KHR = 0
    VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT = 1000104001
    VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT = 1000104002
    VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT = 1000104003
    VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT = 1000104004
    VK_COLOR_SPACE_BT709_LINEAR_EXT = 1000104005
    VK_COLOR_SPACE_BT709_NONLINEAR_EXT = 1000104006
    VK_COLOR_SPACE_BT2020_LINEAR_EXT = 1000104007
    VK_COLOR_SPACE_HDR10_ST2084_EXT = 1000104008
    VK_COLOR_SPACE_DOLBYVISION_EXT = 1000104009
    VK_COLOR_SPACE_HDR10_HLG_EXT = 1000104010
    VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT = 1000104011
    VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT = 1000104012
    VK_COLOR_SPACE_PASS_THROUGH_EXT = 1000104013
    VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT = 1000104014
    VK_COLOR_SPACE_DISPLAY_NATIVE_AMD = 1000213000
    VK_COLORSPACE_SRGB_NONLINEAR_KHR = 0
    VK_COLOR_SPACE_DCI_P3_LINEAR_EXT = 1000104003
    VK_COLOR_SPACE_MAX_ENUM_KHR = 2147483647
end

@cenum VkSurfaceTransformFlagBitsKHR::UInt32 begin
    VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 1
    VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 2
    VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 4
    VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 8
    VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 16
    VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 32
    VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 64
    VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 128
    VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR = 256
    VK_SURFACE_TRANSFORM_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end

@cenum VkCompositeAlphaFlagBitsKHR::UInt32 begin
    VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 1
    VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 2
    VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 4
    VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR = 8
    VK_COMPOSITE_ALPHA_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkCompositeAlphaFlagsKHR = VkFlags
const VkSurfaceTransformFlagsKHR = VkFlags

struct VkSurfaceCapabilitiesKHR
    minImageCount::UInt32
    maxImageCount::UInt32
    currentExtent::VkExtent2D
    minImageExtent::VkExtent2D
    maxImageExtent::VkExtent2D
    maxImageArrayLayers::UInt32
    supportedTransforms::VkSurfaceTransformFlagsKHR
    currentTransform::VkSurfaceTransformFlagBitsKHR
    supportedCompositeAlpha::VkCompositeAlphaFlagsKHR
    supportedUsageFlags::VkImageUsageFlags
end

struct VkSurfaceFormatKHR
    format::VkFormat
    colorSpace::VkColorSpaceKHR
end

const PFN_vkDestroySurfaceKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceSupportKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceFormatsKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfacePresentModesKHR = Ptr{Cvoid}
const VkSwapchainKHR_T = Cvoid
const VkSwapchainKHR = Ptr{VkSwapchainKHR_T}

@cenum VkSwapchainCreateFlagBitsKHR::UInt32 begin
    VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 1
    VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR = 2
    VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR = 4
    VK_SWAPCHAIN_CREATE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkSwapchainCreateFlagsKHR = VkFlags

@cenum VkDeviceGroupPresentModeFlagBitsKHR::UInt32 begin
    VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 1
    VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 2
    VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 4
    VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 8
    VK_DEVICE_GROUP_PRESENT_MODE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkDeviceGroupPresentModeFlagsKHR = VkFlags

struct VkSwapchainCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkSwapchainCreateFlagsKHR
    surface::VkSurfaceKHR
    minImageCount::UInt32
    imageFormat::VkFormat
    imageColorSpace::VkColorSpaceKHR
    imageExtent::VkExtent2D
    imageArrayLayers::UInt32
    imageUsage::VkImageUsageFlags
    imageSharingMode::VkSharingMode
    queueFamilyIndexCount::UInt32
    pQueueFamilyIndices::Ptr{UInt32}
    preTransform::VkSurfaceTransformFlagBitsKHR
    compositeAlpha::VkCompositeAlphaFlagBitsKHR
    presentMode::VkPresentModeKHR
    clipped::VkBool32
    oldSwapchain::VkSwapchainKHR
end

struct VkPresentInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreCount::UInt32
    pWaitSemaphores::Ptr{VkSemaphore}
    swapchainCount::UInt32
    pSwapchains::Ptr{VkSwapchainKHR}
    pImageIndices::Ptr{UInt32}
    pResults::Ptr{VkResult}
end

struct VkImageSwapchainCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchain::VkSwapchainKHR
end

struct VkBindImageMemorySwapchainInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchain::VkSwapchainKHR
    imageIndex::UInt32
end

struct VkAcquireNextImageInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchain::VkSwapchainKHR
    timeout::UInt64
    semaphore::VkSemaphore
    fence::VkFence
    deviceMask::UInt32
end

struct VkDeviceGroupPresentCapabilitiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    presentMask::NTuple{32, UInt32}
    modes::VkDeviceGroupPresentModeFlagsKHR
end

struct VkDeviceGroupPresentInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchainCount::UInt32
    pDeviceMasks::Ptr{UInt32}
    mode::VkDeviceGroupPresentModeFlagBitsKHR
end

struct VkDeviceGroupSwapchainCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    modes::VkDeviceGroupPresentModeFlagsKHR
end

const PFN_vkCreateSwapchainKHR = Ptr{Cvoid}
const PFN_vkDestroySwapchainKHR = Ptr{Cvoid}
const PFN_vkGetSwapchainImagesKHR = Ptr{Cvoid}
const PFN_vkAcquireNextImageKHR = Ptr{Cvoid}
const PFN_vkQueuePresentKHR = Ptr{Cvoid}
const PFN_vkGetDeviceGroupPresentCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkGetDeviceGroupSurfacePresentModesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDevicePresentRectanglesKHR = Ptr{Cvoid}
const PFN_vkAcquireNextImage2KHR = Ptr{Cvoid}
const VkDisplayKHR_T = Cvoid
const VkDisplayKHR = Ptr{VkDisplayKHR_T}
const VkDisplayModeKHR_T = Cvoid
const VkDisplayModeKHR = Ptr{VkDisplayModeKHR_T}
const VkDisplayModeCreateFlagsKHR = VkFlags

@cenum VkDisplayPlaneAlphaFlagBitsKHR::UInt32 begin
    VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 1
    VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 2
    VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 4
    VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 8
    VK_DISPLAY_PLANE_ALPHA_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkDisplayPlaneAlphaFlagsKHR = VkFlags
const VkDisplaySurfaceCreateFlagsKHR = VkFlags

struct VkDisplayModeParametersKHR
    visibleRegion::VkExtent2D
    refreshRate::UInt32
end

struct VkDisplayModeCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDisplayModeCreateFlagsKHR
    parameters::VkDisplayModeParametersKHR
end

struct VkDisplayModePropertiesKHR
    displayMode::VkDisplayModeKHR
    parameters::VkDisplayModeParametersKHR
end

struct VkDisplayPlaneCapabilitiesKHR
    supportedAlpha::VkDisplayPlaneAlphaFlagsKHR
    minSrcPosition::VkOffset2D
    maxSrcPosition::VkOffset2D
    minSrcExtent::VkExtent2D
    maxSrcExtent::VkExtent2D
    minDstPosition::VkOffset2D
    maxDstPosition::VkOffset2D
    minDstExtent::VkExtent2D
    maxDstExtent::VkExtent2D
end

struct VkDisplayPlanePropertiesKHR
    currentDisplay::VkDisplayKHR
    currentStackIndex::UInt32
end

struct VkDisplayPropertiesKHR
    display::VkDisplayKHR
    displayName::Cstring
    physicalDimensions::VkExtent2D
    physicalResolution::VkExtent2D
    supportedTransforms::VkSurfaceTransformFlagsKHR
    planeReorderPossible::VkBool32
    persistentContent::VkBool32
end

struct VkDisplaySurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDisplaySurfaceCreateFlagsKHR
    displayMode::VkDisplayModeKHR
    planeIndex::UInt32
    planeStackIndex::UInt32
    transform::VkSurfaceTransformFlagBitsKHR
    globalAlpha::Cfloat
    alphaMode::VkDisplayPlaneAlphaFlagBitsKHR
    imageExtent::VkExtent2D
end

const PFN_vkGetPhysicalDeviceDisplayPropertiesKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR = Ptr{Cvoid}
const PFN_vkGetDisplayPlaneSupportedDisplaysKHR = Ptr{Cvoid}
const PFN_vkGetDisplayModePropertiesKHR = Ptr{Cvoid}
const PFN_vkCreateDisplayModeKHR = Ptr{Cvoid}
const PFN_vkGetDisplayPlaneCapabilitiesKHR = Ptr{Cvoid}
const PFN_vkCreateDisplayPlaneSurfaceKHR = Ptr{Cvoid}

struct VkDisplayPresentInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcRect::VkRect2D
    dstRect::VkRect2D
    persistent::VkBool32
end

const PFN_vkCreateSharedSwapchainsKHR = Ptr{Cvoid}
const VkRenderPassMultiviewCreateInfoKHR = VkRenderPassMultiviewCreateInfo
const VkPhysicalDeviceMultiviewFeaturesKHR = VkPhysicalDeviceMultiviewFeatures
const VkPhysicalDeviceMultiviewPropertiesKHR = VkPhysicalDeviceMultiviewProperties
const VkPhysicalDeviceFeatures2KHR = VkPhysicalDeviceFeatures2
const VkPhysicalDeviceProperties2KHR = VkPhysicalDeviceProperties2
const VkFormatProperties2KHR = VkFormatProperties2
const VkImageFormatProperties2KHR = VkImageFormatProperties2
const VkPhysicalDeviceImageFormatInfo2KHR = VkPhysicalDeviceImageFormatInfo2
const VkQueueFamilyProperties2KHR = VkQueueFamilyProperties2
const VkPhysicalDeviceMemoryProperties2KHR = VkPhysicalDeviceMemoryProperties2
const VkSparseImageFormatProperties2KHR = VkSparseImageFormatProperties2
const VkPhysicalDeviceSparseImageFormatInfo2KHR = VkPhysicalDeviceSparseImageFormatInfo2
const PFN_vkGetPhysicalDeviceFeatures2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceFormatProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceImageFormatProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMemoryProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR = Ptr{Cvoid}
const VkPeerMemoryFeatureFlagsKHR = VkPeerMemoryFeatureFlags
const VkPeerMemoryFeatureFlagBitsKHR = VkPeerMemoryFeatureFlagBits
const VkMemoryAllocateFlagsKHR = VkMemoryAllocateFlags
const VkMemoryAllocateFlagBitsKHR = VkMemoryAllocateFlagBits
const VkMemoryAllocateFlagsInfoKHR = VkMemoryAllocateFlagsInfo
const VkDeviceGroupRenderPassBeginInfoKHR = VkDeviceGroupRenderPassBeginInfo
const VkDeviceGroupCommandBufferBeginInfoKHR = VkDeviceGroupCommandBufferBeginInfo
const VkDeviceGroupSubmitInfoKHR = VkDeviceGroupSubmitInfo
const VkDeviceGroupBindSparseInfoKHR = VkDeviceGroupBindSparseInfo
const VkBindBufferMemoryDeviceGroupInfoKHR = VkBindBufferMemoryDeviceGroupInfo
const VkBindImageMemoryDeviceGroupInfoKHR = VkBindImageMemoryDeviceGroupInfo
const PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR = Ptr{Cvoid}
const PFN_vkCmdSetDeviceMaskKHR = Ptr{Cvoid}
const PFN_vkCmdDispatchBaseKHR = Ptr{Cvoid}
const VkCommandPoolTrimFlagsKHR = VkCommandPoolTrimFlags
const PFN_vkTrimCommandPoolKHR = Ptr{Cvoid}
const VkPhysicalDeviceGroupPropertiesKHR = VkPhysicalDeviceGroupProperties
const VkDeviceGroupDeviceCreateInfoKHR = VkDeviceGroupDeviceCreateInfo
const PFN_vkEnumeratePhysicalDeviceGroupsKHR = Ptr{Cvoid}
const VkExternalMemoryHandleTypeFlagsKHR = VkExternalMemoryHandleTypeFlags
const VkExternalMemoryHandleTypeFlagBitsKHR = VkExternalMemoryHandleTypeFlagBits
const VkExternalMemoryFeatureFlagsKHR = VkExternalMemoryFeatureFlags
const VkExternalMemoryFeatureFlagBitsKHR = VkExternalMemoryFeatureFlagBits
const VkExternalMemoryPropertiesKHR = VkExternalMemoryProperties
const VkPhysicalDeviceExternalImageFormatInfoKHR = VkPhysicalDeviceExternalImageFormatInfo
const VkExternalImageFormatPropertiesKHR = VkExternalImageFormatProperties
const VkPhysicalDeviceExternalBufferInfoKHR = VkPhysicalDeviceExternalBufferInfo
const VkExternalBufferPropertiesKHR = VkExternalBufferProperties
const VkPhysicalDeviceIDPropertiesKHR = VkPhysicalDeviceIDProperties
const PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR = Ptr{Cvoid}
const VkExternalMemoryImageCreateInfoKHR = VkExternalMemoryImageCreateInfo
const VkExternalMemoryBufferCreateInfoKHR = VkExternalMemoryBufferCreateInfo
const VkExportMemoryAllocateInfoKHR = VkExportMemoryAllocateInfo

struct VkImportMemoryFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalMemoryHandleTypeFlagBits
    fd::Cint
end

struct VkMemoryFdPropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryTypeBits::UInt32
end

struct VkMemoryGetFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memory::VkDeviceMemory
    handleType::VkExternalMemoryHandleTypeFlagBits
end

const PFN_vkGetMemoryFdKHR = Ptr{Cvoid}
const PFN_vkGetMemoryFdPropertiesKHR = Ptr{Cvoid}
const VkExternalSemaphoreHandleTypeFlagsKHR = VkExternalSemaphoreHandleTypeFlags
const VkExternalSemaphoreHandleTypeFlagBitsKHR = VkExternalSemaphoreHandleTypeFlagBits
const VkExternalSemaphoreFeatureFlagsKHR = VkExternalSemaphoreFeatureFlags
const VkExternalSemaphoreFeatureFlagBitsKHR = VkExternalSemaphoreFeatureFlagBits
const VkPhysicalDeviceExternalSemaphoreInfoKHR = VkPhysicalDeviceExternalSemaphoreInfo
const VkExternalSemaphorePropertiesKHR = VkExternalSemaphoreProperties
const PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = Ptr{Cvoid}
const VkSemaphoreImportFlagsKHR = VkSemaphoreImportFlags
const VkSemaphoreImportFlagBitsKHR = VkSemaphoreImportFlagBits
const VkExportSemaphoreCreateInfoKHR = VkExportSemaphoreCreateInfo

struct VkImportSemaphoreFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphore::VkSemaphore
    flags::VkSemaphoreImportFlags
    handleType::VkExternalSemaphoreHandleTypeFlagBits
    fd::Cint
end

struct VkSemaphoreGetFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphore::VkSemaphore
    handleType::VkExternalSemaphoreHandleTypeFlagBits
end

const PFN_vkImportSemaphoreFdKHR = Ptr{Cvoid}
const PFN_vkGetSemaphoreFdKHR = Ptr{Cvoid}

struct VkPhysicalDevicePushDescriptorPropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxPushDescriptors::UInt32
end

const PFN_vkCmdPushDescriptorSetKHR = Ptr{Cvoid}
const PFN_vkCmdPushDescriptorSetWithTemplateKHR = Ptr{Cvoid}
const VkPhysicalDeviceShaderFloat16Int8FeaturesKHR = VkPhysicalDeviceShaderFloat16Int8Features
const VkPhysicalDeviceFloat16Int8FeaturesKHR = VkPhysicalDeviceShaderFloat16Int8Features
const VkPhysicalDevice16BitStorageFeaturesKHR = VkPhysicalDevice16BitStorageFeatures

struct VkRectLayerKHR
    offset::VkOffset2D
    extent::VkExtent2D
    layer::UInt32
end

struct VkPresentRegionKHR
    rectangleCount::UInt32
    pRectangles::Ptr{VkRectLayerKHR}
end

struct VkPresentRegionsKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchainCount::UInt32
    pRegions::Ptr{VkPresentRegionKHR}
end

const VkDescriptorUpdateTemplateKHR = VkDescriptorUpdateTemplate
const VkDescriptorUpdateTemplateTypeKHR = VkDescriptorUpdateTemplateType
const VkDescriptorUpdateTemplateCreateFlagsKHR = VkDescriptorUpdateTemplateCreateFlags
const VkDescriptorUpdateTemplateEntryKHR = VkDescriptorUpdateTemplateEntry
const VkDescriptorUpdateTemplateCreateInfoKHR = VkDescriptorUpdateTemplateCreateInfo
const PFN_vkCreateDescriptorUpdateTemplateKHR = Ptr{Cvoid}
const PFN_vkDestroyDescriptorUpdateTemplateKHR = Ptr{Cvoid}
const PFN_vkUpdateDescriptorSetWithTemplateKHR = Ptr{Cvoid}
const VkPhysicalDeviceImagelessFramebufferFeaturesKHR = VkPhysicalDeviceImagelessFramebufferFeatures
const VkFramebufferAttachmentsCreateInfoKHR = VkFramebufferAttachmentsCreateInfo
const VkFramebufferAttachmentImageInfoKHR = VkFramebufferAttachmentImageInfo
const VkRenderPassAttachmentBeginInfoKHR = VkRenderPassAttachmentBeginInfo
const VkRenderPassCreateInfo2KHR = VkRenderPassCreateInfo2
const VkAttachmentDescription2KHR = VkAttachmentDescription2
const VkAttachmentReference2KHR = VkAttachmentReference2
const VkSubpassDescription2KHR = VkSubpassDescription2
const VkSubpassDependency2KHR = VkSubpassDependency2
const VkSubpassBeginInfoKHR = VkSubpassBeginInfo
const VkSubpassEndInfoKHR = VkSubpassEndInfo
const PFN_vkCreateRenderPass2KHR = Ptr{Cvoid}
const PFN_vkCmdBeginRenderPass2KHR = Ptr{Cvoid}
const PFN_vkCmdNextSubpass2KHR = Ptr{Cvoid}
const PFN_vkCmdEndRenderPass2KHR = Ptr{Cvoid}

struct VkSharedPresentSurfaceCapabilitiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    sharedPresentSupportedUsageFlags::VkImageUsageFlags
end

const PFN_vkGetSwapchainStatusKHR = Ptr{Cvoid}
const VkExternalFenceHandleTypeFlagsKHR = VkExternalFenceHandleTypeFlags
const VkExternalFenceHandleTypeFlagBitsKHR = VkExternalFenceHandleTypeFlagBits
const VkExternalFenceFeatureFlagsKHR = VkExternalFenceFeatureFlags
const VkExternalFenceFeatureFlagBitsKHR = VkExternalFenceFeatureFlagBits
const VkPhysicalDeviceExternalFenceInfoKHR = VkPhysicalDeviceExternalFenceInfo
const VkExternalFencePropertiesKHR = VkExternalFenceProperties
const PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR = Ptr{Cvoid}
const VkFenceImportFlagsKHR = VkFenceImportFlags
const VkFenceImportFlagBitsKHR = VkFenceImportFlagBits
const VkExportFenceCreateInfoKHR = VkExportFenceCreateInfo

struct VkImportFenceFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fence::VkFence
    flags::VkFenceImportFlags
    handleType::VkExternalFenceHandleTypeFlagBits
    fd::Cint
end

struct VkFenceGetFdInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fence::VkFence
    handleType::VkExternalFenceHandleTypeFlagBits
end

const PFN_vkImportFenceFdKHR = Ptr{Cvoid}
const PFN_vkGetFenceFdKHR = Ptr{Cvoid}

@cenum VkPerformanceCounterUnitKHR::UInt32 begin
    VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR = 0
    VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR = 1
    VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR = 2
    VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR = 3
    VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR = 4
    VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR = 5
    VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR = 6
    VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR = 7
    VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR = 8
    VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR = 9
    VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR = 10
    VK_PERFORMANCE_COUNTER_UNIT_MAX_ENUM_KHR = 2147483647
end

@cenum VkPerformanceCounterScopeKHR::UInt32 begin
    VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0
    VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1
    VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2
    VK_QUERY_SCOPE_COMMAND_BUFFER_KHR = 0
    VK_QUERY_SCOPE_RENDER_PASS_KHR = 1
    VK_QUERY_SCOPE_COMMAND_KHR = 2
    VK_PERFORMANCE_COUNTER_SCOPE_MAX_ENUM_KHR = 2147483647
end

@cenum VkPerformanceCounterStorageKHR::UInt32 begin
    VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0
    VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1
    VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2
    VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3
    VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4
    VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5
    VK_PERFORMANCE_COUNTER_STORAGE_MAX_ENUM_KHR = 2147483647
end

@cenum VkPerformanceCounterDescriptionFlagBitsKHR::UInt32 begin
    VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR = 1
    VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR = 2
    VK_PERFORMANCE_COUNTER_DESCRIPTION_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkPerformanceCounterDescriptionFlagsKHR = VkFlags

@cenum VkAcquireProfilingLockFlagBitsKHR::UInt32 begin
    VK_ACQUIRE_PROFILING_LOCK_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkAcquireProfilingLockFlagsKHR = VkFlags

struct VkPhysicalDevicePerformanceQueryFeaturesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    performanceCounterQueryPools::VkBool32
    performanceCounterMultipleQueryPools::VkBool32
end

struct VkPhysicalDevicePerformanceQueryPropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    allowCommandBufferQueryCopies::VkBool32
end

struct VkPerformanceCounterKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    unit::VkPerformanceCounterUnitKHR
    scope::VkPerformanceCounterScopeKHR
    storage::VkPerformanceCounterStorageKHR
    uuid::NTuple{16, UInt8}
end

struct VkPerformanceCounterDescriptionKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPerformanceCounterDescriptionFlagsKHR
    name::NTuple{256, UInt8}
    category::NTuple{256, UInt8}
    description::NTuple{256, UInt8}
end

struct VkQueryPoolPerformanceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    queueFamilyIndex::UInt32
    counterIndexCount::UInt32
    pCounterIndices::Ptr{UInt32}
end

struct VkPerformanceCounterResultKHR
    int64::Int64
end

struct VkAcquireProfilingLockInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkAcquireProfilingLockFlagsKHR
    timeout::UInt64
end

struct VkPerformanceQuerySubmitInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    counterPassIndex::UInt32
end

const PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = Ptr{Cvoid}
const PFN_vkAcquireProfilingLockKHR = Ptr{Cvoid}
const PFN_vkReleaseProfilingLockKHR = Ptr{Cvoid}
const VkPointClippingBehaviorKHR = VkPointClippingBehavior
const VkTessellationDomainOriginKHR = VkTessellationDomainOrigin
const VkPhysicalDevicePointClippingPropertiesKHR = VkPhysicalDevicePointClippingProperties
const VkRenderPassInputAttachmentAspectCreateInfoKHR = VkRenderPassInputAttachmentAspectCreateInfo
const VkInputAttachmentAspectReferenceKHR = VkInputAttachmentAspectReference
const VkImageViewUsageCreateInfoKHR = VkImageViewUsageCreateInfo
const VkPipelineTessellationDomainOriginStateCreateInfoKHR = VkPipelineTessellationDomainOriginStateCreateInfo

struct VkPhysicalDeviceSurfaceInfo2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    surface::VkSurfaceKHR
end

struct VkSurfaceCapabilities2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    surfaceCapabilities::VkSurfaceCapabilitiesKHR
end

struct VkSurfaceFormat2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    surfaceFormat::VkSurfaceFormatKHR
end

const PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceSurfaceFormats2KHR = Ptr{Cvoid}
const VkPhysicalDeviceVariablePointerFeaturesKHR = VkPhysicalDeviceVariablePointersFeatures
const VkPhysicalDeviceVariablePointersFeaturesKHR = VkPhysicalDeviceVariablePointersFeatures

struct VkDisplayProperties2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    displayProperties::VkDisplayPropertiesKHR
end

struct VkDisplayPlaneProperties2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    displayPlaneProperties::VkDisplayPlanePropertiesKHR
end

struct VkDisplayModeProperties2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    displayModeProperties::VkDisplayModePropertiesKHR
end

struct VkDisplayPlaneInfo2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    mode::VkDisplayModeKHR
    planeIndex::UInt32
end

struct VkDisplayPlaneCapabilities2KHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    capabilities::VkDisplayPlaneCapabilitiesKHR
end

const PFN_vkGetPhysicalDeviceDisplayProperties2KHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR = Ptr{Cvoid}
const PFN_vkGetDisplayModeProperties2KHR = Ptr{Cvoid}
const PFN_vkGetDisplayPlaneCapabilities2KHR = Ptr{Cvoid}
const VkMemoryDedicatedRequirementsKHR = VkMemoryDedicatedRequirements
const VkMemoryDedicatedAllocateInfoKHR = VkMemoryDedicatedAllocateInfo
const VkBufferMemoryRequirementsInfo2KHR = VkBufferMemoryRequirementsInfo2
const VkImageMemoryRequirementsInfo2KHR = VkImageMemoryRequirementsInfo2
const VkImageSparseMemoryRequirementsInfo2KHR = VkImageSparseMemoryRequirementsInfo2
const VkMemoryRequirements2KHR = VkMemoryRequirements2
const VkSparseImageMemoryRequirements2KHR = VkSparseImageMemoryRequirements2
const PFN_vkGetImageMemoryRequirements2KHR = Ptr{Cvoid}
const PFN_vkGetBufferMemoryRequirements2KHR = Ptr{Cvoid}
const PFN_vkGetImageSparseMemoryRequirements2KHR = Ptr{Cvoid}
const VkImageFormatListCreateInfoKHR = VkImageFormatListCreateInfo
const VkSamplerYcbcrConversionKHR = VkSamplerYcbcrConversion
const VkSamplerYcbcrModelConversionKHR = VkSamplerYcbcrModelConversion
const VkSamplerYcbcrRangeKHR = VkSamplerYcbcrRange
const VkChromaLocationKHR = VkChromaLocation
const VkSamplerYcbcrConversionCreateInfoKHR = VkSamplerYcbcrConversionCreateInfo
const VkSamplerYcbcrConversionInfoKHR = VkSamplerYcbcrConversionInfo
const VkBindImagePlaneMemoryInfoKHR = VkBindImagePlaneMemoryInfo
const VkImagePlaneMemoryRequirementsInfoKHR = VkImagePlaneMemoryRequirementsInfo
const VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR = VkPhysicalDeviceSamplerYcbcrConversionFeatures
const VkSamplerYcbcrConversionImageFormatPropertiesKHR = VkSamplerYcbcrConversionImageFormatProperties
const PFN_vkCreateSamplerYcbcrConversionKHR = Ptr{Cvoid}
const PFN_vkDestroySamplerYcbcrConversionKHR = Ptr{Cvoid}
const VkBindBufferMemoryInfoKHR = VkBindBufferMemoryInfo
const VkBindImageMemoryInfoKHR = VkBindImageMemoryInfo
const PFN_vkBindBufferMemory2KHR = Ptr{Cvoid}
const PFN_vkBindImageMemory2KHR = Ptr{Cvoid}
const VkPhysicalDeviceMaintenance3PropertiesKHR = VkPhysicalDeviceMaintenance3Properties
const VkDescriptorSetLayoutSupportKHR = VkDescriptorSetLayoutSupport
const PFN_vkGetDescriptorSetLayoutSupportKHR = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectCountKHR = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirectCountKHR = Ptr{Cvoid}
const VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR = VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
const VkPhysicalDevice8BitStorageFeaturesKHR = VkPhysicalDevice8BitStorageFeatures
const VkPhysicalDeviceShaderAtomicInt64FeaturesKHR = VkPhysicalDeviceShaderAtomicInt64Features

struct VkPhysicalDeviceShaderClockFeaturesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderSubgroupClock::VkBool32
    shaderDeviceClock::VkBool32
end

const VkDriverIdKHR = VkDriverId
const VkConformanceVersionKHR = VkConformanceVersion
const VkPhysicalDeviceDriverPropertiesKHR = VkPhysicalDeviceDriverProperties
const VkShaderFloatControlsIndependenceKHR = VkShaderFloatControlsIndependence
const VkPhysicalDeviceFloatControlsPropertiesKHR = VkPhysicalDeviceFloatControlsProperties
const VkResolveModeFlagBitsKHR = VkResolveModeFlagBits
const VkResolveModeFlagsKHR = VkResolveModeFlags
const VkSubpassDescriptionDepthStencilResolveKHR = VkSubpassDescriptionDepthStencilResolve
const VkPhysicalDeviceDepthStencilResolvePropertiesKHR = VkPhysicalDeviceDepthStencilResolveProperties
const VkSemaphoreTypeKHR = VkSemaphoreType
const VkSemaphoreWaitFlagBitsKHR = VkSemaphoreWaitFlagBits
const VkSemaphoreWaitFlagsKHR = VkSemaphoreWaitFlags
const VkPhysicalDeviceTimelineSemaphoreFeaturesKHR = VkPhysicalDeviceTimelineSemaphoreFeatures
const VkPhysicalDeviceTimelineSemaphorePropertiesKHR = VkPhysicalDeviceTimelineSemaphoreProperties
const VkSemaphoreTypeCreateInfoKHR = VkSemaphoreTypeCreateInfo
const VkTimelineSemaphoreSubmitInfoKHR = VkTimelineSemaphoreSubmitInfo
const VkSemaphoreWaitInfoKHR = VkSemaphoreWaitInfo
const VkSemaphoreSignalInfoKHR = VkSemaphoreSignalInfo
const PFN_vkGetSemaphoreCounterValueKHR = Ptr{Cvoid}
const PFN_vkWaitSemaphoresKHR = Ptr{Cvoid}
const PFN_vkSignalSemaphoreKHR = Ptr{Cvoid}
const VkPhysicalDeviceVulkanMemoryModelFeaturesKHR = VkPhysicalDeviceVulkanMemoryModelFeatures

struct VkSurfaceProtectedCapabilitiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    supportsProtected::VkBool32
end

const VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR = VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
const VkAttachmentReferenceStencilLayoutKHR = VkAttachmentReferenceStencilLayout
const VkAttachmentDescriptionStencilLayoutKHR = VkAttachmentDescriptionStencilLayout
const VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR = VkPhysicalDeviceUniformBufferStandardLayoutFeatures
const VkPhysicalDeviceBufferDeviceAddressFeaturesKHR = VkPhysicalDeviceBufferDeviceAddressFeatures
const VkBufferDeviceAddressInfoKHR = VkBufferDeviceAddressInfo
const VkBufferOpaqueCaptureAddressCreateInfoKHR = VkBufferOpaqueCaptureAddressCreateInfo
const VkMemoryOpaqueCaptureAddressAllocateInfoKHR = VkMemoryOpaqueCaptureAddressAllocateInfo
const VkDeviceMemoryOpaqueCaptureAddressInfoKHR = VkDeviceMemoryOpaqueCaptureAddressInfo
const PFN_vkGetBufferDeviceAddressKHR = Ptr{Cvoid}
const PFN_vkGetBufferOpaqueCaptureAddressKHR = Ptr{Cvoid}
const PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR = Ptr{Cvoid}

@cenum VkPipelineExecutableStatisticFormatKHR::UInt32 begin
    VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0
    VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1
    VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2
    VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3
    VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_MAX_ENUM_KHR = 2147483647
end


struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipelineExecutableInfo::VkBool32
end

struct VkPipelineInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipeline::VkPipeline
end

struct VkPipelineExecutablePropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stages::VkShaderStageFlags
    name::NTuple{256, UInt8}
    description::NTuple{256, UInt8}
    subgroupSize::UInt32
end

struct VkPipelineExecutableInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipeline::VkPipeline
    executableIndex::UInt32
end

struct VkPipelineExecutableStatisticValueKHR
    i64::Int64
end

struct VkPipelineExecutableStatisticKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    name::NTuple{256, UInt8}
    description::NTuple{256, UInt8}
    format::VkPipelineExecutableStatisticFormatKHR
    value::VkPipelineExecutableStatisticValueKHR
end

struct VkPipelineExecutableInternalRepresentationKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    name::NTuple{256, UInt8}
    description::NTuple{256, UInt8}
    isText::VkBool32
    dataSize::Csize_t
    pData::Ptr{Cvoid}
end

const PFN_vkGetPipelineExecutablePropertiesKHR = Ptr{Cvoid}
const PFN_vkGetPipelineExecutableStatisticsKHR = Ptr{Cvoid}
const PFN_vkGetPipelineExecutableInternalRepresentationsKHR = Ptr{Cvoid}
const VkDebugReportCallbackEXT_T = Cvoid
const VkDebugReportCallbackEXT = Ptr{VkDebugReportCallbackEXT_T}

@cenum VkDebugReportObjectTypeEXT::UInt32 begin
    VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0
    VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1
    VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2
    VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3
    VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4
    VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5
    VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6
    VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7
    VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8
    VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9
    VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10
    VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11
    VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12
    VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13
    VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14
    VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15
    VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16
    VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17
    VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18
    VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19
    VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20
    VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21
    VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22
    VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23
    VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24
    VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25
    VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26
    VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27
    VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT = 28
    VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29
    VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30
    VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33
    VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000156000
    VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000085000
    VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT = 1000165000
    VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT = 28
    VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT = 33
    VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT = 1000085000
    VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT = 1000156000
    VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT = 1000165000
    VK_DEBUG_REPORT_OBJECT_TYPE_MAX_ENUM_EXT = 2147483647
end

@cenum VkDebugReportFlagBitsEXT::UInt32 begin
    VK_DEBUG_REPORT_INFORMATION_BIT_EXT = 1
    VK_DEBUG_REPORT_WARNING_BIT_EXT = 2
    VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 4
    VK_DEBUG_REPORT_ERROR_BIT_EXT = 8
    VK_DEBUG_REPORT_DEBUG_BIT_EXT = 16
    VK_DEBUG_REPORT_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkDebugReportFlagsEXT = VkFlags
const PFN_vkDebugReportCallbackEXT = Ptr{Cvoid}

struct VkDebugReportCallbackCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDebugReportFlagsEXT
    pfnCallback::PFN_vkDebugReportCallbackEXT
    pUserData::Ptr{Cvoid}
end

const PFN_vkCreateDebugReportCallbackEXT = Ptr{Cvoid}
const PFN_vkDestroyDebugReportCallbackEXT = Ptr{Cvoid}
const PFN_vkDebugReportMessageEXT = Ptr{Cvoid}

@cenum VkRasterizationOrderAMD::UInt32 begin
    VK_RASTERIZATION_ORDER_STRICT_AMD = 0
    VK_RASTERIZATION_ORDER_RELAXED_AMD = 1
    VK_RASTERIZATION_ORDER_MAX_ENUM_AMD = 2147483647
end


struct VkPipelineRasterizationStateRasterizationOrderAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    rasterizationOrder::VkRasterizationOrderAMD
end

struct VkDebugMarkerObjectNameInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    objectType::VkDebugReportObjectTypeEXT
    object::UInt64
    pObjectName::Cstring
end

struct VkDebugMarkerObjectTagInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    objectType::VkDebugReportObjectTypeEXT
    object::UInt64
    tagName::UInt64
    tagSize::Csize_t
    pTag::Ptr{Cvoid}
end

struct VkDebugMarkerMarkerInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pMarkerName::Cstring
    color::NTuple{4, Cfloat}
end

const PFN_vkDebugMarkerSetObjectTagEXT = Ptr{Cvoid}
const PFN_vkDebugMarkerSetObjectNameEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerBeginEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerEndEXT = Ptr{Cvoid}
const PFN_vkCmdDebugMarkerInsertEXT = Ptr{Cvoid}

struct VkDedicatedAllocationImageCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    dedicatedAllocation::VkBool32
end

struct VkDedicatedAllocationBufferCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    dedicatedAllocation::VkBool32
end

struct VkDedicatedAllocationMemoryAllocateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    image::VkImage
    buffer::VkBuffer
end

const VkPipelineRasterizationStateStreamCreateFlagsEXT = VkFlags

struct VkPhysicalDeviceTransformFeedbackFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    transformFeedback::VkBool32
    geometryStreams::VkBool32
end

struct VkPhysicalDeviceTransformFeedbackPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxTransformFeedbackStreams::UInt32
    maxTransformFeedbackBuffers::UInt32
    maxTransformFeedbackBufferSize::VkDeviceSize
    maxTransformFeedbackStreamDataSize::UInt32
    maxTransformFeedbackBufferDataSize::UInt32
    maxTransformFeedbackBufferDataStride::UInt32
    transformFeedbackQueries::VkBool32
    transformFeedbackStreamsLinesTriangles::VkBool32
    transformFeedbackRasterizationStreamSelect::VkBool32
    transformFeedbackDraw::VkBool32
end

struct VkPipelineRasterizationStateStreamCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineRasterizationStateStreamCreateFlagsEXT
    rasterizationStream::UInt32
end

const PFN_vkCmdBindTransformFeedbackBuffersEXT = Ptr{Cvoid}
const PFN_vkCmdBeginTransformFeedbackEXT = Ptr{Cvoid}
const PFN_vkCmdEndTransformFeedbackEXT = Ptr{Cvoid}
const PFN_vkCmdBeginQueryIndexedEXT = Ptr{Cvoid}
const PFN_vkCmdEndQueryIndexedEXT = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectByteCountEXT = Ptr{Cvoid}

struct VkImageViewHandleInfoNVX
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    imageView::VkImageView
    descriptorType::VkDescriptorType
    sampler::VkSampler
end

struct VkImageViewAddressPropertiesNVX
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceAddress::VkDeviceAddress
    size::VkDeviceSize
end

const PFN_vkGetImageViewHandleNVX = Ptr{Cvoid}
const PFN_vkGetImageViewAddressNVX = Ptr{Cvoid}
const PFN_vkCmdDrawIndirectCountAMD = Ptr{Cvoid}
const PFN_vkCmdDrawIndexedIndirectCountAMD = Ptr{Cvoid}

struct VkTextureLODGatherFormatPropertiesAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    supportsTextureGatherLODBiasAMD::VkBool32
end

@cenum VkShaderInfoTypeAMD::UInt32 begin
    VK_SHADER_INFO_TYPE_STATISTICS_AMD = 0
    VK_SHADER_INFO_TYPE_BINARY_AMD = 1
    VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2
    VK_SHADER_INFO_TYPE_MAX_ENUM_AMD = 2147483647
end


struct VkShaderResourceUsageAMD
    numUsedVgprs::UInt32
    numUsedSgprs::UInt32
    ldsSizePerLocalWorkGroup::UInt32
    ldsUsageSizeInBytes::Csize_t
    scratchMemUsageInBytes::Csize_t
end

struct VkShaderStatisticsInfoAMD
    shaderStageMask::VkShaderStageFlags
    resourceUsage::VkShaderResourceUsageAMD
    numPhysicalVgprs::UInt32
    numPhysicalSgprs::UInt32
    numAvailableVgprs::UInt32
    numAvailableSgprs::UInt32
    computeWorkGroupSize::NTuple{3, UInt32}
end

const PFN_vkGetShaderInfoAMD = Ptr{Cvoid}

struct VkPhysicalDeviceCornerSampledImageFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    cornerSampledImage::VkBool32
end

@cenum VkExternalMemoryHandleTypeFlagBitsNV::UInt32 begin
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV = 1
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV = 2
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV = 4
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV = 8
    VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end


const VkExternalMemoryHandleTypeFlagsNV = VkFlags

@cenum VkExternalMemoryFeatureFlagBitsNV::UInt32 begin
    VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV = 1
    VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV = 2
    VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV = 4
    VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end


const VkExternalMemoryFeatureFlagsNV = VkFlags

struct VkExternalImageFormatPropertiesNV
    imageFormatProperties::VkImageFormatProperties
    externalMemoryFeatures::VkExternalMemoryFeatureFlagsNV
    exportFromImportedHandleTypes::VkExternalMemoryHandleTypeFlagsNV
    compatibleHandleTypes::VkExternalMemoryHandleTypeFlagsNV
end

const PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV = Ptr{Cvoid}

struct VkExternalMemoryImageCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalMemoryHandleTypeFlagsNV
end

struct VkExportMemoryAllocateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleTypes::VkExternalMemoryHandleTypeFlagsNV
end

@cenum VkValidationCheckEXT::UInt32 begin
    VK_VALIDATION_CHECK_ALL_EXT = 0
    VK_VALIDATION_CHECK_SHADERS_EXT = 1
    VK_VALIDATION_CHECK_MAX_ENUM_EXT = 2147483647
end


struct VkValidationFlagsEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    disabledValidationCheckCount::UInt32
    pDisabledValidationChecks::Ptr{VkValidationCheckEXT}
end

struct VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    textureCompressionASTC_HDR::VkBool32
end

struct VkImageViewASTCDecodeModeEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    decodeMode::VkFormat
end

struct VkPhysicalDeviceASTCDecodeFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    decodeModeSharedExponent::VkBool32
end

@cenum VkConditionalRenderingFlagBitsEXT::UInt32 begin
    VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT = 1
    VK_CONDITIONAL_RENDERING_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkConditionalRenderingFlagsEXT = VkFlags

struct VkConditionalRenderingBeginInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    buffer::VkBuffer
    offset::VkDeviceSize
    flags::VkConditionalRenderingFlagsEXT
end

struct VkPhysicalDeviceConditionalRenderingFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    conditionalRendering::VkBool32
    inheritedConditionalRendering::VkBool32
end

struct VkCommandBufferInheritanceConditionalRenderingInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    conditionalRenderingEnable::VkBool32
end

const PFN_vkCmdBeginConditionalRenderingEXT = Ptr{Cvoid}
const PFN_vkCmdEndConditionalRenderingEXT = Ptr{Cvoid}

struct VkViewportWScalingNV
    xcoeff::Cfloat
    ycoeff::Cfloat
end

struct VkPipelineViewportWScalingStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    viewportWScalingEnable::VkBool32
    viewportCount::UInt32
    pViewportWScalings::Ptr{VkViewportWScalingNV}
end

const PFN_vkCmdSetViewportWScalingNV = Ptr{Cvoid}
const PFN_vkReleaseDisplayEXT = Ptr{Cvoid}

@cenum VkSurfaceCounterFlagBitsEXT::UInt32 begin
    VK_SURFACE_COUNTER_VBLANK_EXT = 1
    VK_SURFACE_COUNTER_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkSurfaceCounterFlagsEXT = VkFlags

struct VkSurfaceCapabilities2EXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    minImageCount::UInt32
    maxImageCount::UInt32
    currentExtent::VkExtent2D
    minImageExtent::VkExtent2D
    maxImageExtent::VkExtent2D
    maxImageArrayLayers::UInt32
    supportedTransforms::VkSurfaceTransformFlagsKHR
    currentTransform::VkSurfaceTransformFlagBitsKHR
    supportedCompositeAlpha::VkCompositeAlphaFlagsKHR
    supportedUsageFlags::VkImageUsageFlags
    supportedSurfaceCounters::VkSurfaceCounterFlagsEXT
end

const PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT = Ptr{Cvoid}

@cenum VkDisplayPowerStateEXT::UInt32 begin
    VK_DISPLAY_POWER_STATE_OFF_EXT = 0
    VK_DISPLAY_POWER_STATE_SUSPEND_EXT = 1
    VK_DISPLAY_POWER_STATE_ON_EXT = 2
    VK_DISPLAY_POWER_STATE_MAX_ENUM_EXT = 2147483647
end

@cenum VkDeviceEventTypeEXT::UInt32 begin
    VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0
    VK_DEVICE_EVENT_TYPE_MAX_ENUM_EXT = 2147483647
end

@cenum VkDisplayEventTypeEXT::UInt32 begin
    VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0
    VK_DISPLAY_EVENT_TYPE_MAX_ENUM_EXT = 2147483647
end


struct VkDisplayPowerInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    powerState::VkDisplayPowerStateEXT
end

struct VkDeviceEventInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceEvent::VkDeviceEventTypeEXT
end

struct VkDisplayEventInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    displayEvent::VkDisplayEventTypeEXT
end

struct VkSwapchainCounterCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    surfaceCounters::VkSurfaceCounterFlagsEXT
end

const PFN_vkDisplayPowerControlEXT = Ptr{Cvoid}
const PFN_vkRegisterDeviceEventEXT = Ptr{Cvoid}
const PFN_vkRegisterDisplayEventEXT = Ptr{Cvoid}
const PFN_vkGetSwapchainCounterEXT = Ptr{Cvoid}

struct VkRefreshCycleDurationGOOGLE
    refreshDuration::UInt64
end

struct VkPastPresentationTimingGOOGLE
    presentID::UInt32
    desiredPresentTime::UInt64
    actualPresentTime::UInt64
    earliestPresentTime::UInt64
    presentMargin::UInt64
end

struct VkPresentTimeGOOGLE
    presentID::UInt32
    desiredPresentTime::UInt64
end

struct VkPresentTimesInfoGOOGLE
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    swapchainCount::UInt32
    pTimes::Ptr{VkPresentTimeGOOGLE}
end

const PFN_vkGetRefreshCycleDurationGOOGLE = Ptr{Cvoid}
const PFN_vkGetPastPresentationTimingGOOGLE = Ptr{Cvoid}

struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    perViewPositionAllComponents::VkBool32
end

@cenum VkViewportCoordinateSwizzleNV::UInt32 begin
    VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0
    VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1
    VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2
    VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3
    VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4
    VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5
    VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6
    VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7
    VK_VIEWPORT_COORDINATE_SWIZZLE_MAX_ENUM_NV = 2147483647
end


const VkPipelineViewportSwizzleStateCreateFlagsNV = VkFlags

struct VkViewportSwizzleNV
    x::VkViewportCoordinateSwizzleNV
    y::VkViewportCoordinateSwizzleNV
    z::VkViewportCoordinateSwizzleNV
    w::VkViewportCoordinateSwizzleNV
end

struct VkPipelineViewportSwizzleStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineViewportSwizzleStateCreateFlagsNV
    viewportCount::UInt32
    pViewportSwizzles::Ptr{VkViewportSwizzleNV}
end

@cenum VkDiscardRectangleModeEXT::UInt32 begin
    VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0
    VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1
    VK_DISCARD_RECTANGLE_MODE_MAX_ENUM_EXT = 2147483647
end


const VkPipelineDiscardRectangleStateCreateFlagsEXT = VkFlags

struct VkPhysicalDeviceDiscardRectanglePropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxDiscardRectangles::UInt32
end

struct VkPipelineDiscardRectangleStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineDiscardRectangleStateCreateFlagsEXT
    discardRectangleMode::VkDiscardRectangleModeEXT
    discardRectangleCount::UInt32
    pDiscardRectangles::Ptr{VkRect2D}
end

const PFN_vkCmdSetDiscardRectangleEXT = Ptr{Cvoid}

@cenum VkConservativeRasterizationModeEXT::UInt32 begin
    VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0
    VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1
    VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2
    VK_CONSERVATIVE_RASTERIZATION_MODE_MAX_ENUM_EXT = 2147483647
end


const VkPipelineRasterizationConservativeStateCreateFlagsEXT = VkFlags

struct VkPhysicalDeviceConservativeRasterizationPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    primitiveOverestimationSize::Cfloat
    maxExtraPrimitiveOverestimationSize::Cfloat
    extraPrimitiveOverestimationSizeGranularity::Cfloat
    primitiveUnderestimation::VkBool32
    conservativePointAndLineRasterization::VkBool32
    degenerateTrianglesRasterized::VkBool32
    degenerateLinesRasterized::VkBool32
    fullyCoveredFragmentShaderInputVariable::VkBool32
    conservativeRasterizationPostDepthCoverage::VkBool32
end

struct VkPipelineRasterizationConservativeStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineRasterizationConservativeStateCreateFlagsEXT
    conservativeRasterizationMode::VkConservativeRasterizationModeEXT
    extraPrimitiveOverestimationSize::Cfloat
end

const VkPipelineRasterizationDepthClipStateCreateFlagsEXT = VkFlags

struct VkPhysicalDeviceDepthClipEnableFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    depthClipEnable::VkBool32
end

struct VkPipelineRasterizationDepthClipStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineRasterizationDepthClipStateCreateFlagsEXT
    depthClipEnable::VkBool32
end

struct VkXYColorEXT
    x::Cfloat
    y::Cfloat
end

struct VkHdrMetadataEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    displayPrimaryRed::VkXYColorEXT
    displayPrimaryGreen::VkXYColorEXT
    displayPrimaryBlue::VkXYColorEXT
    whitePoint::VkXYColorEXT
    maxLuminance::Cfloat
    minLuminance::Cfloat
    maxContentLightLevel::Cfloat
    maxFrameAverageLightLevel::Cfloat
end

const PFN_vkSetHdrMetadataEXT = Ptr{Cvoid}
const VkDebugUtilsMessengerEXT_T = Cvoid
const VkDebugUtilsMessengerEXT = Ptr{VkDebugUtilsMessengerEXT_T}
const VkDebugUtilsMessengerCallbackDataFlagsEXT = VkFlags

@cenum VkDebugUtilsMessageSeverityFlagBitsEXT::UInt32 begin
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 1
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 16
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 256
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 4096
    VK_DEBUG_UTILS_MESSAGE_SEVERITY_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end

@cenum VkDebugUtilsMessageTypeFlagBitsEXT::UInt32 begin
    VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 1
    VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 2
    VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 4
    VK_DEBUG_UTILS_MESSAGE_TYPE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkDebugUtilsMessageTypeFlagsEXT = VkFlags
const VkDebugUtilsMessageSeverityFlagsEXT = VkFlags
const VkDebugUtilsMessengerCreateFlagsEXT = VkFlags

struct VkDebugUtilsLabelEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pLabelName::Cstring
    color::NTuple{4, Cfloat}
end

struct VkDebugUtilsObjectNameInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    objectType::VkObjectType
    objectHandle::UInt64
    pObjectName::Cstring
end

struct VkDebugUtilsMessengerCallbackDataEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDebugUtilsMessengerCallbackDataFlagsEXT
    pMessageIdName::Cstring
    messageIdNumber::Int32
    pMessage::Cstring
    queueLabelCount::UInt32
    pQueueLabels::Ptr{VkDebugUtilsLabelEXT}
    cmdBufLabelCount::UInt32
    pCmdBufLabels::Ptr{VkDebugUtilsLabelEXT}
    objectCount::UInt32
    pObjects::Ptr{VkDebugUtilsObjectNameInfoEXT}
end

const PFN_vkDebugUtilsMessengerCallbackEXT = Ptr{Cvoid}

struct VkDebugUtilsMessengerCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDebugUtilsMessengerCreateFlagsEXT
    messageSeverity::VkDebugUtilsMessageSeverityFlagsEXT
    messageType::VkDebugUtilsMessageTypeFlagsEXT
    pfnUserCallback::PFN_vkDebugUtilsMessengerCallbackEXT
    pUserData::Ptr{Cvoid}
end

struct VkDebugUtilsObjectTagInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    objectType::VkObjectType
    objectHandle::UInt64
    tagName::UInt64
    tagSize::Csize_t
    pTag::Ptr{Cvoid}
end

const PFN_vkSetDebugUtilsObjectNameEXT = Ptr{Cvoid}
const PFN_vkSetDebugUtilsObjectTagEXT = Ptr{Cvoid}
const PFN_vkQueueBeginDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkQueueEndDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkQueueInsertDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCmdBeginDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCmdEndDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCmdInsertDebugUtilsLabelEXT = Ptr{Cvoid}
const PFN_vkCreateDebugUtilsMessengerEXT = Ptr{Cvoid}
const PFN_vkDestroyDebugUtilsMessengerEXT = Ptr{Cvoid}
const PFN_vkSubmitDebugUtilsMessageEXT = Ptr{Cvoid}
const VkSamplerReductionModeEXT = VkSamplerReductionMode
const VkSamplerReductionModeCreateInfoEXT = VkSamplerReductionModeCreateInfo
const VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT = VkPhysicalDeviceSamplerFilterMinmaxProperties

struct VkPhysicalDeviceInlineUniformBlockFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    inlineUniformBlock::VkBool32
    descriptorBindingInlineUniformBlockUpdateAfterBind::VkBool32
end

struct VkPhysicalDeviceInlineUniformBlockPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxInlineUniformBlockSize::UInt32
    maxPerStageDescriptorInlineUniformBlocks::UInt32
    maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks::UInt32
    maxDescriptorSetInlineUniformBlocks::UInt32
    maxDescriptorSetUpdateAfterBindInlineUniformBlocks::UInt32
end

struct VkWriteDescriptorSetInlineUniformBlockEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    dataSize::UInt32
    pData::Ptr{Cvoid}
end

struct VkDescriptorPoolInlineUniformBlockCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxInlineUniformBlockBindings::UInt32
end

struct VkSampleLocationEXT
    x::Cfloat
    y::Cfloat
end

struct VkSampleLocationsInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    sampleLocationsPerPixel::VkSampleCountFlagBits
    sampleLocationGridSize::VkExtent2D
    sampleLocationsCount::UInt32
    pSampleLocations::Ptr{VkSampleLocationEXT}
end

struct VkAttachmentSampleLocationsEXT
    attachmentIndex::UInt32
    sampleLocationsInfo::VkSampleLocationsInfoEXT
end

struct VkSubpassSampleLocationsEXT
    subpassIndex::UInt32
    sampleLocationsInfo::VkSampleLocationsInfoEXT
end

struct VkRenderPassSampleLocationsBeginInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    attachmentInitialSampleLocationsCount::UInt32
    pAttachmentInitialSampleLocations::Ptr{VkAttachmentSampleLocationsEXT}
    postSubpassSampleLocationsCount::UInt32
    pPostSubpassSampleLocations::Ptr{VkSubpassSampleLocationsEXT}
end

struct VkPipelineSampleLocationsStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    sampleLocationsEnable::VkBool32
    sampleLocationsInfo::VkSampleLocationsInfoEXT
end

struct VkPhysicalDeviceSampleLocationsPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    sampleLocationSampleCounts::VkSampleCountFlags
    maxSampleLocationGridSize::VkExtent2D
    sampleLocationCoordinateRange::NTuple{2, Cfloat}
    sampleLocationSubPixelBits::UInt32
    variableSampleLocations::VkBool32
end

struct VkMultisamplePropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxSampleLocationGridSize::VkExtent2D
end

const PFN_vkCmdSetSampleLocationsEXT = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT = Ptr{Cvoid}

@cenum VkBlendOverlapEXT::UInt32 begin
    VK_BLEND_OVERLAP_UNCORRELATED_EXT = 0
    VK_BLEND_OVERLAP_DISJOINT_EXT = 1
    VK_BLEND_OVERLAP_CONJOINT_EXT = 2
    VK_BLEND_OVERLAP_MAX_ENUM_EXT = 2147483647
end


struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    advancedBlendCoherentOperations::VkBool32
end

struct VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    advancedBlendMaxColorAttachments::UInt32
    advancedBlendIndependentBlend::VkBool32
    advancedBlendNonPremultipliedSrcColor::VkBool32
    advancedBlendNonPremultipliedDstColor::VkBool32
    advancedBlendCorrelatedOverlap::VkBool32
    advancedBlendAllOperations::VkBool32
end

struct VkPipelineColorBlendAdvancedStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    srcPremultiplied::VkBool32
    dstPremultiplied::VkBool32
    blendOverlap::VkBlendOverlapEXT
end

const VkPipelineCoverageToColorStateCreateFlagsNV = VkFlags

struct VkPipelineCoverageToColorStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCoverageToColorStateCreateFlagsNV
    coverageToColorEnable::VkBool32
    coverageToColorLocation::UInt32
end

@cenum VkCoverageModulationModeNV::UInt32 begin
    VK_COVERAGE_MODULATION_MODE_NONE_NV = 0
    VK_COVERAGE_MODULATION_MODE_RGB_NV = 1
    VK_COVERAGE_MODULATION_MODE_ALPHA_NV = 2
    VK_COVERAGE_MODULATION_MODE_RGBA_NV = 3
    VK_COVERAGE_MODULATION_MODE_MAX_ENUM_NV = 2147483647
end


const VkPipelineCoverageModulationStateCreateFlagsNV = VkFlags

struct VkPipelineCoverageModulationStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCoverageModulationStateCreateFlagsNV
    coverageModulationMode::VkCoverageModulationModeNV
    coverageModulationTableEnable::VkBool32
    coverageModulationTableCount::UInt32
    pCoverageModulationTable::Ptr{Cfloat}
end

struct VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderSMCount::UInt32
    shaderWarpsPerSM::UInt32
end

struct VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderSMBuiltins::VkBool32
end

struct VkDrmFormatModifierPropertiesEXT
    drmFormatModifier::UInt64
    drmFormatModifierPlaneCount::UInt32
    drmFormatModifierTilingFeatures::VkFormatFeatureFlags
end

struct VkDrmFormatModifierPropertiesListEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    drmFormatModifierCount::UInt32
    pDrmFormatModifierProperties::Ptr{VkDrmFormatModifierPropertiesEXT}
end

struct VkPhysicalDeviceImageDrmFormatModifierInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    drmFormatModifier::UInt64
    sharingMode::VkSharingMode
    queueFamilyIndexCount::UInt32
    pQueueFamilyIndices::Ptr{UInt32}
end

struct VkImageDrmFormatModifierListCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    drmFormatModifierCount::UInt32
    pDrmFormatModifiers::Ptr{UInt64}
end

struct VkImageDrmFormatModifierExplicitCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    drmFormatModifier::UInt64
    drmFormatModifierPlaneCount::UInt32
    pPlaneLayouts::Ptr{VkSubresourceLayout}
end

struct VkImageDrmFormatModifierPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    drmFormatModifier::UInt64
end

const PFN_vkGetImageDrmFormatModifierPropertiesEXT = Ptr{Cvoid}
const VkValidationCacheEXT_T = Cvoid
const VkValidationCacheEXT = Ptr{VkValidationCacheEXT_T}

@cenum VkValidationCacheHeaderVersionEXT::UInt32 begin
    VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1
    VK_VALIDATION_CACHE_HEADER_VERSION_MAX_ENUM_EXT = 2147483647
end


const VkValidationCacheCreateFlagsEXT = VkFlags

struct VkValidationCacheCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkValidationCacheCreateFlagsEXT
    initialDataSize::Csize_t
    pInitialData::Ptr{Cvoid}
end

struct VkShaderModuleValidationCacheCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    validationCache::VkValidationCacheEXT
end

const PFN_vkCreateValidationCacheEXT = Ptr{Cvoid}
const PFN_vkDestroyValidationCacheEXT = Ptr{Cvoid}
const PFN_vkMergeValidationCachesEXT = Ptr{Cvoid}
const PFN_vkGetValidationCacheDataEXT = Ptr{Cvoid}
const VkDescriptorBindingFlagBitsEXT = VkDescriptorBindingFlagBits
const VkDescriptorBindingFlagsEXT = VkDescriptorBindingFlags
const VkDescriptorSetLayoutBindingFlagsCreateInfoEXT = VkDescriptorSetLayoutBindingFlagsCreateInfo
const VkPhysicalDeviceDescriptorIndexingFeaturesEXT = VkPhysicalDeviceDescriptorIndexingFeatures
const VkPhysicalDeviceDescriptorIndexingPropertiesEXT = VkPhysicalDeviceDescriptorIndexingProperties
const VkDescriptorSetVariableDescriptorCountAllocateInfoEXT = VkDescriptorSetVariableDescriptorCountAllocateInfo
const VkDescriptorSetVariableDescriptorCountLayoutSupportEXT = VkDescriptorSetVariableDescriptorCountLayoutSupport

@cenum VkShadingRatePaletteEntryNV::UInt32 begin
    VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV = 0
    VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV = 1
    VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV = 2
    VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV = 3
    VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV = 4
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV = 5
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV = 6
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV = 7
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV = 8
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV = 9
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV = 10
    VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV = 11
    VK_SHADING_RATE_PALETTE_ENTRY_MAX_ENUM_NV = 2147483647
end

@cenum VkCoarseSampleOrderTypeNV::UInt32 begin
    VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0
    VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1
    VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2
    VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3
    VK_COARSE_SAMPLE_ORDER_TYPE_MAX_ENUM_NV = 2147483647
end


struct VkShadingRatePaletteNV
    shadingRatePaletteEntryCount::UInt32
    pShadingRatePaletteEntries::Ptr{VkShadingRatePaletteEntryNV}
end

struct VkPipelineViewportShadingRateImageStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shadingRateImageEnable::VkBool32
    viewportCount::UInt32
    pShadingRatePalettes::Ptr{VkShadingRatePaletteNV}
end

struct VkPhysicalDeviceShadingRateImageFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shadingRateImage::VkBool32
    shadingRateCoarseSampleOrder::VkBool32
end

struct VkPhysicalDeviceShadingRateImagePropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shadingRateTexelSize::VkExtent2D
    shadingRatePaletteSize::UInt32
    shadingRateMaxCoarseSamples::UInt32
end

struct VkCoarseSampleLocationNV
    pixelX::UInt32
    pixelY::UInt32
    sample::UInt32
end

struct VkCoarseSampleOrderCustomNV
    shadingRate::VkShadingRatePaletteEntryNV
    sampleCount::UInt32
    sampleLocationCount::UInt32
    pSampleLocations::Ptr{VkCoarseSampleLocationNV}
end

struct VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    sampleOrderType::VkCoarseSampleOrderTypeNV
    customSampleOrderCount::UInt32
    pCustomSampleOrders::Ptr{VkCoarseSampleOrderCustomNV}
end

const PFN_vkCmdBindShadingRateImageNV = Ptr{Cvoid}
const PFN_vkCmdSetViewportShadingRatePaletteNV = Ptr{Cvoid}
const PFN_vkCmdSetCoarseSampleOrderNV = Ptr{Cvoid}
const VkAccelerationStructureKHR_T = Cvoid
const VkAccelerationStructureKHR = Ptr{VkAccelerationStructureKHR_T}
const VkAccelerationStructureNV = VkAccelerationStructureKHR

@cenum VkRayTracingShaderGroupTypeKHR::UInt32 begin
    VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0
    VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1
    VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2
    VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV = 0
    VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV = 1
    VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV = 2
    VK_RAY_TRACING_SHADER_GROUP_TYPE_MAX_ENUM_KHR = 2147483647
end


const VkRayTracingShaderGroupTypeNV = VkRayTracingShaderGroupTypeKHR

@cenum VkGeometryTypeKHR::UInt32 begin
    VK_GEOMETRY_TYPE_TRIANGLES_KHR = 0
    VK_GEOMETRY_TYPE_AABBS_KHR = 1
    VK_GEOMETRY_TYPE_INSTANCES_KHR = 1000150000
    VK_GEOMETRY_TYPE_TRIANGLES_NV = 0
    VK_GEOMETRY_TYPE_AABBS_NV = 1
    VK_GEOMETRY_TYPE_MAX_ENUM_KHR = 2147483647
end


const VkGeometryTypeNV = VkGeometryTypeKHR

@cenum VkAccelerationStructureTypeKHR::UInt32 begin
    VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0
    VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1
    VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV = 0
    VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV = 1
    VK_ACCELERATION_STRUCTURE_TYPE_MAX_ENUM_KHR = 2147483647
end


const VkAccelerationStructureTypeNV = VkAccelerationStructureTypeKHR

@cenum VkCopyAccelerationStructureModeKHR::UInt32 begin
    VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0
    VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1
    VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2
    VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3
    VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV = 0
    VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV = 1
    VK_COPY_ACCELERATION_STRUCTURE_MODE_MAX_ENUM_KHR = 2147483647
end


const VkCopyAccelerationStructureModeNV = VkCopyAccelerationStructureModeKHR

@cenum VkAccelerationStructureMemoryRequirementsTypeKHR::UInt32 begin
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_KHR = 0
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_KHR = 1
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_KHR = 2
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2
    VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_MAX_ENUM_KHR = 2147483647
end


const VkAccelerationStructureMemoryRequirementsTypeNV = VkAccelerationStructureMemoryRequirementsTypeKHR

@cenum VkGeometryFlagBitsKHR::UInt32 begin
    VK_GEOMETRY_OPAQUE_BIT_KHR = 1
    VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR = 2
    VK_GEOMETRY_OPAQUE_BIT_NV = 1
    VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV = 2
    VK_GEOMETRY_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkGeometryFlagsKHR = VkFlags
const VkGeometryFlagsNV = VkGeometryFlagsKHR
const VkGeometryFlagBitsNV = VkGeometryFlagBitsKHR

@cenum VkGeometryInstanceFlagBitsKHR::UInt32 begin
    VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR = 1
    VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR = 2
    VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR = 4
    VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR = 8
    VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV = 1
    VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV = 2
    VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV = 4
    VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV = 8
    VK_GEOMETRY_INSTANCE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkGeometryInstanceFlagsKHR = VkFlags
const VkGeometryInstanceFlagsNV = VkGeometryInstanceFlagsKHR
const VkGeometryInstanceFlagBitsNV = VkGeometryInstanceFlagBitsKHR

@cenum VkBuildAccelerationStructureFlagBitsKHR::UInt32 begin
    VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR = 1
    VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR = 2
    VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR = 4
    VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR = 8
    VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR = 16
    VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV = 1
    VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV = 2
    VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV = 4
    VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV = 8
    VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV = 16
    VK_BUILD_ACCELERATION_STRUCTURE_FLAG_BITS_MAX_ENUM_KHR = 2147483647
end


const VkBuildAccelerationStructureFlagsKHR = VkFlags
const VkBuildAccelerationStructureFlagsNV = VkBuildAccelerationStructureFlagsKHR
const VkBuildAccelerationStructureFlagBitsNV = VkBuildAccelerationStructureFlagBitsKHR

struct VkRayTracingShaderGroupCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkRayTracingShaderGroupTypeKHR
    generalShader::UInt32
    closestHitShader::UInt32
    anyHitShader::UInt32
    intersectionShader::UInt32
end

struct VkRayTracingPipelineCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCreateFlags
    stageCount::UInt32
    pStages::Ptr{VkPipelineShaderStageCreateInfo}
    groupCount::UInt32
    pGroups::Ptr{VkRayTracingShaderGroupCreateInfoNV}
    maxRecursionDepth::UInt32
    layout::VkPipelineLayout
    basePipelineHandle::VkPipeline
    basePipelineIndex::Int32
end

struct VkGeometryTrianglesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    vertexData::VkBuffer
    vertexOffset::VkDeviceSize
    vertexCount::UInt32
    vertexStride::VkDeviceSize
    vertexFormat::VkFormat
    indexData::VkBuffer
    indexOffset::VkDeviceSize
    indexCount::UInt32
    indexType::VkIndexType
    transformData::VkBuffer
    transformOffset::VkDeviceSize
end

struct VkGeometryAABBNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    aabbData::VkBuffer
    numAABBs::UInt32
    stride::UInt32
    offset::VkDeviceSize
end

struct VkGeometryDataNV
    triangles::VkGeometryTrianglesNV
    aabbs::VkGeometryAABBNV
end

struct VkGeometryNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    geometryType::VkGeometryTypeKHR
    geometry::VkGeometryDataNV
    flags::VkGeometryFlagsKHR
end

struct VkAccelerationStructureInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkAccelerationStructureTypeNV
    flags::VkBuildAccelerationStructureFlagsNV
    instanceCount::UInt32
    geometryCount::UInt32
    pGeometries::Ptr{VkGeometryNV}
end

struct VkAccelerationStructureCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    compactedSize::VkDeviceSize
    info::VkAccelerationStructureInfoNV
end

struct VkBindAccelerationStructureMemoryInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    accelerationStructure::VkAccelerationStructureKHR
    memory::VkDeviceMemory
    memoryOffset::VkDeviceSize
    deviceIndexCount::UInt32
    pDeviceIndices::Ptr{UInt32}
end

const VkBindAccelerationStructureMemoryInfoNV = VkBindAccelerationStructureMemoryInfoKHR

struct VkWriteDescriptorSetAccelerationStructureKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    accelerationStructureCount::UInt32
    pAccelerationStructures::Ptr{VkAccelerationStructureKHR}
end

const VkWriteDescriptorSetAccelerationStructureNV = VkWriteDescriptorSetAccelerationStructureKHR

struct VkAccelerationStructureMemoryRequirementsInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkAccelerationStructureMemoryRequirementsTypeNV
    accelerationStructure::VkAccelerationStructureNV
end

struct VkPhysicalDeviceRayTracingPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderGroupHandleSize::UInt32
    maxRecursionDepth::UInt32
    maxShaderGroupStride::UInt32
    shaderGroupBaseAlignment::UInt32
    maxGeometryCount::UInt64
    maxInstanceCount::UInt64
    maxTriangleCount::UInt64
    maxDescriptorSetAccelerationStructures::UInt32
end

struct VkTransformMatrixKHR
    matrix::NTuple{3, NTuple{4, Cfloat}}
end

const VkTransformMatrixNV = VkTransformMatrixKHR

struct VkAabbPositionsKHR
    minX::Cfloat
    minY::Cfloat
    minZ::Cfloat
    maxX::Cfloat
    maxY::Cfloat
    maxZ::Cfloat
end

const VkAabbPositionsNV = VkAabbPositionsKHR

struct VkAccelerationStructureInstanceKHR
    transform::VkTransformMatrixKHR
    instanceCustomIndex::UInt32
    mask::UInt32
    instanceShaderBindingTableRecordOffset::UInt32
    flags::VkGeometryInstanceFlagsKHR
    accelerationStructureReference::UInt64
end

const VkAccelerationStructureInstanceNV = VkAccelerationStructureInstanceKHR
const PFN_vkCreateAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkDestroyAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkDestroyAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureMemoryRequirementsNV = Ptr{Cvoid}
const PFN_vkBindAccelerationStructureMemoryKHR = Ptr{Cvoid}
const PFN_vkBindAccelerationStructureMemoryNV = Ptr{Cvoid}
const PFN_vkCmdBuildAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkCmdCopyAccelerationStructureNV = Ptr{Cvoid}
const PFN_vkCmdTraceRaysNV = Ptr{Cvoid}
const PFN_vkCreateRayTracingPipelinesNV = Ptr{Cvoid}
const PFN_vkGetRayTracingShaderGroupHandlesKHR = Ptr{Cvoid}
const PFN_vkGetRayTracingShaderGroupHandlesNV = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureHandleNV = Ptr{Cvoid}
const PFN_vkCmdWriteAccelerationStructuresPropertiesKHR = Ptr{Cvoid}
const PFN_vkCmdWriteAccelerationStructuresPropertiesNV = Ptr{Cvoid}
const PFN_vkCompileDeferredNV = Ptr{Cvoid}

struct VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    representativeFragmentTest::VkBool32
end

struct VkPipelineRepresentativeFragmentTestStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    representativeFragmentTestEnable::VkBool32
end

struct VkPhysicalDeviceImageViewImageFormatInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    imageViewType::VkImageViewType
end

struct VkFilterCubicImageViewImageFormatPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    filterCubic::VkBool32
    filterCubicMinmax::VkBool32
end

@cenum VkQueueGlobalPriorityEXT::UInt32 begin
    VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT = 128
    VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT = 256
    VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT = 512
    VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT = 1024
    VK_QUEUE_GLOBAL_PRIORITY_MAX_ENUM_EXT = 2147483647
end


struct VkDeviceQueueGlobalPriorityCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    globalPriority::VkQueueGlobalPriorityEXT
end

struct VkImportMemoryHostPointerInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalMemoryHandleTypeFlagBits
    pHostPointer::Ptr{Cvoid}
end

struct VkMemoryHostPointerPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryTypeBits::UInt32
end

struct VkPhysicalDeviceExternalMemoryHostPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    minImportedHostPointerAlignment::VkDeviceSize
end

const PFN_vkGetMemoryHostPointerPropertiesEXT = Ptr{Cvoid}
const PFN_vkCmdWriteBufferMarkerAMD = Ptr{Cvoid}

@cenum VkPipelineCompilerControlFlagBitsAMD::UInt32 begin
    VK_PIPELINE_COMPILER_CONTROL_FLAG_BITS_MAX_ENUM_AMD = 2147483647
end


const VkPipelineCompilerControlFlagsAMD = VkFlags

struct VkPipelineCompilerControlCreateInfoAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    compilerControlFlags::VkPipelineCompilerControlFlagsAMD
end

@cenum VkTimeDomainEXT::UInt32 begin
    VK_TIME_DOMAIN_DEVICE_EXT = 0
    VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT = 1
    VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT = 2
    VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT = 3
    VK_TIME_DOMAIN_MAX_ENUM_EXT = 2147483647
end


struct VkCalibratedTimestampInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    timeDomain::VkTimeDomainEXT
end

const PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = Ptr{Cvoid}
const PFN_vkGetCalibratedTimestampsEXT = Ptr{Cvoid}

struct VkPhysicalDeviceShaderCorePropertiesAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderEngineCount::UInt32
    shaderArraysPerEngineCount::UInt32
    computeUnitsPerShaderArray::UInt32
    simdPerComputeUnit::UInt32
    wavefrontsPerSimd::UInt32
    wavefrontSize::UInt32
    sgprsPerSimd::UInt32
    minSgprAllocation::UInt32
    maxSgprAllocation::UInt32
    sgprAllocationGranularity::UInt32
    vgprsPerSimd::UInt32
    minVgprAllocation::UInt32
    maxVgprAllocation::UInt32
    vgprAllocationGranularity::UInt32
end

@cenum VkMemoryOverallocationBehaviorAMD::UInt32 begin
    VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0
    VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1
    VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2
    VK_MEMORY_OVERALLOCATION_BEHAVIOR_MAX_ENUM_AMD = 2147483647
end


struct VkDeviceMemoryOverallocationCreateInfoAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    overallocationBehavior::VkMemoryOverallocationBehaviorAMD
end

struct VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxVertexAttribDivisor::UInt32
end

struct VkVertexInputBindingDivisorDescriptionEXT
    binding::UInt32
    divisor::UInt32
end

struct VkPipelineVertexInputDivisorStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    vertexBindingDivisorCount::UInt32
    pVertexBindingDivisors::Ptr{VkVertexInputBindingDivisorDescriptionEXT}
end

struct VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    vertexAttributeInstanceRateDivisor::VkBool32
    vertexAttributeInstanceRateZeroDivisor::VkBool32
end

@cenum VkPipelineCreationFeedbackFlagBitsEXT::UInt32 begin
    VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT = 1
    VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT = 2
    VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT = 4
    VK_PIPELINE_CREATION_FEEDBACK_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkPipelineCreationFeedbackFlagsEXT = VkFlags

struct VkPipelineCreationFeedbackEXT
    flags::VkPipelineCreationFeedbackFlagsEXT
    duration::UInt64
end

struct VkPipelineCreationFeedbackCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pPipelineCreationFeedback::Ptr{VkPipelineCreationFeedbackEXT}
    pipelineStageCreationFeedbackCount::UInt32
    pPipelineStageCreationFeedbacks::Ptr{VkPipelineCreationFeedbackEXT}
end

struct VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    computeDerivativeGroupQuads::VkBool32
    computeDerivativeGroupLinear::VkBool32
end

struct VkPhysicalDeviceMeshShaderFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    taskShader::VkBool32
    meshShader::VkBool32
end

struct VkPhysicalDeviceMeshShaderPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxDrawMeshTasksCount::UInt32
    maxTaskWorkGroupInvocations::UInt32
    maxTaskWorkGroupSize::NTuple{3, UInt32}
    maxTaskTotalMemorySize::UInt32
    maxTaskOutputCount::UInt32
    maxMeshWorkGroupInvocations::UInt32
    maxMeshWorkGroupSize::NTuple{3, UInt32}
    maxMeshTotalMemorySize::UInt32
    maxMeshOutputVertices::UInt32
    maxMeshOutputPrimitives::UInt32
    maxMeshMultiviewViewCount::UInt32
    meshOutputPerVertexGranularity::UInt32
    meshOutputPerPrimitiveGranularity::UInt32
end

struct VkDrawMeshTasksIndirectCommandNV
    taskCount::UInt32
    firstTask::UInt32
end

const PFN_vkCmdDrawMeshTasksNV = Ptr{Cvoid}
const PFN_vkCmdDrawMeshTasksIndirectNV = Ptr{Cvoid}
const PFN_vkCmdDrawMeshTasksIndirectCountNV = Ptr{Cvoid}

struct VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fragmentShaderBarycentric::VkBool32
end

struct VkPhysicalDeviceShaderImageFootprintFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    imageFootprint::VkBool32
end

struct VkPipelineViewportExclusiveScissorStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    exclusiveScissorCount::UInt32
    pExclusiveScissors::Ptr{VkRect2D}
end

struct VkPhysicalDeviceExclusiveScissorFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    exclusiveScissor::VkBool32
end

const PFN_vkCmdSetExclusiveScissorNV = Ptr{Cvoid}

struct VkQueueFamilyCheckpointPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    checkpointExecutionStageMask::VkPipelineStageFlags
end

struct VkCheckpointDataNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stage::VkPipelineStageFlagBits
    pCheckpointMarker::Ptr{Cvoid}
end

const PFN_vkCmdSetCheckpointNV = Ptr{Cvoid}
const PFN_vkGetQueueCheckpointDataNV = Ptr{Cvoid}

struct VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderIntegerFunctions2::VkBool32
end

const VkPerformanceConfigurationINTEL_T = Cvoid
const VkPerformanceConfigurationINTEL = Ptr{VkPerformanceConfigurationINTEL_T}

@cenum VkPerformanceConfigurationTypeINTEL::UInt32 begin
    VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0
    VK_PERFORMANCE_CONFIGURATION_TYPE_MAX_ENUM_INTEL = 2147483647
end

@cenum VkQueryPoolSamplingModeINTEL::UInt32 begin
    VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0
    VK_QUERY_POOL_SAMPLING_MODE_MAX_ENUM_INTEL = 2147483647
end

@cenum VkPerformanceOverrideTypeINTEL::UInt32 begin
    VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0
    VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1
    VK_PERFORMANCE_OVERRIDE_TYPE_MAX_ENUM_INTEL = 2147483647
end

@cenum VkPerformanceParameterTypeINTEL::UInt32 begin
    VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0
    VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1
    VK_PERFORMANCE_PARAMETER_TYPE_MAX_ENUM_INTEL = 2147483647
end

@cenum VkPerformanceValueTypeINTEL::UInt32 begin
    VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0
    VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1
    VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2
    VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3
    VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4
    VK_PERFORMANCE_VALUE_TYPE_MAX_ENUM_INTEL = 2147483647
end


struct VkPerformanceValueDataINTEL
    value64::UInt64
end

struct VkPerformanceValueINTEL
    type::VkPerformanceValueTypeINTEL
    data::VkPerformanceValueDataINTEL
end

struct VkInitializePerformanceApiInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pUserData::Ptr{Cvoid}
end

struct VkQueryPoolPerformanceQueryCreateInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    performanceCountersSampling::VkQueryPoolSamplingModeINTEL
end

const VkQueryPoolCreateInfoINTEL = VkQueryPoolPerformanceQueryCreateInfoINTEL

struct VkPerformanceMarkerInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    marker::UInt64
end

struct VkPerformanceStreamMarkerInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    marker::UInt32
end

struct VkPerformanceOverrideInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkPerformanceOverrideTypeINTEL
    enable::VkBool32
    parameter::UInt64
end

struct VkPerformanceConfigurationAcquireInfoINTEL
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkPerformanceConfigurationTypeINTEL
end

const PFN_vkInitializePerformanceApiINTEL = Ptr{Cvoid}
const PFN_vkUninitializePerformanceApiINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceMarkerINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceStreamMarkerINTEL = Ptr{Cvoid}
const PFN_vkCmdSetPerformanceOverrideINTEL = Ptr{Cvoid}
const PFN_vkAcquirePerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkReleasePerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkQueueSetPerformanceConfigurationINTEL = Ptr{Cvoid}
const PFN_vkGetPerformanceParameterINTEL = Ptr{Cvoid}

struct VkPhysicalDevicePCIBusInfoPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pciDomain::UInt32
    pciBus::UInt32
    pciDevice::UInt32
    pciFunction::UInt32
end

struct VkDisplayNativeHdrSurfaceCapabilitiesAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    localDimmingSupport::VkBool32
end

struct VkSwapchainDisplayNativeHdrCreateInfoAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    localDimmingEnable::VkBool32
end

const PFN_vkSetLocalDimmingAMD = Ptr{Cvoid}

struct VkPhysicalDeviceFragmentDensityMapFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fragmentDensityMap::VkBool32
    fragmentDensityMapDynamic::VkBool32
    fragmentDensityMapNonSubsampledImages::VkBool32
end

struct VkPhysicalDeviceFragmentDensityMapPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    minFragmentDensityTexelSize::VkExtent2D
    maxFragmentDensityTexelSize::VkExtent2D
    fragmentDensityInvocations::VkBool32
end

struct VkRenderPassFragmentDensityMapCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fragmentDensityMapAttachment::VkAttachmentReference
end

const VkPhysicalDeviceScalarBlockLayoutFeaturesEXT = VkPhysicalDeviceScalarBlockLayoutFeatures

struct VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    subgroupSizeControl::VkBool32
    computeFullSubgroups::VkBool32
end

struct VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    minSubgroupSize::UInt32
    maxSubgroupSize::UInt32
    maxComputeWorkgroupSubgroups::UInt32
    requiredSubgroupSizeStages::VkShaderStageFlags
end

struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    requiredSubgroupSize::UInt32
end

@cenum VkShaderCorePropertiesFlagBitsAMD::UInt32 begin
    VK_SHADER_CORE_PROPERTIES_FLAG_BITS_MAX_ENUM_AMD = 2147483647
end


const VkShaderCorePropertiesFlagsAMD = VkFlags

struct VkPhysicalDeviceShaderCoreProperties2AMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderCoreFeatures::VkShaderCorePropertiesFlagsAMD
    activeComputeUnitCount::UInt32
end

struct VkPhysicalDeviceCoherentMemoryFeaturesAMD
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceCoherentMemory::VkBool32
end

struct VkPhysicalDeviceMemoryBudgetPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    heapBudget::NTuple{16, VkDeviceSize}
    heapUsage::NTuple{16, VkDeviceSize}
end

struct VkPhysicalDeviceMemoryPriorityFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryPriority::VkBool32
end

struct VkMemoryPriorityAllocateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    priority::Cfloat
end

struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    dedicatedAllocationImageAliasing::VkBool32
end

struct VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    bufferDeviceAddress::VkBool32
    bufferDeviceAddressCaptureReplay::VkBool32
    bufferDeviceAddressMultiDevice::VkBool32
end

const VkPhysicalDeviceBufferAddressFeaturesEXT = VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
const VkBufferDeviceAddressInfoEXT = VkBufferDeviceAddressInfo

struct VkBufferDeviceAddressCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceAddress::VkDeviceAddress
end

const PFN_vkGetBufferDeviceAddressEXT = Ptr{Cvoid}

@cenum VkToolPurposeFlagBitsEXT::UInt32 begin
    VK_TOOL_PURPOSE_VALIDATION_BIT_EXT = 1
    VK_TOOL_PURPOSE_PROFILING_BIT_EXT = 2
    VK_TOOL_PURPOSE_TRACING_BIT_EXT = 4
    VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT = 8
    VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT = 16
    VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT = 32
    VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT = 64
    VK_TOOL_PURPOSE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkToolPurposeFlagsEXT = VkFlags

struct VkPhysicalDeviceToolPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    name::NTuple{256, UInt8}
    version::NTuple{256, UInt8}
    purposes::VkToolPurposeFlagsEXT
    description::NTuple{256, UInt8}
    layer::NTuple{256, UInt8}
end

const PFN_vkGetPhysicalDeviceToolPropertiesEXT = Ptr{Cvoid}
const VkImageStencilUsageCreateInfoEXT = VkImageStencilUsageCreateInfo

@cenum VkValidationFeatureEnableEXT::UInt32 begin
    VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0
    VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1
    VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2
    VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3
    VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4
    VK_VALIDATION_FEATURE_ENABLE_MAX_ENUM_EXT = 2147483647
end

@cenum VkValidationFeatureDisableEXT::UInt32 begin
    VK_VALIDATION_FEATURE_DISABLE_ALL_EXT = 0
    VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1
    VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2
    VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3
    VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4
    VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5
    VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6
    VK_VALIDATION_FEATURE_DISABLE_MAX_ENUM_EXT = 2147483647
end


struct VkValidationFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    enabledValidationFeatureCount::UInt32
    pEnabledValidationFeatures::Ptr{VkValidationFeatureEnableEXT}
    disabledValidationFeatureCount::UInt32
    pDisabledValidationFeatures::Ptr{VkValidationFeatureDisableEXT}
end

@cenum VkComponentTypeNV::UInt32 begin
    VK_COMPONENT_TYPE_FLOAT16_NV = 0
    VK_COMPONENT_TYPE_FLOAT32_NV = 1
    VK_COMPONENT_TYPE_FLOAT64_NV = 2
    VK_COMPONENT_TYPE_SINT8_NV = 3
    VK_COMPONENT_TYPE_SINT16_NV = 4
    VK_COMPONENT_TYPE_SINT32_NV = 5
    VK_COMPONENT_TYPE_SINT64_NV = 6
    VK_COMPONENT_TYPE_UINT8_NV = 7
    VK_COMPONENT_TYPE_UINT16_NV = 8
    VK_COMPONENT_TYPE_UINT32_NV = 9
    VK_COMPONENT_TYPE_UINT64_NV = 10
    VK_COMPONENT_TYPE_MAX_ENUM_NV = 2147483647
end

@cenum VkScopeNV::UInt32 begin
    VK_SCOPE_DEVICE_NV = 1
    VK_SCOPE_WORKGROUP_NV = 2
    VK_SCOPE_SUBGROUP_NV = 3
    VK_SCOPE_QUEUE_FAMILY_NV = 5
    VK_SCOPE_MAX_ENUM_NV = 2147483647
end


struct VkCooperativeMatrixPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    MSize::UInt32
    NSize::UInt32
    KSize::UInt32
    AType::VkComponentTypeNV
    BType::VkComponentTypeNV
    CType::VkComponentTypeNV
    DType::VkComponentTypeNV
    scope::VkScopeNV
end

struct VkPhysicalDeviceCooperativeMatrixFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    cooperativeMatrix::VkBool32
    cooperativeMatrixRobustBufferAccess::VkBool32
end

struct VkPhysicalDeviceCooperativeMatrixPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    cooperativeMatrixSupportedStages::VkShaderStageFlags
end

const PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = Ptr{Cvoid}

@cenum VkCoverageReductionModeNV::UInt32 begin
    VK_COVERAGE_REDUCTION_MODE_MERGE_NV = 0
    VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1
    VK_COVERAGE_REDUCTION_MODE_MAX_ENUM_NV = 2147483647
end


const VkPipelineCoverageReductionStateCreateFlagsNV = VkFlags

struct VkPhysicalDeviceCoverageReductionModeFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    coverageReductionMode::VkBool32
end

struct VkPipelineCoverageReductionStateCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCoverageReductionStateCreateFlagsNV
    coverageReductionMode::VkCoverageReductionModeNV
end

struct VkFramebufferMixedSamplesCombinationNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    coverageReductionMode::VkCoverageReductionModeNV
    rasterizationSamples::VkSampleCountFlagBits
    depthStencilSamples::VkSampleCountFlags
    colorSamples::VkSampleCountFlags
end

const PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = Ptr{Cvoid}

struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fragmentShaderSampleInterlock::VkBool32
    fragmentShaderPixelInterlock::VkBool32
    fragmentShaderShadingRateInterlock::VkBool32
end

struct VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    ycbcrImageArrays::VkBool32
end

const VkHeadlessSurfaceCreateFlagsEXT = VkFlags

struct VkHeadlessSurfaceCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkHeadlessSurfaceCreateFlagsEXT
end

const PFN_vkCreateHeadlessSurfaceEXT = Ptr{Cvoid}

@cenum VkLineRasterizationModeEXT::UInt32 begin
    VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT = 0
    VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT = 1
    VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT = 2
    VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT = 3
    VK_LINE_RASTERIZATION_MODE_MAX_ENUM_EXT = 2147483647
end


struct VkPhysicalDeviceLineRasterizationFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    rectangularLines::VkBool32
    bresenhamLines::VkBool32
    smoothLines::VkBool32
    stippledRectangularLines::VkBool32
    stippledBresenhamLines::VkBool32
    stippledSmoothLines::VkBool32
end

struct VkPhysicalDeviceLineRasterizationPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    lineSubPixelPrecisionBits::UInt32
end

struct VkPipelineRasterizationLineStateCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    lineRasterizationMode::VkLineRasterizationModeEXT
    stippledLineEnable::VkBool32
    lineStippleFactor::UInt32
    lineStipplePattern::UInt16
end

const PFN_vkCmdSetLineStippleEXT = Ptr{Cvoid}

struct VkPhysicalDeviceShaderAtomicFloatFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderBufferFloat32Atomics::VkBool32
    shaderBufferFloat32AtomicAdd::VkBool32
    shaderBufferFloat64Atomics::VkBool32
    shaderBufferFloat64AtomicAdd::VkBool32
    shaderSharedFloat32Atomics::VkBool32
    shaderSharedFloat32AtomicAdd::VkBool32
    shaderSharedFloat64Atomics::VkBool32
    shaderSharedFloat64AtomicAdd::VkBool32
    shaderImageFloat32Atomics::VkBool32
    shaderImageFloat32AtomicAdd::VkBool32
    sparseImageFloat32Atomics::VkBool32
    sparseImageFloat32AtomicAdd::VkBool32
end

const VkPhysicalDeviceHostQueryResetFeaturesEXT = VkPhysicalDeviceHostQueryResetFeatures
const PFN_vkResetQueryPoolEXT = Ptr{Cvoid}

struct VkPhysicalDeviceIndexTypeUint8FeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    indexTypeUint8::VkBool32
end

struct VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    extendedDynamicState::VkBool32
end

const PFN_vkCmdSetCullModeEXT = Ptr{Cvoid}
const PFN_vkCmdSetFrontFaceEXT = Ptr{Cvoid}
const PFN_vkCmdSetPrimitiveTopologyEXT = Ptr{Cvoid}
const PFN_vkCmdSetViewportWithCountEXT = Ptr{Cvoid}
const PFN_vkCmdSetScissorWithCountEXT = Ptr{Cvoid}
const PFN_vkCmdBindVertexBuffers2EXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthWriteEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthCompareOpEXT = Ptr{Cvoid}
const PFN_vkCmdSetDepthBoundsTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetStencilTestEnableEXT = Ptr{Cvoid}
const PFN_vkCmdSetStencilOpEXT = Ptr{Cvoid}

struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderDemoteToHelperInvocation::VkBool32
end

const VkIndirectCommandsLayoutNV_T = Cvoid
const VkIndirectCommandsLayoutNV = Ptr{VkIndirectCommandsLayoutNV_T}

@cenum VkIndirectCommandsTokenTypeNV::UInt32 begin
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7
    VK_INDIRECT_COMMANDS_TOKEN_TYPE_MAX_ENUM_NV = 2147483647
end

@cenum VkIndirectStateFlagBitsNV::UInt32 begin
    VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV = 1
    VK_INDIRECT_STATE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end


const VkIndirectStateFlagsNV = VkFlags

@cenum VkIndirectCommandsLayoutUsageFlagBitsNV::UInt32 begin
    VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV = 1
    VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV = 2
    VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV = 4
    VK_INDIRECT_COMMANDS_LAYOUT_USAGE_FLAG_BITS_MAX_ENUM_NV = 2147483647
end


const VkIndirectCommandsLayoutUsageFlagsNV = VkFlags

struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxGraphicsShaderGroupCount::UInt32
    maxIndirectSequenceCount::UInt32
    maxIndirectCommandsTokenCount::UInt32
    maxIndirectCommandsStreamCount::UInt32
    maxIndirectCommandsTokenOffset::UInt32
    maxIndirectCommandsStreamStride::UInt32
    minSequencesCountBufferOffsetAlignment::UInt32
    minSequencesIndexBufferOffsetAlignment::UInt32
    minIndirectCommandsBufferOffsetAlignment::UInt32
end

struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    deviceGeneratedCommands::VkBool32
end

struct VkGraphicsShaderGroupCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    stageCount::UInt32
    pStages::Ptr{VkPipelineShaderStageCreateInfo}
    pVertexInputState::Ptr{VkPipelineVertexInputStateCreateInfo}
    pTessellationState::Ptr{VkPipelineTessellationStateCreateInfo}
end

struct VkGraphicsPipelineShaderGroupsCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    groupCount::UInt32
    pGroups::Ptr{VkGraphicsShaderGroupCreateInfoNV}
    pipelineCount::UInt32
    pPipelines::Ptr{VkPipeline}
end

struct VkBindShaderGroupIndirectCommandNV
    groupIndex::UInt32
end

struct VkBindIndexBufferIndirectCommandNV
    bufferAddress::VkDeviceAddress
    size::UInt32
    indexType::VkIndexType
end

struct VkBindVertexBufferIndirectCommandNV
    bufferAddress::VkDeviceAddress
    size::UInt32
    stride::UInt32
end

struct VkSetStateFlagsIndirectCommandNV
    data::UInt32
end

struct VkIndirectCommandsStreamNV
    buffer::VkBuffer
    offset::VkDeviceSize
end

struct VkIndirectCommandsLayoutTokenNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    tokenType::VkIndirectCommandsTokenTypeNV
    stream::UInt32
    offset::UInt32
    vertexBindingUnit::UInt32
    vertexDynamicStride::VkBool32
    pushconstantPipelineLayout::VkPipelineLayout
    pushconstantShaderStageFlags::VkShaderStageFlags
    pushconstantOffset::UInt32
    pushconstantSize::UInt32
    indirectStateFlags::VkIndirectStateFlagsNV
    indexTypeCount::UInt32
    pIndexTypes::Ptr{VkIndexType}
    pIndexTypeValues::Ptr{UInt32}
end

struct VkIndirectCommandsLayoutCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkIndirectCommandsLayoutUsageFlagsNV
    pipelineBindPoint::VkPipelineBindPoint
    tokenCount::UInt32
    pTokens::Ptr{VkIndirectCommandsLayoutTokenNV}
    streamCount::UInt32
    pStreamStrides::Ptr{UInt32}
end

struct VkGeneratedCommandsInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipelineBindPoint::VkPipelineBindPoint
    pipeline::VkPipeline
    indirectCommandsLayout::VkIndirectCommandsLayoutNV
    streamCount::UInt32
    pStreams::Ptr{VkIndirectCommandsStreamNV}
    sequencesCount::UInt32
    preprocessBuffer::VkBuffer
    preprocessOffset::VkDeviceSize
    preprocessSize::VkDeviceSize
    sequencesCountBuffer::VkBuffer
    sequencesCountOffset::VkDeviceSize
    sequencesIndexBuffer::VkBuffer
    sequencesIndexOffset::VkDeviceSize
end

struct VkGeneratedCommandsMemoryRequirementsInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipelineBindPoint::VkPipelineBindPoint
    pipeline::VkPipeline
    indirectCommandsLayout::VkIndirectCommandsLayoutNV
    maxSequencesCount::UInt32
end

const PFN_vkGetGeneratedCommandsMemoryRequirementsNV = Ptr{Cvoid}
const PFN_vkCmdPreprocessGeneratedCommandsNV = Ptr{Cvoid}
const PFN_vkCmdExecuteGeneratedCommandsNV = Ptr{Cvoid}
const PFN_vkCmdBindPipelineShaderGroupNV = Ptr{Cvoid}
const PFN_vkCreateIndirectCommandsLayoutNV = Ptr{Cvoid}
const PFN_vkDestroyIndirectCommandsLayoutNV = Ptr{Cvoid}

struct VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    texelBufferAlignment::VkBool32
end

struct VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    storageTexelBufferOffsetAlignmentBytes::VkDeviceSize
    storageTexelBufferOffsetSingleTexelAlignment::VkBool32
    uniformTexelBufferOffsetAlignmentBytes::VkDeviceSize
    uniformTexelBufferOffsetSingleTexelAlignment::VkBool32
end

struct VkRenderPassTransformBeginInfoQCOM
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    transform::VkSurfaceTransformFlagBitsKHR
end

struct VkCommandBufferInheritanceRenderPassTransformInfoQCOM
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    transform::VkSurfaceTransformFlagBitsKHR
    renderArea::VkRect2D
end

struct VkPhysicalDeviceRobustness2FeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    robustBufferAccess2::VkBool32
    robustImageAccess2::VkBool32
    nullDescriptor::VkBool32
end

struct VkPhysicalDeviceRobustness2PropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    robustStorageBufferAccessSizeAlignment::VkDeviceSize
    robustUniformBufferAccessSizeAlignment::VkDeviceSize
end

struct VkSamplerCustomBorderColorCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    customBorderColor::VkClearColorValue
    format::VkFormat
end

struct VkPhysicalDeviceCustomBorderColorPropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxCustomBorderColorSamplers::UInt32
end

struct VkPhysicalDeviceCustomBorderColorFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    customBorderColors::VkBool32
    customBorderColorWithoutFormat::VkBool32
end

const VkPrivateDataSlotEXT_T = Cvoid
const VkPrivateDataSlotEXT = Ptr{VkPrivateDataSlotEXT_T}

@cenum VkPrivateDataSlotCreateFlagBitsEXT::UInt32 begin
    VK_PRIVATE_DATA_SLOT_CREATE_FLAG_BITS_MAX_ENUM_EXT = 2147483647
end


const VkPrivateDataSlotCreateFlagsEXT = VkFlags

struct VkPhysicalDevicePrivateDataFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    privateData::VkBool32
end

struct VkDevicePrivateDataCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    privateDataSlotRequestCount::UInt32
end

struct VkPrivateDataSlotCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPrivateDataSlotCreateFlagsEXT
end

const PFN_vkCreatePrivateDataSlotEXT = Ptr{Cvoid}
const PFN_vkDestroyPrivateDataSlotEXT = Ptr{Cvoid}
const PFN_vkSetPrivateDataEXT = Ptr{Cvoid}
const PFN_vkGetPrivateDataEXT = Ptr{Cvoid}

struct VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pipelineCreationCacheControl::VkBool32
end

@cenum VkDeviceDiagnosticsConfigFlagBitsNV::UInt32 begin
    VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV = 1
    VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV = 2
    VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV = 4
    VK_DEVICE_DIAGNOSTICS_CONFIG_FLAG_BITS_MAX_ENUM_NV = 2147483647
end


const VkDeviceDiagnosticsConfigFlagsNV = VkFlags

struct VkPhysicalDeviceDiagnosticsConfigFeaturesNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    diagnosticsConfig::VkBool32
end

struct VkDeviceDiagnosticsConfigCreateInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkDeviceDiagnosticsConfigFlagsNV
end

struct VkPhysicalDeviceFragmentDensityMap2FeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fragmentDensityMapDeferred::VkBool32
end

struct VkPhysicalDeviceFragmentDensityMap2PropertiesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    subsampledLoads::VkBool32
    subsampledCoarseReconstructionEarlyAccess::VkBool32
    maxSubsampledArrayLayers::UInt32
    maxDescriptorSetSubsampledSamplers::UInt32
end

struct VkPhysicalDeviceImageRobustnessFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    robustImageAccess::VkBool32
end

struct VkPhysicalDevice4444FormatsFeaturesEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    formatA4R4G4B4::VkBool32
    formatA4B4G4R4::VkBool32
end

const ANativeWindow = Cvoid
const VkAndroidSurfaceCreateFlagsKHR = VkFlags

struct VkAndroidSurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkAndroidSurfaceCreateFlagsKHR
    window::Ptr{ANativeWindow}
end

const PFN_vkCreateAndroidSurfaceKHR = Ptr{Cvoid}
const AHardwareBuffer = Cvoid

struct VkAndroidHardwareBufferUsageANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    androidHardwareBufferUsage::UInt64
end

struct VkAndroidHardwareBufferPropertiesANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    allocationSize::VkDeviceSize
    memoryTypeBits::UInt32
end

struct VkAndroidHardwareBufferFormatPropertiesANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    format::VkFormat
    externalFormat::UInt64
    formatFeatures::VkFormatFeatureFlags
    samplerYcbcrConversionComponents::VkComponentMapping
    suggestedYcbcrModel::VkSamplerYcbcrModelConversion
    suggestedYcbcrRange::VkSamplerYcbcrRange
    suggestedXChromaOffset::VkChromaLocation
    suggestedYChromaOffset::VkChromaLocation
end

struct VkImportAndroidHardwareBufferInfoANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    buffer::Ptr{AHardwareBuffer}
end

struct VkMemoryGetAndroidHardwareBufferInfoANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memory::VkDeviceMemory
end

struct VkExternalFormatANDROID
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    externalFormat::UInt64
end

const PFN_vkGetAndroidHardwareBufferPropertiesANDROID = Ptr{Cvoid}
const PFN_vkGetMemoryAndroidHardwareBufferANDROID = Ptr{Cvoid}
const VkImagePipeSurfaceCreateFlagsFUCHSIA = VkFlags

struct VkImagePipeSurfaceCreateInfoFUCHSIA
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkImagePipeSurfaceCreateFlagsFUCHSIA
    imagePipeHandle::Cint
end

const PFN_vkCreateImagePipeSurfaceFUCHSIA = Ptr{Cvoid}
const VkIOSSurfaceCreateFlagsMVK = VkFlags

struct VkIOSSurfaceCreateInfoMVK
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkIOSSurfaceCreateFlagsMVK
    pView::Ptr{Cvoid}
end

const PFN_vkCreateIOSSurfaceMVK = Ptr{Cvoid}
const VkMacOSSurfaceCreateFlagsMVK = VkFlags

struct VkMacOSSurfaceCreateInfoMVK
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkMacOSSurfaceCreateFlagsMVK
    pView::Ptr{Cvoid}
end

const PFN_vkCreateMacOSSurfaceMVK = Ptr{Cvoid}
const CAMetalLayer = Cvoid
const VkMetalSurfaceCreateFlagsEXT = VkFlags

struct VkMetalSurfaceCreateInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkMetalSurfaceCreateFlagsEXT
    pLayer::Ptr{CAMetalLayer}
end

const PFN_vkCreateMetalSurfaceEXT = Ptr{Cvoid}
const VkViSurfaceCreateFlagsNN = VkFlags

struct VkViSurfaceCreateInfoNN
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkViSurfaceCreateFlagsNN
    window::Ptr{Cvoid}
end

const PFN_vkCreateViSurfaceNN = Ptr{Cvoid}
const VkWaylandSurfaceCreateFlagsKHR = VkFlags

struct VkWaylandSurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkWaylandSurfaceCreateFlagsKHR
    display::Ptr{wl_display}
    surface::Ptr{wl_surface}
end

const PFN_vkCreateWaylandSurfaceKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR = Ptr{Cvoid}
const VkWin32SurfaceCreateFlagsKHR = VkFlags

struct VkWin32SurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkWin32SurfaceCreateFlagsKHR
    hinstance::Cint
    hwnd::Cint
end

const PFN_vkCreateWin32SurfaceKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR = Ptr{Cvoid}

struct VkImportMemoryWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalMemoryHandleTypeFlagBits
    handle::Cint
    name::Cint
end

struct VkExportMemoryWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pAttributes::Ptr{Cint}
    dwAccess::Cint
    name::Cint
end

struct VkMemoryWin32HandlePropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memoryTypeBits::UInt32
end

struct VkMemoryGetWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    memory::VkDeviceMemory
    handleType::VkExternalMemoryHandleTypeFlagBits
end

const PFN_vkGetMemoryWin32HandleKHR = Ptr{Cvoid}
const PFN_vkGetMemoryWin32HandlePropertiesKHR = Ptr{Cvoid}

struct VkWin32KeyedMutexAcquireReleaseInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    acquireCount::UInt32
    pAcquireSyncs::Ptr{VkDeviceMemory}
    pAcquireKeys::Ptr{UInt64}
    pAcquireTimeouts::Ptr{UInt32}
    releaseCount::UInt32
    pReleaseSyncs::Ptr{VkDeviceMemory}
    pReleaseKeys::Ptr{UInt64}
end

struct VkImportSemaphoreWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphore::VkSemaphore
    flags::VkSemaphoreImportFlags
    handleType::VkExternalSemaphoreHandleTypeFlagBits
    handle::Cint
    name::Cint
end

struct VkExportSemaphoreWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pAttributes::Ptr{Cint}
    dwAccess::Cint
    name::Cint
end

struct VkD3D12FenceSubmitInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    waitSemaphoreValuesCount::UInt32
    pWaitSemaphoreValues::Ptr{UInt64}
    signalSemaphoreValuesCount::UInt32
    pSignalSemaphoreValues::Ptr{UInt64}
end

struct VkSemaphoreGetWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    semaphore::VkSemaphore
    handleType::VkExternalSemaphoreHandleTypeFlagBits
end

const PFN_vkImportSemaphoreWin32HandleKHR = Ptr{Cvoid}
const PFN_vkGetSemaphoreWin32HandleKHR = Ptr{Cvoid}

struct VkImportFenceWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fence::VkFence
    flags::VkFenceImportFlags
    handleType::VkExternalFenceHandleTypeFlagBits
    handle::Cint
    name::Cint
end

struct VkExportFenceWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pAttributes::Ptr{Cint}
    dwAccess::Cint
    name::Cint
end

struct VkFenceGetWin32HandleInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fence::VkFence
    handleType::VkExternalFenceHandleTypeFlagBits
end

const PFN_vkImportFenceWin32HandleKHR = Ptr{Cvoid}
const PFN_vkGetFenceWin32HandleKHR = Ptr{Cvoid}

struct VkImportMemoryWin32HandleInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    handleType::VkExternalMemoryHandleTypeFlagsNV
    handle::Cint
end

struct VkExportMemoryWin32HandleInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    pAttributes::Ptr{Cint}
    dwAccess::Cint
end

const PFN_vkGetMemoryWin32HandleNV = Ptr{Cvoid}

struct VkWin32KeyedMutexAcquireReleaseInfoNV
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    acquireCount::UInt32
    pAcquireSyncs::Ptr{VkDeviceMemory}
    pAcquireKeys::Ptr{UInt64}
    pAcquireTimeoutMilliseconds::Ptr{UInt32}
    releaseCount::UInt32
    pReleaseSyncs::Ptr{VkDeviceMemory}
    pReleaseKeys::Ptr{UInt64}
end

@cenum VkFullScreenExclusiveEXT::UInt32 begin
    VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0
    VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1
    VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2
    VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3
    VK_FULL_SCREEN_EXCLUSIVE_MAX_ENUM_EXT = 2147483647
end


struct VkSurfaceFullScreenExclusiveInfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fullScreenExclusive::VkFullScreenExclusiveEXT
end

struct VkSurfaceCapabilitiesFullScreenExclusiveEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    fullScreenExclusiveSupported::VkBool32
end

struct VkSurfaceFullScreenExclusiveWin32InfoEXT
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    hmonitor::Cint
end

const PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT = Ptr{Cvoid}
const PFN_vkAcquireFullScreenExclusiveModeEXT = Ptr{Cvoid}
const PFN_vkReleaseFullScreenExclusiveModeEXT = Ptr{Cvoid}
const PFN_vkGetDeviceGroupSurfacePresentModes2EXT = Ptr{Cvoid}
const VkXcbSurfaceCreateFlagsKHR = VkFlags

struct VkXcbSurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkXcbSurfaceCreateFlagsKHR
    connection::Ptr{xcb_connection_t}
    window::xcb_window_t
end

const PFN_vkCreateXcbSurfaceKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR = Ptr{Cvoid}
const VkXlibSurfaceCreateFlagsKHR = VkFlags

struct VkXlibSurfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkXlibSurfaceCreateFlagsKHR
    dpy::Ptr{Display}
    window::Window
end

const PFN_vkCreateXlibSurfaceKHR = Ptr{Cvoid}
const PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR = Ptr{Cvoid}
const PFN_vkAcquireXlibDisplayEXT = Ptr{Cvoid}
const PFN_vkGetRandROutputDisplayEXT = Ptr{Cvoid}
const VkStreamDescriptorSurfaceCreateFlagsGGP = VkFlags

struct VkStreamDescriptorSurfaceCreateInfoGGP
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkStreamDescriptorSurfaceCreateFlagsGGP
    streamDescriptor::Cint
end

const PFN_vkCreateStreamDescriptorSurfaceGGP = Ptr{Cvoid}

struct VkPresentFrameTokenGGP
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    frameToken::Cint
end

const VkDeferredOperationKHR_T = Cvoid
const VkDeferredOperationKHR = Ptr{VkDeferredOperationKHR_T}

struct VkDeferredOperationInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    operationHandle::VkDeferredOperationKHR
end

const PFN_vkCreateDeferredOperationKHR = Ptr{Cvoid}
const PFN_vkDestroyDeferredOperationKHR = Ptr{Cvoid}
const PFN_vkGetDeferredOperationMaxConcurrencyKHR = Ptr{Cvoid}
const PFN_vkGetDeferredOperationResultKHR = Ptr{Cvoid}
const PFN_vkDeferredOperationJoinKHR = Ptr{Cvoid}

struct VkPipelineLibraryCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    libraryCount::UInt32
    pLibraries::Ptr{VkPipeline}
end

@cenum VkAccelerationStructureBuildTypeKHR::UInt32 begin
    VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0
    VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1
    VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2
    VK_ACCELERATION_STRUCTURE_BUILD_TYPE_MAX_ENUM_KHR = 2147483647
end


struct VkDeviceOrHostAddressKHR
    deviceAddress::VkDeviceAddress
end

struct VkDeviceOrHostAddressConstKHR
    deviceAddress::VkDeviceAddress
end

struct VkAccelerationStructureBuildOffsetInfoKHR
    primitiveCount::UInt32
    primitiveOffset::UInt32
    firstVertex::UInt32
    transformOffset::UInt32
end

struct VkRayTracingShaderGroupCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkRayTracingShaderGroupTypeKHR
    generalShader::UInt32
    closestHitShader::UInt32
    anyHitShader::UInt32
    intersectionShader::UInt32
    pShaderGroupCaptureReplayHandle::Ptr{Cvoid}
end

struct VkRayTracingPipelineInterfaceCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    maxPayloadSize::UInt32
    maxAttributeSize::UInt32
    maxCallableSize::UInt32
end

struct VkRayTracingPipelineCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    flags::VkPipelineCreateFlags
    stageCount::UInt32
    pStages::Ptr{VkPipelineShaderStageCreateInfo}
    groupCount::UInt32
    pGroups::Ptr{VkRayTracingShaderGroupCreateInfoKHR}
    maxRecursionDepth::UInt32
    libraries::VkPipelineLibraryCreateInfoKHR
    pLibraryInterface::Ptr{VkRayTracingPipelineInterfaceCreateInfoKHR}
    layout::VkPipelineLayout
    basePipelineHandle::VkPipeline
    basePipelineIndex::Int32
end

struct VkAccelerationStructureGeometryTrianglesDataKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    vertexFormat::VkFormat
    vertexData::VkDeviceOrHostAddressConstKHR
    vertexStride::VkDeviceSize
    indexType::VkIndexType
    indexData::VkDeviceOrHostAddressConstKHR
    transformData::VkDeviceOrHostAddressConstKHR
end

struct VkAccelerationStructureGeometryAabbsDataKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    data::VkDeviceOrHostAddressConstKHR
    stride::VkDeviceSize
end

struct VkAccelerationStructureGeometryInstancesDataKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    arrayOfPointers::VkBool32
    data::VkDeviceOrHostAddressConstKHR
end

struct VkAccelerationStructureGeometryDataKHR
    triangles::VkAccelerationStructureGeometryTrianglesDataKHR
end

struct VkAccelerationStructureGeometryKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    geometryType::VkGeometryTypeKHR
    geometry::VkAccelerationStructureGeometryDataKHR
    flags::VkGeometryFlagsKHR
end

struct VkAccelerationStructureBuildGeometryInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkAccelerationStructureTypeKHR
    flags::VkBuildAccelerationStructureFlagsKHR
    update::VkBool32
    srcAccelerationStructure::VkAccelerationStructureKHR
    dstAccelerationStructure::VkAccelerationStructureKHR
    geometryArrayOfPointers::VkBool32
    geometryCount::UInt32
    ppGeometries::Ptr{Ptr{VkAccelerationStructureGeometryKHR}}
    scratchData::VkDeviceOrHostAddressKHR
end

struct VkAccelerationStructureCreateGeometryTypeInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    geometryType::VkGeometryTypeKHR
    maxPrimitiveCount::UInt32
    indexType::VkIndexType
    maxVertexCount::UInt32
    vertexFormat::VkFormat
    allowsTransforms::VkBool32
end

struct VkAccelerationStructureCreateInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    compactedSize::VkDeviceSize
    type::VkAccelerationStructureTypeKHR
    flags::VkBuildAccelerationStructureFlagsKHR
    maxGeometryCount::UInt32
    pGeometryInfos::Ptr{VkAccelerationStructureCreateGeometryTypeInfoKHR}
    deviceAddress::VkDeviceAddress
end

struct VkAccelerationStructureMemoryRequirementsInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    type::VkAccelerationStructureMemoryRequirementsTypeKHR
    buildType::VkAccelerationStructureBuildTypeKHR
    accelerationStructure::VkAccelerationStructureKHR
end

struct VkPhysicalDeviceRayTracingFeaturesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    rayTracing::VkBool32
    rayTracingShaderGroupHandleCaptureReplay::VkBool32
    rayTracingShaderGroupHandleCaptureReplayMixed::VkBool32
    rayTracingAccelerationStructureCaptureReplay::VkBool32
    rayTracingIndirectTraceRays::VkBool32
    rayTracingIndirectAccelerationStructureBuild::VkBool32
    rayTracingHostAccelerationStructureCommands::VkBool32
    rayQuery::VkBool32
    rayTracingPrimitiveCulling::VkBool32
end

struct VkPhysicalDeviceRayTracingPropertiesKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    shaderGroupHandleSize::UInt32
    maxRecursionDepth::UInt32
    maxShaderGroupStride::UInt32
    shaderGroupBaseAlignment::UInt32
    maxGeometryCount::UInt64
    maxInstanceCount::UInt64
    maxPrimitiveCount::UInt64
    maxDescriptorSetAccelerationStructures::UInt32
    shaderGroupHandleCaptureReplaySize::UInt32
end

struct VkAccelerationStructureDeviceAddressInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    accelerationStructure::VkAccelerationStructureKHR
end

struct VkAccelerationStructureVersionKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    versionData::Ptr{UInt8}
end

struct VkStridedBufferRegionKHR
    buffer::VkBuffer
    offset::VkDeviceSize
    stride::VkDeviceSize
    size::VkDeviceSize
end

struct VkTraceRaysIndirectCommandKHR
    width::UInt32
    height::UInt32
    depth::UInt32
end

struct VkCopyAccelerationStructureToMemoryInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    src::VkAccelerationStructureKHR
    dst::VkDeviceOrHostAddressKHR
    mode::VkCopyAccelerationStructureModeKHR
end

struct VkCopyMemoryToAccelerationStructureInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    src::VkDeviceOrHostAddressConstKHR
    dst::VkAccelerationStructureKHR
    mode::VkCopyAccelerationStructureModeKHR
end

struct VkCopyAccelerationStructureInfoKHR
    sType::VkStructureType
    pNext::Ptr{Cvoid}
    src::VkAccelerationStructureKHR
    dst::VkAccelerationStructureKHR
    mode::VkCopyAccelerationStructureModeKHR
end

const PFN_vkCreateAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureMemoryRequirementsKHR = Ptr{Cvoid}
const PFN_vkCmdBuildAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCmdBuildAccelerationStructureIndirectKHR = Ptr{Cvoid}
const PFN_vkBuildAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCopyAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCopyAccelerationStructureToMemoryKHR = Ptr{Cvoid}
const PFN_vkCopyMemoryToAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkWriteAccelerationStructuresPropertiesKHR = Ptr{Cvoid}
const PFN_vkCmdCopyAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCmdCopyAccelerationStructureToMemoryKHR = Ptr{Cvoid}
const PFN_vkCmdCopyMemoryToAccelerationStructureKHR = Ptr{Cvoid}
const PFN_vkCmdTraceRaysKHR = Ptr{Cvoid}
const PFN_vkCreateRayTracingPipelinesKHR = Ptr{Cvoid}
const PFN_vkGetAccelerationStructureDeviceAddressKHR = Ptr{Cvoid}
const PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = Ptr{Cvoid}
const PFN_vkCmdTraceRaysIndirectKHR = Ptr{Cvoid}
const PFN_vkGetDeviceAccelerationStructureCompatibilityKHR = Ptr{Cvoid}
