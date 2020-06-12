{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputGroupSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.OutputGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ArchiveGroupSettings
import Network.AWS.MediaLive.Types.HlsGroupSettings
import Network.AWS.MediaLive.Types.MsSmoothGroupSettings
import Network.AWS.MediaLive.Types.RtmpGroupSettings
import Network.AWS.MediaLive.Types.UdpGroupSettings
import Network.AWS.Prelude

-- | Placeholder documentation for OutputGroupSettings
--
-- /See:/ 'outputGroupSettings' smart constructor.
data OutputGroupSettings = OutputGroupSettings'{_ogsMsSmoothGroupSettings
                                                ::
                                                !(Maybe MsSmoothGroupSettings),
                                                _ogsRtmpGroupSettings ::
                                                !(Maybe RtmpGroupSettings),
                                                _ogsHlsGroupSettings ::
                                                !(Maybe HlsGroupSettings),
                                                _ogsArchiveGroupSettings ::
                                                !(Maybe ArchiveGroupSettings),
                                                _ogsUdpGroupSettings ::
                                                !(Maybe UdpGroupSettings)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogsMsSmoothGroupSettings' - Undocumented member.
--
-- * 'ogsRtmpGroupSettings' - Undocumented member.
--
-- * 'ogsHlsGroupSettings' - Undocumented member.
--
-- * 'ogsArchiveGroupSettings' - Undocumented member.
--
-- * 'ogsUdpGroupSettings' - Undocumented member.
outputGroupSettings
    :: OutputGroupSettings
outputGroupSettings
  = OutputGroupSettings'{_ogsMsSmoothGroupSettings =
                           Nothing,
                         _ogsRtmpGroupSettings = Nothing,
                         _ogsHlsGroupSettings = Nothing,
                         _ogsArchiveGroupSettings = Nothing,
                         _ogsUdpGroupSettings = Nothing}

-- | Undocumented member.
ogsMsSmoothGroupSettings :: Lens' OutputGroupSettings (Maybe MsSmoothGroupSettings)
ogsMsSmoothGroupSettings = lens _ogsMsSmoothGroupSettings (\ s a -> s{_ogsMsSmoothGroupSettings = a})

-- | Undocumented member.
ogsRtmpGroupSettings :: Lens' OutputGroupSettings (Maybe RtmpGroupSettings)
ogsRtmpGroupSettings = lens _ogsRtmpGroupSettings (\ s a -> s{_ogsRtmpGroupSettings = a})

-- | Undocumented member.
ogsHlsGroupSettings :: Lens' OutputGroupSettings (Maybe HlsGroupSettings)
ogsHlsGroupSettings = lens _ogsHlsGroupSettings (\ s a -> s{_ogsHlsGroupSettings = a})

-- | Undocumented member.
ogsArchiveGroupSettings :: Lens' OutputGroupSettings (Maybe ArchiveGroupSettings)
ogsArchiveGroupSettings = lens _ogsArchiveGroupSettings (\ s a -> s{_ogsArchiveGroupSettings = a})

-- | Undocumented member.
ogsUdpGroupSettings :: Lens' OutputGroupSettings (Maybe UdpGroupSettings)
ogsUdpGroupSettings = lens _ogsUdpGroupSettings (\ s a -> s{_ogsUdpGroupSettings = a})

instance FromJSON OutputGroupSettings where
        parseJSON
          = withObject "OutputGroupSettings"
              (\ x ->
                 OutputGroupSettings' <$>
                   (x .:? "msSmoothGroupSettings") <*>
                     (x .:? "rtmpGroupSettings")
                     <*> (x .:? "hlsGroupSettings")
                     <*> (x .:? "archiveGroupSettings")
                     <*> (x .:? "udpGroupSettings"))

instance Hashable OutputGroupSettings where

instance NFData OutputGroupSettings where

instance ToJSON OutputGroupSettings where
        toJSON OutputGroupSettings'{..}
          = object
              (catMaybes
                 [("msSmoothGroupSettings" .=) <$>
                    _ogsMsSmoothGroupSettings,
                  ("rtmpGroupSettings" .=) <$> _ogsRtmpGroupSettings,
                  ("hlsGroupSettings" .=) <$> _ogsHlsGroupSettings,
                  ("archiveGroupSettings" .=) <$>
                    _ogsArchiveGroupSettings,
                  ("udpGroupSettings" .=) <$> _ogsUdpGroupSettings])
