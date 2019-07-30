# Automatically generated using Clang.jl


const SPV_VERSION = 0x00010000
const SPV_REVISION = 8
const SpvId = UInt32

@cenum SpvSourceLanguage_::UInt32 begin
    SpvSourceLanguageUnknown = 0
    SpvSourceLanguageESSL = 1
    SpvSourceLanguageGLSL = 2
    SpvSourceLanguageOpenCL_C = 3
    SpvSourceLanguageOpenCL_CPP = 4
    SpvSourceLanguageMax = 2147483647
end


const SpvSourceLanguage = SpvSourceLanguage_

@cenum SpvExecutionModel_::UInt32 begin
    SpvExecutionModelVertex = 0
    SpvExecutionModelTessellationControl = 1
    SpvExecutionModelTessellationEvaluation = 2
    SpvExecutionModelGeometry = 3
    SpvExecutionModelFragment = 4
    SpvExecutionModelGLCompute = 5
    SpvExecutionModelKernel = 6
    SpvExecutionModelMax = 2147483647
end


const SpvExecutionModel = SpvExecutionModel_

@cenum SpvAddressingModel_::UInt32 begin
    SpvAddressingModelLogical = 0
    SpvAddressingModelPhysical32 = 1
    SpvAddressingModelPhysical64 = 2
    SpvAddressingModelMax = 2147483647
end


const SpvAddressingModel = SpvAddressingModel_

@cenum SpvMemoryModel_::UInt32 begin
    SpvMemoryModelSimple = 0
    SpvMemoryModelGLSL450 = 1
    SpvMemoryModelOpenCL = 2
    SpvMemoryModelMax = 2147483647
end


const SpvMemoryModel = SpvMemoryModel_

@cenum SpvExecutionMode_::UInt32 begin
    SpvExecutionModeInvocations = 0
    SpvExecutionModeSpacingEqual = 1
    SpvExecutionModeSpacingFractionalEven = 2
    SpvExecutionModeSpacingFractionalOdd = 3
    SpvExecutionModeVertexOrderCw = 4
    SpvExecutionModeVertexOrderCcw = 5
    SpvExecutionModePixelCenterInteger = 6
    SpvExecutionModeOriginUpperLeft = 7
    SpvExecutionModeOriginLowerLeft = 8
    SpvExecutionModeEarlyFragmentTests = 9
    SpvExecutionModePointMode = 10
    SpvExecutionModeXfb = 11
    SpvExecutionModeDepthReplacing = 12
    SpvExecutionModeDepthGreater = 14
    SpvExecutionModeDepthLess = 15
    SpvExecutionModeDepthUnchanged = 16
    SpvExecutionModeLocalSize = 17
    SpvExecutionModeLocalSizeHint = 18
    SpvExecutionModeInputPoints = 19
    SpvExecutionModeInputLines = 20
    SpvExecutionModeInputLinesAdjacency = 21
    SpvExecutionModeTriangles = 22
    SpvExecutionModeInputTrianglesAdjacency = 23
    SpvExecutionModeQuads = 24
    SpvExecutionModeIsolines = 25
    SpvExecutionModeOutputVertices = 26
    SpvExecutionModeOutputPoints = 27
    SpvExecutionModeOutputLineStrip = 28
    SpvExecutionModeOutputTriangleStrip = 29
    SpvExecutionModeVecTypeHint = 30
    SpvExecutionModeContractionOff = 31
    SpvExecutionModeMax = 2147483647
end


const SpvExecutionMode = SpvExecutionMode_

@cenum SpvStorageClass_::UInt32 begin
    SpvStorageClassUniformConstant = 0
    SpvStorageClassInput = 1
    SpvStorageClassUniform = 2
    SpvStorageClassOutput = 3
    SpvStorageClassWorkgroup = 4
    SpvStorageClassCrossWorkgroup = 5
    SpvStorageClassPrivate = 6
    SpvStorageClassFunction = 7
    SpvStorageClassGeneric = 8
    SpvStorageClassPushConstant = 9
    SpvStorageClassAtomicCounter = 10
    SpvStorageClassImage = 11
    SpvStorageClassMax = 2147483647
end


const SpvStorageClass = SpvStorageClass_

@cenum SpvDim_::UInt32 begin
    SpvDim1D = 0
    SpvDim2D = 1
    SpvDim3D = 2
    SpvDimCube = 3
    SpvDimRect = 4
    SpvDimBuffer = 5
    SpvDimSubpassData = 6
    SpvDimMax = 2147483647
end


const SpvDim = SpvDim_

@cenum SpvSamplerAddressingMode_::UInt32 begin
    SpvSamplerAddressingModeNone = 0
    SpvSamplerAddressingModeClampToEdge = 1
    SpvSamplerAddressingModeClamp = 2
    SpvSamplerAddressingModeRepeat = 3
    SpvSamplerAddressingModeRepeatMirrored = 4
    SpvSamplerAddressingModeMax = 2147483647
end


const SpvSamplerAddressingMode = SpvSamplerAddressingMode_

@cenum SpvSamplerFilterMode_::UInt32 begin
    SpvSamplerFilterModeNearest = 0
    SpvSamplerFilterModeLinear = 1
    SpvSamplerFilterModeMax = 2147483647
end


const SpvSamplerFilterMode = SpvSamplerFilterMode_

@cenum SpvImageFormat_::UInt32 begin
    SpvImageFormatUnknown = 0
    SpvImageFormatRgba32f = 1
    SpvImageFormatRgba16f = 2
    SpvImageFormatR32f = 3
    SpvImageFormatRgba8 = 4
    SpvImageFormatRgba8Snorm = 5
    SpvImageFormatRg32f = 6
    SpvImageFormatRg16f = 7
    SpvImageFormatR11fG11fB10f = 8
    SpvImageFormatR16f = 9
    SpvImageFormatRgba16 = 10
    SpvImageFormatRgb10A2 = 11
    SpvImageFormatRg16 = 12
    SpvImageFormatRg8 = 13
    SpvImageFormatR16 = 14
    SpvImageFormatR8 = 15
    SpvImageFormatRgba16Snorm = 16
    SpvImageFormatRg16Snorm = 17
    SpvImageFormatRg8Snorm = 18
    SpvImageFormatR16Snorm = 19
    SpvImageFormatR8Snorm = 20
    SpvImageFormatRgba32i = 21
    SpvImageFormatRgba16i = 22
    SpvImageFormatRgba8i = 23
    SpvImageFormatR32i = 24
    SpvImageFormatRg32i = 25
    SpvImageFormatRg16i = 26
    SpvImageFormatRg8i = 27
    SpvImageFormatR16i = 28
    SpvImageFormatR8i = 29
    SpvImageFormatRgba32ui = 30
    SpvImageFormatRgba16ui = 31
    SpvImageFormatRgba8ui = 32
    SpvImageFormatR32ui = 33
    SpvImageFormatRgb10a2ui = 34
    SpvImageFormatRg32ui = 35
    SpvImageFormatRg16ui = 36
    SpvImageFormatRg8ui = 37
    SpvImageFormatR16ui = 38
    SpvImageFormatR8ui = 39
    SpvImageFormatMax = 2147483647
end


const SpvImageFormat = SpvImageFormat_

@cenum SpvImageChannelOrder_::UInt32 begin
    SpvImageChannelOrderR = 0
    SpvImageChannelOrderA = 1
    SpvImageChannelOrderRG = 2
    SpvImageChannelOrderRA = 3
    SpvImageChannelOrderRGB = 4
    SpvImageChannelOrderRGBA = 5
    SpvImageChannelOrderBGRA = 6
    SpvImageChannelOrderARGB = 7
    SpvImageChannelOrderIntensity = 8
    SpvImageChannelOrderLuminance = 9
    SpvImageChannelOrderRx = 10
    SpvImageChannelOrderRGx = 11
    SpvImageChannelOrderRGBx = 12
    SpvImageChannelOrderDepth = 13
    SpvImageChannelOrderDepthStencil = 14
    SpvImageChannelOrdersRGB = 15
    SpvImageChannelOrdersRGBx = 16
    SpvImageChannelOrdersRGBA = 17
    SpvImageChannelOrdersBGRA = 18
    SpvImageChannelOrderABGR = 19
    SpvImageChannelOrderMax = 2147483647
end


const SpvImageChannelOrder = SpvImageChannelOrder_

@cenum SpvImageChannelDataType_::UInt32 begin
    SpvImageChannelDataTypeSnormInt8 = 0
    SpvImageChannelDataTypeSnormInt16 = 1
    SpvImageChannelDataTypeUnormInt8 = 2
    SpvImageChannelDataTypeUnormInt16 = 3
    SpvImageChannelDataTypeUnormShort565 = 4
    SpvImageChannelDataTypeUnormShort555 = 5
    SpvImageChannelDataTypeUnormInt101010 = 6
    SpvImageChannelDataTypeSignedInt8 = 7
    SpvImageChannelDataTypeSignedInt16 = 8
    SpvImageChannelDataTypeSignedInt32 = 9
    SpvImageChannelDataTypeUnsignedInt8 = 10
    SpvImageChannelDataTypeUnsignedInt16 = 11
    SpvImageChannelDataTypeUnsignedInt32 = 12
    SpvImageChannelDataTypeHalfFloat = 13
    SpvImageChannelDataTypeFloat = 14
    SpvImageChannelDataTypeUnormInt24 = 15
    SpvImageChannelDataTypeUnormInt101010_2 = 16
    SpvImageChannelDataTypeMax = 2147483647
end


const SpvImageChannelDataType = SpvImageChannelDataType_

@cenum SpvImageOperandsShift_::UInt32 begin
    SpvImageOperandsBiasShift = 0
    SpvImageOperandsLodShift = 1
    SpvImageOperandsGradShift = 2
    SpvImageOperandsConstOffsetShift = 3
    SpvImageOperandsOffsetShift = 4
    SpvImageOperandsConstOffsetsShift = 5
    SpvImageOperandsSampleShift = 6
    SpvImageOperandsMinLodShift = 7
    SpvImageOperandsMax = 2147483647
end


const SpvImageOperandsShift = SpvImageOperandsShift_

@cenum SpvImageOperandsMask_::UInt32 begin
    SpvImageOperandsMaskNone = 0
    SpvImageOperandsBiasMask = 1
    SpvImageOperandsLodMask = 2
    SpvImageOperandsGradMask = 4
    SpvImageOperandsConstOffsetMask = 8
    SpvImageOperandsOffsetMask = 16
    SpvImageOperandsConstOffsetsMask = 32
    SpvImageOperandsSampleMask = 64
    SpvImageOperandsMinLodMask = 128
end


const SpvImageOperandsMask = SpvImageOperandsMask_

@cenum SpvFPFastMathModeShift_::UInt32 begin
    SpvFPFastMathModeNotNaNShift = 0
    SpvFPFastMathModeNotInfShift = 1
    SpvFPFastMathModeNSZShift = 2
    SpvFPFastMathModeAllowRecipShift = 3
    SpvFPFastMathModeFastShift = 4
    SpvFPFastMathModeMax = 2147483647
end


const SpvFPFastMathModeShift = SpvFPFastMathModeShift_

@cenum SpvFPFastMathModeMask_::UInt32 begin
    SpvFPFastMathModeMaskNone = 0
    SpvFPFastMathModeNotNaNMask = 1
    SpvFPFastMathModeNotInfMask = 2
    SpvFPFastMathModeNSZMask = 4
    SpvFPFastMathModeAllowRecipMask = 8
    SpvFPFastMathModeFastMask = 16
end


const SpvFPFastMathModeMask = SpvFPFastMathModeMask_

@cenum SpvFPRoundingMode_::UInt32 begin
    SpvFPRoundingModeRTE = 0
    SpvFPRoundingModeRTZ = 1
    SpvFPRoundingModeRTP = 2
    SpvFPRoundingModeRTN = 3
    SpvFPRoundingModeMax = 2147483647
end


const SpvFPRoundingMode = SpvFPRoundingMode_

@cenum SpvLinkageType_::UInt32 begin
    SpvLinkageTypeExport = 0
    SpvLinkageTypeImport = 1
    SpvLinkageTypeMax = 2147483647
end


const SpvLinkageType = SpvLinkageType_

@cenum SpvAccessQualifier_::UInt32 begin
    SpvAccessQualifierReadOnly = 0
    SpvAccessQualifierWriteOnly = 1
    SpvAccessQualifierReadWrite = 2
    SpvAccessQualifierMax = 2147483647
end


const SpvAccessQualifier = SpvAccessQualifier_

@cenum SpvFunctionParameterAttribute_::UInt32 begin
    SpvFunctionParameterAttributeZext = 0
    SpvFunctionParameterAttributeSext = 1
    SpvFunctionParameterAttributeByVal = 2
    SpvFunctionParameterAttributeSret = 3
    SpvFunctionParameterAttributeNoAlias = 4
    SpvFunctionParameterAttributeNoCapture = 5
    SpvFunctionParameterAttributeNoWrite = 6
    SpvFunctionParameterAttributeNoReadWrite = 7
    SpvFunctionParameterAttributeMax = 2147483647
end


const SpvFunctionParameterAttribute = SpvFunctionParameterAttribute_

@cenum SpvDecoration_::UInt32 begin
    SpvDecorationRelaxedPrecision = 0
    SpvDecorationSpecId = 1
    SpvDecorationBlock = 2
    SpvDecorationBufferBlock = 3
    SpvDecorationRowMajor = 4
    SpvDecorationColMajor = 5
    SpvDecorationArrayStride = 6
    SpvDecorationMatrixStride = 7
    SpvDecorationGLSLShared = 8
    SpvDecorationGLSLPacked = 9
    SpvDecorationCPacked = 10
    SpvDecorationBuiltIn = 11
    SpvDecorationNoPerspective = 13
    SpvDecorationFlat = 14
    SpvDecorationPatch = 15
    SpvDecorationCentroid = 16
    SpvDecorationSample = 17
    SpvDecorationInvariant = 18
    SpvDecorationRestrict = 19
    SpvDecorationAliased = 20
    SpvDecorationVolatile = 21
    SpvDecorationConstant = 22
    SpvDecorationCoherent = 23
    SpvDecorationNonWritable = 24
    SpvDecorationNonReadable = 25
    SpvDecorationUniform = 26
    SpvDecorationSaturatedConversion = 28
    SpvDecorationStream = 29
    SpvDecorationLocation = 30
    SpvDecorationComponent = 31
    SpvDecorationIndex = 32
    SpvDecorationBinding = 33
    SpvDecorationDescriptorSet = 34
    SpvDecorationOffset = 35
    SpvDecorationXfbBuffer = 36
    SpvDecorationXfbStride = 37
    SpvDecorationFuncParamAttr = 38
    SpvDecorationFPRoundingMode = 39
    SpvDecorationFPFastMathMode = 40
    SpvDecorationLinkageAttributes = 41
    SpvDecorationNoContraction = 42
    SpvDecorationInputAttachmentIndex = 43
    SpvDecorationAlignment = 44
    SpvDecorationMax = 2147483647
end


const SpvDecoration = SpvDecoration_

@cenum SpvBuiltIn_::UInt32 begin
    SpvBuiltInPosition = 0
    SpvBuiltInPointSize = 1
    SpvBuiltInClipDistance = 3
    SpvBuiltInCullDistance = 4
    SpvBuiltInVertexId = 5
    SpvBuiltInInstanceId = 6
    SpvBuiltInPrimitiveId = 7
    SpvBuiltInInvocationId = 8
    SpvBuiltInLayer = 9
    SpvBuiltInViewportIndex = 10
    SpvBuiltInTessLevelOuter = 11
    SpvBuiltInTessLevelInner = 12
    SpvBuiltInTessCoord = 13
    SpvBuiltInPatchVertices = 14
    SpvBuiltInFragCoord = 15
    SpvBuiltInPointCoord = 16
    SpvBuiltInFrontFacing = 17
    SpvBuiltInSampleId = 18
    SpvBuiltInSamplePosition = 19
    SpvBuiltInSampleMask = 20
    SpvBuiltInFragDepth = 22
    SpvBuiltInHelperInvocation = 23
    SpvBuiltInNumWorkgroups = 24
    SpvBuiltInWorkgroupSize = 25
    SpvBuiltInWorkgroupId = 26
    SpvBuiltInLocalInvocationId = 27
    SpvBuiltInGlobalInvocationId = 28
    SpvBuiltInLocalInvocationIndex = 29
    SpvBuiltInWorkDim = 30
    SpvBuiltInGlobalSize = 31
    SpvBuiltInEnqueuedWorkgroupSize = 32
    SpvBuiltInGlobalOffset = 33
    SpvBuiltInGlobalLinearId = 34
    SpvBuiltInSubgroupSize = 36
    SpvBuiltInSubgroupMaxSize = 37
    SpvBuiltInNumSubgroups = 38
    SpvBuiltInNumEnqueuedSubgroups = 39
    SpvBuiltInSubgroupId = 40
    SpvBuiltInSubgroupLocalInvocationId = 41
    SpvBuiltInVertexIndex = 42
    SpvBuiltInInstanceIndex = 43
    SpvBuiltInSubgroupEqMaskKHR = 4416
    SpvBuiltInSubgroupGeMaskKHR = 4417
    SpvBuiltInSubgroupGtMaskKHR = 4418
    SpvBuiltInSubgroupLeMaskKHR = 4419
    SpvBuiltInSubgroupLtMaskKHR = 4420
    SpvBuiltInBaseVertex = 4424
    SpvBuiltInBaseInstance = 4425
    SpvBuiltInDrawIndex = 4426
    SpvBuiltInMax = 2147483647
end


const SpvBuiltIn = SpvBuiltIn_

@cenum SpvSelectionControlShift_::UInt32 begin
    SpvSelectionControlFlattenShift = 0
    SpvSelectionControlDontFlattenShift = 1
    SpvSelectionControlMax = 2147483647
end


const SpvSelectionControlShift = SpvSelectionControlShift_

@cenum SpvSelectionControlMask_::UInt32 begin
    SpvSelectionControlMaskNone = 0
    SpvSelectionControlFlattenMask = 1
    SpvSelectionControlDontFlattenMask = 2
end


const SpvSelectionControlMask = SpvSelectionControlMask_

@cenum SpvLoopControlShift_::UInt32 begin
    SpvLoopControlUnrollShift = 0
    SpvLoopControlDontUnrollShift = 1
    SpvLoopControlMax = 2147483647
end


const SpvLoopControlShift = SpvLoopControlShift_

@cenum SpvLoopControlMask_::UInt32 begin
    SpvLoopControlMaskNone = 0
    SpvLoopControlUnrollMask = 1
    SpvLoopControlDontUnrollMask = 2
end


const SpvLoopControlMask = SpvLoopControlMask_

@cenum SpvFunctionControlShift_::UInt32 begin
    SpvFunctionControlInlineShift = 0
    SpvFunctionControlDontInlineShift = 1
    SpvFunctionControlPureShift = 2
    SpvFunctionControlConstShift = 3
    SpvFunctionControlMax = 2147483647
end


const SpvFunctionControlShift = SpvFunctionControlShift_

@cenum SpvFunctionControlMask_::UInt32 begin
    SpvFunctionControlMaskNone = 0
    SpvFunctionControlInlineMask = 1
    SpvFunctionControlDontInlineMask = 2
    SpvFunctionControlPureMask = 4
    SpvFunctionControlConstMask = 8
end


const SpvFunctionControlMask = SpvFunctionControlMask_

@cenum SpvMemorySemanticsShift_::UInt32 begin
    SpvMemorySemanticsAcquireShift = 1
    SpvMemorySemanticsReleaseShift = 2
    SpvMemorySemanticsAcquireReleaseShift = 3
    SpvMemorySemanticsSequentiallyConsistentShift = 4
    SpvMemorySemanticsUniformMemoryShift = 6
    SpvMemorySemanticsSubgroupMemoryShift = 7
    SpvMemorySemanticsWorkgroupMemoryShift = 8
    SpvMemorySemanticsCrossWorkgroupMemoryShift = 9
    SpvMemorySemanticsAtomicCounterMemoryShift = 10
    SpvMemorySemanticsImageMemoryShift = 11
    SpvMemorySemanticsMax = 2147483647
end


const SpvMemorySemanticsShift = SpvMemorySemanticsShift_

@cenum SpvMemorySemanticsMask_::UInt32 begin
    SpvMemorySemanticsMaskNone = 0
    SpvMemorySemanticsAcquireMask = 2
    SpvMemorySemanticsReleaseMask = 4
    SpvMemorySemanticsAcquireReleaseMask = 8
    SpvMemorySemanticsSequentiallyConsistentMask = 16
    SpvMemorySemanticsUniformMemoryMask = 64
    SpvMemorySemanticsSubgroupMemoryMask = 128
    SpvMemorySemanticsWorkgroupMemoryMask = 256
    SpvMemorySemanticsCrossWorkgroupMemoryMask = 512
    SpvMemorySemanticsAtomicCounterMemoryMask = 1024
    SpvMemorySemanticsImageMemoryMask = 2048
end


const SpvMemorySemanticsMask = SpvMemorySemanticsMask_

@cenum SpvMemoryAccessShift_::UInt32 begin
    SpvMemoryAccessVolatileShift = 0
    SpvMemoryAccessAlignedShift = 1
    SpvMemoryAccessNontemporalShift = 2
    SpvMemoryAccessMax = 2147483647
end


const SpvMemoryAccessShift = SpvMemoryAccessShift_

@cenum SpvMemoryAccessMask_::UInt32 begin
    SpvMemoryAccessMaskNone = 0
    SpvMemoryAccessVolatileMask = 1
    SpvMemoryAccessAlignedMask = 2
    SpvMemoryAccessNontemporalMask = 4
end


const SpvMemoryAccessMask = SpvMemoryAccessMask_

@cenum SpvScope_::UInt32 begin
    SpvScopeCrossDevice = 0
    SpvScopeDevice = 1
    SpvScopeWorkgroup = 2
    SpvScopeSubgroup = 3
    SpvScopeInvocation = 4
    SpvScopeMax = 2147483647
end


const SpvScope = SpvScope_

@cenum SpvGroupOperation_::UInt32 begin
    SpvGroupOperationReduce = 0
    SpvGroupOperationInclusiveScan = 1
    SpvGroupOperationExclusiveScan = 2
    SpvGroupOperationMax = 2147483647
end


const SpvGroupOperation = SpvGroupOperation_

@cenum SpvKernelEnqueueFlags_::UInt32 begin
    SpvKernelEnqueueFlagsNoWait = 0
    SpvKernelEnqueueFlagsWaitKernel = 1
    SpvKernelEnqueueFlagsWaitWorkGroup = 2
    SpvKernelEnqueueFlagsMax = 2147483647
end


const SpvKernelEnqueueFlags = SpvKernelEnqueueFlags_

@cenum SpvKernelProfilingInfoShift_::UInt32 begin
    SpvKernelProfilingInfoCmdExecTimeShift = 0
    SpvKernelProfilingInfoMax = 2147483647
end


const SpvKernelProfilingInfoShift = SpvKernelProfilingInfoShift_

@cenum SpvKernelProfilingInfoMask_::UInt32 begin
    SpvKernelProfilingInfoMaskNone = 0
    SpvKernelProfilingInfoCmdExecTimeMask = 1
end


const SpvKernelProfilingInfoMask = SpvKernelProfilingInfoMask_

@cenum SpvCapability_::UInt32 begin
    SpvCapabilityMatrix = 0
    SpvCapabilityShader = 1
    SpvCapabilityGeometry = 2
    SpvCapabilityTessellation = 3
    SpvCapabilityAddresses = 4
    SpvCapabilityLinkage = 5
    SpvCapabilityKernel = 6
    SpvCapabilityVector16 = 7
    SpvCapabilityFloat16Buffer = 8
    SpvCapabilityFloat16 = 9
    SpvCapabilityFloat64 = 10
    SpvCapabilityInt64 = 11
    SpvCapabilityInt64Atomics = 12
    SpvCapabilityImageBasic = 13
    SpvCapabilityImageReadWrite = 14
    SpvCapabilityImageMipmap = 15
    SpvCapabilityPipes = 17
    SpvCapabilityGroups = 18
    SpvCapabilityDeviceEnqueue = 19
    SpvCapabilityLiteralSampler = 20
    SpvCapabilityAtomicStorage = 21
    SpvCapabilityInt16 = 22
    SpvCapabilityTessellationPointSize = 23
    SpvCapabilityGeometryPointSize = 24
    SpvCapabilityImageGatherExtended = 25
    SpvCapabilityStorageImageMultisample = 27
    SpvCapabilityUniformBufferArrayDynamicIndexing = 28
    SpvCapabilitySampledImageArrayDynamicIndexing = 29
    SpvCapabilityStorageBufferArrayDynamicIndexing = 30
    SpvCapabilityStorageImageArrayDynamicIndexing = 31
    SpvCapabilityClipDistance = 32
    SpvCapabilityCullDistance = 33
    SpvCapabilityImageCubeArray = 34
    SpvCapabilitySampleRateShading = 35
    SpvCapabilityImageRect = 36
    SpvCapabilitySampledRect = 37
    SpvCapabilityGenericPointer = 38
    SpvCapabilityInt8 = 39
    SpvCapabilityInputAttachment = 40
    SpvCapabilitySparseResidency = 41
    SpvCapabilityMinLod = 42
    SpvCapabilitySampled1D = 43
    SpvCapabilityImage1D = 44
    SpvCapabilitySampledCubeArray = 45
    SpvCapabilitySampledBuffer = 46
    SpvCapabilityImageBuffer = 47
    SpvCapabilityImageMSArray = 48
    SpvCapabilityStorageImageExtendedFormats = 49
    SpvCapabilityImageQuery = 50
    SpvCapabilityDerivativeControl = 51
    SpvCapabilityInterpolationFunction = 52
    SpvCapabilityTransformFeedback = 53
    SpvCapabilityGeometryStreams = 54
    SpvCapabilityStorageImageReadWithoutFormat = 55
    SpvCapabilityStorageImageWriteWithoutFormat = 56
    SpvCapabilityMultiViewport = 57
    SpvCapabilitySubgroupBallotKHR = 4423
    SpvCapabilityDrawParameters = 4427
    SpvCapabilityMax = 2147483647
end


const SpvCapability = SpvCapability_

@cenum SpvOp_::UInt32 begin
    SpvOpNop = 0
    SpvOpUndef = 1
    SpvOpSourceContinued = 2
    SpvOpSource = 3
    SpvOpSourceExtension = 4
    SpvOpName = 5
    SpvOpMemberName = 6
    SpvOpString = 7
    SpvOpLine = 8
    SpvOpExtension = 10
    SpvOpExtInstImport = 11
    SpvOpExtInst = 12
    SpvOpMemoryModel = 14
    SpvOpEntryPoint = 15
    SpvOpExecutionMode = 16
    SpvOpCapability = 17
    SpvOpTypeVoid = 19
    SpvOpTypeBool = 20
    SpvOpTypeInt = 21
    SpvOpTypeFloat = 22
    SpvOpTypeVector = 23
    SpvOpTypeMatrix = 24
    SpvOpTypeImage = 25
    SpvOpTypeSampler = 26
    SpvOpTypeSampledImage = 27
    SpvOpTypeArray = 28
    SpvOpTypeRuntimeArray = 29
    SpvOpTypeStruct = 30
    SpvOpTypeOpaque = 31
    SpvOpTypePointer = 32
    SpvOpTypeFunction = 33
    SpvOpTypeEvent = 34
    SpvOpTypeDeviceEvent = 35
    SpvOpTypeReserveId = 36
    SpvOpTypeQueue = 37
    SpvOpTypePipe = 38
    SpvOpTypeForwardPointer = 39
    SpvOpConstantTrue = 41
    SpvOpConstantFalse = 42
    SpvOpConstant = 43
    SpvOpConstantComposite = 44
    SpvOpConstantSampler = 45
    SpvOpConstantNull = 46
    SpvOpSpecConstantTrue = 48
    SpvOpSpecConstantFalse = 49
    SpvOpSpecConstant = 50
    SpvOpSpecConstantComposite = 51
    SpvOpSpecConstantOp = 52
    SpvOpFunction = 54
    SpvOpFunctionParameter = 55
    SpvOpFunctionEnd = 56
    SpvOpFunctionCall = 57
    SpvOpVariable = 59
    SpvOpImageTexelPointer = 60
    SpvOpLoad = 61
    SpvOpStore = 62
    SpvOpCopyMemory = 63
    SpvOpCopyMemorySized = 64
    SpvOpAccessChain = 65
    SpvOpInBoundsAccessChain = 66
    SpvOpPtrAccessChain = 67
    SpvOpArrayLength = 68
    SpvOpGenericPtrMemSemantics = 69
    SpvOpInBoundsPtrAccessChain = 70
    SpvOpDecorate = 71
    SpvOpMemberDecorate = 72
    SpvOpDecorationGroup = 73
    SpvOpGroupDecorate = 74
    SpvOpGroupMemberDecorate = 75
    SpvOpVectorExtractDynamic = 77
    SpvOpVectorInsertDynamic = 78
    SpvOpVectorShuffle = 79
    SpvOpCompositeConstruct = 80
    SpvOpCompositeExtract = 81
    SpvOpCompositeInsert = 82
    SpvOpCopyObject = 83
    SpvOpTranspose = 84
    SpvOpSampledImage = 86
    SpvOpImageSampleImplicitLod = 87
    SpvOpImageSampleExplicitLod = 88
    SpvOpImageSampleDrefImplicitLod = 89
    SpvOpImageSampleDrefExplicitLod = 90
    SpvOpImageSampleProjImplicitLod = 91
    SpvOpImageSampleProjExplicitLod = 92
    SpvOpImageSampleProjDrefImplicitLod = 93
    SpvOpImageSampleProjDrefExplicitLod = 94
    SpvOpImageFetch = 95
    SpvOpImageGather = 96
    SpvOpImageDrefGather = 97
    SpvOpImageRead = 98
    SpvOpImageWrite = 99
    SpvOpImage = 100
    SpvOpImageQueryFormat = 101
    SpvOpImageQueryOrder = 102
    SpvOpImageQuerySizeLod = 103
    SpvOpImageQuerySize = 104
    SpvOpImageQueryLod = 105
    SpvOpImageQueryLevels = 106
    SpvOpImageQuerySamples = 107
    SpvOpConvertFToU = 109
    SpvOpConvertFToS = 110
    SpvOpConvertSToF = 111
    SpvOpConvertUToF = 112
    SpvOpUConvert = 113
    SpvOpSConvert = 114
    SpvOpFConvert = 115
    SpvOpQuantizeToF16 = 116
    SpvOpConvertPtrToU = 117
    SpvOpSatConvertSToU = 118
    SpvOpSatConvertUToS = 119
    SpvOpConvertUToPtr = 120
    SpvOpPtrCastToGeneric = 121
    SpvOpGenericCastToPtr = 122
    SpvOpGenericCastToPtrExplicit = 123
    SpvOpBitcast = 124
    SpvOpSNegate = 126
    SpvOpFNegate = 127
    SpvOpIAdd = 128
    SpvOpFAdd = 129
    SpvOpISub = 130
    SpvOpFSub = 131
    SpvOpIMul = 132
    SpvOpFMul = 133
    SpvOpUDiv = 134
    SpvOpSDiv = 135
    SpvOpFDiv = 136
    SpvOpUMod = 137
    SpvOpSRem = 138
    SpvOpSMod = 139
    SpvOpFRem = 140
    SpvOpFMod = 141
    SpvOpVectorTimesScalar = 142
    SpvOpMatrixTimesScalar = 143
    SpvOpVectorTimesMatrix = 144
    SpvOpMatrixTimesVector = 145
    SpvOpMatrixTimesMatrix = 146
    SpvOpOuterProduct = 147
    SpvOpDot = 148
    SpvOpIAddCarry = 149
    SpvOpISubBorrow = 150
    SpvOpUMulExtended = 151
    SpvOpSMulExtended = 152
    SpvOpAny = 154
    SpvOpAll = 155
    SpvOpIsNan = 156
    SpvOpIsInf = 157
    SpvOpIsFinite = 158
    SpvOpIsNormal = 159
    SpvOpSignBitSet = 160
    SpvOpLessOrGreater = 161
    SpvOpOrdered = 162
    SpvOpUnordered = 163
    SpvOpLogicalEqual = 164
    SpvOpLogicalNotEqual = 165
    SpvOpLogicalOr = 166
    SpvOpLogicalAnd = 167
    SpvOpLogicalNot = 168
    SpvOpSelect = 169
    SpvOpIEqual = 170
    SpvOpINotEqual = 171
    SpvOpUGreaterThan = 172
    SpvOpSGreaterThan = 173
    SpvOpUGreaterThanEqual = 174
    SpvOpSGreaterThanEqual = 175
    SpvOpULessThan = 176
    SpvOpSLessThan = 177
    SpvOpULessThanEqual = 178
    SpvOpSLessThanEqual = 179
    SpvOpFOrdEqual = 180
    SpvOpFUnordEqual = 181
    SpvOpFOrdNotEqual = 182
    SpvOpFUnordNotEqual = 183
    SpvOpFOrdLessThan = 184
    SpvOpFUnordLessThan = 185
    SpvOpFOrdGreaterThan = 186
    SpvOpFUnordGreaterThan = 187
    SpvOpFOrdLessThanEqual = 188
    SpvOpFUnordLessThanEqual = 189
    SpvOpFOrdGreaterThanEqual = 190
    SpvOpFUnordGreaterThanEqual = 191
    SpvOpShiftRightLogical = 194
    SpvOpShiftRightArithmetic = 195
    SpvOpShiftLeftLogical = 196
    SpvOpBitwiseOr = 197
    SpvOpBitwiseXor = 198
    SpvOpBitwiseAnd = 199
    SpvOpNot = 200
    SpvOpBitFieldInsert = 201
    SpvOpBitFieldSExtract = 202
    SpvOpBitFieldUExtract = 203
    SpvOpBitReverse = 204
    SpvOpBitCount = 205
    SpvOpDPdx = 207
    SpvOpDPdy = 208
    SpvOpFwidth = 209
    SpvOpDPdxFine = 210
    SpvOpDPdyFine = 211
    SpvOpFwidthFine = 212
    SpvOpDPdxCoarse = 213
    SpvOpDPdyCoarse = 214
    SpvOpFwidthCoarse = 215
    SpvOpEmitVertex = 218
    SpvOpEndPrimitive = 219
    SpvOpEmitStreamVertex = 220
    SpvOpEndStreamPrimitive = 221
    SpvOpControlBarrier = 224
    SpvOpMemoryBarrier = 225
    SpvOpAtomicLoad = 227
    SpvOpAtomicStore = 228
    SpvOpAtomicExchange = 229
    SpvOpAtomicCompareExchange = 230
    SpvOpAtomicCompareExchangeWeak = 231
    SpvOpAtomicIIncrement = 232
    SpvOpAtomicIDecrement = 233
    SpvOpAtomicIAdd = 234
    SpvOpAtomicISub = 235
    SpvOpAtomicSMin = 236
    SpvOpAtomicUMin = 237
    SpvOpAtomicSMax = 238
    SpvOpAtomicUMax = 239
    SpvOpAtomicAnd = 240
    SpvOpAtomicOr = 241
    SpvOpAtomicXor = 242
    SpvOpPhi = 245
    SpvOpLoopMerge = 246
    SpvOpSelectionMerge = 247
    SpvOpLabel = 248
    SpvOpBranch = 249
    SpvOpBranchConditional = 250
    SpvOpSwitch = 251
    SpvOpKill = 252
    SpvOpReturn = 253
    SpvOpReturnValue = 254
    SpvOpUnreachable = 255
    SpvOpLifetimeStart = 256
    SpvOpLifetimeStop = 257
    SpvOpGroupAsyncCopy = 259
    SpvOpGroupWaitEvents = 260
    SpvOpGroupAll = 261
    SpvOpGroupAny = 262
    SpvOpGroupBroadcast = 263
    SpvOpGroupIAdd = 264
    SpvOpGroupFAdd = 265
    SpvOpGroupFMin = 266
    SpvOpGroupUMin = 267
    SpvOpGroupSMin = 268
    SpvOpGroupFMax = 269
    SpvOpGroupUMax = 270
    SpvOpGroupSMax = 271
    SpvOpReadPipe = 274
    SpvOpWritePipe = 275
    SpvOpReservedReadPipe = 276
    SpvOpReservedWritePipe = 277
    SpvOpReserveReadPipePackets = 278
    SpvOpReserveWritePipePackets = 279
    SpvOpCommitReadPipe = 280
    SpvOpCommitWritePipe = 281
    SpvOpIsValidReserveId = 282
    SpvOpGetNumPipePackets = 283
    SpvOpGetMaxPipePackets = 284
    SpvOpGroupReserveReadPipePackets = 285
    SpvOpGroupReserveWritePipePackets = 286
    SpvOpGroupCommitReadPipe = 287
    SpvOpGroupCommitWritePipe = 288
    SpvOpEnqueueMarker = 291
    SpvOpEnqueueKernel = 292
    SpvOpGetKernelNDrangeSubGroupCount = 293
    SpvOpGetKernelNDrangeMaxSubGroupSize = 294
    SpvOpGetKernelWorkGroupSize = 295
    SpvOpGetKernelPreferredWorkGroupSizeMultiple = 296
    SpvOpRetainEvent = 297
    SpvOpReleaseEvent = 298
    SpvOpCreateUserEvent = 299
    SpvOpIsValidEvent = 300
    SpvOpSetUserEventStatus = 301
    SpvOpCaptureEventProfilingInfo = 302
    SpvOpGetDefaultQueue = 303
    SpvOpBuildNDRange = 304
    SpvOpImageSparseSampleImplicitLod = 305
    SpvOpImageSparseSampleExplicitLod = 306
    SpvOpImageSparseSampleDrefImplicitLod = 307
    SpvOpImageSparseSampleDrefExplicitLod = 308
    SpvOpImageSparseSampleProjImplicitLod = 309
    SpvOpImageSparseSampleProjExplicitLod = 310
    SpvOpImageSparseSampleProjDrefImplicitLod = 311
    SpvOpImageSparseSampleProjDrefExplicitLod = 312
    SpvOpImageSparseFetch = 313
    SpvOpImageSparseGather = 314
    SpvOpImageSparseDrefGather = 315
    SpvOpImageSparseTexelsResident = 316
    SpvOpNoLine = 317
    SpvOpAtomicFlagTestAndSet = 318
    SpvOpAtomicFlagClear = 319
    SpvOpImageSparseRead = 320
    SpvOpSubgroupBallotKHR = 4421
    SpvOpSubgroupFirstInvocationKHR = 4422
    SpvOpMax = 2147483647
end


const SpvOp = SpvOp_
