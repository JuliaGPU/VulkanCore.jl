function create_instance(appname::AbstractString)
    enabledExtensions = [api.VK_KHR_SURFACE_EXTENSION_NAME]
    @windows ? begin
        push!(enabledExtensions, api.VK_KHR_WIN32_SURFACE_EXTENSION_NAME)
    end : begin
    # todo : linux/android
        push!(enabledExtensions, api.VK_KHR_XCB_SURFACE_EXTENSION_NAME)
    end
    appInfo = Ref{api.VkApplicationInfo}()
    appInfo[:sType] = api.VK_STRUCTURE_TYPE_APPLICATION_INFO
    appInfo[:pApplicationName] = appname
    appInfo[:pEngineName] = appname
    appInfo[:apiVersion] =  api.VK_MAKE_VERSION(1, 0, 4)
    CreateInstance(C_NULL;
        sType = api.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        pApplicationInfo = appInfo,
        enabledExtensionCount = length(enabledExtensions),
        ppEnabledExtensionNames = enabledExtensions
    )
end
