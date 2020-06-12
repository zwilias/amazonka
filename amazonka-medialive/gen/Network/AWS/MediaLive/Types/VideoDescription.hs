{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.VideoDescription where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.VideoCodecSettings
import Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
import Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
import Network.AWS.Prelude

-- | Video settings for this stream.
--
-- /See:/ 'videoDescription' smart constructor.
data VideoDescription = VideoDescription'{_vdHeight
                                          :: !(Maybe Int),
                                          _vdSharpness :: !(Maybe Nat),
                                          _vdWidth :: !(Maybe Int),
                                          _vdScalingBehavior ::
                                          !(Maybe
                                              VideoDescriptionScalingBehavior),
                                          _vdRespondToAfd ::
                                          !(Maybe VideoDescriptionRespondToAfd),
                                          _vdCodecSettings ::
                                          !(Maybe VideoCodecSettings),
                                          _vdName :: !Text}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdHeight' - Output video height (in pixels). Leave blank to use source video height. If left blank, width must also be unspecified.
--
-- * 'vdSharpness' - Changes the width of the anti-alias filter kernel used for scaling. Only applies if scaling is being performed and antiAlias is set to true. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
--
-- * 'vdWidth' - Output video width (in pixels). Leave out to use source video width.  If left out, height must also be left out. Display aspect ratio is always preserved by letterboxing or pillarboxing when necessary.
--
-- * 'vdScalingBehavior' - When set to "stretchToOutput", automatically configures the output position to stretch the video to the specified output resolution. This option will override any position value.
--
-- * 'vdRespondToAfd' - Indicates how to respond to the AFD values in the input stream. Setting to "respond" causes input video to be clipped, depending on AFD value, input display aspect ratio and output display aspect ratio.
--
-- * 'vdCodecSettings' - Video codec settings.
--
-- * 'vdName' - The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event.
videoDescription
    :: Text -- ^ 'vdName'
    -> VideoDescription
videoDescription pName_
  = VideoDescription'{_vdHeight = Nothing,
                      _vdSharpness = Nothing, _vdWidth = Nothing,
                      _vdScalingBehavior = Nothing,
                      _vdRespondToAfd = Nothing,
                      _vdCodecSettings = Nothing, _vdName = pName_}

-- | Output video height (in pixels). Leave blank to use source video height. If left blank, width must also be unspecified.
vdHeight :: Lens' VideoDescription (Maybe Int)
vdHeight = lens _vdHeight (\ s a -> s{_vdHeight = a})

-- | Changes the width of the anti-alias filter kernel used for scaling. Only applies if scaling is being performed and antiAlias is set to true. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
vdSharpness :: Lens' VideoDescription (Maybe Natural)
vdSharpness = lens _vdSharpness (\ s a -> s{_vdSharpness = a}) . mapping _Nat

-- | Output video width (in pixels). Leave out to use source video width.  If left out, height must also be left out. Display aspect ratio is always preserved by letterboxing or pillarboxing when necessary.
vdWidth :: Lens' VideoDescription (Maybe Int)
vdWidth = lens _vdWidth (\ s a -> s{_vdWidth = a})

-- | When set to "stretchToOutput", automatically configures the output position to stretch the video to the specified output resolution. This option will override any position value.
vdScalingBehavior :: Lens' VideoDescription (Maybe VideoDescriptionScalingBehavior)
vdScalingBehavior = lens _vdScalingBehavior (\ s a -> s{_vdScalingBehavior = a})

-- | Indicates how to respond to the AFD values in the input stream. Setting to "respond" causes input video to be clipped, depending on AFD value, input display aspect ratio and output display aspect ratio.
vdRespondToAfd :: Lens' VideoDescription (Maybe VideoDescriptionRespondToAfd)
vdRespondToAfd = lens _vdRespondToAfd (\ s a -> s{_vdRespondToAfd = a})

-- | Video codec settings.
vdCodecSettings :: Lens' VideoDescription (Maybe VideoCodecSettings)
vdCodecSettings = lens _vdCodecSettings (\ s a -> s{_vdCodecSettings = a})

-- | The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event.
vdName :: Lens' VideoDescription Text
vdName = lens _vdName (\ s a -> s{_vdName = a})

instance FromJSON VideoDescription where
        parseJSON
          = withObject "VideoDescription"
              (\ x ->
                 VideoDescription' <$>
                   (x .:? "height") <*> (x .:? "sharpness") <*>
                     (x .:? "width")
                     <*> (x .:? "scalingBehavior")
                     <*> (x .:? "respondToAfd")
                     <*> (x .:? "codecSettings")
                     <*> (x .: "name"))

instance Hashable VideoDescription where

instance NFData VideoDescription where

instance ToJSON VideoDescription where
        toJSON VideoDescription'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vdHeight,
                  ("sharpness" .=) <$> _vdSharpness,
                  ("width" .=) <$> _vdWidth,
                  ("scalingBehavior" .=) <$> _vdScalingBehavior,
                  ("respondToAfd" .=) <$> _vdRespondToAfd,
                  ("codecSettings" .=) <$> _vdCodecSettings,
                  Just ("name" .= _vdName)])
