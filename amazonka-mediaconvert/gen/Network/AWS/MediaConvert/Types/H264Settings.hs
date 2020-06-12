{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264Settings where

import Network.AWS.Lens
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
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
--
-- /See:/ 'h264Settings' smart constructor.
data H264Settings = H264Settings'{_hUnregisteredSeiTimecode
                                  :: !(Maybe H264UnregisteredSeiTimecode),
                                  _hQualityTuningLevel ::
                                  !(Maybe H264QualityTuningLevel),
                                  _hTemporalAdaptiveQuantization ::
                                  !(Maybe H264TemporalAdaptiveQuantization),
                                  _hSceneChangeDetect ::
                                  !(Maybe H264SceneChangeDetect),
                                  _hHrdBufferInitialFillPercentage ::
                                  !(Maybe Int),
                                  _hSlowPal :: !(Maybe H264SlowPal),
                                  _hParNumerator :: !(Maybe Int),
                                  _hGopSize :: !(Maybe Double),
                                  _hNumberBFramesBetweenReferenceFrames ::
                                  !(Maybe Int),
                                  _hGopSizeUnits :: !(Maybe H264GopSizeUnits),
                                  _hHrdBufferSize :: !(Maybe Int),
                                  _hSlices :: !(Maybe Int),
                                  _hRateControlMode ::
                                  !(Maybe H264RateControlMode),
                                  _hNumberReferenceFrames :: !(Maybe Int),
                                  _hTelecine :: !(Maybe H264Telecine),
                                  _hMinIInterval :: !(Maybe Int),
                                  _hInterlaceMode :: !(Maybe H264InterlaceMode),
                                  _hParControl :: !(Maybe H264ParControl),
                                  _hRepeatPps :: !(Maybe H264RepeatPps),
                                  _hFlickerAdaptiveQuantization ::
                                  !(Maybe H264FlickerAdaptiveQuantization),
                                  _hSoftness :: !(Maybe Int),
                                  _hCodecProfile :: !(Maybe H264CodecProfile),
                                  _hBitrate :: !(Maybe Int),
                                  _hFramerateDenominator :: !(Maybe Int),
                                  _hFramerateConversionAlgorithm ::
                                  !(Maybe H264FramerateConversionAlgorithm),
                                  _hCodecLevel :: !(Maybe H264CodecLevel),
                                  _hEntropyEncoding ::
                                  !(Maybe H264EntropyEncoding),
                                  _hFramerateControl ::
                                  !(Maybe H264FramerateControl),
                                  _hAdaptiveQuantization ::
                                  !(Maybe H264AdaptiveQuantization),
                                  _hFramerateNumerator :: !(Maybe Int),
                                  _hGopBReference :: !(Maybe H264GopBReference),
                                  _hMaxBitrate :: !(Maybe Int),
                                  _hSyntax :: !(Maybe H264Syntax),
                                  _hFieldEncoding :: !(Maybe H264FieldEncoding),
                                  _hGopClosedCadence :: !(Maybe Int),
                                  _hParDenominator :: !(Maybe Int),
                                  _hSpatialAdaptiveQuantization ::
                                  !(Maybe H264SpatialAdaptiveQuantization)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H264Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hUnregisteredSeiTimecode' - Undocumented member.
--
-- * 'hQualityTuningLevel' - Undocumented member.
--
-- * 'hTemporalAdaptiveQuantization' - Undocumented member.
--
-- * 'hSceneChangeDetect' - Undocumented member.
--
-- * 'hHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hSlowPal' - Undocumented member.
--
-- * 'hParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'hGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'hNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'hGopSizeUnits' - Undocumented member.
--
-- * 'hHrdBufferSize' - Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'hSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
--
-- * 'hRateControlMode' - Undocumented member.
--
-- * 'hNumberReferenceFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hTelecine' - Undocumented member.
--
-- * 'hMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hInterlaceMode' - Undocumented member.
--
-- * 'hParControl' - Undocumented member.
--
-- * 'hRepeatPps' - Undocumented member.
--
-- * 'hFlickerAdaptiveQuantization' - Undocumented member.
--
-- * 'hSoftness' - Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
--
-- * 'hCodecProfile' - Undocumented member.
--
-- * 'hBitrate' - Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'hFramerateDenominator' - When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use framerate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'hFramerateConversionAlgorithm' - Undocumented member.
--
-- * 'hCodecLevel' - Undocumented member.
--
-- * 'hEntropyEncoding' - Undocumented member.
--
-- * 'hFramerateControl' - Undocumented member.
--
-- * 'hAdaptiveQuantization' - Undocumented member.
--
-- * 'hFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'hGopBReference' - Undocumented member.
--
-- * 'hMaxBitrate' - Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'hSyntax' - Undocumented member.
--
-- * 'hFieldEncoding' - Undocumented member.
--
-- * 'hGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hParDenominator' - Pixel Aspect Ratio denominator.
--
-- * 'hSpatialAdaptiveQuantization' - Undocumented member.
h264Settings
    :: H264Settings
h264Settings
  = H264Settings'{_hUnregisteredSeiTimecode = Nothing,
                  _hQualityTuningLevel = Nothing,
                  _hTemporalAdaptiveQuantization = Nothing,
                  _hSceneChangeDetect = Nothing,
                  _hHrdBufferInitialFillPercentage = Nothing,
                  _hSlowPal = Nothing, _hParNumerator = Nothing,
                  _hGopSize = Nothing,
                  _hNumberBFramesBetweenReferenceFrames = Nothing,
                  _hGopSizeUnits = Nothing, _hHrdBufferSize = Nothing,
                  _hSlices = Nothing, _hRateControlMode = Nothing,
                  _hNumberReferenceFrames = Nothing,
                  _hTelecine = Nothing, _hMinIInterval = Nothing,
                  _hInterlaceMode = Nothing, _hParControl = Nothing,
                  _hRepeatPps = Nothing,
                  _hFlickerAdaptiveQuantization = Nothing,
                  _hSoftness = Nothing, _hCodecProfile = Nothing,
                  _hBitrate = Nothing,
                  _hFramerateDenominator = Nothing,
                  _hFramerateConversionAlgorithm = Nothing,
                  _hCodecLevel = Nothing, _hEntropyEncoding = Nothing,
                  _hFramerateControl = Nothing,
                  _hAdaptiveQuantization = Nothing,
                  _hFramerateNumerator = Nothing,
                  _hGopBReference = Nothing, _hMaxBitrate = Nothing,
                  _hSyntax = Nothing, _hFieldEncoding = Nothing,
                  _hGopClosedCadence = Nothing,
                  _hParDenominator = Nothing,
                  _hSpatialAdaptiveQuantization = Nothing}

-- | Undocumented member.
hUnregisteredSeiTimecode :: Lens' H264Settings (Maybe H264UnregisteredSeiTimecode)
hUnregisteredSeiTimecode = lens _hUnregisteredSeiTimecode (\ s a -> s{_hUnregisteredSeiTimecode = a})

-- | Undocumented member.
hQualityTuningLevel :: Lens' H264Settings (Maybe H264QualityTuningLevel)
hQualityTuningLevel = lens _hQualityTuningLevel (\ s a -> s{_hQualityTuningLevel = a})

-- | Undocumented member.
hTemporalAdaptiveQuantization :: Lens' H264Settings (Maybe H264TemporalAdaptiveQuantization)
hTemporalAdaptiveQuantization = lens _hTemporalAdaptiveQuantization (\ s a -> s{_hTemporalAdaptiveQuantization = a})

-- | Undocumented member.
hSceneChangeDetect :: Lens' H264Settings (Maybe H264SceneChangeDetect)
hSceneChangeDetect = lens _hSceneChangeDetect (\ s a -> s{_hSceneChangeDetect = a})

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hHrdBufferInitialFillPercentage :: Lens' H264Settings (Maybe Int)
hHrdBufferInitialFillPercentage = lens _hHrdBufferInitialFillPercentage (\ s a -> s{_hHrdBufferInitialFillPercentage = a})

-- | Undocumented member.
hSlowPal :: Lens' H264Settings (Maybe H264SlowPal)
hSlowPal = lens _hSlowPal (\ s a -> s{_hSlowPal = a})

-- | Pixel Aspect Ratio numerator.
hParNumerator :: Lens' H264Settings (Maybe Int)
hParNumerator = lens _hParNumerator (\ s a -> s{_hParNumerator = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
hGopSize :: Lens' H264Settings (Maybe Double)
hGopSize = lens _hGopSize (\ s a -> s{_hGopSize = a})

-- | Number of B-frames between reference frames.
hNumberBFramesBetweenReferenceFrames :: Lens' H264Settings (Maybe Int)
hNumberBFramesBetweenReferenceFrames = lens _hNumberBFramesBetweenReferenceFrames (\ s a -> s{_hNumberBFramesBetweenReferenceFrames = a})

-- | Undocumented member.
hGopSizeUnits :: Lens' H264Settings (Maybe H264GopSizeUnits)
hGopSizeUnits = lens _hGopSizeUnits (\ s a -> s{_hGopSizeUnits = a})

-- | Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
hHrdBufferSize :: Lens' H264Settings (Maybe Int)
hHrdBufferSize = lens _hHrdBufferSize (\ s a -> s{_hHrdBufferSize = a})

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
hSlices :: Lens' H264Settings (Maybe Int)
hSlices = lens _hSlices (\ s a -> s{_hSlices = a})

-- | Undocumented member.
hRateControlMode :: Lens' H264Settings (Maybe H264RateControlMode)
hRateControlMode = lens _hRateControlMode (\ s a -> s{_hRateControlMode = a})

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hNumberReferenceFrames :: Lens' H264Settings (Maybe Int)
hNumberReferenceFrames = lens _hNumberReferenceFrames (\ s a -> s{_hNumberReferenceFrames = a})

-- | Undocumented member.
hTelecine :: Lens' H264Settings (Maybe H264Telecine)
hTelecine = lens _hTelecine (\ s a -> s{_hTelecine = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hMinIInterval :: Lens' H264Settings (Maybe Int)
hMinIInterval = lens _hMinIInterval (\ s a -> s{_hMinIInterval = a})

-- | Undocumented member.
hInterlaceMode :: Lens' H264Settings (Maybe H264InterlaceMode)
hInterlaceMode = lens _hInterlaceMode (\ s a -> s{_hInterlaceMode = a})

-- | Undocumented member.
hParControl :: Lens' H264Settings (Maybe H264ParControl)
hParControl = lens _hParControl (\ s a -> s{_hParControl = a})

-- | Undocumented member.
hRepeatPps :: Lens' H264Settings (Maybe H264RepeatPps)
hRepeatPps = lens _hRepeatPps (\ s a -> s{_hRepeatPps = a})

-- | Undocumented member.
hFlickerAdaptiveQuantization :: Lens' H264Settings (Maybe H264FlickerAdaptiveQuantization)
hFlickerAdaptiveQuantization = lens _hFlickerAdaptiveQuantization (\ s a -> s{_hFlickerAdaptiveQuantization = a})

-- | Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
hSoftness :: Lens' H264Settings (Maybe Int)
hSoftness = lens _hSoftness (\ s a -> s{_hSoftness = a})

-- | Undocumented member.
hCodecProfile :: Lens' H264Settings (Maybe H264CodecProfile)
hCodecProfile = lens _hCodecProfile (\ s a -> s{_hCodecProfile = a})

-- | Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
hBitrate :: Lens' H264Settings (Maybe Int)
hBitrate = lens _hBitrate (\ s a -> s{_hBitrate = a})

-- | When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use framerate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
hFramerateDenominator :: Lens' H264Settings (Maybe Int)
hFramerateDenominator = lens _hFramerateDenominator (\ s a -> s{_hFramerateDenominator = a})

-- | Undocumented member.
hFramerateConversionAlgorithm :: Lens' H264Settings (Maybe H264FramerateConversionAlgorithm)
hFramerateConversionAlgorithm = lens _hFramerateConversionAlgorithm (\ s a -> s{_hFramerateConversionAlgorithm = a})

-- | Undocumented member.
hCodecLevel :: Lens' H264Settings (Maybe H264CodecLevel)
hCodecLevel = lens _hCodecLevel (\ s a -> s{_hCodecLevel = a})

-- | Undocumented member.
hEntropyEncoding :: Lens' H264Settings (Maybe H264EntropyEncoding)
hEntropyEncoding = lens _hEntropyEncoding (\ s a -> s{_hEntropyEncoding = a})

-- | Undocumented member.
hFramerateControl :: Lens' H264Settings (Maybe H264FramerateControl)
hFramerateControl = lens _hFramerateControl (\ s a -> s{_hFramerateControl = a})

-- | Undocumented member.
hAdaptiveQuantization :: Lens' H264Settings (Maybe H264AdaptiveQuantization)
hAdaptiveQuantization = lens _hAdaptiveQuantization (\ s a -> s{_hAdaptiveQuantization = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
hFramerateNumerator :: Lens' H264Settings (Maybe Int)
hFramerateNumerator = lens _hFramerateNumerator (\ s a -> s{_hFramerateNumerator = a})

-- | Undocumented member.
hGopBReference :: Lens' H264Settings (Maybe H264GopBReference)
hGopBReference = lens _hGopBReference (\ s a -> s{_hGopBReference = a})

-- | Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
hMaxBitrate :: Lens' H264Settings (Maybe Int)
hMaxBitrate = lens _hMaxBitrate (\ s a -> s{_hMaxBitrate = a})

-- | Undocumented member.
hSyntax :: Lens' H264Settings (Maybe H264Syntax)
hSyntax = lens _hSyntax (\ s a -> s{_hSyntax = a})

-- | Undocumented member.
hFieldEncoding :: Lens' H264Settings (Maybe H264FieldEncoding)
hFieldEncoding = lens _hFieldEncoding (\ s a -> s{_hFieldEncoding = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hGopClosedCadence :: Lens' H264Settings (Maybe Int)
hGopClosedCadence = lens _hGopClosedCadence (\ s a -> s{_hGopClosedCadence = a})

-- | Pixel Aspect Ratio denominator.
hParDenominator :: Lens' H264Settings (Maybe Int)
hParDenominator = lens _hParDenominator (\ s a -> s{_hParDenominator = a})

-- | Undocumented member.
hSpatialAdaptiveQuantization :: Lens' H264Settings (Maybe H264SpatialAdaptiveQuantization)
hSpatialAdaptiveQuantization = lens _hSpatialAdaptiveQuantization (\ s a -> s{_hSpatialAdaptiveQuantization = a})

instance FromJSON H264Settings where
        parseJSON
          = withObject "H264Settings"
              (\ x ->
                 H264Settings' <$>
                   (x .:? "unregisteredSeiTimecode") <*>
                     (x .:? "qualityTuningLevel")
                     <*> (x .:? "temporalAdaptiveQuantization")
                     <*> (x .:? "sceneChangeDetect")
                     <*> (x .:? "hrdBufferInitialFillPercentage")
                     <*> (x .:? "slowPal")
                     <*> (x .:? "parNumerator")
                     <*> (x .:? "gopSize")
                     <*> (x .:? "numberBFramesBetweenReferenceFrames")
                     <*> (x .:? "gopSizeUnits")
                     <*> (x .:? "hrdBufferSize")
                     <*> (x .:? "slices")
                     <*> (x .:? "rateControlMode")
                     <*> (x .:? "numberReferenceFrames")
                     <*> (x .:? "telecine")
                     <*> (x .:? "minIInterval")
                     <*> (x .:? "interlaceMode")
                     <*> (x .:? "parControl")
                     <*> (x .:? "repeatPps")
                     <*> (x .:? "flickerAdaptiveQuantization")
                     <*> (x .:? "softness")
                     <*> (x .:? "codecProfile")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "framerateDenominator")
                     <*> (x .:? "framerateConversionAlgorithm")
                     <*> (x .:? "codecLevel")
                     <*> (x .:? "entropyEncoding")
                     <*> (x .:? "framerateControl")
                     <*> (x .:? "adaptiveQuantization")
                     <*> (x .:? "framerateNumerator")
                     <*> (x .:? "gopBReference")
                     <*> (x .:? "maxBitrate")
                     <*> (x .:? "syntax")
                     <*> (x .:? "fieldEncoding")
                     <*> (x .:? "gopClosedCadence")
                     <*> (x .:? "parDenominator")
                     <*> (x .:? "spatialAdaptiveQuantization"))

instance Hashable H264Settings where

instance NFData H264Settings where

instance ToJSON H264Settings where
        toJSON H264Settings'{..}
          = object
              (catMaybes
                 [("unregisteredSeiTimecode" .=) <$>
                    _hUnregisteredSeiTimecode,
                  ("qualityTuningLevel" .=) <$> _hQualityTuningLevel,
                  ("temporalAdaptiveQuantization" .=) <$>
                    _hTemporalAdaptiveQuantization,
                  ("sceneChangeDetect" .=) <$> _hSceneChangeDetect,
                  ("hrdBufferInitialFillPercentage" .=) <$>
                    _hHrdBufferInitialFillPercentage,
                  ("slowPal" .=) <$> _hSlowPal,
                  ("parNumerator" .=) <$> _hParNumerator,
                  ("gopSize" .=) <$> _hGopSize,
                  ("numberBFramesBetweenReferenceFrames" .=) <$>
                    _hNumberBFramesBetweenReferenceFrames,
                  ("gopSizeUnits" .=) <$> _hGopSizeUnits,
                  ("hrdBufferSize" .=) <$> _hHrdBufferSize,
                  ("slices" .=) <$> _hSlices,
                  ("rateControlMode" .=) <$> _hRateControlMode,
                  ("numberReferenceFrames" .=) <$>
                    _hNumberReferenceFrames,
                  ("telecine" .=) <$> _hTelecine,
                  ("minIInterval" .=) <$> _hMinIInterval,
                  ("interlaceMode" .=) <$> _hInterlaceMode,
                  ("parControl" .=) <$> _hParControl,
                  ("repeatPps" .=) <$> _hRepeatPps,
                  ("flickerAdaptiveQuantization" .=) <$>
                    _hFlickerAdaptiveQuantization,
                  ("softness" .=) <$> _hSoftness,
                  ("codecProfile" .=) <$> _hCodecProfile,
                  ("bitrate" .=) <$> _hBitrate,
                  ("framerateDenominator" .=) <$>
                    _hFramerateDenominator,
                  ("framerateConversionAlgorithm" .=) <$>
                    _hFramerateConversionAlgorithm,
                  ("codecLevel" .=) <$> _hCodecLevel,
                  ("entropyEncoding" .=) <$> _hEntropyEncoding,
                  ("framerateControl" .=) <$> _hFramerateControl,
                  ("adaptiveQuantization" .=) <$>
                    _hAdaptiveQuantization,
                  ("framerateNumerator" .=) <$> _hFramerateNumerator,
                  ("gopBReference" .=) <$> _hGopBReference,
                  ("maxBitrate" .=) <$> _hMaxBitrate,
                  ("syntax" .=) <$> _hSyntax,
                  ("fieldEncoding" .=) <$> _hFieldEncoding,
                  ("gopClosedCadence" .=) <$> _hGopClosedCadence,
                  ("parDenominator" .=) <$> _hParDenominator,
                  ("spatialAdaptiveQuantization" .=) <$>
                    _hSpatialAdaptiveQuantization])
