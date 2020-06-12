{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.FixedAfd
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
import Network.AWS.Prelude

-- | Placeholder documentation for H264Settings
--
-- /See:/ 'h264Settings' smart constructor.
data H264Settings = H264Settings'{_hsTemporalAq ::
                                  !(Maybe H264TemporalAq),
                                  _hsSceneChangeDetect ::
                                  !(Maybe H264SceneChangeDetect),
                                  _hsScanType :: !(Maybe H264ScanType),
                                  _hsTimecodeInsertion ::
                                  !(Maybe H264TimecodeInsertionBehavior),
                                  _hsParNumerator :: !(Maybe Int),
                                  _hsAfdSignaling :: !(Maybe AfdSignaling),
                                  _hsGopSize :: !(Maybe Double),
                                  _hsGopSizeUnits :: !(Maybe H264GopSizeUnits),
                                  _hsSlices :: !(Maybe Nat),
                                  _hsProfile :: !(Maybe H264Profile),
                                  _hsRateControlMode ::
                                  !(Maybe H264RateControlMode),
                                  _hsMinIInterval :: !(Maybe Nat),
                                  _hsParControl :: !(Maybe H264ParControl),
                                  _hsFlickerAq :: !(Maybe H264FlickerAq),
                                  _hsBufSize :: !(Maybe Nat),
                                  _hsSpatialAq :: !(Maybe H264SpatialAq),
                                  _hsGopNumBFrames :: !(Maybe Nat),
                                  _hsFixedAfd :: !(Maybe FixedAfd),
                                  _hsSoftness :: !(Maybe Nat),
                                  _hsBitrate :: !(Maybe Nat),
                                  _hsFramerateDenominator :: !(Maybe Int),
                                  _hsEntropyEncoding ::
                                  !(Maybe H264EntropyEncoding),
                                  _hsFramerateControl ::
                                  !(Maybe H264FramerateControl),
                                  _hsColorMetadata ::
                                  !(Maybe H264ColorMetadata),
                                  _hsLookAheadRateControl ::
                                  !(Maybe H264LookAheadRateControl),
                                  _hsAdaptiveQuantization ::
                                  !(Maybe H264AdaptiveQuantization),
                                  _hsFramerateNumerator :: !(Maybe Int),
                                  _hsLevel :: !(Maybe H264Level),
                                  _hsGopBReference ::
                                  !(Maybe H264GopBReference),
                                  _hsMaxBitrate :: !(Maybe Nat),
                                  _hsSyntax :: !(Maybe H264Syntax),
                                  _hsBufFillPct :: !(Maybe Nat),
                                  _hsGopClosedCadence :: !(Maybe Nat),
                                  _hsNumRefFrames :: !(Maybe Nat),
                                  _hsParDenominator :: !(Maybe Nat)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H264Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsTemporalAq' - If set to enabled, adjust quantization within each frame based on temporal variation of content complexity.
--
-- * 'hsSceneChangeDetect' - Scene change detection.  Inserts I-frames on scene changes when enabled.
--
-- * 'hsScanType' - Sets the scan type of the output to progressive or top-field-first interlaced.
--
-- * 'hsTimecodeInsertion' - Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
--
-- * 'hsParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'hsAfdSignaling' - Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
--
-- * 'hsGopSize' - GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. Must be greater than zero.
--
-- * 'hsGopSizeUnits' - Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
--
-- * 'hsSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
--
-- * 'hsProfile' - H.264 Profile.
--
-- * 'hsRateControlMode' - Rate control mode.
--
-- * 'hsMinIInterval' - Only meaningful if sceneChangeDetect is set to enabled.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hsParControl' - This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
--
-- * 'hsFlickerAq' - If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
--
-- * 'hsBufSize' - Size of buffer (HRD buffer model) in bits/second.
--
-- * 'hsSpatialAq' - If set to enabled, adjust quantization within each frame based on spatial variation of content complexity.
--
-- * 'hsGopNumBFrames' - Number of B-frames between reference frames.
--
-- * 'hsFixedAfd' - Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
--
-- * 'hsSoftness' - Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
--
-- * 'hsBitrate' - Average bitrate in bits/second. Required for VBR, CBR, and ABR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'hsFramerateDenominator' - Framerate denominator.
--
-- * 'hsEntropyEncoding' - Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
--
-- * 'hsFramerateControl' - This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
--
-- * 'hsColorMetadata' - Includes colorspace metadata in the output.
--
-- * 'hsLookAheadRateControl' - Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
--
-- * 'hsAdaptiveQuantization' - Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
--
-- * 'hsFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'hsLevel' - H.264 Level.
--
-- * 'hsGopBReference' - Documentation update needed
--
-- * 'hsMaxBitrate' - Maximum bitrate in bits/second (for VBR mode only).
--
-- * 'hsSyntax' - Produces a bitstream compliant with SMPTE RP-2027.
--
-- * 'hsBufFillPct' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hsGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hsNumRefFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hsParDenominator' - Pixel Aspect Ratio denominator.
h264Settings
    :: H264Settings
h264Settings
  = H264Settings'{_hsTemporalAq = Nothing,
                  _hsSceneChangeDetect = Nothing,
                  _hsScanType = Nothing,
                  _hsTimecodeInsertion = Nothing,
                  _hsParNumerator = Nothing, _hsAfdSignaling = Nothing,
                  _hsGopSize = Nothing, _hsGopSizeUnits = Nothing,
                  _hsSlices = Nothing, _hsProfile = Nothing,
                  _hsRateControlMode = Nothing,
                  _hsMinIInterval = Nothing, _hsParControl = Nothing,
                  _hsFlickerAq = Nothing, _hsBufSize = Nothing,
                  _hsSpatialAq = Nothing, _hsGopNumBFrames = Nothing,
                  _hsFixedAfd = Nothing, _hsSoftness = Nothing,
                  _hsBitrate = Nothing,
                  _hsFramerateDenominator = Nothing,
                  _hsEntropyEncoding = Nothing,
                  _hsFramerateControl = Nothing,
                  _hsColorMetadata = Nothing,
                  _hsLookAheadRateControl = Nothing,
                  _hsAdaptiveQuantization = Nothing,
                  _hsFramerateNumerator = Nothing, _hsLevel = Nothing,
                  _hsGopBReference = Nothing, _hsMaxBitrate = Nothing,
                  _hsSyntax = Nothing, _hsBufFillPct = Nothing,
                  _hsGopClosedCadence = Nothing,
                  _hsNumRefFrames = Nothing,
                  _hsParDenominator = Nothing}

-- | If set to enabled, adjust quantization within each frame based on temporal variation of content complexity.
hsTemporalAq :: Lens' H264Settings (Maybe H264TemporalAq)
hsTemporalAq = lens _hsTemporalAq (\ s a -> s{_hsTemporalAq = a})

-- | Scene change detection.  Inserts I-frames on scene changes when enabled.
hsSceneChangeDetect :: Lens' H264Settings (Maybe H264SceneChangeDetect)
hsSceneChangeDetect = lens _hsSceneChangeDetect (\ s a -> s{_hsSceneChangeDetect = a})

-- | Sets the scan type of the output to progressive or top-field-first interlaced.
hsScanType :: Lens' H264Settings (Maybe H264ScanType)
hsScanType = lens _hsScanType (\ s a -> s{_hsScanType = a})

-- | Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
hsTimecodeInsertion :: Lens' H264Settings (Maybe H264TimecodeInsertionBehavior)
hsTimecodeInsertion = lens _hsTimecodeInsertion (\ s a -> s{_hsTimecodeInsertion = a})

-- | Pixel Aspect Ratio numerator.
hsParNumerator :: Lens' H264Settings (Maybe Int)
hsParNumerator = lens _hsParNumerator (\ s a -> s{_hsParNumerator = a})

-- | Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
hsAfdSignaling :: Lens' H264Settings (Maybe AfdSignaling)
hsAfdSignaling = lens _hsAfdSignaling (\ s a -> s{_hsAfdSignaling = a})

-- | GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. Must be greater than zero.
hsGopSize :: Lens' H264Settings (Maybe Double)
hsGopSize = lens _hsGopSize (\ s a -> s{_hsGopSize = a})

-- | Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
hsGopSizeUnits :: Lens' H264Settings (Maybe H264GopSizeUnits)
hsGopSizeUnits = lens _hsGopSizeUnits (\ s a -> s{_hsGopSizeUnits = a})

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
hsSlices :: Lens' H264Settings (Maybe Natural)
hsSlices = lens _hsSlices (\ s a -> s{_hsSlices = a}) . mapping _Nat

-- | H.264 Profile.
hsProfile :: Lens' H264Settings (Maybe H264Profile)
hsProfile = lens _hsProfile (\ s a -> s{_hsProfile = a})

-- | Rate control mode.
hsRateControlMode :: Lens' H264Settings (Maybe H264RateControlMode)
hsRateControlMode = lens _hsRateControlMode (\ s a -> s{_hsRateControlMode = a})

-- | Only meaningful if sceneChangeDetect is set to enabled.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hsMinIInterval :: Lens' H264Settings (Maybe Natural)
hsMinIInterval = lens _hsMinIInterval (\ s a -> s{_hsMinIInterval = a}) . mapping _Nat

-- | This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
hsParControl :: Lens' H264Settings (Maybe H264ParControl)
hsParControl = lens _hsParControl (\ s a -> s{_hsParControl = a})

-- | If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
hsFlickerAq :: Lens' H264Settings (Maybe H264FlickerAq)
hsFlickerAq = lens _hsFlickerAq (\ s a -> s{_hsFlickerAq = a})

-- | Size of buffer (HRD buffer model) in bits/second.
hsBufSize :: Lens' H264Settings (Maybe Natural)
hsBufSize = lens _hsBufSize (\ s a -> s{_hsBufSize = a}) . mapping _Nat

-- | If set to enabled, adjust quantization within each frame based on spatial variation of content complexity.
hsSpatialAq :: Lens' H264Settings (Maybe H264SpatialAq)
hsSpatialAq = lens _hsSpatialAq (\ s a -> s{_hsSpatialAq = a})

-- | Number of B-frames between reference frames.
hsGopNumBFrames :: Lens' H264Settings (Maybe Natural)
hsGopNumBFrames = lens _hsGopNumBFrames (\ s a -> s{_hsGopNumBFrames = a}) . mapping _Nat

-- | Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
hsFixedAfd :: Lens' H264Settings (Maybe FixedAfd)
hsFixedAfd = lens _hsFixedAfd (\ s a -> s{_hsFixedAfd = a})

-- | Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
hsSoftness :: Lens' H264Settings (Maybe Natural)
hsSoftness = lens _hsSoftness (\ s a -> s{_hsSoftness = a}) . mapping _Nat

-- | Average bitrate in bits/second. Required for VBR, CBR, and ABR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
hsBitrate :: Lens' H264Settings (Maybe Natural)
hsBitrate = lens _hsBitrate (\ s a -> s{_hsBitrate = a}) . mapping _Nat

-- | Framerate denominator.
hsFramerateDenominator :: Lens' H264Settings (Maybe Int)
hsFramerateDenominator = lens _hsFramerateDenominator (\ s a -> s{_hsFramerateDenominator = a})

-- | Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
hsEntropyEncoding :: Lens' H264Settings (Maybe H264EntropyEncoding)
hsEntropyEncoding = lens _hsEntropyEncoding (\ s a -> s{_hsEntropyEncoding = a})

-- | This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
hsFramerateControl :: Lens' H264Settings (Maybe H264FramerateControl)
hsFramerateControl = lens _hsFramerateControl (\ s a -> s{_hsFramerateControl = a})

-- | Includes colorspace metadata in the output.
hsColorMetadata :: Lens' H264Settings (Maybe H264ColorMetadata)
hsColorMetadata = lens _hsColorMetadata (\ s a -> s{_hsColorMetadata = a})

-- | Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
hsLookAheadRateControl :: Lens' H264Settings (Maybe H264LookAheadRateControl)
hsLookAheadRateControl = lens _hsLookAheadRateControl (\ s a -> s{_hsLookAheadRateControl = a})

-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
hsAdaptiveQuantization :: Lens' H264Settings (Maybe H264AdaptiveQuantization)
hsAdaptiveQuantization = lens _hsAdaptiveQuantization (\ s a -> s{_hsAdaptiveQuantization = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
hsFramerateNumerator :: Lens' H264Settings (Maybe Int)
hsFramerateNumerator = lens _hsFramerateNumerator (\ s a -> s{_hsFramerateNumerator = a})

-- | H.264 Level.
hsLevel :: Lens' H264Settings (Maybe H264Level)
hsLevel = lens _hsLevel (\ s a -> s{_hsLevel = a})

-- | Documentation update needed
hsGopBReference :: Lens' H264Settings (Maybe H264GopBReference)
hsGopBReference = lens _hsGopBReference (\ s a -> s{_hsGopBReference = a})

-- | Maximum bitrate in bits/second (for VBR mode only).
hsMaxBitrate :: Lens' H264Settings (Maybe Natural)
hsMaxBitrate = lens _hsMaxBitrate (\ s a -> s{_hsMaxBitrate = a}) . mapping _Nat

-- | Produces a bitstream compliant with SMPTE RP-2027.
hsSyntax :: Lens' H264Settings (Maybe H264Syntax)
hsSyntax = lens _hsSyntax (\ s a -> s{_hsSyntax = a})

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hsBufFillPct :: Lens' H264Settings (Maybe Natural)
hsBufFillPct = lens _hsBufFillPct (\ s a -> s{_hsBufFillPct = a}) . mapping _Nat

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hsGopClosedCadence :: Lens' H264Settings (Maybe Natural)
hsGopClosedCadence = lens _hsGopClosedCadence (\ s a -> s{_hsGopClosedCadence = a}) . mapping _Nat

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hsNumRefFrames :: Lens' H264Settings (Maybe Natural)
hsNumRefFrames = lens _hsNumRefFrames (\ s a -> s{_hsNumRefFrames = a}) . mapping _Nat

-- | Pixel Aspect Ratio denominator.
hsParDenominator :: Lens' H264Settings (Maybe Natural)
hsParDenominator = lens _hsParDenominator (\ s a -> s{_hsParDenominator = a}) . mapping _Nat

instance FromJSON H264Settings where
        parseJSON
          = withObject "H264Settings"
              (\ x ->
                 H264Settings' <$>
                   (x .:? "temporalAq") <*> (x .:? "sceneChangeDetect")
                     <*> (x .:? "scanType")
                     <*> (x .:? "timecodeInsertion")
                     <*> (x .:? "parNumerator")
                     <*> (x .:? "afdSignaling")
                     <*> (x .:? "gopSize")
                     <*> (x .:? "gopSizeUnits")
                     <*> (x .:? "slices")
                     <*> (x .:? "profile")
                     <*> (x .:? "rateControlMode")
                     <*> (x .:? "minIInterval")
                     <*> (x .:? "parControl")
                     <*> (x .:? "flickerAq")
                     <*> (x .:? "bufSize")
                     <*> (x .:? "spatialAq")
                     <*> (x .:? "gopNumBFrames")
                     <*> (x .:? "fixedAfd")
                     <*> (x .:? "softness")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "framerateDenominator")
                     <*> (x .:? "entropyEncoding")
                     <*> (x .:? "framerateControl")
                     <*> (x .:? "colorMetadata")
                     <*> (x .:? "lookAheadRateControl")
                     <*> (x .:? "adaptiveQuantization")
                     <*> (x .:? "framerateNumerator")
                     <*> (x .:? "level")
                     <*> (x .:? "gopBReference")
                     <*> (x .:? "maxBitrate")
                     <*> (x .:? "syntax")
                     <*> (x .:? "bufFillPct")
                     <*> (x .:? "gopClosedCadence")
                     <*> (x .:? "numRefFrames")
                     <*> (x .:? "parDenominator"))

instance Hashable H264Settings where

instance NFData H264Settings where

instance ToJSON H264Settings where
        toJSON H264Settings'{..}
          = object
              (catMaybes
                 [("temporalAq" .=) <$> _hsTemporalAq,
                  ("sceneChangeDetect" .=) <$> _hsSceneChangeDetect,
                  ("scanType" .=) <$> _hsScanType,
                  ("timecodeInsertion" .=) <$> _hsTimecodeInsertion,
                  ("parNumerator" .=) <$> _hsParNumerator,
                  ("afdSignaling" .=) <$> _hsAfdSignaling,
                  ("gopSize" .=) <$> _hsGopSize,
                  ("gopSizeUnits" .=) <$> _hsGopSizeUnits,
                  ("slices" .=) <$> _hsSlices,
                  ("profile" .=) <$> _hsProfile,
                  ("rateControlMode" .=) <$> _hsRateControlMode,
                  ("minIInterval" .=) <$> _hsMinIInterval,
                  ("parControl" .=) <$> _hsParControl,
                  ("flickerAq" .=) <$> _hsFlickerAq,
                  ("bufSize" .=) <$> _hsBufSize,
                  ("spatialAq" .=) <$> _hsSpatialAq,
                  ("gopNumBFrames" .=) <$> _hsGopNumBFrames,
                  ("fixedAfd" .=) <$> _hsFixedAfd,
                  ("softness" .=) <$> _hsSoftness,
                  ("bitrate" .=) <$> _hsBitrate,
                  ("framerateDenominator" .=) <$>
                    _hsFramerateDenominator,
                  ("entropyEncoding" .=) <$> _hsEntropyEncoding,
                  ("framerateControl" .=) <$> _hsFramerateControl,
                  ("colorMetadata" .=) <$> _hsColorMetadata,
                  ("lookAheadRateControl" .=) <$>
                    _hsLookAheadRateControl,
                  ("adaptiveQuantization" .=) <$>
                    _hsAdaptiveQuantization,
                  ("framerateNumerator" .=) <$> _hsFramerateNumerator,
                  ("level" .=) <$> _hsLevel,
                  ("gopBReference" .=) <$> _hsGopBReference,
                  ("maxBitrate" .=) <$> _hsMaxBitrate,
                  ("syntax" .=) <$> _hsSyntax,
                  ("bufFillPct" .=) <$> _hsBufFillPct,
                  ("gopClosedCadence" .=) <$> _hsGopClosedCadence,
                  ("numRefFrames" .=) <$> _hsNumRefFrames,
                  ("parDenominator" .=) <$> _hsParDenominator])
