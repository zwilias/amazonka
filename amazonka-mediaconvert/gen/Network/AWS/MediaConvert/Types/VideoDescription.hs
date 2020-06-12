{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoDescription where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AfdSignaling
import Network.AWS.MediaConvert.Types.AntiAlias
import Network.AWS.MediaConvert.Types.ColorMetadata
import Network.AWS.MediaConvert.Types.DropFrameTimecode
import Network.AWS.MediaConvert.Types.Rectangle
import Network.AWS.MediaConvert.Types.RespondToAfd
import Network.AWS.MediaConvert.Types.ScalingBehavior
import Network.AWS.MediaConvert.Types.VideoCodecSettings
import Network.AWS.MediaConvert.Types.VideoPreprocessor
import Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
import Network.AWS.Prelude

-- | Settings for video outputs
--
-- /See:/ 'videoDescription' smart constructor.
data VideoDescription = VideoDescription'{_vdTimecodeInsertion
                                          :: !(Maybe VideoTimecodeInsertion),
                                          _vdHeight :: !(Maybe Int),
                                          _vdAfdSignaling ::
                                          !(Maybe AfdSignaling),
                                          _vdSharpness :: !(Maybe Int),
                                          _vdCrop :: !(Maybe Rectangle),
                                          _vdWidth :: !(Maybe Int),
                                          _vdScalingBehavior ::
                                          !(Maybe ScalingBehavior),
                                          _vdRespondToAfd ::
                                          !(Maybe RespondToAfd),
                                          _vdDropFrameTimecode ::
                                          !(Maybe DropFrameTimecode),
                                          _vdAntiAlias :: !(Maybe AntiAlias),
                                          _vdFixedAfd :: !(Maybe Int),
                                          _vdColorMetadata ::
                                          !(Maybe ColorMetadata),
                                          _vdCodecSettings ::
                                          !(Maybe VideoCodecSettings),
                                          _vdVideoPreprocessors ::
                                          !(Maybe VideoPreprocessor),
                                          _vdPosition :: !(Maybe Rectangle)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdTimecodeInsertion' - Undocumented member.
--
-- * 'vdHeight' - Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height.
--
-- * 'vdAfdSignaling' - Undocumented member.
--
-- * 'vdSharpness' - Use Sharpness (Sharpness)setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution, and if you set Anti-alias (AntiAlias) to ENABLED. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
--
-- * 'vdCrop' - Applies only if your input aspect ratio is different from your output aspect ratio. Use Input cropping rectangle (Crop) to specify the  video area the service will include in the output. This will crop the input source, causing video pixels to be removed on encode. Do not use this setting if you have enabled Stretch to output (stretchToOutput) in your output settings.
--
-- * 'vdWidth' - Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width.
--
-- * 'vdScalingBehavior' - Undocumented member.
--
-- * 'vdRespondToAfd' - Undocumented member.
--
-- * 'vdDropFrameTimecode' - Undocumented member.
--
-- * 'vdAntiAlias' - Undocumented member.
--
-- * 'vdFixedAfd' - Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output.
--
-- * 'vdColorMetadata' - Undocumented member.
--
-- * 'vdCodecSettings' - Undocumented member.
--
-- * 'vdVideoPreprocessors' - Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
--
-- * 'vdPosition' - Use Position (Position) to point to a rectangle object to define your position. This setting overrides any other aspect ratio.
videoDescription
    :: VideoDescription
videoDescription
  = VideoDescription'{_vdTimecodeInsertion = Nothing,
                      _vdHeight = Nothing, _vdAfdSignaling = Nothing,
                      _vdSharpness = Nothing, _vdCrop = Nothing,
                      _vdWidth = Nothing, _vdScalingBehavior = Nothing,
                      _vdRespondToAfd = Nothing,
                      _vdDropFrameTimecode = Nothing,
                      _vdAntiAlias = Nothing, _vdFixedAfd = Nothing,
                      _vdColorMetadata = Nothing,
                      _vdCodecSettings = Nothing,
                      _vdVideoPreprocessors = Nothing,
                      _vdPosition = Nothing}

-- | Undocumented member.
vdTimecodeInsertion :: Lens' VideoDescription (Maybe VideoTimecodeInsertion)
vdTimecodeInsertion = lens _vdTimecodeInsertion (\ s a -> s{_vdTimecodeInsertion = a})

-- | Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height.
vdHeight :: Lens' VideoDescription (Maybe Int)
vdHeight = lens _vdHeight (\ s a -> s{_vdHeight = a})

-- | Undocumented member.
vdAfdSignaling :: Lens' VideoDescription (Maybe AfdSignaling)
vdAfdSignaling = lens _vdAfdSignaling (\ s a -> s{_vdAfdSignaling = a})

-- | Use Sharpness (Sharpness)setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution, and if you set Anti-alias (AntiAlias) to ENABLED. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
vdSharpness :: Lens' VideoDescription (Maybe Int)
vdSharpness = lens _vdSharpness (\ s a -> s{_vdSharpness = a})

-- | Applies only if your input aspect ratio is different from your output aspect ratio. Use Input cropping rectangle (Crop) to specify the  video area the service will include in the output. This will crop the input source, causing video pixels to be removed on encode. Do not use this setting if you have enabled Stretch to output (stretchToOutput) in your output settings.
vdCrop :: Lens' VideoDescription (Maybe Rectangle)
vdCrop = lens _vdCrop (\ s a -> s{_vdCrop = a})

-- | Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width.
vdWidth :: Lens' VideoDescription (Maybe Int)
vdWidth = lens _vdWidth (\ s a -> s{_vdWidth = a})

-- | Undocumented member.
vdScalingBehavior :: Lens' VideoDescription (Maybe ScalingBehavior)
vdScalingBehavior = lens _vdScalingBehavior (\ s a -> s{_vdScalingBehavior = a})

-- | Undocumented member.
vdRespondToAfd :: Lens' VideoDescription (Maybe RespondToAfd)
vdRespondToAfd = lens _vdRespondToAfd (\ s a -> s{_vdRespondToAfd = a})

-- | Undocumented member.
vdDropFrameTimecode :: Lens' VideoDescription (Maybe DropFrameTimecode)
vdDropFrameTimecode = lens _vdDropFrameTimecode (\ s a -> s{_vdDropFrameTimecode = a})

-- | Undocumented member.
vdAntiAlias :: Lens' VideoDescription (Maybe AntiAlias)
vdAntiAlias = lens _vdAntiAlias (\ s a -> s{_vdAntiAlias = a})

-- | Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output.
vdFixedAfd :: Lens' VideoDescription (Maybe Int)
vdFixedAfd = lens _vdFixedAfd (\ s a -> s{_vdFixedAfd = a})

-- | Undocumented member.
vdColorMetadata :: Lens' VideoDescription (Maybe ColorMetadata)
vdColorMetadata = lens _vdColorMetadata (\ s a -> s{_vdColorMetadata = a})

-- | Undocumented member.
vdCodecSettings :: Lens' VideoDescription (Maybe VideoCodecSettings)
vdCodecSettings = lens _vdCodecSettings (\ s a -> s{_vdCodecSettings = a})

-- | Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
vdVideoPreprocessors :: Lens' VideoDescription (Maybe VideoPreprocessor)
vdVideoPreprocessors = lens _vdVideoPreprocessors (\ s a -> s{_vdVideoPreprocessors = a})

-- | Use Position (Position) to point to a rectangle object to define your position. This setting overrides any other aspect ratio.
vdPosition :: Lens' VideoDescription (Maybe Rectangle)
vdPosition = lens _vdPosition (\ s a -> s{_vdPosition = a})

instance FromJSON VideoDescription where
        parseJSON
          = withObject "VideoDescription"
              (\ x ->
                 VideoDescription' <$>
                   (x .:? "timecodeInsertion") <*> (x .:? "height") <*>
                     (x .:? "afdSignaling")
                     <*> (x .:? "sharpness")
                     <*> (x .:? "crop")
                     <*> (x .:? "width")
                     <*> (x .:? "scalingBehavior")
                     <*> (x .:? "respondToAfd")
                     <*> (x .:? "dropFrameTimecode")
                     <*> (x .:? "antiAlias")
                     <*> (x .:? "fixedAfd")
                     <*> (x .:? "colorMetadata")
                     <*> (x .:? "codecSettings")
                     <*> (x .:? "videoPreprocessors")
                     <*> (x .:? "position"))

instance Hashable VideoDescription where

instance NFData VideoDescription where

instance ToJSON VideoDescription where
        toJSON VideoDescription'{..}
          = object
              (catMaybes
                 [("timecodeInsertion" .=) <$> _vdTimecodeInsertion,
                  ("height" .=) <$> _vdHeight,
                  ("afdSignaling" .=) <$> _vdAfdSignaling,
                  ("sharpness" .=) <$> _vdSharpness,
                  ("crop" .=) <$> _vdCrop, ("width" .=) <$> _vdWidth,
                  ("scalingBehavior" .=) <$> _vdScalingBehavior,
                  ("respondToAfd" .=) <$> _vdRespondToAfd,
                  ("dropFrameTimecode" .=) <$> _vdDropFrameTimecode,
                  ("antiAlias" .=) <$> _vdAntiAlias,
                  ("fixedAfd" .=) <$> _vdFixedAfd,
                  ("colorMetadata" .=) <$> _vdColorMetadata,
                  ("codecSettings" .=) <$> _vdCodecSettings,
                  ("videoPreprocessors" .=) <$> _vdVideoPreprocessors,
                  ("position" .=) <$> _vdPosition])
