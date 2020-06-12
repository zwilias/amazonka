{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.HlsSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioOnlyHlsSettings
import Network.AWS.MediaLive.Types.StandardHlsSettings
import Network.AWS.Prelude

-- | Placeholder documentation for HlsSettings
--
-- /See:/ 'hlsSettings' smart constructor.
data HlsSettings = HlsSettings'{_hsAudioOnlyHlsSettings
                                :: !(Maybe AudioOnlyHlsSettings),
                                _hsStandardHlsSettings ::
                                !(Maybe StandardHlsSettings)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsAudioOnlyHlsSettings' - Undocumented member.
--
-- * 'hsStandardHlsSettings' - Undocumented member.
hlsSettings
    :: HlsSettings
hlsSettings
  = HlsSettings'{_hsAudioOnlyHlsSettings = Nothing,
                 _hsStandardHlsSettings = Nothing}

-- | Undocumented member.
hsAudioOnlyHlsSettings :: Lens' HlsSettings (Maybe AudioOnlyHlsSettings)
hsAudioOnlyHlsSettings = lens _hsAudioOnlyHlsSettings (\ s a -> s{_hsAudioOnlyHlsSettings = a})

-- | Undocumented member.
hsStandardHlsSettings :: Lens' HlsSettings (Maybe StandardHlsSettings)
hsStandardHlsSettings = lens _hsStandardHlsSettings (\ s a -> s{_hsStandardHlsSettings = a})

instance FromJSON HlsSettings where
        parseJSON
          = withObject "HlsSettings"
              (\ x ->
                 HlsSettings' <$>
                   (x .:? "audioOnlyHlsSettings") <*>
                     (x .:? "standardHlsSettings"))

instance Hashable HlsSettings where

instance NFData HlsSettings where

instance ToJSON HlsSettings where
        toJSON HlsSettings'{..}
          = object
              (catMaybes
                 [("audioOnlyHlsSettings" .=) <$>
                    _hsAudioOnlyHlsSettings,
                  ("standardHlsSettings" .=) <$>
                    _hsStandardHlsSettings])
