{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoCodecSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.VideoCodecSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.H264Settings
import Network.AWS.Prelude

-- | Placeholder documentation for VideoCodecSettings
--
-- /See:/ 'videoCodecSettings' smart constructor.
newtype VideoCodecSettings = VideoCodecSettings'{_vcsH264Settings
                                                 :: Maybe H264Settings}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'VideoCodecSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsH264Settings' - Undocumented member.
videoCodecSettings
    :: VideoCodecSettings
videoCodecSettings
  = VideoCodecSettings'{_vcsH264Settings = Nothing}

-- | Undocumented member.
vcsH264Settings :: Lens' VideoCodecSettings (Maybe H264Settings)
vcsH264Settings = lens _vcsH264Settings (\ s a -> s{_vcsH264Settings = a})

instance FromJSON VideoCodecSettings where
        parseJSON
          = withObject "VideoCodecSettings"
              (\ x ->
                 VideoCodecSettings' <$> (x .:? "h264Settings"))

instance Hashable VideoCodecSettings where

instance NFData VideoCodecSettings where

instance ToJSON VideoCodecSettings where
        toJSON VideoCodecSettings'{..}
          = object
              (catMaybes
                 [("h264Settings" .=) <$> _vcsH264Settings])
