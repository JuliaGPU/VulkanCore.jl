convert_vk_back(::Type{UInt32}, version::VersionNumber) = (version.major << 22) + (version.minor << 12) + version.patch
convert_vk(::Type{VersionNumber}, version::UInt32) = VersionNumber(UInt32(version) >> 22, (UInt32(version) >> 12) & 0x3ff, UInt32(version) & 0xfff)
