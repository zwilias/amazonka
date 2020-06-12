{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265Settings where

import Network.AWS.Lens
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
import Network.AWS.Prelude

-- | Settings for H265 codec
--
-- /See:/ 'h265Settings' smart constructor.
data H265Settings = H265Settings'{_hsUnregisteredSeiTimecode
                                  :: !(Maybe H265UnregisteredSeiTimecode),
                                  _hsQualityTuningLevel ::
                                  !(Maybe H265QualityTuningLevel),
                                  _hsTemporalAdaptiveQuantization ::
                                  !(Maybe H265TemporalAdaptiveQuantization),
                                  _hsSceneChangeDetect ::
                                  !(Maybe H265SceneChangeDetect),
                                  _hsHrdBufferInitialFillPercentage ::
                                  !(Maybe Int),
                                  _hsTiles :: !(Maybe H265Tiles),
                                  _hsSlowPal :: !(Maybe H265SlowPal),
                                  _hsTemporalIds :: !(Maybe H265TemporalIds),
                                  _hsParNumerator :: !(Maybe Int),
                                  _hsGopSize :: !(Maybe Double),
                                  _hsNumberBFramesBetweenReferenceFrames ::
                                  !(Maybe Int),
                                  _hsGopSizeUnits :: !(Maybe H265GopSizeUnits),
                                  _hsHrdBufferSize :: !(Maybe Int),
                                  _hsSlices :: !(Maybe Int),
                                  _hsAlternateTransferFunctionSei ::
                                  !(Maybe H265AlternateTransferFunctionSei),
                                  _hsRateControlMode ::
                                  !(Maybe H265RateControlMode),
                                  _hsNumberReferenceFrames :: !(Maybe Int),
                                  _hsTelecine :: !(Maybe H265Telecine),
                                  _hsMinIInterval :: !(Maybe Int),
                                  _hsInterlaceMode ::
                                  !(Maybe H265InterlaceMode),
                                  _hsParControl :: !(Maybe H265ParControl),
                                  _hsFlickerAdaptiveQuantization ::
                                  !(Maybe H265FlickerAdaptiveQuantization),
                                  _hsSampleAdaptiveOffsetFilterMode ::
                                  !(Maybe H265SampleAdaptiveOffsetFilterMode),
                                  _hsCodecProfile :: !(Maybe H265CodecProfile),
                                  _hsBitrate :: !(Maybe Int),
                                  _hsFramerateDenominator :: !(Maybe Int),
                                  _hsFramerateConversionAlgorithm ::
                                  !(Maybe H265FramerateConversionAlgorithm),
                                  _hsCodecLevel :: !(Maybe H265CodecLevel),
                                  _hsFramerateControl ::
                                  !(Maybe H265FramerateControl),
                                  _hsAdaptiveQuantization ::
                                  !(Maybe H265AdaptiveQuantization),
                                  _hsFramerateNumerator :: !(Maybe Int),
                                  _hsGopBReference ::
                                  !(Maybe H265GopBReference),
                                  _hsMaxBitrate :: !(Maybe Int),
                                  _hsGopClosedCadence :: !(Maybe Int),
                                  _hsParDenominator :: !(Maybe Int),
                                  _hsSpatialAdaptiveQuantization ::
                                  !(Maybe H265SpatialAdaptiveQuantization)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H265Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsUnregisteredSeiTimecode' - Undocumented member.
--
-- * 'hsQualityTuningLevel' - Undocumented member.
--
-- * 'hsTemporalAdaptiveQuantization' - Undocumented member.
--
-- * 'hsSceneChangeDetect' - Undocumented member.
--
-- * 'hsHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hsTiles' - Undocumented member.
--
-- * 'hsSlowPal' - Undocumented member.
--
-- * 'hsTemporalIds' - Undocumented member.
--
-- * 'hsParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'hsGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'hsNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'hsGopSizeUnits' - Undocumented member.
--
-- * 'hsHrdBufferSize' - Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'hsSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
--
-- * 'hsAlternateTransferFunctionSei' - Undocumented member.
--
-- * 'hsRateControlMode' - Undocumented member.
--
-- * 'hsNumberReferenceFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hsTelecine' - Undocumented member.
--
-- * 'hsMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hsInterlaceMode' - Undocumented member.
--
-- * 'hsParControl' - Undocumented member.
--
-- * 'hsFlickerAdaptiveQuantization' - Undocumented member.
--
-- * 'hsSampleAdaptiveOffsetFilterMode' - Undocumented member.
--
-- * 'hsCodecProfile' - Undocumented member.
--
-- * 'hsBitrate' - Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'hsFramerateDenominator' - Framerate denominator.
--
-- * 'hsFramerateConversionAlgorithm' - Undocumented member.
--
-- * 'hsCodecLevel' - Undocumented member.
--
-- * 'hsFramerateControl' - Undocumented member.
--
-- * 'hsAdaptiveQuantization' - Undocumented member.
--
-- * 'hsFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'hsGopBReference' - Undocumented member.
--
-- * 'hsMaxBitrate' - Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'hsGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hsParDenominator' - Pixel Aspect Ratio denominator.
--
-- * 'hsSpatialAdaptiveQuantization' - Undocumented member.
h265Settings
    :: H265Settings
h265Settings
  = H265Settings'{_hsUnregisteredSeiTimecode = Nothing,
                  _hsQualityTuningLevel = Nothing,
                  _hsTemporalAdaptiveQuantization = Nothing,
                  _hsSceneChangeDetect = Nothing,
                  _hsHrdBufferInitialFillPercentage = Nothing,
                  _hsTiles = Nothing, _hsSlowPal = Nothing,
                  _hsTemporalIds = Nothing, _hsParNumerator = Nothing,
                  _hsGopSize = Nothing,
                  _hsNumberBFramesBetweenReferenceFrames = Nothing,
                  _hsGopSizeUnits = Nothing,
                  _hsHrdBufferSize = Nothing, _hsSlices = Nothing,
                  _hsAlternateTransferFunctionSei = Nothing,
                  _hsRateControlMode = Nothing,
                  _hsNumberReferenceFrames = Nothing,
                  _hsTelecine = Nothing, _hsMinIInterval = Nothing,
                  _hsInterlaceMode = Nothing, _hsParControl = Nothing,
                  _hsFlickerAdaptiveQuantization = Nothing,
                  _hsSampleAdaptiveOffsetFilterMode = Nothing,
                  _hsCodecProfile = Nothing, _hsBitrate = Nothing,
                  _hsFramerateDenominator = Nothing,
                  _hsFramerateConversionAlgorithm = Nothing,
                  _hsCodecLevel = Nothing,
                  _hsFramerateControl = Nothing,
                  _hsAdaptiveQuantization = Nothing,
                  _hsFramerateNumerator = Nothing,
                  _hsGopBReference = Nothing, _hsMaxBitrate = Nothing,
                  _hsGopClosedCadence = Nothing,
                  _hsParDenominator = Nothing,
                  _hsSpatialAdaptiveQuantization = Nothing}

-- | Undocumented member.
hsUnregisteredSeiTimecode :: Lens' H265Settings (Maybe H265UnregisteredSeiTimecode)
hsUnregisteredSeiTimecode = lens _hsUnregisteredSeiTimecode (\ s a -> s{_hsUnregisteredSeiTimecode = a})

-- | Undocumented member.
hsQualityTuningLevel :: Lens' H265Settings (Maybe H265QualityTuningLevel)
hsQualityTuningLevel = lens _hsQualityTuningLevel (\ s a -> s{_hsQualityTuningLevel = a})

-- | Undocumented member.
hsTemporalAdaptiveQuantization :: Lens' H265Settings (Maybe H265TemporalAdaptiveQuantization)
hsTemporalAdaptiveQuantization = lens _hsTemporalAdaptiveQuantization (\ s a -> s{_hsTemporalAdaptiveQuantization = a})

-- | Undocumented member.
hsSceneChangeDetect :: Lens' H265Settings (Maybe H265SceneChangeDetect)
hsSceneChangeDetect = lens _hsSceneChangeDetect (\ s a -> s{_hsSceneChangeDetect = a})

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hsHrdBufferInitialFillPercentage :: Lens' H265Settings (Maybe Int)
hsHrdBufferInitialFillPercentage = lens _hsHrdBufferInitialFillPercentage (\ s a -> s{_hsHrdBufferInitialFillPercentage = a})

-- | Undocumented member.
hsTiles :: Lens' H265Settings (Maybe H265Tiles)
hsTiles = lens _hsTiles (\ s a -> s{_hsTiles = a})

-- | Undocumented member.
hsSlowPal :: Lens' H265Settings (Maybe H265SlowPal)
hsSlowPal = lens _hsSlowPal (\ s a -> s{_hsSlowPal = a})

-- | Undocumented member.
hsTemporalIds :: Lens' H265Settings (Maybe H265TemporalIds)
hsTemporalIds = lens _hsTemporalIds (\ s a -> s{_hsTemporalIds = a})

-- | Pixel Aspect Ratio numerator.
hsParNumerator :: Lens' H265Settings (Maybe Int)
hsParNumerator = lens _hsParNumerator (\ s a -> s{_hsParNumerator = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
hsGopSize :: Lens' H265Settings (Maybe Double)
hsGopSize = lens _hsGopSize (\ s a -> s{_hsGopSize = a})

-- | Number of B-frames between reference frames.
hsNumberBFramesBetweenReferenceFrames :: Lens' H265Settings (Maybe Int)
hsNumberBFramesBetweenReferenceFrames = lens _hsNumberBFramesBetweenReferenceFrames (\ s a -> s{_hsNumberBFramesBetweenReferenceFrames = a})

-- | Undocumented member.
hsGopSizeUnits :: Lens' H265Settings (Maybe H265GopSizeUnits)
hsGopSizeUnits = lens _hsGopSizeUnits (\ s a -> s{_hsGopSizeUnits = a})

-- | Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
hsHrdBufferSize :: Lens' H265Settings (Maybe Int)
hsHrdBufferSize = lens _hsHrdBufferSize (\ s a -> s{_hsHrdBufferSize = a})

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
hsSlices :: Lens' H265Settings (Maybe Int)
hsSlices = lens _hsSlices (\ s a -> s{_hsSlices = a})

-- | Undocumented member.
hsAlternateTransferFunctionSei :: Lens' H265Settings (Maybe H265AlternateTransferFunctionSei)
hsAlternateTransferFunctionSei = lens _hsAlternateTransferFunctionSei (\ s a -> s{_hsAlternateTransferFunctionSei = a})

-- | Undocumented member.
hsRateControlMode :: Lens' H265Settings (Maybe H265RateControlMode)
hsRateControlMode = lens _hsRateControlMode (\ s a -> s{_hsRateControlMode = a})

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hsNumberReferenceFrames :: Lens' H265Settings (Maybe Int)
hsNumberReferenceFrames = lens _hsNumberReferenceFrames (\ s a -> s{_hsNumberReferenceFrames = a})

-- | Undocumented member.
hsTelecine :: Lens' H265Settings (Maybe H265Telecine)
hsTelecine = lens _hsTelecine (\ s a -> s{_hsTelecine = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hsMinIInterval :: Lens' H265Settings (Maybe Int)
hsMinIInterval = lens _hsMinIInterval (\ s a -> s{_hsMinIInterval = a})

-- | Undocumented member.
hsInterlaceMode :: Lens' H265Settings (Maybe H265InterlaceMode)
hsInterlaceMode = lens _hsInterlaceMode (\ s a -> s{_hsInterlaceMode = a})

-- | Undocumented member.
hsParControl :: Lens' H265Settings (Maybe H265ParControl)
hsParControl = lens _hsParControl (\ s a -> s{_hsParControl = a})

-- | Undocumented member.
hsFlickerAdaptiveQuantization :: Lens' H265Settings (Maybe H265FlickerAdaptiveQuantization)
hsFlickerAdaptiveQuantization = lens _hsFlickerAdaptiveQuantization (\ s a -> s{_hsFlickerAdaptiveQuantization = a})

-- | Undocumented member.
hsSampleAdaptiveOffsetFilterMode :: Lens' H265Settings (Maybe H265SampleAdaptiveOffsetFilterMode)
hsSampleAdaptiveOffsetFilterMode = lens _hsSampleAdaptiveOffsetFilterMode (\ s a -> s{_hsSampleAdaptiveOffsetFilterMode = a})

-- | Undocumented member.
hsCodecProfile :: Lens' H265Settings (Maybe H265CodecProfile)
hsCodecProfile = lens _hsCodecProfile (\ s a -> s{_hsCodecProfile = a})

-- | Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
hsBitrate :: Lens' H265Settings (Maybe Int)
hsBitrate = lens _hsBitrate (\ s a -> s{_hsBitrate = a})

-- | Framerate denominator.
hsFramerateDenominator :: Lens' H265Settings (Maybe Int)
hsFramerateDenominator = lens _hsFramerateDenominator (\ s a -> s{_hsFramerateDenominator = a})

-- | Undocumented member.
hsFramerateConversionAlgorithm :: Lens' H265Settings (Maybe H265FramerateConversionAlgorithm)
hsFramerateConversionAlgorithm = lens _hsFramerateConversionAlgorithm (\ s a -> s{_hsFramerateConversionAlgorithm = a})

-- | Undocumented member.
hsCodecLevel :: Lens' H265Settings (Maybe H265CodecLevel)
hsCodecLevel = lens _hsCodecLevel (\ s a -> s{_hsCodecLevel = a})

-- | Undocumented member.
hsFramerateControl :: Lens' H265Settings (Maybe H265FramerateControl)
hsFramerateControl = lens _hsFramerateControl (\ s a -> s{_hsFramerateControl = a})

-- | Undocumented member.
hsAdaptiveQuantization :: Lens' H265Settings (Maybe H265AdaptiveQuantization)
hsAdaptiveQuantization = lens _hsAdaptiveQuantization (\ s a -> s{_hsAdaptiveQuantization = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
hsFramerateNumerator :: Lens' H265Settings (Maybe Int)
hsFramerateNumerator = lens _hsFramerateNumerator (\ s a -> s{_hsFramerateNumerator = a})

-- | Undocumented member.
hsGopBReference :: Lens' H265Settings (Maybe H265GopBReference)
hsGopBReference = lens _hsGopBReference (\ s a -> s{_hsGopBReference = a})

-- | Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
hsMaxBitrate :: Lens' H265Settings (Maybe Int)
hsMaxBitrate = lens _hsMaxBitrate (\ s a -> s{_hsMaxBitrate = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hsGopClosedCadence :: Lens' H265Settings (Maybe Int)
hsGopClosedCadence = lens _hsGopClosedCadence (\ s a -> s{_hsGopClosedCadence = a})

-- | Pixel Aspect Ratio denominator.
hsParDenominator :: Lens' H265Settings (Maybe Int)
hsParDenominator = lens _hsParDenominator (\ s a -> s{_hsParDenominator = a})

-- | Undocumented member.
hsSpatialAdaptiveQuantization :: Lens' H265Settings (Maybe H265SpatialAdaptiveQuantization)
hsSpatialAdaptiveQuantization = lens _hsSpatialAdaptiveQuantization (\ s a -> s{_hsSpatialAdaptiveQuantization = a})

instance FromJSON H265Settings where
        parseJSON
          = withObject "H265Settings"
              (\ x ->
                 H265Settings' <$>
                   (x .:? "unregisteredSeiTimecode") <*>
                     (x .:? "qualityTuningLevel")
                     <*> (x .:? "temporalAdaptiveQuantization")
                     <*> (x .:? "sceneChangeDetect")
                     <*> (x .:? "hrdBufferInitialFillPercentage")
                     <*> (x .:? "tiles")
                     <*> (x .:? "slowPal")
                     <*> (x .:? "temporalIds")
                     <*> (x .:? "parNumerator")
                     <*> (x .:? "gopSize")
                     <*> (x .:? "numberBFramesBetweenReferenceFrames")
                     <*> (x .:? "gopSizeUnits")
                     <*> (x .:? "hrdBufferSize")
                     <*> (x .:? "slices")
                     <*> (x .:? "alternateTransferFunctionSei")
                     <*> (x .:? "rateControlMode")
                     <*> (x .:? "numberReferenceFrames")
                     <*> (x .:? "telecine")
                     <*> (x .:? "minIInterval")
                     <*> (x .:? "interlaceMode")
                     <*> (x .:? "parControl")
                     <*> (x .:? "flickerAdaptiveQuantization")
                     <*> (x .:? "sampleAdaptiveOffsetFilterMode")
                     <*> (x .:? "codecProfile")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "framerateDenominator")
                     <*> (x .:? "framerateConversionAlgorithm")
                     <*> (x .:? "codecLevel")
                     <*> (x .:? "framerateControl")
                     <*> (x .:? "adaptiveQuantization")
                     <*> (x .:? "framerateNumerator")
                     <*> (x .:? "gopBReference")
                     <*> (x .:? "maxBitrate")
                     <*> (x .:? "gopClosedCadence")
                     <*> (x .:? "parDenominator")
                     <*> (x .:? "spatialAdaptiveQuantization"))

instance Hashable H265Settings where

instance NFData H265Settings where

instance ToJSON H265Settings where
        toJSON H265Settings'{..}
          = object
              (catMaybes
                 [("unregisteredSeiTimecode" .=) <$>
                    _hsUnregisteredSeiTimecode,
                  ("qualityTuningLevel" .=) <$> _hsQualityTuningLevel,
                  ("temporalAdaptiveQuantization" .=) <$>
                    _hsTemporalAdaptiveQuantization,
                  ("sceneChangeDetect" .=) <$> _hsSceneChangeDetect,
                  ("hrdBufferInitialFillPercentage" .=) <$>
                    _hsHrdBufferInitialFillPercentage,
                  ("tiles" .=) <$> _hsTiles,
                  ("slowPal" .=) <$> _hsSlowPal,
                  ("temporalIds" .=) <$> _hsTemporalIds,
                  ("parNumerator" .=) <$> _hsParNumerator,
                  ("gopSize" .=) <$> _hsGopSize,
                  ("numberBFramesBetweenReferenceFrames" .=) <$>
                    _hsNumberBFramesBetweenReferenceFrames,
                  ("gopSizeUnits" .=) <$> _hsGopSizeUnits,
                  ("hrdBufferSize" .=) <$> _hsHrdBufferSize,
                  ("slices" .=) <$> _hsSlices,
                  ("alternateTransferFunctionSei" .=) <$>
                    _hsAlternateTransferFunctionSei,
                  ("rateControlMode" .=) <$> _hsRateControlMode,
                  ("numberReferenceFrames" .=) <$>
                    _hsNumberReferenceFrames,
                  ("telecine" .=) <$> _hsTelecine,
                  ("minIInterval" .=) <$> _hsMinIInterval,
                  ("interlaceMode" .=) <$> _hsInterlaceMode,
                  ("parControl" .=) <$> _hsParControl,
                  ("flickerAdaptiveQuantization" .=) <$>
                    _hsFlickerAdaptiveQuantization,
                  ("sampleAdaptiveOffsetFilterMode" .=) <$>
                    _hsSampleAdaptiveOffsetFilterMode,
                  ("codecProfile" .=) <$> _hsCodecProfile,
                  ("bitrate" .=) <$> _hsBitrate,
                  ("framerateDenominator" .=) <$>
                    _hsFramerateDenominator,
                  ("framerateConversionAlgorithm" .=) <$>
                    _hsFramerateConversionAlgorithm,
                  ("codecLevel" .=) <$> _hsCodecLevel,
                  ("framerateControl" .=) <$> _hsFramerateControl,
                  ("adaptiveQuantization" .=) <$>
                    _hsAdaptiveQuantization,
                  ("framerateNumerator" .=) <$> _hsFramerateNumerator,
                  ("gopBReference" .=) <$> _hsGopBReference,
                  ("maxBitrate" .=) <$> _hsMaxBitrate,
                  ("gopClosedCadence" .=) <$> _hsGopClosedCadence,
                  ("parDenominator" .=) <$> _hsParDenominator,
                  ("spatialAdaptiveQuantization" .=) <$>
                    _hsSpatialAdaptiveQuantization])
