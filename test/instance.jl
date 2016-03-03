

function create_instance(appname)
    appname_ascii = ascii(appname)
    appname_ptr = Base.unsafe_convert(Ptr{Cchar}, appname_ascii)
    appInfo = Ref{api.VkApplicationInfo}()

    appInfo[:sType] = api.VK_STRUCTURE_TYPE_APPLICATION_INFO
    appInfo[:pApplicationName] = appname_ptr
    appInfo[:pEngineName] = appname_ptr
    # Temporary workaround for drivers not supporting SDK 1.0.3 upon launch
    # todo : Use VK_API_VERSION 
    appInfo[:apiVersion] =  api.VK_MAKE_VERSION(1, 0, 3)

    enabledExtensions = [api.VK_KHR_SURFACE_EXTENSION_NAME]

    @windows ? begin
        push!(enabledExtensions, api.VK_KHR_WIN32_SURFACE_EXTENSION_NAME)
    end : begin
    # todo : linux/android
        push!(enabledExtensions, api.VK_KHR_XCB_SURFACE_EXTENSION_NAME)
    end
    # todo : check if all extensions are present
    enabledExtensions_ref = Ref{Ptr{Cchar}}(enabledExtensions)

    instanceCreateInfo = Ref{api.VkInstanceCreateInfo}()
    instanceCreateInfo[:sType] = api.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
    instanceCreateInfo[:pNext] = C_NULL
    instanceCreateInfo[:pApplicationInfo] = Base.unsafe_convert(Ptr{api.VkApplicationInfo}, appInfo)

    instanceCreateInfo[:enabledExtensionCount] = length(enabledExtensions)
    instanceCreateInfo[:ppEnabledExtensionNames] = Base.unsafe_convert(Ptr{Ptr{Cchar}}, enabledExtensions_ref)

    instanceCreateInfo[:enabledLayerCount] = 0; # todo : change validation layer names!
    instance = Ref{api.VkInstance}(C_NULL)
    err = api.vkCreateInstance(instanceCreateInfo, C_NULL, instance)
    check(err)
    instance[]
end