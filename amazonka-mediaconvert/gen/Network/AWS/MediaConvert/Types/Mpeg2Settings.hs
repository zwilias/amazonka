{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2Settings where

import Network.AWS.Lens
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
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
--
-- /See:/ 'mpeg2Settings' smart constructor.
data Mpeg2Settings = Mpeg2Settings'{_msQualityTuningLevel
                                    :: !(Maybe Mpeg2QualityTuningLevel),
                                    _msTemporalAdaptiveQuantization ::
                                    !(Maybe Mpeg2TemporalAdaptiveQuantization),
                                    _msSceneChangeDetect ::
                                    !(Maybe Mpeg2SceneChangeDetect),
                                    _msHrdBufferInitialFillPercentage ::
                                    !(Maybe Int),
                                    _msSlowPal :: !(Maybe Mpeg2SlowPal),
                                    _msParNumerator :: !(Maybe Int),
                                    _msGopSize :: !(Maybe Double),
                                    _msNumberBFramesBetweenReferenceFrames ::
                                    !(Maybe Int),
                                    _msGopSizeUnits ::
                                    !(Maybe Mpeg2GopSizeUnits),
                                    _msHrdBufferSize :: !(Maybe Int),
                                    _msRateControlMode ::
                                    !(Maybe Mpeg2RateControlMode),
                                    _msTelecine :: !(Maybe Mpeg2Telecine),
                                    _msIntraDcPrecision ::
                                    !(Maybe Mpeg2IntraDcPrecision),
                                    _msMinIInterval :: !(Maybe Int),
                                    _msInterlaceMode ::
                                    !(Maybe Mpeg2InterlaceMode),
                                    _msParControl :: !(Maybe Mpeg2ParControl),
                                    _msSoftness :: !(Maybe Int),
                                    _msCodecProfile ::
                                    !(Maybe Mpeg2CodecProfile),
                                    _msBitrate :: !(Maybe Int),
                                    _msFramerateDenominator :: !(Maybe Int),
                                    _msFramerateConversionAlgorithm ::
                                    !(Maybe Mpeg2FramerateConversionAlgorithm),
                                    _msCodecLevel :: !(Maybe Mpeg2CodecLevel),
                                    _msFramerateControl ::
                                    !(Maybe Mpeg2FramerateControl),
                                    _msAdaptiveQuantization ::
                                    !(Maybe Mpeg2AdaptiveQuantization),
                                    _msFramerateNumerator :: !(Maybe Int),
                                    _msMaxBitrate :: !(Maybe Int),
                                    _msSyntax :: !(Maybe Mpeg2Syntax),
                                    _msGopClosedCadence :: !(Maybe Int),
                                    _msParDenominator :: !(Maybe Int),
                                    _msSpatialAdaptiveQuantization ::
                                    !(Maybe Mpeg2SpatialAdaptiveQuantization)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mpeg2Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msQualityTuningLevel' - Undocumented member.
--
-- * 'msTemporalAdaptiveQuantization' - Undocumented member.
--
-- * 'msSceneChangeDetect' - Undocumented member.
--
-- * 'msHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'msSlowPal' - Undocumented member.
--
-- * 'msParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'msGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'msNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'msGopSizeUnits' - Undocumented member.
--
-- * 'msHrdBufferSize' - Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'msRateControlMode' - Undocumented member.
--
-- * 'msTelecine' - Undocumented member.
--
-- * 'msIntraDcPrecision' - Undocumented member.
--
-- * 'msMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'msInterlaceMode' - Undocumented member.
--
-- * 'msParControl' - Undocumented member.
--
-- * 'msSoftness' - Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
--
-- * 'msCodecProfile' - Undocumented member.
--
-- * 'msBitrate' - Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'msFramerateDenominator' - Framerate denominator.
--
-- * 'msFramerateConversionAlgorithm' - Undocumented member.
--
-- * 'msCodecLevel' - Undocumented member.
--
-- * 'msFramerateControl' - Undocumented member.
--
-- * 'msAdaptiveQuantization' - Undocumented member.
--
-- * 'msFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'msMaxBitrate' - Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
--
-- * 'msSyntax' - Undocumented member.
--
-- * 'msGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'msParDenominator' - Pixel Aspect Ratio denominator.
--
-- * 'msSpatialAdaptiveQuantization' - Undocumented member.
mpeg2Settings
    :: Mpeg2Settings
mpeg2Settings
  = Mpeg2Settings'{_msQualityTuningLevel = Nothing,
                   _msTemporalAdaptiveQuantization = Nothing,
                   _msSceneChangeDetect = Nothing,
                   _msHrdBufferInitialFillPercentage = Nothing,
                   _msSlowPal = Nothing, _msParNumerator = Nothing,
                   _msGopSize = Nothing,
                   _msNumberBFramesBetweenReferenceFrames = Nothing,
                   _msGopSizeUnits = Nothing,
                   _msHrdBufferSize = Nothing,
                   _msRateControlMode = Nothing, _msTelecine = Nothing,
                   _msIntraDcPrecision = Nothing,
                   _msMinIInterval = Nothing,
                   _msInterlaceMode = Nothing, _msParControl = Nothing,
                   _msSoftness = Nothing, _msCodecProfile = Nothing,
                   _msBitrate = Nothing,
                   _msFramerateDenominator = Nothing,
                   _msFramerateConversionAlgorithm = Nothing,
                   _msCodecLevel = Nothing,
                   _msFramerateControl = Nothing,
                   _msAdaptiveQuantization = Nothing,
                   _msFramerateNumerator = Nothing,
                   _msMaxBitrate = Nothing, _msSyntax = Nothing,
                   _msGopClosedCadence = Nothing,
                   _msParDenominator = Nothing,
                   _msSpatialAdaptiveQuantization = Nothing}

-- | Undocumented member.
msQualityTuningLevel :: Lens' Mpeg2Settings (Maybe Mpeg2QualityTuningLevel)
msQualityTuningLevel = lens _msQualityTuningLevel (\ s a -> s{_msQualityTuningLevel = a})

-- | Undocumented member.
msTemporalAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2TemporalAdaptiveQuantization)
msTemporalAdaptiveQuantization = lens _msTemporalAdaptiveQuantization (\ s a -> s{_msTemporalAdaptiveQuantization = a})

-- | Undocumented member.
msSceneChangeDetect :: Lens' Mpeg2Settings (Maybe Mpeg2SceneChangeDetect)
msSceneChangeDetect = lens _msSceneChangeDetect (\ s a -> s{_msSceneChangeDetect = a})

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
msHrdBufferInitialFillPercentage :: Lens' Mpeg2Settings (Maybe Int)
msHrdBufferInitialFillPercentage = lens _msHrdBufferInitialFillPercentage (\ s a -> s{_msHrdBufferInitialFillPercentage = a})

-- | Undocumented member.
msSlowPal :: Lens' Mpeg2Settings (Maybe Mpeg2SlowPal)
msSlowPal = lens _msSlowPal (\ s a -> s{_msSlowPal = a})

-- | Pixel Aspect Ratio numerator.
msParNumerator :: Lens' Mpeg2Settings (Maybe Int)
msParNumerator = lens _msParNumerator (\ s a -> s{_msParNumerator = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
msGopSize :: Lens' Mpeg2Settings (Maybe Double)
msGopSize = lens _msGopSize (\ s a -> s{_msGopSize = a})

-- | Number of B-frames between reference frames.
msNumberBFramesBetweenReferenceFrames :: Lens' Mpeg2Settings (Maybe Int)
msNumberBFramesBetweenReferenceFrames = lens _msNumberBFramesBetweenReferenceFrames (\ s a -> s{_msNumberBFramesBetweenReferenceFrames = a})

-- | Undocumented member.
msGopSizeUnits :: Lens' Mpeg2Settings (Maybe Mpeg2GopSizeUnits)
msGopSizeUnits = lens _msGopSizeUnits (\ s a -> s{_msGopSizeUnits = a})

-- | Size of buffer (HRD buffer model). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
msHrdBufferSize :: Lens' Mpeg2Settings (Maybe Int)
msHrdBufferSize = lens _msHrdBufferSize (\ s a -> s{_msHrdBufferSize = a})

-- | Undocumented member.
msRateControlMode :: Lens' Mpeg2Settings (Maybe Mpeg2RateControlMode)
msRateControlMode = lens _msRateControlMode (\ s a -> s{_msRateControlMode = a})

-- | Undocumented member.
msTelecine :: Lens' Mpeg2Settings (Maybe Mpeg2Telecine)
msTelecine = lens _msTelecine (\ s a -> s{_msTelecine = a})

-- | Undocumented member.
msIntraDcPrecision :: Lens' Mpeg2Settings (Maybe Mpeg2IntraDcPrecision)
msIntraDcPrecision = lens _msIntraDcPrecision (\ s a -> s{_msIntraDcPrecision = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
msMinIInterval :: Lens' Mpeg2Settings (Maybe Int)
msMinIInterval = lens _msMinIInterval (\ s a -> s{_msMinIInterval = a})

-- | Undocumented member.
msInterlaceMode :: Lens' Mpeg2Settings (Maybe Mpeg2InterlaceMode)
msInterlaceMode = lens _msInterlaceMode (\ s a -> s{_msInterlaceMode = a})

-- | Undocumented member.
msParControl :: Lens' Mpeg2Settings (Maybe Mpeg2ParControl)
msParControl = lens _msParControl (\ s a -> s{_msParControl = a})

-- | Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
msSoftness :: Lens' Mpeg2Settings (Maybe Int)
msSoftness = lens _msSoftness (\ s a -> s{_msSoftness = a})

-- | Undocumented member.
msCodecProfile :: Lens' Mpeg2Settings (Maybe Mpeg2CodecProfile)
msCodecProfile = lens _msCodecProfile (\ s a -> s{_msCodecProfile = a})

-- | Average bitrate in bits/second. Required for VBR, CBR, and ABR. Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
msBitrate :: Lens' Mpeg2Settings (Maybe Int)
msBitrate = lens _msBitrate (\ s a -> s{_msBitrate = a})

-- | Framerate denominator.
msFramerateDenominator :: Lens' Mpeg2Settings (Maybe Int)
msFramerateDenominator = lens _msFramerateDenominator (\ s a -> s{_msFramerateDenominator = a})

-- | Undocumented member.
msFramerateConversionAlgorithm :: Lens' Mpeg2Settings (Maybe Mpeg2FramerateConversionAlgorithm)
msFramerateConversionAlgorithm = lens _msFramerateConversionAlgorithm (\ s a -> s{_msFramerateConversionAlgorithm = a})

-- | Undocumented member.
msCodecLevel :: Lens' Mpeg2Settings (Maybe Mpeg2CodecLevel)
msCodecLevel = lens _msCodecLevel (\ s a -> s{_msCodecLevel = a})

-- | Undocumented member.
msFramerateControl :: Lens' Mpeg2Settings (Maybe Mpeg2FramerateControl)
msFramerateControl = lens _msFramerateControl (\ s a -> s{_msFramerateControl = a})

-- | Undocumented member.
msAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2AdaptiveQuantization)
msAdaptiveQuantization = lens _msAdaptiveQuantization (\ s a -> s{_msAdaptiveQuantization = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
msFramerateNumerator :: Lens' Mpeg2Settings (Maybe Int)
msFramerateNumerator = lens _msFramerateNumerator (\ s a -> s{_msFramerateNumerator = a})

-- | Maximum bitrate in bits/second (for VBR mode only). Five megabits can be entered as 5000000 or 5m. Five hundred kilobits can be entered as 500000 or 0.5m.
msMaxBitrate :: Lens' Mpeg2Settings (Maybe Int)
msMaxBitrate = lens _msMaxBitrate (\ s a -> s{_msMaxBitrate = a})

-- | Undocumented member.
msSyntax :: Lens' Mpeg2Settings (Maybe Mpeg2Syntax)
msSyntax = lens _msSyntax (\ s a -> s{_msSyntax = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
msGopClosedCadence :: Lens' Mpeg2Settings (Maybe Int)
msGopClosedCadence = lens _msGopClosedCadence (\ s a -> s{_msGopClosedCadence = a})

-- | Pixel Aspect Ratio denominator.
msParDenominator :: Lens' Mpeg2Settings (Maybe Int)
msParDenominator = lens _msParDenominator (\ s a -> s{_msParDenominator = a})

-- | Undocumented member.
msSpatialAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2SpatialAdaptiveQuantization)
msSpatialAdaptiveQuantization = lens _msSpatialAdaptiveQuantization (\ s a -> s{_msSpatialAdaptiveQuantization = a})

instance FromJSON Mpeg2Settings where
        parseJSON
          = withObject "Mpeg2Settings"
              (\ x ->
                 Mpeg2Settings' <$>
                   (x .:? "qualityTuningLevel") <*>
                     (x .:? "temporalAdaptiveQuantization")
                     <*> (x .:? "sceneChangeDetect")
                     <*> (x .:? "hrdBufferInitialFillPercentage")
                     <*> (x .:? "slowPal")
                     <*> (x .:? "parNumerator")
                     <*> (x .:? "gopSize")
                     <*> (x .:? "numberBFramesBetweenReferenceFrames")
                     <*> (x .:? "gopSizeUnits")
                     <*> (x .:? "hrdBufferSize")
                     <*> (x .:? "rateControlMode")
                     <*> (x .:? "telecine")
                     <*> (x .:? "intraDcPrecision")
                     <*> (x .:? "minIInterval")
                     <*> (x .:? "interlaceMode")
                     <*> (x .:? "parControl")
                     <*> (x .:? "softness")
                     <*> (x .:? "codecProfile")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "framerateDenominator")
                     <*> (x .:? "framerateConversionAlgorithm")
                     <*> (x .:? "codecLevel")
                     <*> (x .:? "framerateControl")
                     <*> (x .:? "adaptiveQuantization")
                     <*> (x .:? "framerateNumerator")
                     <*> (x .:? "maxBitrate")
                     <*> (x .:? "syntax")
                     <*> (x .:? "gopClosedCadence")
                     <*> (x .:? "parDenominator")
                     <*> (x .:? "spatialAdaptiveQuantization"))

instance Hashable Mpeg2Settings where

instance NFData Mpeg2Settings where

instance ToJSON Mpeg2Settings where
        toJSON Mpeg2Settings'{..}
          = object
              (catMaybes
                 [("qualityTuningLevel" .=) <$> _msQualityTuningLevel,
                  ("temporalAdaptiveQuantization" .=) <$>
                    _msTemporalAdaptiveQuantization,
                  ("sceneChangeDetect" .=) <$> _msSceneChangeDetect,
                  ("hrdBufferInitialFillPercentage" .=) <$>
                    _msHrdBufferInitialFillPercentage,
                  ("slowPal" .=) <$> _msSlowPal,
                  ("parNumerator" .=) <$> _msParNumerator,
                  ("gopSize" .=) <$> _msGopSize,
                  ("numberBFramesBetweenReferenceFrames" .=) <$>
                    _msNumberBFramesBetweenReferenceFrames,
                  ("gopSizeUnits" .=) <$> _msGopSizeUnits,
                  ("hrdBufferSize" .=) <$> _msHrdBufferSize,
                  ("rateControlMode" .=) <$> _msRateControlMode,
                  ("telecine" .=) <$> _msTelecine,
                  ("intraDcPrecision" .=) <$> _msIntraDcPrecision,
                  ("minIInterval" .=) <$> _msMinIInterval,
                  ("interlaceMode" .=) <$> _msInterlaceMode,
                  ("parControl" .=) <$> _msParControl,
                  ("softness" .=) <$> _msSoftness,
                  ("codecProfile" .=) <$> _msCodecProfile,
                  ("bitrate" .=) <$> _msBitrate,
                  ("framerateDenominator" .=) <$>
                    _msFramerateDenominator,
                  ("framerateConversionAlgorithm" .=) <$>
                    _msFramerateConversionAlgorithm,
                  ("codecLevel" .=) <$> _msCodecLevel,
                  ("framerateControl" .=) <$> _msFramerateControl,
                  ("adaptiveQuantization" .=) <$>
                    _msAdaptiveQuantization,
                  ("framerateNumerator" .=) <$> _msFramerateNumerator,
                  ("maxBitrate" .=) <$> _msMaxBitrate,
                  ("syntax" .=) <$> _msSyntax,
                  ("gopClosedCadence" .=) <$> _msGopClosedCadence,
                  ("parDenominator" .=) <$> _msParDenominator,
                  ("spatialAdaptiveQuantization" .=) <$>
                    _msSpatialAdaptiveQuantization])
