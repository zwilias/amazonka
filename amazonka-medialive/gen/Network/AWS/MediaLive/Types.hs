{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types
    (
    -- * Service Configuration
      mediaLive

    -- * Errors
    , _GatewayTimeoutException
    , _UnprocessableEntityException
    , _ConflictException
    , _ForbiddenException
    , _NotFoundException
    , _TooManyRequestsException
    , _InternalServerErrorException
    , _BadGatewayException
    , _BadRequestException

    -- * AacCodingMode
    , AacCodingMode (..)

    -- * AacInputType
    , AacInputType (..)

    -- * AacProfile
    , AacProfile (..)

    -- * AacRateControlMode
    , AacRateControlMode (..)

    -- * AacRawFormat
    , AacRawFormat (..)

    -- * AacSpec
    , AacSpec (..)

    -- * AacVbrQuality
    , AacVbrQuality (..)

    -- * Ac3BitstreamMode
    , Ac3BitstreamMode (..)

    -- * Ac3CodingMode
    , Ac3CodingMode (..)

    -- * Ac3DrcProfile
    , Ac3DrcProfile (..)

    -- * Ac3LfeFilter
    , Ac3LfeFilter (..)

    -- * Ac3MetadataControl
    , Ac3MetadataControl (..)

    -- * AfdSignaling
    , AfdSignaling (..)

    -- * AudioDescriptionAudioTypeControl
    , AudioDescriptionAudioTypeControl (..)

    -- * AudioDescriptionLanguageCodeControl
    , AudioDescriptionLanguageCodeControl (..)

    -- * AudioLanguageSelectionPolicy
    , AudioLanguageSelectionPolicy (..)

    -- * AudioNormalizationAlgorithm
    , AudioNormalizationAlgorithm (..)

    -- * AudioNormalizationAlgorithmControl
    , AudioNormalizationAlgorithmControl (..)

    -- * AudioOnlyHlsTrackType
    , AudioOnlyHlsTrackType (..)

    -- * AudioType
    , AudioType (..)

    -- * AuthenticationScheme
    , AuthenticationScheme (..)

    -- * AvailBlankingState
    , AvailBlankingState (..)

    -- * BlackoutSlateNetworkEndBlackout
    , BlackoutSlateNetworkEndBlackout (..)

    -- * BlackoutSlateState
    , BlackoutSlateState (..)

    -- * BurnInAlignment
    , BurnInAlignment (..)

    -- * BurnInBackgroundColor
    , BurnInBackgroundColor (..)

    -- * BurnInFontColor
    , BurnInFontColor (..)

    -- * BurnInOutlineColor
    , BurnInOutlineColor (..)

    -- * BurnInShadowColor
    , BurnInShadowColor (..)

    -- * BurnInTeletextGridControl
    , BurnInTeletextGridControl (..)

    -- * ChannelState
    , ChannelState (..)

    -- * DvbSdtOutputSdt
    , DvbSdtOutputSdt (..)

    -- * DvbSubDestinationAlignment
    , DvbSubDestinationAlignment (..)

    -- * DvbSubDestinationBackgroundColor
    , DvbSubDestinationBackgroundColor (..)

    -- * DvbSubDestinationFontColor
    , DvbSubDestinationFontColor (..)

    -- * DvbSubDestinationOutlineColor
    , DvbSubDestinationOutlineColor (..)

    -- * DvbSubDestinationShadowColor
    , DvbSubDestinationShadowColor (..)

    -- * DvbSubDestinationTeletextGridControl
    , DvbSubDestinationTeletextGridControl (..)

    -- * Eac3AttenuationControl
    , Eac3AttenuationControl (..)

    -- * Eac3BitstreamMode
    , Eac3BitstreamMode (..)

    -- * Eac3CodingMode
    , Eac3CodingMode (..)

    -- * Eac3DcFilter
    , Eac3DcFilter (..)

    -- * Eac3DrcLine
    , Eac3DrcLine (..)

    -- * Eac3DrcRf
    , Eac3DrcRf (..)

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

    -- * EmbeddedScte20Detection
    , EmbeddedScte20Detection (..)

    -- * FecOutputIncludeFec
    , FecOutputIncludeFec (..)

    -- * FixedAfd
    , FixedAfd (..)

    -- * GlobalConfigurationInputEndAction
    , GlobalConfigurationInputEndAction (..)

    -- * GlobalConfigurationLowFramerateInputs
    , GlobalConfigurationLowFramerateInputs (..)

    -- * GlobalConfigurationOutputTimingSource
    , GlobalConfigurationOutputTimingSource (..)

    -- * H264AdaptiveQuantization
    , H264AdaptiveQuantization (..)

    -- * H264ColorMetadata
    , H264ColorMetadata (..)

    -- * H264EntropyEncoding
    , H264EntropyEncoding (..)

    -- * H264FlickerAq
    , H264FlickerAq (..)

    -- * H264FramerateControl
    , H264FramerateControl (..)

    -- * H264GopBReference
    , H264GopBReference (..)

    -- * H264GopSizeUnits
    , H264GopSizeUnits (..)

    -- * H264Level
    , H264Level (..)

    -- * H264LookAheadRateControl
    , H264LookAheadRateControl (..)

    -- * H264ParControl
    , H264ParControl (..)

    -- * H264Profile
    , H264Profile (..)

    -- * H264RateControlMode
    , H264RateControlMode (..)

    -- * H264ScanType
    , H264ScanType (..)

    -- * H264SceneChangeDetect
    , H264SceneChangeDetect (..)

    -- * H264SpatialAq
    , H264SpatialAq (..)

    -- * H264Syntax
    , H264Syntax (..)

    -- * H264TemporalAq
    , H264TemporalAq (..)

    -- * H264TimecodeInsertionBehavior
    , H264TimecodeInsertionBehavior (..)

    -- * HlsAdMarkers
    , HlsAdMarkers (..)

    -- * HlsAkamaiHTTPTransferMode
    , HlsAkamaiHTTPTransferMode (..)

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

    -- * HlsIvInManifest
    , HlsIvInManifest (..)

    -- * HlsIvSource
    , HlsIvSource (..)

    -- * HlsManifestCompression
    , HlsManifestCompression (..)

    -- * HlsManifestDurationFormat
    , HlsManifestDurationFormat (..)

    -- * HlsMediaStoreStorageClass
    , HlsMediaStoreStorageClass (..)

    -- * HlsMode
    , HlsMode (..)

    -- * HlsOutputSelection
    , HlsOutputSelection (..)

    -- * HlsProgramDateTime
    , HlsProgramDateTime (..)

    -- * HlsSegmentationMode
    , HlsSegmentationMode (..)

    -- * HlsStreamInfResolution
    , HlsStreamInfResolution (..)

    -- * HlsTimedMetadataId3Frame
    , HlsTimedMetadataId3Frame (..)

    -- * HlsTsFileMode
    , HlsTsFileMode (..)

    -- * HlsWebdavHTTPTransferMode
    , HlsWebdavHTTPTransferMode (..)

    -- * InputCodec
    , InputCodec (..)

    -- * InputDeblockFilter
    , InputDeblockFilter (..)

    -- * InputDenoiseFilter
    , InputDenoiseFilter (..)

    -- * InputFilter
    , InputFilter (..)

    -- * InputLossActionForHlsOut
    , InputLossActionForHlsOut (..)

    -- * InputLossActionForMsSmoothOut
    , InputLossActionForMsSmoothOut (..)

    -- * InputLossActionForUdpOut
    , InputLossActionForUdpOut (..)

    -- * InputLossImageType
    , InputLossImageType (..)

    -- * InputMaximumBitrate
    , InputMaximumBitrate (..)

    -- * InputResolution
    , InputResolution (..)

    -- * InputSecurityGroupState
    , InputSecurityGroupState (..)

    -- * InputSourceEndBehavior
    , InputSourceEndBehavior (..)

    -- * InputState
    , InputState (..)

    -- * InputType
    , InputType (..)

    -- * M2tsAbsentInputAudioBehavior
    , M2tsAbsentInputAudioBehavior (..)

    -- * M2tsArib
    , M2tsArib (..)

    -- * M2tsAribCaptionsPidControl
    , M2tsAribCaptionsPidControl (..)

    -- * M2tsAudioBufferModel
    , M2tsAudioBufferModel (..)

    -- * M2tsAudioInterval
    , M2tsAudioInterval (..)

    -- * M2tsAudioStreamType
    , M2tsAudioStreamType (..)

    -- * M2tsBufferModel
    , M2tsBufferModel (..)

    -- * M2tsCCDescriptor
    , M2tsCCDescriptor (..)

    -- * M2tsEbifControl
    , M2tsEbifControl (..)

    -- * M2tsEbpPlacement
    , M2tsEbpPlacement (..)

    -- * M2tsEsRateInPes
    , M2tsEsRateInPes (..)

    -- * M2tsKlv
    , M2tsKlv (..)

    -- * M2tsPcrControl
    , M2tsPcrControl (..)

    -- * M2tsRateMode
    , M2tsRateMode (..)

    -- * M2tsScte35Control
    , M2tsScte35Control (..)

    -- * M2tsSegmentationMarkers
    , M2tsSegmentationMarkers (..)

    -- * M2tsSegmentationStyle
    , M2tsSegmentationStyle (..)

    -- * M2tsTimedMetadataBehavior
    , M2tsTimedMetadataBehavior (..)

    -- * M3u8PcrControl
    , M3u8PcrControl (..)

    -- * M3u8Scte35Behavior
    , M3u8Scte35Behavior (..)

    -- * M3u8TimedMetadataBehavior
    , M3u8TimedMetadataBehavior (..)

    -- * Mp2CodingMode
    , Mp2CodingMode (..)

    -- * NetworkInputServerValidation
    , NetworkInputServerValidation (..)

    -- * RtmpCacheFullBehavior
    , RtmpCacheFullBehavior (..)

    -- * RtmpCaptionData
    , RtmpCaptionData (..)

    -- * RtmpOutputCertificateMode
    , RtmpOutputCertificateMode (..)

    -- * Scte20Convert608To708
    , Scte20Convert608To708 (..)

    -- * Scte35AposNoRegionalBlackoutBehavior
    , Scte35AposNoRegionalBlackoutBehavior (..)

    -- * Scte35AposWebDeliveryAllowedBehavior
    , Scte35AposWebDeliveryAllowedBehavior (..)

    -- * Scte35SpliceInsertNoRegionalBlackoutBehavior
    , Scte35SpliceInsertNoRegionalBlackoutBehavior (..)

    -- * Scte35SpliceInsertWebDeliveryAllowedBehavior
    , Scte35SpliceInsertWebDeliveryAllowedBehavior (..)

    -- * SmoothGroupAudioOnlyTimecodeControl
    , SmoothGroupAudioOnlyTimecodeControl (..)

    -- * SmoothGroupCertificateMode
    , SmoothGroupCertificateMode (..)

    -- * SmoothGroupEventIdMode
    , SmoothGroupEventIdMode (..)

    -- * SmoothGroupEventStopBehavior
    , SmoothGroupEventStopBehavior (..)

    -- * SmoothGroupSegmentationMode
    , SmoothGroupSegmentationMode (..)

    -- * SmoothGroupSparseTrackType
    , SmoothGroupSparseTrackType (..)

    -- * SmoothGroupStreamManifestBehavior
    , SmoothGroupStreamManifestBehavior (..)

    -- * SmoothGroupTimestampOffsetMode
    , SmoothGroupTimestampOffsetMode (..)

    -- * TimecodeConfigSource
    , TimecodeConfigSource (..)

    -- * TtmlDestinationStyleControl
    , TtmlDestinationStyleControl (..)

    -- * UdpTimedMetadataId3Frame
    , UdpTimedMetadataId3Frame (..)

    -- * VideoDescriptionRespondToAfd
    , VideoDescriptionRespondToAfd (..)

    -- * VideoDescriptionScalingBehavior
    , VideoDescriptionScalingBehavior (..)

    -- * VideoSelectorColorSpace
    , VideoSelectorColorSpace (..)

    -- * VideoSelectorColorSpaceUsage
    , VideoSelectorColorSpaceUsage (..)

    -- * AacSettings
    , AacSettings
    , aacSettings
    , aRawFormat
    , aCodingMode
    , aProfile
    , aRateControlMode
    , aSampleRate
    , aSpec
    , aBitrate
    , aVbrQuality
    , aInputType

    -- * Ac3Settings
    , Ac3Settings
    , ac3Settings
    , asLfeFilter
    , asMetadataControl
    , asBitstreamMode
    , asCodingMode
    , asBitrate
    , asDialnorm
    , asDrcProfile

    -- * ArchiveContainerSettings
    , ArchiveContainerSettings
    , archiveContainerSettings
    , acsM2tsSettings

    -- * ArchiveGroupSettings
    , ArchiveGroupSettings
    , archiveGroupSettings
    , agsRolloverInterval
    , agsDestination

    -- * ArchiveOutputSettings
    , ArchiveOutputSettings
    , archiveOutputSettings
    , aosExtension
    , aosNameModifier
    , aosContainerSettings

    -- * AribDestinationSettings
    , AribDestinationSettings
    , aribDestinationSettings

    -- * AribSourceSettings
    , AribSourceSettings
    , aribSourceSettings

    -- * AudioChannelMapping
    , AudioChannelMapping
    , audioChannelMapping
    , acmOutputChannel
    , acmInputChannelLevels

    -- * AudioCodecSettings
    , AudioCodecSettings
    , audioCodecSettings
    , acsPassThroughSettings
    , acsAc3Settings
    , acsMp2Settings
    , acsAacSettings
    , acsEac3Settings

    -- * AudioDescription
    , AudioDescription
    , audioDescription
    , adLanguageCode
    , adAudioType
    , adAudioNormalizationSettings
    , adLanguageCodeControl
    , adCodecSettings
    , adStreamName
    , adRemixSettings
    , adAudioTypeControl
    , adAudioSelectorName
    , adName

    -- * AudioLanguageSelection
    , AudioLanguageSelection
    , audioLanguageSelection
    , alsLanguageSelectionPolicy
    , alsLanguageCode

    -- * AudioNormalizationSettings
    , AudioNormalizationSettings
    , audioNormalizationSettings
    , ansAlgorithmControl
    , ansTargetLkfs
    , ansAlgorithm

    -- * AudioOnlyHlsSettings
    , AudioOnlyHlsSettings
    , audioOnlyHlsSettings
    , aohsAudioOnlyImage
    , aohsAudioGroupId
    , aohsAudioTrackType

    -- * AudioPidSelection
    , AudioPidSelection
    , audioPidSelection
    , apsPid

    -- * AudioSelector
    , AudioSelector
    , audioSelector
    , asSelectorSettings
    , asName

    -- * AudioSelectorSettings
    , AudioSelectorSettings
    , audioSelectorSettings
    , assAudioLanguageSelection
    , assAudioPidSelection

    -- * AvailBlanking
    , AvailBlanking
    , availBlanking
    , abState
    , abAvailBlankingImage

    -- * AvailConfiguration
    , AvailConfiguration
    , availConfiguration
    , acAvailSettings

    -- * AvailSettings
    , AvailSettings
    , availSettings
    , asScte35SpliceInsert
    , asScte35TimeSignalApos

    -- * BlackoutSlate
    , BlackoutSlate
    , blackoutSlate
    , bsNetworkEndBlackoutImage
    , bsState
    , bsNetworkEndBlackout
    , bsNetworkId
    , bsBlackoutSlateImage

    -- * BurnInDestinationSettings
    , BurnInDestinationSettings
    , burnInDestinationSettings
    , bidsBackgroundOpacity
    , bidsFontOpacity
    , bidsShadowYOffset
    , bidsFontResolution
    , bidsYPosition
    , bidsBackgroundColor
    , bidsShadowXOffset
    , bidsFontSize
    , bidsXPosition
    , bidsAlignment
    , bidsShadowOpacity
    , bidsTeletextGridControl
    , bidsOutlineColor
    , bidsOutlineSize
    , bidsFont
    , bidsShadowColor
    , bidsFontColor

    -- * CaptionDescription
    , CaptionDescription
    , captionDescription
    , cdLanguageCode
    , cdDestinationSettings
    , cdLanguageDescription
    , cdCaptionSelectorName
    , cdName

    -- * CaptionDestinationSettings
    , CaptionDestinationSettings
    , captionDestinationSettings
    , cdsTeletextDestinationSettings
    , cdsRtmpCaptionInfoDestinationSettings
    , cdsDvbSubDestinationSettings
    , cdsScte27DestinationSettings
    , cdsTtmlDestinationSettings
    , cdsScte20PlusEmbeddedDestinationSettings
    , cdsEmbeddedPlusScte20DestinationSettings
    , cdsSmpteTtDestinationSettings
    , cdsWebvttDestinationSettings
    , cdsEmbeddedDestinationSettings
    , cdsBurnInDestinationSettings
    , cdsAribDestinationSettings

    -- * CaptionLanguageMapping
    , CaptionLanguageMapping
    , captionLanguageMapping
    , clmLanguageCode
    , clmLanguageDescription
    , clmCaptionChannel

    -- * CaptionSelector
    , CaptionSelector
    , captionSelector
    , csLanguageCode
    , csSelectorSettings
    , csName

    -- * CaptionSelectorSettings
    , CaptionSelectorSettings
    , captionSelectorSettings
    , cssTeletextSourceSettings
    , cssAribSourceSettings
    , cssScte27SourceSettings
    , cssDvbSubSourceSettings
    , cssScte20SourceSettings
    , cssEmbeddedSourceSettings

    -- * Channel
    , Channel
    , channel
    , cState
    , cARN
    , cPipelinesRunningCount
    , cInputSpecification
    , cInputAttachments
    , cDestinations
    , cName
    , cId
    , cEgressEndpoints
    , cEncoderSettings
    , cRoleARN

    -- * ChannelEgressEndpoint
    , ChannelEgressEndpoint
    , channelEgressEndpoint
    , ceeSourceIP

    -- * ChannelSummary
    , ChannelSummary
    , channelSummary
    , chaState
    , chaARN
    , chaPipelinesRunningCount
    , chaInputSpecification
    , chaInputAttachments
    , chaDestinations
    , chaName
    , chaId
    , chaEgressEndpoints
    , chaRoleARN

    -- * DvbNitSettings
    , DvbNitSettings
    , dvbNitSettings
    , dnsRepInterval
    , dnsNetworkName
    , dnsNetworkId

    -- * DvbSdtSettings
    , DvbSdtSettings
    , dvbSdtSettings
    , dssRepInterval
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
    , dsdsAlignment
    , dsdsShadowOpacity
    , dsdsTeletextGridControl
    , dsdsOutlineColor
    , dsdsOutlineSize
    , dsdsFont
    , dsdsShadowColor
    , dsdsFontColor

    -- * DvbSubSourceSettings
    , DvbSubSourceSettings
    , dvbSubSourceSettings
    , dsssPid

    -- * DvbTdtSettings
    , DvbTdtSettings
    , dvbTdtSettings
    , dtsRepInterval

    -- * Eac3Settings
    , Eac3Settings
    , eac3Settings
    , esStereoDownmix
    , esLoRoCenterMixLevel
    , esLtRtCenterMixLevel
    , esLfeFilter
    , esLtRtSurroundMixLevel
    , esMetadataControl
    , esLoRoSurroundMixLevel
    , esSurroundMode
    , esAttenuationControl
    , esPassthroughControl
    , esBitstreamMode
    , esLfeControl
    , esCodingMode
    , esDrcLine
    , esDrcRf
    , esDcFilter
    , esBitrate
    , esPhaseControl
    , esSurroundExMode
    , esDialnorm

    -- * EmbeddedDestinationSettings
    , EmbeddedDestinationSettings
    , embeddedDestinationSettings

    -- * EmbeddedPlusScte20DestinationSettings
    , EmbeddedPlusScte20DestinationSettings
    , embeddedPlusScte20DestinationSettings

    -- * EmbeddedSourceSettings
    , EmbeddedSourceSettings
    , embeddedSourceSettings
    , essConvert608To708
    , essScte20Detection
    , essSource608TrackNumber
    , essSource608ChannelNumber

    -- * EncoderSettings
    , EncoderSettings
    , encoderSettings
    , esCaptionDescriptions
    , esAvailConfiguration
    , esAvailBlanking
    , esGlobalConfiguration
    , esBlackoutSlate
    , esVideoDescriptions
    , esAudioDescriptions
    , esOutputGroups
    , esTimecodeConfig

    -- * FecOutputSettings
    , FecOutputSettings
    , fecOutputSettings
    , fosRowLength
    , fosIncludeFec
    , fosColumnDepth

    -- * GlobalConfiguration
    , GlobalConfiguration
    , globalConfiguration
    , gcInputLossBehavior
    , gcInitialAudioGain
    , gcSupportLowFramerateInputs
    , gcInputEndAction
    , gcOutputTimingSource

    -- * H264Settings
    , H264Settings
    , h264Settings
    , hsTemporalAq
    , hsSceneChangeDetect
    , hsScanType
    , hsTimecodeInsertion
    , hsParNumerator
    , hsAfdSignaling
    , hsGopSize
    , hsGopSizeUnits
    , hsSlices
    , hsProfile
    , hsRateControlMode
    , hsMinIInterval
    , hsParControl
    , hsFlickerAq
    , hsBufSize
    , hsSpatialAq
    , hsGopNumBFrames
    , hsFixedAfd
    , hsSoftness
    , hsBitrate
    , hsFramerateDenominator
    , hsEntropyEncoding
    , hsFramerateControl
    , hsColorMetadata
    , hsLookAheadRateControl
    , hsAdaptiveQuantization
    , hsFramerateNumerator
    , hsLevel
    , hsGopBReference
    , hsMaxBitrate
    , hsSyntax
    , hsBufFillPct
    , hsGopClosedCadence
    , hsNumRefFrames
    , hsParDenominator

    -- * HlsAkamaiSettings
    , HlsAkamaiSettings
    , hlsAkamaiSettings
    , hasHTTPTransferMode
    , hasNumRetries
    , hasToken
    , hasConnectionRetryInterval
    , hasFilecacheDuration
    , hasRestartDelay
    , hasSalt

    -- * HlsBasicPutSettings
    , HlsBasicPutSettings
    , hlsBasicPutSettings
    , hbpsNumRetries
    , hbpsConnectionRetryInterval
    , hbpsFilecacheDuration
    , hbpsRestartDelay

    -- * HlsCdnSettings
    , HlsCdnSettings
    , hlsCdnSettings
    , hcsHlsAkamaiSettings
    , hcsHlsMediaStoreSettings
    , hcsHlsBasicPutSettings
    , hcsHlsWebdavSettings

    -- * HlsGroupSettings
    , HlsGroupSettings
    , hlsGroupSettings
    , hgsDirectoryStructure
    , hgsEncryptionType
    , hgsTimedMetadataId3Period
    , hgsIvInManifest
    , hgsTsFileMode
    , hgsMinSegmentLength
    , hgsProgramDateTime
    , hgsIndexNSegments
    , hgsProgramDateTimePeriod
    , hgsCodecSpecification
    , hgsHlsCdnSettings
    , hgsCaptionLanguageMappings
    , hgsInputLossAction
    , hgsMode
    , hgsKeyProviderSettings
    , hgsConstantIv
    , hgsBaseURLManifest
    , hgsAdMarkers
    , hgsKeyFormat
    , hgsSegmentLength
    , hgsTimedMetadataId3Frame
    , hgsBaseURLContent
    , hgsOutputSelection
    , hgsCaptionLanguageSetting
    , hgsSegmentsPerSubdirectory
    , hgsManifestDurationFormat
    , hgsIvSource
    , hgsSegmentationMode
    , hgsKeyFormatVersions
    , hgsClientCache
    , hgsTimestampDeltaMilliseconds
    , hgsStreamInfResolution
    , hgsKeepSegments
    , hgsManifestCompression
    , hgsDestination

    -- * HlsInputSettings
    , HlsInputSettings
    , hlsInputSettings
    , hisBufferSegments
    , hisRetries
    , hisRetryInterval
    , hisBandwidth

    -- * HlsMediaStoreSettings
    , HlsMediaStoreSettings
    , hlsMediaStoreSettings
    , hmssNumRetries
    , hmssConnectionRetryInterval
    , hmssFilecacheDuration
    , hmssMediaStoreStorageClass
    , hmssRestartDelay

    -- * HlsOutputSettings
    , HlsOutputSettings
    , hlsOutputSettings
    , hosSegmentModifier
    , hosNameModifier
    , hosHlsSettings

    -- * HlsSettings
    , HlsSettings
    , hlsSettings
    , hsAudioOnlyHlsSettings
    , hsStandardHlsSettings

    -- * HlsWebdavSettings
    , HlsWebdavSettings
    , hlsWebdavSettings
    , hwsHTTPTransferMode
    , hwsNumRetries
    , hwsConnectionRetryInterval
    , hwsFilecacheDuration
    , hwsRestartDelay

    -- * Input
    , Input
    , input
    , iState
    , iSecurityGroups
    , iARN
    , iSources
    , iDestinations
    , iName
    , iAttachedChannels
    , iId
    , iType

    -- * InputAttachment
    , InputAttachment
    , inputAttachment
    , iaInputId
    , iaInputSettings

    -- * InputChannelLevel
    , InputChannelLevel
    , inputChannelLevel
    , iclInputChannel
    , iclGain

    -- * InputDestination
    , InputDestination
    , inputDestination
    , idURL
    , idIP
    , idPort

    -- * InputDestinationRequest
    , InputDestinationRequest
    , inputDestinationRequest
    , idrStreamName

    -- * InputLocation
    , InputLocation
    , inputLocation
    , ilUsername
    , ilPasswordParam
    , ilURI

    -- * InputLossBehavior
    , InputLossBehavior
    , inputLossBehavior
    , ilbInputLossImageColor
    , ilbBlackFrameMsec
    , ilbRepeatFrameMsec
    , ilbInputLossImageType
    , ilbInputLossImageSlate

    -- * InputSecurityGroup
    , InputSecurityGroup
    , inputSecurityGroup
    , isgState
    , isgARN
    , isgInputs
    , isgId
    , isgWhitelistRules

    -- * InputSettings
    , InputSettings
    , inputSettings
    , isVideoSelector
    , isNetworkInputSettings
    , isAudioSelectors
    , isDeblockFilter
    , isDenoiseFilter
    , isFilterStrength
    , isCaptionSelectors
    , isInputFilter
    , isSourceEndBehavior

    -- * InputSource
    , InputSource
    , inputSource
    , isURL
    , isUsername
    , isPasswordParam

    -- * InputSourceRequest
    , InputSourceRequest
    , inputSourceRequest
    , isrURL
    , isrUsername
    , isrPasswordParam

    -- * InputSpecification
    , InputSpecification
    , inputSpecification
    , isResolution
    , isCodec
    , isMaximumBitrate

    -- * InputWhitelistRule
    , InputWhitelistRule
    , inputWhitelistRule
    , iwrCidr

    -- * InputWhitelistRuleCidr
    , InputWhitelistRuleCidr
    , inputWhitelistRuleCidr
    , iwrcCidr

    -- * KeyProviderSettings
    , KeyProviderSettings
    , keyProviderSettings
    , kpsStaticKeySettings

    -- * M2tsSettings
    , M2tsSettings
    , m2tsSettings
    , msPmtPid
    , msEtvSignalPid
    , msVideoPid
    , msBufferModel
    , msScte35Pid
    , msTransportStreamId
    , msProgramNum
    , msFragmentTime
    , msTimedMetadataBehavior
    , msCCDescriptor
    , msPmtInterval
    , msDvbSdtSettings
    , msEcmPid
    , msNullPacketBitrate
    , msAudioBufferModel
    , msTimedMetadataPid
    , msKlv
    , msAudioFramesPerPes
    , msPcrPeriod
    , msPcrPid
    , msSegmentationMarkers
    , msAribCaptionsPidControl
    , msKlvDataPids
    , msEbpLookaheadMs
    , msDvbSubPids
    , msScte27Pids
    , msPatInterval
    , msAudioStreamType
    , msEsRateInPes
    , msEtvPlatformPid
    , msBitrate
    , msScte35Control
    , msAudioPids
    , msDvbTeletextPid
    , msEbif
    , msArib
    , msAribCaptionsPid
    , msAbsentInputAudioBehavior
    , msSegmentationTime
    , msEbpAudioInterval
    , msDvbNitSettings
    , msPcrControl
    , msEbpPlacement
    , msRateMode
    , msSegmentationStyle
    , msDvbTdtSettings

    -- * M3u8Settings
    , M3u8Settings
    , m3u8Settings
    , mPmtPid
    , mVideoPid
    , mScte35Pid
    , mTransportStreamId
    , mProgramNum
    , mTimedMetadataBehavior
    , mPmtInterval
    , mEcmPid
    , mTimedMetadataPid
    , mAudioFramesPerPes
    , mPcrPeriod
    , mPcrPid
    , mPatInterval
    , mAudioPids
    , mScte35Behavior
    , mPcrControl

    -- * Mp2Settings
    , Mp2Settings
    , mp2Settings
    , mCodingMode
    , mSampleRate
    , mBitrate

    -- * MsSmoothGroupSettings
    , MsSmoothGroupSettings
    , msSmoothGroupSettings
    , msgsFragmentLength
    , msgsStreamManifestBehavior
    , msgsSendDelayMs
    , msgsEventStopBehavior
    , msgsTimestampOffsetMode
    , msgsNumRetries
    , msgsAcquisitionPointId
    , msgsInputLossAction
    , msgsTimestampOffset
    , msgsCertificateMode
    , msgsSparseTrackType
    , msgsConnectionRetryInterval
    , msgsFilecacheDuration
    , msgsRestartDelay
    , msgsEventIdMode
    , msgsAudioOnlyTimecodeControl
    , msgsSegmentationMode
    , msgsEventId
    , msgsDestination

    -- * MsSmoothOutputSettings
    , MsSmoothOutputSettings
    , msSmoothOutputSettings
    , msosNameModifier

    -- * NetworkInputSettings
    , NetworkInputSettings
    , networkInputSettings
    , nisHlsInputSettings
    , nisServerValidation

    -- * Output
    , Output
    , output
    , oCaptionDescriptionNames
    , oVideoDescriptionName
    , oOutputName
    , oAudioDescriptionNames
    , oOutputSettings

    -- * OutputDestination
    , OutputDestination
    , outputDestination
    , odSettings
    , odId

    -- * OutputDestinationSettings
    , OutputDestinationSettings
    , outputDestinationSettings
    , odsURL
    , odsUsername
    , odsPasswordParam
    , odsStreamName

    -- * OutputGroup
    , OutputGroup
    , outputGroup
    , ogName
    , ogOutputs
    , ogOutputGroupSettings

    -- * OutputGroupSettings
    , OutputGroupSettings
    , outputGroupSettings
    , ogsMsSmoothGroupSettings
    , ogsRtmpGroupSettings
    , ogsHlsGroupSettings
    , ogsArchiveGroupSettings
    , ogsUdpGroupSettings

    -- * OutputLocationRef
    , OutputLocationRef
    , outputLocationRef
    , olrDestinationRefId

    -- * OutputSettings
    , OutputSettings
    , outputSettings
    , osArchiveOutputSettings
    , osRtmpOutputSettings
    , osHlsOutputSettings
    , osUdpOutputSettings
    , osMsSmoothOutputSettings

    -- * PassThroughSettings
    , PassThroughSettings
    , passThroughSettings

    -- * RemixSettings
    , RemixSettings
    , remixSettings
    , rsChannelsIn
    , rsChannelsOut
    , rsChannelMappings

    -- * RtmpCaptionInfoDestinationSettings
    , RtmpCaptionInfoDestinationSettings
    , rtmpCaptionInfoDestinationSettings

    -- * RtmpGroupSettings
    , RtmpGroupSettings
    , rtmpGroupSettings
    , rgsCaptionData
    , rgsRestartDelay
    , rgsAuthenticationScheme
    , rgsCacheLength
    , rgsCacheFullBehavior

    -- * RtmpOutputSettings
    , RtmpOutputSettings
    , rtmpOutputSettings
    , rosNumRetries
    , rosCertificateMode
    , rosConnectionRetryInterval
    , rosDestination

    -- * Scte20PlusEmbeddedDestinationSettings
    , Scte20PlusEmbeddedDestinationSettings
    , scte20PlusEmbeddedDestinationSettings

    -- * Scte20SourceSettings
    , Scte20SourceSettings
    , scte20SourceSettings
    , sssConvert608To708
    , sssSource608ChannelNumber

    -- * Scte27DestinationSettings
    , Scte27DestinationSettings
    , scte27DestinationSettings

    -- * Scte27SourceSettings
    , Scte27SourceSettings
    , scte27SourceSettings
    , sssPid

    -- * Scte35SpliceInsert
    , Scte35SpliceInsert
    , scte35SpliceInsert
    , ssiWebDeliveryAllowedFlag
    , ssiAdAvailOffset
    , ssiNoRegionalBlackoutFlag

    -- * Scte35TimeSignalApos
    , Scte35TimeSignalApos
    , scte35TimeSignalApos
    , stsaWebDeliveryAllowedFlag
    , stsaAdAvailOffset
    , stsaNoRegionalBlackoutFlag

    -- * SmpteTtDestinationSettings
    , SmpteTtDestinationSettings
    , smpteTtDestinationSettings

    -- * StandardHlsSettings
    , StandardHlsSettings
    , standardHlsSettings
    , shsAudioRenditionSets
    , shsM3u8Settings

    -- * StaticKeySettings
    , StaticKeySettings
    , staticKeySettings
    , sksKeyProviderServer
    , sksStaticKeyValue

    -- * TeletextDestinationSettings
    , TeletextDestinationSettings
    , teletextDestinationSettings

    -- * TeletextSourceSettings
    , TeletextSourceSettings
    , teletextSourceSettings
    , tssPageNumber

    -- * TimecodeConfig
    , TimecodeConfig
    , timecodeConfig
    , tcSyncThreshold
    , tcSource

    -- * TtmlDestinationSettings
    , TtmlDestinationSettings
    , ttmlDestinationSettings
    , tdsStyleControl

    -- * UdpContainerSettings
    , UdpContainerSettings
    , udpContainerSettings
    , ucsM2tsSettings

    -- * UdpGroupSettings
    , UdpGroupSettings
    , udpGroupSettings
    , ugsTimedMetadataId3Period
    , ugsInputLossAction
    , ugsTimedMetadataId3Frame

    -- * UdpOutputSettings
    , UdpOutputSettings
    , udpOutputSettings
    , uosFecOutputSettings
    , uosBufferMsec
    , uosDestination
    , uosContainerSettings

    -- * VideoCodecSettings
    , VideoCodecSettings
    , videoCodecSettings
    , vcsH264Settings

    -- * VideoDescription
    , VideoDescription
    , videoDescription
    , vdHeight
    , vdSharpness
    , vdWidth
    , vdScalingBehavior
    , vdRespondToAfd
    , vdCodecSettings
    , vdName

    -- * VideoSelector
    , VideoSelector
    , videoSelector
    , vsSelectorSettings
    , vsColorSpaceUsage
    , vsColorSpace

    -- * VideoSelectorPid
    , VideoSelectorPid
    , videoSelectorPid
    , vspPid

    -- * VideoSelectorProgramId
    , VideoSelectorProgramId
    , videoSelectorProgramId
    , vspiProgramId

    -- * VideoSelectorSettings
    , VideoSelectorSettings
    , videoSelectorSettings
    , vssVideoSelectorProgramId
    , vssVideoSelectorPid

    -- * WebvttDestinationSettings
    , WebvttDestinationSettings
    , webvttDestinationSettings
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.MediaLive.Types.AacCodingMode
import Network.AWS.MediaLive.Types.AacInputType
import Network.AWS.MediaLive.Types.AacProfile
import Network.AWS.MediaLive.Types.AacRateControlMode
import Network.AWS.MediaLive.Types.AacRawFormat
import Network.AWS.MediaLive.Types.AacSpec
import Network.AWS.MediaLive.Types.AacVbrQuality
import Network.AWS.MediaLive.Types.Ac3BitstreamMode
import Network.AWS.MediaLive.Types.Ac3CodingMode
import Network.AWS.MediaLive.Types.Ac3DrcProfile
import Network.AWS.MediaLive.Types.Ac3LfeFilter
import Network.AWS.MediaLive.Types.Ac3MetadataControl
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.AudioDescriptionAudioTypeControl
import Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
import Network.AWS.MediaLive.Types.AudioLanguageSelectionPolicy
import Network.AWS.MediaLive.Types.AudioNormalizationAlgorithm
import Network.AWS.MediaLive.Types.AudioNormalizationAlgorithmControl
import Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
import Network.AWS.MediaLive.Types.AudioType
import Network.AWS.MediaLive.Types.AuthenticationScheme
import Network.AWS.MediaLive.Types.AvailBlankingState
import Network.AWS.MediaLive.Types.BlackoutSlateNetworkEndBlackout
import Network.AWS.MediaLive.Types.BlackoutSlateState
import Network.AWS.MediaLive.Types.BurnInAlignment
import Network.AWS.MediaLive.Types.BurnInBackgroundColor
import Network.AWS.MediaLive.Types.BurnInFontColor
import Network.AWS.MediaLive.Types.BurnInOutlineColor
import Network.AWS.MediaLive.Types.BurnInShadowColor
import Network.AWS.MediaLive.Types.BurnInTeletextGridControl
import Network.AWS.MediaLive.Types.ChannelState
import Network.AWS.MediaLive.Types.DvbSdtOutputSdt
import Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
import Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
import Network.AWS.MediaLive.Types.DvbSubDestinationFontColor
import Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
import Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
import Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
import Network.AWS.MediaLive.Types.Eac3AttenuationControl
import Network.AWS.MediaLive.Types.Eac3BitstreamMode
import Network.AWS.MediaLive.Types.Eac3CodingMode
import Network.AWS.MediaLive.Types.Eac3DcFilter
import Network.AWS.MediaLive.Types.Eac3DrcLine
import Network.AWS.MediaLive.Types.Eac3DrcRf
import Network.AWS.MediaLive.Types.Eac3LfeControl
import Network.AWS.MediaLive.Types.Eac3LfeFilter
import Network.AWS.MediaLive.Types.Eac3MetadataControl
import Network.AWS.MediaLive.Types.Eac3PassthroughControl
import Network.AWS.MediaLive.Types.Eac3PhaseControl
import Network.AWS.MediaLive.Types.Eac3StereoDownmix
import Network.AWS.MediaLive.Types.Eac3SurroundExMode
import Network.AWS.MediaLive.Types.Eac3SurroundMode
import Network.AWS.MediaLive.Types.EmbeddedConvert608To708
import Network.AWS.MediaLive.Types.EmbeddedScte20Detection
import Network.AWS.MediaLive.Types.FecOutputIncludeFec
import Network.AWS.MediaLive.Types.FixedAfd
import Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
import Network.AWS.MediaLive.Types.GlobalConfigurationLowFramerateInputs
import Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
import Network.AWS.MediaLive.Types.H264AdaptiveQuantization
import Network.AWS.MediaLive.Types.H264ColorMetadata
import Network.AWS.MediaLive.Types.H264EntropyEncoding
import Network.AWS.MediaLive.Types.H264FlickerAq
import Network.AWS.MediaLive.Types.H264FramerateControl
import Network.AWS.MediaLive.Types.H264GopBReference
import Network.AWS.MediaLive.Types.H264GopSizeUnits
import Network.AWS.MediaLive.Types.H264Level
import Network.AWS.MediaLive.Types.H264LookAheadRateControl
import Network.AWS.MediaLive.Types.H264ParControl
import Network.AWS.MediaLive.Types.H264Profile
import Network.AWS.MediaLive.Types.H264RateControlMode
import Network.AWS.MediaLive.Types.H264ScanType
import Network.AWS.MediaLive.Types.H264SceneChangeDetect
import Network.AWS.MediaLive.Types.H264SpatialAq
import Network.AWS.MediaLive.Types.H264Syntax
import Network.AWS.MediaLive.Types.H264TemporalAq
import Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
import Network.AWS.MediaLive.Types.HlsAdMarkers
import Network.AWS.MediaLive.Types.HlsAkamaiHTTPTransferMode
import Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
import Network.AWS.MediaLive.Types.HlsClientCache
import Network.AWS.MediaLive.Types.HlsCodecSpecification
import Network.AWS.MediaLive.Types.HlsDirectoryStructure
import Network.AWS.MediaLive.Types.HlsEncryptionType
import Network.AWS.MediaLive.Types.HlsIvInManifest
import Network.AWS.MediaLive.Types.HlsIvSource
import Network.AWS.MediaLive.Types.HlsManifestCompression
import Network.AWS.MediaLive.Types.HlsManifestDurationFormat
import Network.AWS.MediaLive.Types.HlsMediaStoreStorageClass
import Network.AWS.MediaLive.Types.HlsMode
import Network.AWS.MediaLive.Types.HlsOutputSelection
import Network.AWS.MediaLive.Types.HlsProgramDateTime
import Network.AWS.MediaLive.Types.HlsSegmentationMode
import Network.AWS.MediaLive.Types.HlsStreamInfResolution
import Network.AWS.MediaLive.Types.HlsTimedMetadataId3Frame
import Network.AWS.MediaLive.Types.HlsTsFileMode
import Network.AWS.MediaLive.Types.HlsWebdavHTTPTransferMode
import Network.AWS.MediaLive.Types.InputCodec
import Network.AWS.MediaLive.Types.InputDeblockFilter
import Network.AWS.MediaLive.Types.InputDenoiseFilter
import Network.AWS.MediaLive.Types.InputFilter
import Network.AWS.MediaLive.Types.InputLossActionForHlsOut
import Network.AWS.MediaLive.Types.InputLossActionForMsSmoothOut
import Network.AWS.MediaLive.Types.InputLossActionForUdpOut
import Network.AWS.MediaLive.Types.InputLossImageType
import Network.AWS.MediaLive.Types.InputMaximumBitrate
import Network.AWS.MediaLive.Types.InputResolution
import Network.AWS.MediaLive.Types.InputSecurityGroupState
import Network.AWS.MediaLive.Types.InputSourceEndBehavior
import Network.AWS.MediaLive.Types.InputState
import Network.AWS.MediaLive.Types.InputType
import Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
import Network.AWS.MediaLive.Types.M2tsArib
import Network.AWS.MediaLive.Types.M2tsAribCaptionsPidControl
import Network.AWS.MediaLive.Types.M2tsAudioBufferModel
import Network.AWS.MediaLive.Types.M2tsAudioInterval
import Network.AWS.MediaLive.Types.M2tsAudioStreamType
import Network.AWS.MediaLive.Types.M2tsBufferModel
import Network.AWS.MediaLive.Types.M2tsCCDescriptor
import Network.AWS.MediaLive.Types.M2tsEbifControl
import Network.AWS.MediaLive.Types.M2tsEbpPlacement
import Network.AWS.MediaLive.Types.M2tsEsRateInPes
import Network.AWS.MediaLive.Types.M2tsKlv
import Network.AWS.MediaLive.Types.M2tsPcrControl
import Network.AWS.MediaLive.Types.M2tsRateMode
import Network.AWS.MediaLive.Types.M2tsScte35Control
import Network.AWS.MediaLive.Types.M2tsSegmentationMarkers
import Network.AWS.MediaLive.Types.M2tsSegmentationStyle
import Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
import Network.AWS.MediaLive.Types.M3u8PcrControl
import Network.AWS.MediaLive.Types.M3u8Scte35Behavior
import Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
import Network.AWS.MediaLive.Types.Mp2CodingMode
import Network.AWS.MediaLive.Types.NetworkInputServerValidation
import Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
import Network.AWS.MediaLive.Types.RtmpCaptionData
import Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
import Network.AWS.MediaLive.Types.Scte20Convert608To708
import Network.AWS.MediaLive.Types.Scte35AposNoRegionalBlackoutBehavior
import Network.AWS.MediaLive.Types.Scte35AposWebDeliveryAllowedBehavior
import Network.AWS.MediaLive.Types.Scte35SpliceInsertNoRegionalBlackoutBehavior
import Network.AWS.MediaLive.Types.Scte35SpliceInsertWebDeliveryAllowedBehavior
import Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
import Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
import Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
import Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
import Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
import Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType
import Network.AWS.MediaLive.Types.SmoothGroupStreamManifestBehavior
import Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
import Network.AWS.MediaLive.Types.TimecodeConfigSource
import Network.AWS.MediaLive.Types.TtmlDestinationStyleControl
import Network.AWS.MediaLive.Types.UdpTimedMetadataId3Frame
import Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
import Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
import Network.AWS.MediaLive.Types.VideoSelectorColorSpace
import Network.AWS.MediaLive.Types.VideoSelectorColorSpaceUsage
import Network.AWS.MediaLive.Types.AacSettings
import Network.AWS.MediaLive.Types.Ac3Settings
import Network.AWS.MediaLive.Types.ArchiveContainerSettings
import Network.AWS.MediaLive.Types.ArchiveGroupSettings
import Network.AWS.MediaLive.Types.ArchiveOutputSettings
import Network.AWS.MediaLive.Types.AribDestinationSettings
import Network.AWS.MediaLive.Types.AribSourceSettings
import Network.AWS.MediaLive.Types.AudioChannelMapping
import Network.AWS.MediaLive.Types.AudioCodecSettings
import Network.AWS.MediaLive.Types.AudioDescription
import Network.AWS.MediaLive.Types.AudioLanguageSelection
import Network.AWS.MediaLive.Types.AudioNormalizationSettings
import Network.AWS.MediaLive.Types.AudioOnlyHlsSettings
import Network.AWS.MediaLive.Types.AudioPidSelection
import Network.AWS.MediaLive.Types.AudioSelector
import Network.AWS.MediaLive.Types.AudioSelectorSettings
import Network.AWS.MediaLive.Types.AvailBlanking
import Network.AWS.MediaLive.Types.AvailConfiguration
import Network.AWS.MediaLive.Types.AvailSettings
import Network.AWS.MediaLive.Types.BlackoutSlate
import Network.AWS.MediaLive.Types.BurnInDestinationSettings
import Network.AWS.MediaLive.Types.CaptionDescription
import Network.AWS.MediaLive.Types.CaptionDestinationSettings
import Network.AWS.MediaLive.Types.CaptionLanguageMapping
import Network.AWS.MediaLive.Types.CaptionSelector
import Network.AWS.MediaLive.Types.CaptionSelectorSettings
import Network.AWS.MediaLive.Types.Channel
import Network.AWS.MediaLive.Types.ChannelEgressEndpoint
import Network.AWS.MediaLive.Types.ChannelSummary
import Network.AWS.MediaLive.Types.DvbNitSettings
import Network.AWS.MediaLive.Types.DvbSdtSettings
import Network.AWS.MediaLive.Types.DvbSubDestinationSettings
import Network.AWS.MediaLive.Types.DvbSubSourceSettings
import Network.AWS.MediaLive.Types.DvbTdtSettings
import Network.AWS.MediaLive.Types.Eac3Settings
import Network.AWS.MediaLive.Types.EmbeddedDestinationSettings
import Network.AWS.MediaLive.Types.EmbeddedPlusScte20DestinationSettings
import Network.AWS.MediaLive.Types.EmbeddedSourceSettings
import Network.AWS.MediaLive.Types.EncoderSettings
import Network.AWS.MediaLive.Types.FecOutputSettings
import Network.AWS.MediaLive.Types.GlobalConfiguration
import Network.AWS.MediaLive.Types.H264Settings
import Network.AWS.MediaLive.Types.HlsAkamaiSettings
import Network.AWS.MediaLive.Types.HlsBasicPutSettings
import Network.AWS.MediaLive.Types.HlsCdnSettings
import Network.AWS.MediaLive.Types.HlsGroupSettings
import Network.AWS.MediaLive.Types.HlsInputSettings
import Network.AWS.MediaLive.Types.HlsMediaStoreSettings
import Network.AWS.MediaLive.Types.HlsOutputSettings
import Network.AWS.MediaLive.Types.HlsSettings
import Network.AWS.MediaLive.Types.HlsWebdavSettings
import Network.AWS.MediaLive.Types.Input
import Network.AWS.MediaLive.Types.InputAttachment
import Network.AWS.MediaLive.Types.InputChannelLevel
import Network.AWS.MediaLive.Types.InputDestination
import Network.AWS.MediaLive.Types.InputDestinationRequest
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.MediaLive.Types.InputLossBehavior
import Network.AWS.MediaLive.Types.InputSecurityGroup
import Network.AWS.MediaLive.Types.InputSettings
import Network.AWS.MediaLive.Types.InputSource
import Network.AWS.MediaLive.Types.InputSourceRequest
import Network.AWS.MediaLive.Types.InputSpecification
import Network.AWS.MediaLive.Types.InputWhitelistRule
import Network.AWS.MediaLive.Types.InputWhitelistRuleCidr
import Network.AWS.MediaLive.Types.KeyProviderSettings
import Network.AWS.MediaLive.Types.M2tsSettings
import Network.AWS.MediaLive.Types.M3u8Settings
import Network.AWS.MediaLive.Types.Mp2Settings
import Network.AWS.MediaLive.Types.MsSmoothGroupSettings
import Network.AWS.MediaLive.Types.MsSmoothOutputSettings
import Network.AWS.MediaLive.Types.NetworkInputSettings
import Network.AWS.MediaLive.Types.Output
import Network.AWS.MediaLive.Types.OutputDestination
import Network.AWS.MediaLive.Types.OutputDestinationSettings
import Network.AWS.MediaLive.Types.OutputGroup
import Network.AWS.MediaLive.Types.OutputGroupSettings
import Network.AWS.MediaLive.Types.OutputLocationRef
import Network.AWS.MediaLive.Types.OutputSettings
import Network.AWS.MediaLive.Types.PassThroughSettings
import Network.AWS.MediaLive.Types.RemixSettings
import Network.AWS.MediaLive.Types.RtmpCaptionInfoDestinationSettings
import Network.AWS.MediaLive.Types.RtmpGroupSettings
import Network.AWS.MediaLive.Types.RtmpOutputSettings
import Network.AWS.MediaLive.Types.Scte20PlusEmbeddedDestinationSettings
import Network.AWS.MediaLive.Types.Scte20SourceSettings
import Network.AWS.MediaLive.Types.Scte27DestinationSettings
import Network.AWS.MediaLive.Types.Scte27SourceSettings
import Network.AWS.MediaLive.Types.Scte35SpliceInsert
import Network.AWS.MediaLive.Types.Scte35TimeSignalApos
import Network.AWS.MediaLive.Types.SmpteTtDestinationSettings
import Network.AWS.MediaLive.Types.StandardHlsSettings
import Network.AWS.MediaLive.Types.StaticKeySettings
import Network.AWS.MediaLive.Types.TeletextDestinationSettings
import Network.AWS.MediaLive.Types.TeletextSourceSettings
import Network.AWS.MediaLive.Types.TimecodeConfig
import Network.AWS.MediaLive.Types.TtmlDestinationSettings
import Network.AWS.MediaLive.Types.UdpContainerSettings
import Network.AWS.MediaLive.Types.UdpGroupSettings
import Network.AWS.MediaLive.Types.UdpOutputSettings
import Network.AWS.MediaLive.Types.VideoCodecSettings
import Network.AWS.MediaLive.Types.VideoDescription
import Network.AWS.MediaLive.Types.VideoSelector
import Network.AWS.MediaLive.Types.VideoSelectorPid
import Network.AWS.MediaLive.Types.VideoSelectorProgramId
import Network.AWS.MediaLive.Types.VideoSelectorSettings
import Network.AWS.MediaLive.Types.WebvttDestinationSettings

-- | API version @2017-10-14@ of the Amazon Elemental MediaLive SDK configuration.
mediaLive :: Service
mediaLive
  = Service{_svcAbbrev = "MediaLive", _svcSigner = v4,
            _svcPrefix = "medialive", _svcVersion = "2017-10-14",
            _svcEndpoint = defaultEndpoint mediaLive,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "MediaLive",
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

-- | Placeholder documentation for GatewayTimeoutException
_GatewayTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_GatewayTimeoutException
  = _MatchServiceError mediaLive
      "GatewayTimeoutException"
      . hasStatus 504

-- | Placeholder documentation for UnprocessableEntityException
_UnprocessableEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_UnprocessableEntityException
  = _MatchServiceError mediaLive
      "UnprocessableEntityException"
      . hasStatus 422

-- | Placeholder documentation for ConflictException
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException
  = _MatchServiceError mediaLive "ConflictException" .
      hasStatus 409

-- | Placeholder documentation for ForbiddenException
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException
  = _MatchServiceError mediaLive "ForbiddenException" .
      hasStatus 403

-- | Placeholder documentation for NotFoundException
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError mediaLive "NotFoundException" .
      hasStatus 404

-- | Placeholder documentation for TooManyRequestsException
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException
  = _MatchServiceError mediaLive
      "TooManyRequestsException"
      . hasStatus 429

-- | Placeholder documentation for InternalServerErrorException
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException
  = _MatchServiceError mediaLive
      "InternalServerErrorException"
      . hasStatus 500

-- | Placeholder documentation for BadGatewayException
_BadGatewayException :: AsError a => Getting (First ServiceError) a ServiceError
_BadGatewayException
  = _MatchServiceError mediaLive "BadGatewayException"
      . hasStatus 502

-- | Placeholder documentation for BadRequestException
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException
  = _MatchServiceError mediaLive "BadRequestException"
      . hasStatus 400
