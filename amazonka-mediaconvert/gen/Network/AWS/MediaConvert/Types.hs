{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types
    (
    -- * Service Configuration
      mediaConvert

    -- * Errors
    , _InternalServerErrorException
    , _TooManyRequestsException
    , _ForbiddenException
    , _BadRequestException
    , _NotFoundException
    , _ConflictException

    -- * AacAudioDescriptionBroadcasterMix
    , AacAudioDescriptionBroadcasterMix (..)

    -- * AacCodecProfile
    , AacCodecProfile (..)

    -- * AacCodingMode
    , AacCodingMode (..)

    -- * AacRateControlMode
    , AacRateControlMode (..)

    -- * AacRawFormat
    , AacRawFormat (..)

    -- * AacSpecification
    , AacSpecification (..)

    -- * AacVbrQuality
    , AacVbrQuality (..)

    -- * Ac3BitstreamMode
    , Ac3BitstreamMode (..)

    -- * Ac3CodingMode
    , Ac3CodingMode (..)

    -- * Ac3DynamicRangeCompressionProfile
    , Ac3DynamicRangeCompressionProfile (..)

    -- * Ac3LfeFilter
    , Ac3LfeFilter (..)

    -- * Ac3MetadataControl
    , Ac3MetadataControl (..)

    -- * AfdSignaling
    , AfdSignaling (..)

    -- * AntiAlias
    , AntiAlias (..)

    -- * AudioCodec
    , AudioCodec (..)

    -- * AudioDefaultSelection
    , AudioDefaultSelection (..)

    -- * AudioLanguageCodeControl
    , AudioLanguageCodeControl (..)

    -- * AudioNormalizationAlgorithm
    , AudioNormalizationAlgorithm (..)

    -- * AudioNormalizationAlgorithmControl
    , AudioNormalizationAlgorithmControl (..)

    -- * AudioNormalizationLoudnessLogging
    , AudioNormalizationLoudnessLogging (..)

    -- * AudioNormalizationPeakCalculation
    , AudioNormalizationPeakCalculation (..)

    -- * AudioSelectorType
    , AudioSelectorType (..)

    -- * AudioTypeControl
    , AudioTypeControl (..)

    -- * BurninSubtitleAlignment
    , BurninSubtitleAlignment (..)

    -- * BurninSubtitleBackgroundColor
    , BurninSubtitleBackgroundColor (..)

    -- * BurninSubtitleFontColor
    , BurninSubtitleFontColor (..)

    -- * BurninSubtitleOutlineColor
    , BurninSubtitleOutlineColor (..)

    -- * BurninSubtitleShadowColor
    , BurninSubtitleShadowColor (..)

    -- * BurninSubtitleTeletextSpacing
    , BurninSubtitleTeletextSpacing (..)

    -- * CaptionDestinationType
    , CaptionDestinationType (..)

    -- * CaptionSourceType
    , CaptionSourceType (..)

    -- * ColorMetadata
    , ColorMetadata (..)

    -- * ColorSpace
    , ColorSpace (..)

    -- * ColorSpaceConversion
    , ColorSpaceConversion (..)

    -- * ColorSpaceUsage
    , ColorSpaceUsage (..)

    -- * ContainerType
    , ContainerType (..)

    -- * DashIsoHbbtvCompliance
    , DashIsoHbbtvCompliance (..)

    -- * DashIsoSegmentControl
    , DashIsoSegmentControl (..)

    -- * DeinterlaceAlgorithm
    , DeinterlaceAlgorithm (..)

    -- * DeinterlacerControl
    , DeinterlacerControl (..)

    -- * DeinterlacerMode
    , DeinterlacerMode (..)

    -- * DropFrameTimecode
    , DropFrameTimecode (..)

    -- * DvbSubtitleAlignment
    , DvbSubtitleAlignment (..)

    -- * DvbSubtitleBackgroundColor
    , DvbSubtitleBackgroundColor (..)

    -- * DvbSubtitleFontColor
    , DvbSubtitleFontColor (..)

    -- * DvbSubtitleOutlineColor
    , DvbSubtitleOutlineColor (..)

    -- * DvbSubtitleShadowColor
    , DvbSubtitleShadowColor (..)

    -- * DvbSubtitleTeletextSpacing
    , DvbSubtitleTeletextSpacing (..)

    -- * Eac3AttenuationControl
    , Eac3AttenuationControl (..)

    -- * Eac3BitstreamMode
    , Eac3BitstreamMode (..)

    -- * Eac3CodingMode
    , Eac3CodingMode (..)

    -- * Eac3DcFilter
    , Eac3DcFilter (..)

    -- * Eac3DynamicRangeCompressionLine
    , Eac3DynamicRangeCompressionLine (..)

    -- * Eac3DynamicRangeCompressionRf
    , Eac3DynamicRangeCompressionRf (..)

    -- * Eac3LfeControl
    , Eac3LfeControl (..)

    -- * Eac3LfeFilter
    , Eac3LfeFilter (..)

    -- * Eac3MetadataControl
    , Eac3MetadataControl (..)

    -- * Eac3PassthroughControl
    , Eac3PassthroughControl (..)

    -- * Eac3PhaseControl
    , Eac3PhaseControl (..)

    -- * Eac3StereoDownmix
    , Eac3StereoDownmix (..)

    -- * Eac3SurroundExMode
    , Eac3SurroundExMode (..)

    -- * Eac3SurroundMode
    , Eac3SurroundMode (..)

    -- * EmbeddedConvert608To708
    , EmbeddedConvert608To708 (..)

    -- * F4vMoovPlacement
    , F4vMoovPlacement (..)

    -- * FileSourceConvert608To708
    , FileSourceConvert608To708 (..)

    -- * H264AdaptiveQuantization
    , H264AdaptiveQuantization (..)

    -- * H264CodecLevel
    , H264CodecLevel (..)

    -- * H264CodecProfile
    , H264CodecProfile (..)

    -- * H264EntropyEncoding
    , H264EntropyEncoding (..)

    -- * H264FieldEncoding
    , H264FieldEncoding (..)

    -- * H264FlickerAdaptiveQuantization
    , H264FlickerAdaptiveQuantization (..)

    -- * H264FramerateControl
    , H264FramerateControl (..)

    -- * H264FramerateConversionAlgorithm
    , H264FramerateConversionAlgorithm (..)

    -- * H264GopBReference
    , H264GopBReference (..)

    -- * H264GopSizeUnits
    , H264GopSizeUnits (..)

    -- * H264InterlaceMode
    , H264InterlaceMode (..)

    -- * H264ParControl
    , H264ParControl (..)

    -- * H264QualityTuningLevel
    , H264QualityTuningLevel (..)

    -- * H264RateControlMode
    , H264RateControlMode (..)

    -- * H264RepeatPps
    , H264RepeatPps (..)

    -- * H264SceneChangeDetect
    , H264SceneChangeDetect (..)

    -- * H264SlowPal
    , H264SlowPal (..)

    -- * H264SpatialAdaptiveQuantization
    , H264SpatialAdaptiveQuantization (..)

    -- * H264Syntax
    , H264Syntax (..)

    -- * H264Telecine
    , H264Telecine (..)

    -- * H264TemporalAdaptiveQuantization
    , H264TemporalAdaptiveQuantization (..)

    -- * H264UnregisteredSeiTimecode
    , H264UnregisteredSeiTimecode (..)

    -- * H265AdaptiveQuantization
    , H265AdaptiveQuantization (..)

    -- * H265AlternateTransferFunctionSei
    , H265AlternateTransferFunctionSei (..)

    -- * H265CodecLevel
    , H265CodecLevel (..)

    -- * H265CodecProfile
    , H265CodecProfile (..)

    -- * H265FlickerAdaptiveQuantization
    , H265FlickerAdaptiveQuantization (..)

    -- * H265FramerateControl
    , H265FramerateControl (..)

    -- * H265FramerateConversionAlgorithm
    , H265FramerateConversionAlgorithm (..)

    -- * H265GopBReference
    , H265GopBReference (..)

    -- * H265GopSizeUnits
    , H265GopSizeUnits (..)

    -- * H265InterlaceMode
    , H265InterlaceMode (..)

    -- * H265ParControl
    , H265ParControl (..)

    -- * H265QualityTuningLevel
    , H265QualityTuningLevel (..)

    -- * H265RateControlMode
    , H265RateControlMode (..)

    -- * H265SampleAdaptiveOffsetFilterMode
    , H265SampleAdaptiveOffsetFilterMode (..)

    -- * H265SceneChangeDetect
    , H265SceneChangeDetect (..)

    -- * H265SlowPal
    , H265SlowPal (..)

    -- * H265SpatialAdaptiveQuantization
    , H265SpatialAdaptiveQuantization (..)

    -- * H265Telecine
    , H265Telecine (..)

    -- * H265TemporalAdaptiveQuantization
    , H265TemporalAdaptiveQuantization (..)

    -- * H265TemporalIds
    , H265TemporalIds (..)

    -- * H265Tiles
    , H265Tiles (..)

    -- * H265UnregisteredSeiTimecode
    , H265UnregisteredSeiTimecode (..)

    -- * HlsAdMarkers
    , HlsAdMarkers (..)

    -- * HlsAudioTrackType
    , HlsAudioTrackType (..)

    -- * HlsCaptionLanguageSetting
    , HlsCaptionLanguageSetting (..)

    -- * HlsClientCache
    , HlsClientCache (..)

    -- * HlsCodecSpecification
    , HlsCodecSpecification (..)

    -- * HlsDirectoryStructure
    , HlsDirectoryStructure (..)

    -- * HlsEncryptionType
    , HlsEncryptionType (..)

    -- * HlsIFrameOnlyManifest
    , HlsIFrameOnlyManifest (..)

    -- * HlsInitializationVectorInManifest
    , HlsInitializationVectorInManifest (..)

    -- * HlsKeyProviderType
    , HlsKeyProviderType (..)

    -- * HlsManifestCompression
    , HlsManifestCompression (..)

    -- * HlsManifestDurationFormat
    , HlsManifestDurationFormat (..)

    -- * HlsOutputSelection
    , HlsOutputSelection (..)

    -- * HlsProgramDateTime
    , HlsProgramDateTime (..)

    -- * HlsSegmentControl
    , HlsSegmentControl (..)

    -- * HlsStreamInfResolution
    , HlsStreamInfResolution (..)

    -- * HlsTimedMetadataId3Frame
    , HlsTimedMetadataId3Frame (..)

    -- * InputDeblockFilter
    , InputDeblockFilter (..)

    -- * InputDenoiseFilter
    , InputDenoiseFilter (..)

    -- * InputFilterEnable
    , InputFilterEnable (..)

    -- * InputPsiControl
    , InputPsiControl (..)

    -- * InputTimecodeSource
    , InputTimecodeSource (..)

    -- * JobStatus
    , JobStatus (..)

    -- * JobTemplateListBy
    , JobTemplateListBy (..)

    -- * LanguageCode
    , LanguageCode (..)

    -- * M2tsAudioBufferModel
    , M2tsAudioBufferModel (..)

    -- * M2tsBufferModel
    , M2tsBufferModel (..)

    -- * M2tsEbpAudioInterval
    , M2tsEbpAudioInterval (..)

    -- * M2tsEbpPlacement
    , M2tsEbpPlacement (..)

    -- * M2tsEsRateInPes
    , M2tsEsRateInPes (..)

    -- * M2tsNielsenId3
    , M2tsNielsenId3 (..)

    -- * M2tsPcrControl
    , M2tsPcrControl (..)

    -- * M2tsRateMode
    , M2tsRateMode (..)

    -- * M2tsScte35Source
    , M2tsScte35Source (..)

    -- * M2tsSegmentationMarkers
    , M2tsSegmentationMarkers (..)

    -- * M2tsSegmentationStyle
    , M2tsSegmentationStyle (..)

    -- * M3u8NielsenId3
    , M3u8NielsenId3 (..)

    -- * M3u8PcrControl
    , M3u8PcrControl (..)

    -- * M3u8Scte35Source
    , M3u8Scte35Source (..)

    -- * MovClapAtom
    , MovClapAtom (..)

    -- * MovCslgAtom
    , MovCslgAtom (..)

    -- * MovMpeg2FourCCControl
    , MovMpeg2FourCCControl (..)

    -- * MovPaddingControl
    , MovPaddingControl (..)

    -- * MovReference
    , MovReference (..)

    -- * Mp4CslgAtom
    , Mp4CslgAtom (..)

    -- * Mp4FreeSpaceBox
    , Mp4FreeSpaceBox (..)

    -- * Mp4MoovPlacement
    , Mp4MoovPlacement (..)

    -- * Mpeg2AdaptiveQuantization
    , Mpeg2AdaptiveQuantization (..)

    -- * Mpeg2CodecLevel
    , Mpeg2CodecLevel (..)

    -- * Mpeg2CodecProfile
    , Mpeg2CodecProfile (..)

    -- * Mpeg2FramerateControl
    , Mpeg2FramerateControl (..)

    -- * Mpeg2FramerateConversionAlgorithm
    , Mpeg2FramerateConversionAlgorithm (..)

    -- * Mpeg2GopSizeUnits
    , Mpeg2GopSizeUnits (..)

    -- * Mpeg2InterlaceMode
    , Mpeg2InterlaceMode (..)

    -- * Mpeg2IntraDcPrecision
    , Mpeg2IntraDcPrecision (..)

    -- * Mpeg2ParControl
    , Mpeg2ParControl (..)

    -- * Mpeg2QualityTuningLevel
    , Mpeg2QualityTuningLevel (..)

    -- * Mpeg2RateControlMode
    , Mpeg2RateControlMode (..)

    -- * Mpeg2SceneChangeDetect
    , Mpeg2SceneChangeDetect (..)

    -- * Mpeg2SlowPal
    , Mpeg2SlowPal (..)

    -- * Mpeg2SpatialAdaptiveQuantization
    , Mpeg2SpatialAdaptiveQuantization (..)

    -- * Mpeg2Syntax
    , Mpeg2Syntax (..)

    -- * Mpeg2Telecine
    , Mpeg2Telecine (..)

    -- * Mpeg2TemporalAdaptiveQuantization
    , Mpeg2TemporalAdaptiveQuantization (..)

    -- * MsSmoothAudioDeduplication
    , MsSmoothAudioDeduplication (..)

    -- * MsSmoothManifestEncoding
    , MsSmoothManifestEncoding (..)

    -- * NoiseReducerFilter
    , NoiseReducerFilter (..)

    -- * Order
    , Order (..)

    -- * OutputGroupType
    , OutputGroupType (..)

    -- * OutputSdt
    , OutputSdt (..)

    -- * PresetListBy
    , PresetListBy (..)

    -- * ProresCodecProfile
    , ProresCodecProfile (..)

    -- * ProresFramerateControl
    , ProresFramerateControl (..)

    -- * ProresFramerateConversionAlgorithm
    , ProresFramerateConversionAlgorithm (..)

    -- * ProresInterlaceMode
    , ProresInterlaceMode (..)

    -- * ProresParControl
    , ProresParControl (..)

    -- * ProresSlowPal
    , ProresSlowPal (..)

    -- * ProresTelecine
    , ProresTelecine (..)

    -- * QueueListBy
    , QueueListBy (..)

    -- * QueueStatus
    , QueueStatus (..)

    -- * RespondToAfd
    , RespondToAfd (..)

    -- * ScalingBehavior
    , ScalingBehavior (..)

    -- * SccDestinationFramerate
    , SccDestinationFramerate (..)

    -- * TimecodeBurninPosition
    , TimecodeBurninPosition (..)

    -- * TimecodeSource
    , TimecodeSource (..)

    -- * TimedMetadata
    , TimedMetadata (..)

    -- * TtmlStylePassthrough
    , TtmlStylePassthrough (..)

    -- * Type
    , Type (..)

    -- * VideoCodec
    , VideoCodec (..)

    -- * VideoTimecodeInsertion
    , VideoTimecodeInsertion (..)

    -- * AacSettings
    , AacSettings
    , aacSettings
    , assAudioDescriptionBroadcasterMix
    , assRawFormat
    , assCodingMode
    , assRateControlMode
    , assSampleRate
    , assSpecification
    , assCodecProfile
    , assBitrate
    , assVbrQuality

    -- * Ac3Settings
    , Ac3Settings
    , ac3Settings
    , aLfeFilter
    , aMetadataControl
    , aBitstreamMode
    , aCodingMode
    , aSampleRate
    , aDynamicRangeCompressionProfile
    , aBitrate
    , aDialnorm

    -- * AiffSettings
    , AiffSettings
    , aiffSettings
    , asBitDepth
    , asChannels
    , asSampleRate

    -- * AncillarySourceSettings
    , AncillarySourceSettings
    , ancillarySourceSettings
    , assSourceAncillaryChannelNumber

    -- * AudioCodecSettings
    , AudioCodecSettings
    , audioCodecSettings
    , acsAiffSettings
    , acsCodec
    , acsAc3Settings
    , acsMp2Settings
    , acsWavSettings
    , acsAacSettings
    , acsEac3Settings

    -- * AudioDescription
    , AudioDescription
    , audioDescription
    , adAudioSourceName
    , adLanguageCode
    , adAudioType
    , adAudioNormalizationSettings
    , adLanguageCodeControl
    , adCodecSettings
    , adStreamName
    , adRemixSettings
    , adAudioTypeControl

    -- * AudioNormalizationSettings
    , AudioNormalizationSettings
    , audioNormalizationSettings
    , ansAlgorithmControl
    , ansTargetLkfs
    , ansPeakCalculation
    , ansCorrectionGateLevel
    , ansAlgorithm
    , ansLoudnessLogging

    -- * AudioSelector
    , AudioSelector
    , audioSelector
    , asTracks
    , asProgramSelection
    , asLanguageCode
    , asOffset
    , asDefaultSelection
    , asPids
    , asSelectorType
    , asExternalAudioFileInput
    , asRemixSettings

    -- * AudioSelectorGroup
    , AudioSelectorGroup
    , audioSelectorGroup
    , asgAudioSelectorNames

    -- * AvailBlanking
    , AvailBlanking
    , availBlanking
    , abAvailBlankingImage

    -- * BurninDestinationSettings
    , BurninDestinationSettings
    , burninDestinationSettings
    , bdsBackgroundOpacity
    , bdsFontOpacity
    , bdsShadowYOffset
    , bdsFontResolution
    , bdsYPosition
    , bdsBackgroundColor
    , bdsShadowXOffset
    , bdsFontSize
    , bdsXPosition
    , bdsTeletextSpacing
    , bdsAlignment
    , bdsShadowOpacity
    , bdsOutlineColor
    , bdsOutlineSize
    , bdsShadowColor
    , bdsFontColor

    -- * CaptionDescription
    , CaptionDescription
    , captionDescription
    , cdCaptionSelectorName
    , cdLanguageCode
    , cdDestinationSettings
    , cdLanguageDescription

    -- * CaptionDescriptionPreset
    , CaptionDescriptionPreset
    , captionDescriptionPreset
    , cdpLanguageCode
    , cdpDestinationSettings
    , cdpLanguageDescription

    -- * CaptionDestinationSettings
    , CaptionDestinationSettings
    , captionDestinationSettings
    , cdsTeletextDestinationSettings
    , cdsDvbSubDestinationSettings
    , cdsTtmlDestinationSettings
    , cdsDestinationType
    , cdsSccDestinationSettings
    , cdsBurninDestinationSettings

    -- * CaptionSelector
    , CaptionSelector
    , captionSelector
    , csLanguageCode
    , csSourceSettings

    -- * CaptionSourceSettings
    , CaptionSourceSettings
    , captionSourceSettings
    , cssTeletextSourceSettings
    , cssSourceType
    , cssFileSourceSettings
    , cssDvbSubSourceSettings
    , cssAncillarySourceSettings
    , cssEmbeddedSourceSettings

    -- * ChannelMapping
    , ChannelMapping
    , channelMapping
    , cmOutputChannels

    -- * ColorCorrector
    , ColorCorrector
    , colorCorrector
    , ccSaturation
    , ccHue
    , ccColorSpaceConversion
    , ccHdr10Metadata
    , ccContrast
    , ccBrightness

    -- * ContainerSettings
    , ContainerSettings
    , containerSettings
    , csM2tsSettings
    , csM3u8Settings
    , csMovSettings
    , csMp4Settings
    , csContainer
    , csF4vSettings

    -- * DashIsoEncryptionSettings
    , DashIsoEncryptionSettings
    , dashIsoEncryptionSettings
    , diesSpekeKeyProvider

    -- * DashIsoGroupSettings
    , DashIsoGroupSettings
    , dashIsoGroupSettings
    , digsFragmentLength
    , digsSegmentControl
    , digsDestination
    , digsHbbtvCompliance
    , digsMinBufferTime
    , digsBaseURL
    , digsEncryption
    , digsSegmentLength

    -- * Deinterlacer
    , Deinterlacer
    , deinterlacer
    , dControl
    , dMode
    , dAlgorithm

    -- * DvbNitSettings
    , DvbNitSettings
    , dvbNitSettings
    , dnsNetworkId
    , dnsNetworkName
    , dnsNitInterval

    -- * DvbSdtSettings
    , DvbSdtSettings
    , dvbSdtSettings
    , dssSdtInterval
    , dssServiceProviderName
    , dssOutputSdt
    , dssServiceName

    -- * DvbSubDestinationSettings
    , DvbSubDestinationSettings
    , dvbSubDestinationSettings
    , dsdsBackgroundOpacity
    , dsdsFontOpacity
    , dsdsShadowYOffset
    , dsdsFontResolution
    , dsdsYPosition
    , dsdsBackgroundColor
    , dsdsShadowXOffset
    , dsdsFontSize
    , dsdsXPosition
    , dsdsTeletextSpacing
    , dsdsAlignment
    , dsdsShadowOpacity
    , dsdsOutlineColor
    , dsdsOutlineSize
    , dsdsShadowColor
    , dsdsFontColor

    -- * DvbSubSourceSettings
    , DvbSubSourceSettings
    , dvbSubSourceSettings
    , dsssPid

    -- * DvbTdtSettings
    , DvbTdtSettings
    , dvbTdtSettings
    , dtsTdtInterval

    -- * Eac3Settings
    , Eac3Settings
    , eac3Settings
    , esStereoDownmix
    , esLoRoCenterMixLevel
    , esLtRtCenterMixLevel
    , esLfeFilter
    , esDynamicRangeCompressionLine
    , esLtRtSurroundMixLevel
    , esMetadataControl
    , esLoRoSurroundMixLevel
    , esSurroundMode
    , esAttenuationControl
    , esPassthroughControl
    , esBitstreamMode
    , esLfeControl
    , esDynamicRangeCompressionRf
    , esCodingMode
    , esSampleRate
    , esDcFilter
    , esBitrate
    , esPhaseControl
    , esSurroundExMode
    , esDialnorm

    -- * EmbeddedSourceSettings
    , EmbeddedSourceSettings
    , embeddedSourceSettings
    , essConvert608To708
    , essSource608TrackNumber
    , essSource608ChannelNumber

    -- * Endpoint
    , Endpoint
    , endpoint
    , eURL

    -- * F4vSettings
    , F4vSettings
    , f4vSettings
    , fsMoovPlacement

    -- * FileGroupSettings
    , FileGroupSettings
    , fileGroupSettings
    , fgsDestination

    -- * FileSourceSettings
    , FileSourceSettings
    , fileSourceSettings
    , fssConvert608To708
    , fssTimeDelta
    , fssSourceFile

    -- * FrameCaptureSettings
    , FrameCaptureSettings
    , frameCaptureSettings
    , fcsQuality
    , fcsFramerateDenominator
    , fcsMaxCaptures
    , fcsFramerateNumerator

    -- * H264Settings
    , H264Settings
    , h264Settings
    , hUnregisteredSeiTimecode
    , hQualityTuningLevel
    , hTemporalAdaptiveQuantization
    , hSceneChangeDetect
    , hHrdBufferInitialFillPercentage
    , hSlowPal
    , hParNumerator
    , hGopSize
    , hNumberBFramesBetweenReferenceFrames
    , hGopSizeUnits
    , hHrdBufferSize
    , hSlices
    , hRateControlMode
    , hNumberReferenceFrames
    , hTelecine
    , hMinIInterval
    , hInterlaceMode
    , hParControl
    , hRepeatPps
    , hFlickerAdaptiveQuantization
    , hSoftness
    , hCodecProfile
    , hBitrate
    , hFramerateDenominator
    , hFramerateConversionAlgorithm
    , hCodecLevel
    , hEntropyEncoding
    , hFramerateControl
    , hAdaptiveQuantization
    , hFramerateNumerator
    , hGopBReference
    , hMaxBitrate
    , hSyntax
    , hFieldEncoding
    , hGopClosedCadence
    , hParDenominator
    , hSpatialAdaptiveQuantization

    -- * H265Settings
    , H265Settings
    , h265Settings
    , hsUnregisteredSeiTimecode
    , hsQualityTuningLevel
    , hsTemporalAdaptiveQuantization
    , hsSceneChangeDetect
    , hsHrdBufferInitialFillPercentage
    , hsTiles
    , hsSlowPal
    , hsTemporalIds
    , hsParNumerator
    , hsGopSize
    , hsNumberBFramesBetweenReferenceFrames
    , hsGopSizeUnits
    , hsHrdBufferSize
    , hsSlices
    , hsAlternateTransferFunctionSei
    , hsRateControlMode
    , hsNumberReferenceFrames
    , hsTelecine
    , hsMinIInterval
    , hsInterlaceMode
    , hsParControl
    , hsFlickerAdaptiveQuantization
    , hsSampleAdaptiveOffsetFilterMode
    , hsCodecProfile
    , hsBitrate
    , hsFramerateDenominator
    , hsFramerateConversionAlgorithm
    , hsCodecLevel
    , hsFramerateControl
    , hsAdaptiveQuantization
    , hsFramerateNumerator
    , hsGopBReference
    , hsMaxBitrate
    , hsGopClosedCadence
    , hsParDenominator
    , hsSpatialAdaptiveQuantization

    -- * Hdr10Metadata
    , Hdr10Metadata
    , hdr10Metadata
    , hmRedPrimaryX
    , hmBluePrimaryX
    , hmMaxFrameAverageLightLevel
    , hmWhitePointY
    , hmMaxContentLightLevel
    , hmWhitePointX
    , hmBluePrimaryY
    , hmGreenPrimaryY
    , hmGreenPrimaryX
    , hmMinLuminance
    , hmRedPrimaryY
    , hmMaxLuminance

    -- * HlsCaptionLanguageMapping
    , HlsCaptionLanguageMapping
    , hlsCaptionLanguageMapping
    , hclmLanguageCode
    , hclmLanguageDescription
    , hclmCaptionChannel

    -- * HlsEncryptionSettings
    , HlsEncryptionSettings
    , hlsEncryptionSettings
    , hesEncryptionMethod
    , hesConstantInitializationVector
    , hesType
    , hesStaticKeyProvider
    , hesSpekeKeyProvider
    , hesInitializationVectorInManifest

    -- * HlsGroupSettings
    , HlsGroupSettings
    , hlsGroupSettings
    , hgsDirectoryStructure
    , hgsSegmentControl
    , hgsDestination
    , hgsTimedMetadataId3Period
    , hgsMinSegmentLength
    , hgsProgramDateTime
    , hgsProgramDateTimePeriod
    , hgsCodecSpecification
    , hgsCaptionLanguageMappings
    , hgsBaseURL
    , hgsAdMarkers
    , hgsEncryption
    , hgsSegmentLength
    , hgsTimedMetadataId3Frame
    , hgsOutputSelection
    , hgsCaptionLanguageSetting
    , hgsSegmentsPerSubdirectory
    , hgsManifestDurationFormat
    , hgsClientCache
    , hgsTimestampDeltaMilliseconds
    , hgsStreamInfResolution
    , hgsManifestCompression

    -- * HlsSettings
    , HlsSettings
    , hlsSettings
    , hsAudioRenditionSets
    , hsIFrameOnlyManifest
    , hsAudioGroupId
    , hsSegmentModifier
    , hsAudioTrackType

    -- * Id3Insertion
    , Id3Insertion
    , id3Insertion
    , iiId3
    , iiTimecode

    -- * ImageInserter
    , ImageInserter
    , imageInserter
    , iiInsertableImages

    -- * Input
    , Input
    , input
    , iVideoSelector
    , iProgramNumber
    , iAudioSelectorGroups
    , iTimecodeSource
    , iAudioSelectors
    , iDeblockFilter
    , iInputClippings
    , iDenoiseFilter
    , iFilterStrength
    , iPsiControl
    , iCaptionSelectors
    , iFileInput
    , iFilterEnable

    -- * InputClipping
    , InputClipping
    , inputClipping
    , icEndTimecode
    , icStartTimecode

    -- * InputTemplate
    , InputTemplate
    , inputTemplate
    , itVideoSelector
    , itProgramNumber
    , itAudioSelectorGroups
    , itTimecodeSource
    , itAudioSelectors
    , itDeblockFilter
    , itInputClippings
    , itDenoiseFilter
    , itFilterStrength
    , itPsiControl
    , itCaptionSelectors
    , itFilterEnable

    -- * InsertableImage
    , InsertableImage
    , insertableImage
    , iiImageX
    , iiHeight
    , iiStartTime
    , iiFadeOut
    , iiWidth
    , iiOpacity
    , iiLayer
    , iiDuration
    , iiImageY
    , iiImageInserterInput
    , iiFadeIn

    -- * Job
    , Job
    , job
    , jStatus
    , jJobTemplate
    , jSettings
    , jARN
    , jCreatedAt
    , jQueue
    , jUserMetadata
    , jRole
    , jOutputGroupDetails
    , jErrorCode
    , jId
    , jTiming
    , jErrorMessage

    -- * JobSettings
    , JobSettings
    , jobSettings
    , jsInputs
    , jsTimedMetadataInsertion
    , jsNielsenConfiguration
    , jsAvailBlanking
    , jsTimecodeConfig
    , jsOutputGroups
    , jsAdAvailOffset

    -- * JobTemplate
    , JobTemplate
    , jobTemplate
    , jtLastUpdated
    , jtSettings
    , jtARN
    , jtCreatedAt
    , jtCategory
    , jtQueue
    , jtName
    , jtType
    , jtDescription

    -- * JobTemplateSettings
    , JobTemplateSettings
    , jobTemplateSettings
    , jtsInputs
    , jtsTimedMetadataInsertion
    , jtsNielsenConfiguration
    , jtsAvailBlanking
    , jtsTimecodeConfig
    , jtsOutputGroups
    , jtsAdAvailOffset

    -- * M2tsSettings
    , M2tsSettings
    , m2tsSettings
    , mPmtPid
    , mVideoPid
    , mBufferModel
    , mProgramNumber
    , mScte35Pid
    , mMinEbpInterval
    , mTransportStreamId
    , mMaxPcrInterval
    , mFragmentTime
    , mPrivateMetadataPid
    , mPmtInterval
    , mDvbSdtSettings
    , mNullPacketBitrate
    , mAudioBufferModel
    , mTimedMetadataPid
    , mAudioFramesPerPes
    , mPcrPid
    , mSegmentationMarkers
    , mDvbSubPids
    , mScte35Source
    , mPatInterval
    , mEsRateInPes
    , mBitrate
    , mAudioPids
    , mDvbTeletextPid
    , mNielsenId3
    , mSegmentationTime
    , mEbpAudioInterval
    , mDvbNitSettings
    , mPcrControl
    , mEbpPlacement
    , mRateMode
    , mSegmentationStyle
    , mDvbTdtSettings

    -- * M3u8Settings
    , M3u8Settings
    , m3u8Settings
    , msPmtPid
    , msVideoPid
    , msProgramNumber
    , msScte35Pid
    , msTransportStreamId
    , msPrivateMetadataPid
    , msPmtInterval
    , msTimedMetadataPid
    , msAudioFramesPerPes
    , msPcrPid
    , msTimedMetadata
    , msScte35Source
    , msPatInterval
    , msAudioPids
    , msNielsenId3
    , msPcrControl

    -- * MovSettings
    , MovSettings
    , movSettings
    , msReference
    , msCslgAtom
    , msMpeg2FourCCControl
    , msPaddingControl
    , msClapAtom

    -- * Mp2Settings
    , Mp2Settings
    , mp2Settings
    , mssChannels
    , mssSampleRate
    , mssBitrate

    -- * Mp4Settings
    , Mp4Settings
    , mp4Settings
    , mMoovPlacement
    , mFreeSpaceBox
    , mMp4MajorBrand
    , mCslgAtom

    -- * Mpeg2Settings
    , Mpeg2Settings
    , mpeg2Settings
    , msQualityTuningLevel
    , msTemporalAdaptiveQuantization
    , msSceneChangeDetect
    , msHrdBufferInitialFillPercentage
    , msSlowPal
    , msParNumerator
    , msGopSize
    , msNumberBFramesBetweenReferenceFrames
    , msGopSizeUnits
    , msHrdBufferSize
    , msRateControlMode
    , msTelecine
    , msIntraDcPrecision
    , msMinIInterval
    , msInterlaceMode
    , msParControl
    , msSoftness
    , msCodecProfile
    , msBitrate
    , msFramerateDenominator
    , msFramerateConversionAlgorithm
    , msCodecLevel
    , msFramerateControl
    , msAdaptiveQuantization
    , msFramerateNumerator
    , msMaxBitrate
    , msSyntax
    , msGopClosedCadence
    , msParDenominator
    , msSpatialAdaptiveQuantization

    -- * MsSmoothEncryptionSettings
    , MsSmoothEncryptionSettings
    , msSmoothEncryptionSettings
    , msesSpekeKeyProvider

    -- * MsSmoothGroupSettings
    , MsSmoothGroupSettings
    , msSmoothGroupSettings
    , msgsFragmentLength
    , msgsManifestEncoding
    , msgsDestination
    , msgsAudioDeduplication
    , msgsEncryption

    -- * NielsenConfiguration
    , NielsenConfiguration
    , nielsenConfiguration
    , ncBreakoutCode
    , ncDistributorId

    -- * NoiseReducer
    , NoiseReducer
    , noiseReducer
    , nrSpatialFilterSettings
    , nrFilterSettings
    , nrFilter

    -- * NoiseReducerFilterSettings
    , NoiseReducerFilterSettings
    , noiseReducerFilterSettings
    , nrfsStrength

    -- * NoiseReducerSpatialFilterSettings
    , NoiseReducerSpatialFilterSettings
    , noiseReducerSpatialFilterSettings
    , nrsfsStrength
    , nrsfsPostFilterSharpenStrength
    , nrsfsSpeed

    -- * Output
    , Output
    , output
    , oCaptionDescriptions
    , oExtension
    , oVideoDescription
    , oContainerSettings
    , oOutputSettings
    , oPreset
    , oNameModifier
    , oAudioDescriptions

    -- * OutputChannelMapping
    , OutputChannelMapping
    , outputChannelMapping
    , ocmInputChannels

    -- * OutputDetail
    , OutputDetail
    , outputDetail
    , odVideoDetails
    , odDurationInMs

    -- * OutputGroup
    , OutputGroup
    , outputGroup
    , ogOutputGroupSettings
    , ogOutputs
    , ogCustomName
    , ogName

    -- * OutputGroupDetail
    , OutputGroupDetail
    , outputGroupDetail
    , ogdOutputDetails

    -- * OutputGroupSettings
    , OutputGroupSettings
    , outputGroupSettings
    , ogsFileGroupSettings
    , ogsMsSmoothGroupSettings
    , ogsHlsGroupSettings
    , ogsType
    , ogsDashIsoGroupSettings

    -- * OutputSettings
    , OutputSettings
    , outputSettings
    , osHlsSettings

    -- * Preset
    , Preset
    , preset
    , pLastUpdated
    , pSettings
    , pARN
    , pCreatedAt
    , pCategory
    , pName
    , pType
    , pDescription

    -- * PresetSettings
    , PresetSettings
    , presetSettings
    , psCaptionDescriptions
    , psVideoDescription
    , psContainerSettings
    , psAudioDescriptions

    -- * ProresSettings
    , ProresSettings
    , proresSettings
    , psSlowPal
    , psParNumerator
    , psTelecine
    , psInterlaceMode
    , psParControl
    , psCodecProfile
    , psFramerateDenominator
    , psFramerateConversionAlgorithm
    , psFramerateControl
    , psFramerateNumerator
    , psParDenominator

    -- * Queue
    , Queue
    , queue
    , qStatus
    , qLastUpdated
    , qARN
    , qCreatedAt
    , qName
    , qType
    , qDescription

    -- * Rectangle
    , Rectangle
    , rectangle
    , rHeight
    , rWidth
    , rX
    , rY

    -- * RemixSettings
    , RemixSettings
    , remixSettings
    , rsChannelMapping
    , rsChannelsIn
    , rsChannelsOut

    -- * SccDestinationSettings
    , SccDestinationSettings
    , sccDestinationSettings
    , sdsFramerate

    -- * SpekeKeyProvider
    , SpekeKeyProvider
    , spekeKeyProvider
    , skpResourceId
    , skpURL
    , skpSystemIds

    -- * StaticKeyProvider
    , StaticKeyProvider
    , staticKeyProvider
    , sStaticKeyValue
    , sURL
    , sKeyFormat
    , sKeyFormatVersions

    -- * TeletextDestinationSettings
    , TeletextDestinationSettings
    , teletextDestinationSettings
    , tdsPageNumber

    -- * TeletextSourceSettings
    , TeletextSourceSettings
    , teletextSourceSettings
    , tssPageNumber

    -- * TimecodeBurnin
    , TimecodeBurnin
    , timecodeBurnin
    , tbPrefix
    , tbFontSize
    , tbPosition

    -- * TimecodeConfig
    , TimecodeConfig
    , timecodeConfig
    , tcStart
    , tcTimestampOffset
    , tcAnchor
    , tcSource

    -- * TimedMetadataInsertion
    , TimedMetadataInsertion
    , timedMetadataInsertion
    , tmiId3Insertions

    -- * Timing
    , Timing
    , timing
    , tStartTime
    , tFinishTime
    , tSubmitTime

    -- * TtmlDestinationSettings
    , TtmlDestinationSettings
    , ttmlDestinationSettings
    , tdsStylePassthrough

    -- * VideoCodecSettings
    , VideoCodecSettings
    , videoCodecSettings
    , vcsFrameCaptureSettings
    , vcsCodec
    , vcsH265Settings
    , vcsProresSettings
    , vcsH264Settings
    , vcsMpeg2Settings

    -- * VideoDescription
    , VideoDescription
    , videoDescription
    , vdTimecodeInsertion
    , vdHeight
    , vdAfdSignaling
    , vdSharpness
    , vdCrop
    , vdWidth
    , vdScalingBehavior
    , vdRespondToAfd
    , vdDropFrameTimecode
    , vdAntiAlias
    , vdFixedAfd
    , vdColorMetadata
    , vdCodecSettings
    , vdVideoPreprocessors
    , vdPosition

    -- * VideoDetail
    , VideoDetail
    , videoDetail
    , vdHeightInPx
    , vdWidthInPx

    -- * VideoPreprocessor
    , VideoPreprocessor
    , videoPreprocessor
    , vpTimecodeBurnin
    , vpColorCorrector
    , vpDeinterlacer
    , vpNoiseReducer
    , vpImageInserter

    -- * VideoSelector
    , VideoSelector
    , videoSelector
    , vsProgramNumber
    , vsColorSpaceUsage
    , vsHdr10Metadata
    , vsPid
    , vsColorSpace

    -- * WavSettings
    , WavSettings
    , wavSettings
    , wsBitDepth
    , wsChannels
    , wsSampleRate
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
import Network.AWS.MediaConvert.Types.AacCodecProfile
import Network.AWS.MediaConvert.Types.AacCodingMode
import Network.AWS.MediaConvert.Types.AacRateControlMode
import Network.AWS.MediaConvert.Types.AacRawFormat
import Network.AWS.MediaConvert.Types.AacSpecification
import Network.AWS.MediaConvert.Types.AacVbrQuality
import Network.AWS.MediaConvert.Types.Ac3BitstreamMode
import Network.AWS.MediaConvert.Types.Ac3CodingMode
import Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
import Network.AWS.MediaConvert.Types.Ac3LfeFilter
import Network.AWS.MediaConvert.Types.Ac3MetadataControl
import Network.AWS.MediaConvert.Types.AfdSignaling
import Network.AWS.MediaConvert.Types.AntiAlias
import Network.AWS.MediaConvert.Types.AudioCodec
import Network.AWS.MediaConvert.Types.AudioDefaultSelection
import Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithmControl
import Network.AWS.MediaConvert.Types.AudioNormalizationLoudnessLogging
import Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
import Network.AWS.MediaConvert.Types.AudioSelectorType
import Network.AWS.MediaConvert.Types.AudioTypeControl
import Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
import Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
import Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
import Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
import Network.AWS.MediaConvert.Types.CaptionDestinationType
import Network.AWS.MediaConvert.Types.CaptionSourceType
import Network.AWS.MediaConvert.Types.ColorMetadata
import Network.AWS.MediaConvert.Types.ColorSpace
import Network.AWS.MediaConvert.Types.ColorSpaceConversion
import Network.AWS.MediaConvert.Types.ColorSpaceUsage
import Network.AWS.MediaConvert.Types.ContainerType
import Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
import Network.AWS.MediaConvert.Types.DashIsoSegmentControl
import Network.AWS.MediaConvert.Types.DeinterlaceAlgorithm
import Network.AWS.MediaConvert.Types.DeinterlacerControl
import Network.AWS.MediaConvert.Types.DeinterlacerMode
import Network.AWS.MediaConvert.Types.DropFrameTimecode
import Network.AWS.MediaConvert.Types.DvbSubtitleAlignment
import Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
import Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
import Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
import Network.AWS.MediaConvert.Types.Eac3AttenuationControl
import Network.AWS.MediaConvert.Types.Eac3BitstreamMode
import Network.AWS.MediaConvert.Types.Eac3CodingMode
import Network.AWS.MediaConvert.Types.Eac3DcFilter
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
import Network.AWS.MediaConvert.Types.Eac3LfeControl
import Network.AWS.MediaConvert.Types.Eac3LfeFilter
import Network.AWS.MediaConvert.Types.Eac3MetadataControl
import Network.AWS.MediaConvert.Types.Eac3PassthroughControl
import Network.AWS.MediaConvert.Types.Eac3PhaseControl
import Network.AWS.MediaConvert.Types.Eac3StereoDownmix
import Network.AWS.MediaConvert.Types.Eac3SurroundExMode
import Network.AWS.MediaConvert.Types.Eac3SurroundMode
import Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
import Network.AWS.MediaConvert.Types.F4vMoovPlacement
import Network.AWS.MediaConvert.Types.FileSourceConvert608To708
import Network.AWS.MediaConvert.Types.H264AdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264CodecLevel
import Network.AWS.MediaConvert.Types.H264CodecProfile
import Network.AWS.MediaConvert.Types.H264EntropyEncoding
import Network.AWS.MediaConvert.Types.H264FieldEncoding
import Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264FramerateControl
import Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.H264GopBReference
import Network.AWS.MediaConvert.Types.H264GopSizeUnits
import Network.AWS.MediaConvert.Types.H264InterlaceMode
import Network.AWS.MediaConvert.Types.H264ParControl
import Network.AWS.MediaConvert.Types.H264QualityTuningLevel
import Network.AWS.MediaConvert.Types.H264RateControlMode
import Network.AWS.MediaConvert.Types.H264RepeatPps
import Network.AWS.MediaConvert.Types.H264SceneChangeDetect
import Network.AWS.MediaConvert.Types.H264SlowPal
import Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264Syntax
import Network.AWS.MediaConvert.Types.H264Telecine
import Network.AWS.MediaConvert.Types.H264TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
import Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
import Network.AWS.MediaConvert.Types.H265CodecLevel
import Network.AWS.MediaConvert.Types.H265CodecProfile
import Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265FramerateControl
import Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.H265GopBReference
import Network.AWS.MediaConvert.Types.H265GopSizeUnits
import Network.AWS.MediaConvert.Types.H265InterlaceMode
import Network.AWS.MediaConvert.Types.H265ParControl
import Network.AWS.MediaConvert.Types.H265QualityTuningLevel
import Network.AWS.MediaConvert.Types.H265RateControlMode
import Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
import Network.AWS.MediaConvert.Types.H265SceneChangeDetect
import Network.AWS.MediaConvert.Types.H265SlowPal
import Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265Telecine
import Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265TemporalIds
import Network.AWS.MediaConvert.Types.H265Tiles
import Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
import Network.AWS.MediaConvert.Types.HlsAdMarkers
import Network.AWS.MediaConvert.Types.HlsAudioTrackType
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageSetting
import Network.AWS.MediaConvert.Types.HlsClientCache
import Network.AWS.MediaConvert.Types.HlsCodecSpecification
import Network.AWS.MediaConvert.Types.HlsDirectoryStructure
import Network.AWS.MediaConvert.Types.HlsEncryptionType
import Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
import Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
import Network.AWS.MediaConvert.Types.HlsKeyProviderType
import Network.AWS.MediaConvert.Types.HlsManifestCompression
import Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
import Network.AWS.MediaConvert.Types.HlsOutputSelection
import Network.AWS.MediaConvert.Types.HlsProgramDateTime
import Network.AWS.MediaConvert.Types.HlsSegmentControl
import Network.AWS.MediaConvert.Types.HlsStreamInfResolution
import Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
import Network.AWS.MediaConvert.Types.InputDeblockFilter
import Network.AWS.MediaConvert.Types.InputDenoiseFilter
import Network.AWS.MediaConvert.Types.InputFilterEnable
import Network.AWS.MediaConvert.Types.InputPsiControl
import Network.AWS.MediaConvert.Types.InputTimecodeSource
import Network.AWS.MediaConvert.Types.JobStatus
import Network.AWS.MediaConvert.Types.JobTemplateListBy
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.MediaConvert.Types.M2tsAudioBufferModel
import Network.AWS.MediaConvert.Types.M2tsBufferModel
import Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
import Network.AWS.MediaConvert.Types.M2tsEbpPlacement
import Network.AWS.MediaConvert.Types.M2tsEsRateInPes
import Network.AWS.MediaConvert.Types.M2tsNielsenId3
import Network.AWS.MediaConvert.Types.M2tsPcrControl
import Network.AWS.MediaConvert.Types.M2tsRateMode
import Network.AWS.MediaConvert.Types.M2tsScte35Source
import Network.AWS.MediaConvert.Types.M2tsSegmentationMarkers
import Network.AWS.MediaConvert.Types.M2tsSegmentationStyle
import Network.AWS.MediaConvert.Types.M3u8NielsenId3
import Network.AWS.MediaConvert.Types.M3u8PcrControl
import Network.AWS.MediaConvert.Types.M3u8Scte35Source
import Network.AWS.MediaConvert.Types.MovClapAtom
import Network.AWS.MediaConvert.Types.MovCslgAtom
import Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
import Network.AWS.MediaConvert.Types.MovPaddingControl
import Network.AWS.MediaConvert.Types.MovReference
import Network.AWS.MediaConvert.Types.Mp4CslgAtom
import Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
import Network.AWS.MediaConvert.Types.Mp4MoovPlacement
import Network.AWS.MediaConvert.Types.Mpeg2AdaptiveQuantization
import Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
import Network.AWS.MediaConvert.Types.Mpeg2CodecProfile
import Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
import Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
import Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
import Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
import Network.AWS.MediaConvert.Types.Mpeg2ParControl
import Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
import Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
import Network.AWS.MediaConvert.Types.Mpeg2SceneChangeDetect
import Network.AWS.MediaConvert.Types.Mpeg2SlowPal
import Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.Mpeg2Syntax
import Network.AWS.MediaConvert.Types.Mpeg2Telecine
import Network.AWS.MediaConvert.Types.Mpeg2TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
import Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
import Network.AWS.MediaConvert.Types.NoiseReducerFilter
import Network.AWS.MediaConvert.Types.Order
import Network.AWS.MediaConvert.Types.OutputGroupType
import Network.AWS.MediaConvert.Types.OutputSdt
import Network.AWS.MediaConvert.Types.PresetListBy
import Network.AWS.MediaConvert.Types.ProresCodecProfile
import Network.AWS.MediaConvert.Types.ProresFramerateControl
import Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.ProresInterlaceMode
import Network.AWS.MediaConvert.Types.ProresParControl
import Network.AWS.MediaConvert.Types.ProresSlowPal
import Network.AWS.MediaConvert.Types.ProresTelecine
import Network.AWS.MediaConvert.Types.QueueListBy
import Network.AWS.MediaConvert.Types.QueueStatus
import Network.AWS.MediaConvert.Types.RespondToAfd
import Network.AWS.MediaConvert.Types.ScalingBehavior
import Network.AWS.MediaConvert.Types.SccDestinationFramerate
import Network.AWS.MediaConvert.Types.TimecodeBurninPosition
import Network.AWS.MediaConvert.Types.TimecodeSource
import Network.AWS.MediaConvert.Types.TimedMetadata
import Network.AWS.MediaConvert.Types.TtmlStylePassthrough
import Network.AWS.MediaConvert.Types.Type
import Network.AWS.MediaConvert.Types.VideoCodec
import Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
import Network.AWS.MediaConvert.Types.AacSettings
import Network.AWS.MediaConvert.Types.Ac3Settings
import Network.AWS.MediaConvert.Types.AiffSettings
import Network.AWS.MediaConvert.Types.AncillarySourceSettings
import Network.AWS.MediaConvert.Types.AudioCodecSettings
import Network.AWS.MediaConvert.Types.AudioDescription
import Network.AWS.MediaConvert.Types.AudioNormalizationSettings
import Network.AWS.MediaConvert.Types.AudioSelector
import Network.AWS.MediaConvert.Types.AudioSelectorGroup
import Network.AWS.MediaConvert.Types.AvailBlanking
import Network.AWS.MediaConvert.Types.BurninDestinationSettings
import Network.AWS.MediaConvert.Types.CaptionDescription
import Network.AWS.MediaConvert.Types.CaptionDescriptionPreset
import Network.AWS.MediaConvert.Types.CaptionDestinationSettings
import Network.AWS.MediaConvert.Types.CaptionSelector
import Network.AWS.MediaConvert.Types.CaptionSourceSettings
import Network.AWS.MediaConvert.Types.ChannelMapping
import Network.AWS.MediaConvert.Types.ColorCorrector
import Network.AWS.MediaConvert.Types.ContainerSettings
import Network.AWS.MediaConvert.Types.DashIsoEncryptionSettings
import Network.AWS.MediaConvert.Types.DashIsoGroupSettings
import Network.AWS.MediaConvert.Types.Deinterlacer
import Network.AWS.MediaConvert.Types.DvbNitSettings
import Network.AWS.MediaConvert.Types.DvbSdtSettings
import Network.AWS.MediaConvert.Types.DvbSubDestinationSettings
import Network.AWS.MediaConvert.Types.DvbSubSourceSettings
import Network.AWS.MediaConvert.Types.DvbTdtSettings
import Network.AWS.MediaConvert.Types.Eac3Settings
import Network.AWS.MediaConvert.Types.EmbeddedSourceSettings
import Network.AWS.MediaConvert.Types.Endpoint
import Network.AWS.MediaConvert.Types.F4vSettings
import Network.AWS.MediaConvert.Types.FileGroupSettings
import Network.AWS.MediaConvert.Types.FileSourceSettings
import Network.AWS.MediaConvert.Types.FrameCaptureSettings
import Network.AWS.MediaConvert.Types.H264Settings
import Network.AWS.MediaConvert.Types.H265Settings
import Network.AWS.MediaConvert.Types.Hdr10Metadata
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageMapping
import Network.AWS.MediaConvert.Types.HlsEncryptionSettings
import Network.AWS.MediaConvert.Types.HlsGroupSettings
import Network.AWS.MediaConvert.Types.HlsSettings
import Network.AWS.MediaConvert.Types.Id3Insertion
import Network.AWS.MediaConvert.Types.ImageInserter
import Network.AWS.MediaConvert.Types.Input
import Network.AWS.MediaConvert.Types.InputClipping
import Network.AWS.MediaConvert.Types.InputTemplate
import Network.AWS.MediaConvert.Types.InsertableImage
import Network.AWS.MediaConvert.Types.Job
import Network.AWS.MediaConvert.Types.JobSettings
import Network.AWS.MediaConvert.Types.JobTemplate
import Network.AWS.MediaConvert.Types.JobTemplateSettings
import Network.AWS.MediaConvert.Types.M2tsSettings
import Network.AWS.MediaConvert.Types.M3u8Settings
import Network.AWS.MediaConvert.Types.MovSettings
import Network.AWS.MediaConvert.Types.Mp2Settings
import Network.AWS.MediaConvert.Types.Mp4Settings
import Network.AWS.MediaConvert.Types.Mpeg2Settings
import Network.AWS.MediaConvert.Types.MsSmoothEncryptionSettings
import Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
import Network.AWS.MediaConvert.Types.NielsenConfiguration
import Network.AWS.MediaConvert.Types.NoiseReducer
import Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerSpatialFilterSettings
import Network.AWS.MediaConvert.Types.Output
import Network.AWS.MediaConvert.Types.OutputChannelMapping
import Network.AWS.MediaConvert.Types.OutputDetail
import Network.AWS.MediaConvert.Types.OutputGroup
import Network.AWS.MediaConvert.Types.OutputGroupDetail
import Network.AWS.MediaConvert.Types.OutputGroupSettings
import Network.AWS.MediaConvert.Types.OutputSettings
import Network.AWS.MediaConvert.Types.Preset
import Network.AWS.MediaConvert.Types.PresetSettings
import Network.AWS.MediaConvert.Types.ProresSettings
import Network.AWS.MediaConvert.Types.Queue
import Network.AWS.MediaConvert.Types.Rectangle
import Network.AWS.MediaConvert.Types.RemixSettings
import Network.AWS.MediaConvert.Types.SccDestinationSettings
import Network.AWS.MediaConvert.Types.SpekeKeyProvider
import Network.AWS.MediaConvert.Types.StaticKeyProvider
import Network.AWS.MediaConvert.Types.TeletextDestinationSettings
import Network.AWS.MediaConvert.Types.TeletextSourceSettings
import Network.AWS.MediaConvert.Types.TimecodeBurnin
import Network.AWS.MediaConvert.Types.TimecodeConfig
import Network.AWS.MediaConvert.Types.TimedMetadataInsertion
import Network.AWS.MediaConvert.Types.Timing
import Network.AWS.MediaConvert.Types.TtmlDestinationSettings
import Network.AWS.MediaConvert.Types.VideoCodecSettings
import Network.AWS.MediaConvert.Types.VideoDescription
import Network.AWS.MediaConvert.Types.VideoDetail
import Network.AWS.MediaConvert.Types.VideoPreprocessor
import Network.AWS.MediaConvert.Types.VideoSelector
import Network.AWS.MediaConvert.Types.WavSettings

-- | API version @2017-08-29@ of the Amazon Elemental MediaConvert SDK configuration.
mediaConvert :: Service
mediaConvert
  = Service{_svcAbbrev = "MediaConvert",
            _svcSigner = v4, _svcPrefix = "mediaconvert",
            _svcVersion = "2017-08-29",
            _svcEndpoint = defaultEndpoint mediaConvert,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "MediaConvert",
            _svcRetry = retry}
  where retry
          = Exponential{_retryBase = 5.0e-2, _retryGrowth = 2,
                        _retryAttempts = 5, _retryCheck = check}
        check e
          | has (hasCode "ThrottledException" . hasStatus 400)
              e
            = Just "throttled_exception"
          | has (hasStatus 429) e = Just "too_many_requests"
          | has (hasCode "ThrottlingException" . hasStatus 400)
              e
            = Just "throttling_exception"
          | has (hasCode "Throttling" . hasStatus 400) e =
            Just "throttling"
          | has (hasStatus 504) e = Just "gateway_timeout"
          | has
              (hasCode "RequestThrottledException" . hasStatus 400)
              e
            = Just "request_throttled_exception"
          | has (hasStatus 502) e = Just "bad_gateway"
          | has (hasStatus 503) e = Just "service_unavailable"
          | has (hasStatus 500) e = Just "general_server_error"
          | has (hasStatus 509) e = Just "limit_exceeded"
          | otherwise = Nothing

-- | The service encountered an unexpected condition and cannot fulfill your request.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException
  = _MatchServiceError mediaConvert
      "InternalServerErrorException"
      . hasStatus 500

-- | Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException
  = _MatchServiceError mediaConvert
      "TooManyRequestsException"
      . hasStatus 429

-- | You don't have permissions for this action with the credentials you sent.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException
  = _MatchServiceError mediaConvert
      "ForbiddenException"
      . hasStatus 403

-- | The service can't process your request because of a problem in the request. Please check your request form and syntax.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException
  = _MatchServiceError mediaConvert
      "BadRequestException"
      . hasStatus 400

-- | The resource you requested does not exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError mediaConvert "NotFoundException"
      . hasStatus 404

-- | The service could not complete your request because there is a conflict with the current state of the resource.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException
  = _MatchServiceError mediaConvert "ConflictException"
      . hasStatus 409
