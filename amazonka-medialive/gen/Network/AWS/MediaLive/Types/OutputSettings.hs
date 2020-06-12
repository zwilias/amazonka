{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OutputSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.OutputSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ArchiveOutputSettings
import Network.AWS.MediaLive.Types.HlsOutputSettings
import Network.AWS.MediaLive.Types.MsSmoothOutputSettings
import Network.AWS.MediaLive.Types.RtmpOutputSettings
import Network.AWS.MediaLive.Types.UdpOutputSettings
import Network.AWS.Prelude

-- | Placeholder documentation for OutputSettings
--
-- /See:/ 'outputSettings' smart constructor.
data OutputSettings = OutputSettings'{_osArchiveOutputSettings
                                      :: !(Maybe ArchiveOutputSettings),
                                      _osRtmpOutputSettings ::
                                      !(Maybe RtmpOutputSettings),
                                      _osHlsOutputSettings ::
                                      !(Maybe HlsOutputSettings),
                                      _osUdpOutputSettings ::
                                      !(Maybe UdpOutputSettings),
                                      _osMsSmoothOutputSettings ::
                                      !(Maybe MsSmoothOutputSettings)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osArchiveOutputSettings' - Undocumented member.
--
-- * 'osRtmpOutputSettings' - Undocumented member.
--
-- * 'osHlsOutputSettings' - Undocumented member.
--
-- * 'osUdpOutputSettings' - Undocumented member.
--
-- * 'osMsSmoothOutputSettings' - Undocumented member.
outputSettings
    :: OutputSettings
outputSettings
  = OutputSettings'{_osArchiveOutputSettings = Nothing,
                    _osRtmpOutputSettings = Nothing,
                    _osHlsOutputSettings = Nothing,
                    _osUdpOutputSettings = Nothing,
                    _osMsSmoothOutputSettings = Nothing}

-- | Undocumented member.
osArchiveOutputSettings :: Lens' OutputSettings (Maybe ArchiveOutputSettings)
osArchiveOutputSettings = lens _osArchiveOutputSettings (\ s a -> s{_osArchiveOutputSettings = a})

-- | Undocumented member.
osRtmpOutputSettings :: Lens' OutputSettings (Maybe RtmpOutputSettings)
osRtmpOutputSettings = lens _osRtmpOutputSettings (\ s a -> s{_osRtmpOutputSettings = a})

-- | Undocumented member.
osHlsOutputSettings :: Lens' OutputSettings (Maybe HlsOutputSettings)
osHlsOutputSettings = lens _osHlsOutputSettings (\ s a -> s{_osHlsOutputSettings = a})

-- | Undocumented member.
osUdpOutputSettings :: Lens' OutputSettings (Maybe UdpOutputSettings)
osUdpOutputSettings = lens _osUdpOutputSettings (\ s a -> s{_osUdpOutputSettings = a})

-- | Undocumented member.
osMsSmoothOutputSettings :: Lens' OutputSettings (Maybe MsSmoothOutputSettings)
osMsSmoothOutputSettings = lens _osMsSmoothOutputSettings (\ s a -> s{_osMsSmoothOutputSettings = a})

instance FromJSON OutputSettings where
        parseJSON
          = withObject "OutputSettings"
              (\ x ->
                 OutputSettings' <$>
                   (x .:? "archiveOutputSettings") <*>
                     (x .:? "rtmpOutputSettings")
                     <*> (x .:? "hlsOutputSettings")
                     <*> (x .:? "udpOutputSettings")
                     <*> (x .:? "msSmoothOutputSettings"))

instance Hashable OutputSettings where

instance NFData OutputSettings where

instance ToJSON OutputSettings where
        toJSON OutputSettings'{..}
          = object
              (catMaybes
                 [("archiveOutputSettings" .=) <$>
                    _osArchiveOutputSettings,
                  ("rtmpOutputSettings" .=) <$> _osRtmpOutputSettings,
                  ("hlsOutputSettings" .=) <$> _osHlsOutputSettings,
                  ("udpOutputSettings" .=) <$> _osUdpOutputSettings,
                  ("msSmoothOutputSettings" .=) <$>
                    _osMsSmoothOutputSettings])
