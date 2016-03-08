const validation_layer = [
    "VK_LAYER_LUNARG_threading",
    "VK_LAYER_LUNARG_mem_tracker",
    "VK_LAYER_LUNARG_object_tracker",
    "VK_LAYER_LUNARG_draw_state",
    "VK_LAYER_LUNARG_param_checker",
    "VK_LAYER_LUNARG_swapchain",
    "VK_LAYER_LUNARG_device_limits",
    "VK_LAYER_LUNARG_image",
    "VK_LAYER_GOOGLE_unique_objects",
]


function debugg_callback(
        flags::api.VkDebugReportFlagsEXT,
        objType::api.VkDebugReportObjectTypeEXT,
        srcObject::UInt64,
        location::Csize_t,
        msgCode::Int32,
        pLayerPrefix::Ptr{UInt8},
        pMsg::Ptr{UInt8},
        pUserData::Ptr{Void}
    )
    bt = catch_backtrace()
    message = bytestring(pMsg)
    layerprefix = bytestring(pLayerPrefix)
    if (flags & UInt32(api.VK_DEBUG_REPORT_ERROR_BIT_EXT)) != UInt32(false)
        Base.show_backtrace(STDERR, bt)
        error(
            "[", layerprefix, "]
            Code ", msgCode, " : ", message
        )
    else
        if (flags &  UInt32(api.VK_DEBUG_REPORT_WARNING_BIT_EXT)) != UInt32(false)
            Base.show_backtrace(STDOUT, bt)
            warn("[", layerprefix, "] Code ", msgCode, " : ", message)
        end
    end
    return api.VkBool32(false)
end

const debug_callback_fun_ptr = cfunction(
    debugg_callback, api.VkBool32, (
        api.VkDebugReportFlagsEXT,
        api.VkDebugReportObjectTypeEXT,
        UInt64,
        Csize_t,
        Int32,
        Ptr{UInt8},
        Ptr{UInt8},
        Ptr{Void}
    )
)

function setupDebugging(instance::api.VkInstance, flags)
    create_debug_callback_ptr = api.vkGetInstanceProcAddr(instance, "vkCreateDebugReportCallbackEXT")

    dbgCreateInfo = create_ref(api.VkDebugReportCallbackCreateInfoEXT,
        sType = api.VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT,
        pfnCallback = debug_callback_fun_ptr,
        flags = flags,
    )

    debugReportCallback = Ref{api.VkDebugReportCallbackEXT}()
    err = ccall(create_debug_callback_ptr, api.VkResult,
        (api.VkInstance, Ptr{api.VkDebugReportCallbackCreateInfoEXT}, Ptr{api.VkAllocationCallbacks}, Ptr{api.VkDebugReportCallbackEXT}),
        instance, dbgCreateInfo, C_NULL, debugReportCallback
    )
    check(err)
    debugReportCallback[]
end

function create_instance(appname::AbstractString, validation=true)
    enabledExtensions = [api.VK_KHR_SURFACE_EXTENSION_NAME]
    if validation
        push!(enabledExtensions, api.VK_EXT_DEBUG_REPORT_EXTENSION_NAME)
    end
    @windows ? begin
        push!(enabledExtensions, api.VK_KHR_WIN32_SURFACE_EXTENSION_NAME)
    end : begin
    # todo : linux/android
        push!(enabledExtensions, api.VK_KHR_XCB_SURFACE_EXTENSION_NAME)
    end
    appInfo = create_ref(api.VkApplicationInfo,
        sType = api.VK_STRUCTURE_TYPE_APPLICATION_INFO,
        pApplicationName = appname,
        pEngineName = appname,
        apiVersion = api.VK_MAKE_VERSION(1, 0, 3)
    )
    instance = CreateInstance(C_NULL;
        sType = api.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        pApplicationInfo = appInfo,
        enabledExtensionCount = length(enabledExtensions),
        ppEnabledExtensionNames = enabledExtensions,
        enabledLayerCount = length(validation_layer),
        ppEnabledLayerNames = validation_layer
    )
    instance
end
