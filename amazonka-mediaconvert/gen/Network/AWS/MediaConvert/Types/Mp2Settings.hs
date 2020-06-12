{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp2Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mp2Settings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.
--
-- /See:/ 'mp2Settings' smart constructor.
data Mp2Settings = Mp2Settings'{_mssChannels ::
                                !(Maybe Int),
                                _mssSampleRate :: !(Maybe Int),
                                _mssBitrate :: !(Maybe Int)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mp2Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mssChannels' - Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
--
-- * 'mssSampleRate' - Sample rate in hz.
--
-- * 'mssBitrate' - Average bitrate in bits/second.
mp2Settings
    :: Mp2Settings
mp2Settings
  = Mp2Settings'{_mssChannels = Nothing,
                 _mssSampleRate = Nothing, _mssBitrate = Nothing}

-- | Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
mssChannels :: Lens' Mp2Settings (Maybe Int)
mssChannels = lens _mssChannels (\ s a -> s{_mssChannels = a})

-- | Sample rate in hz.
mssSampleRate :: Lens' Mp2Settings (Maybe Int)
mssSampleRate = lens _mssSampleRate (\ s a -> s{_mssSampleRate = a})

-- | Average bitrate in bits/second.
mssBitrate :: Lens' Mp2Settings (Maybe Int)
mssBitrate = lens _mssBitrate (\ s a -> s{_mssBitrate = a})

instance FromJSON Mp2Settings where
        parseJSON
          = withObject "Mp2Settings"
              (\ x ->
                 Mp2Settings' <$>
                   (x .:? "channels") <*> (x .:? "sampleRate") <*>
                     (x .:? "bitrate"))

instance Hashable Mp2Settings where

instance NFData Mp2Settings where

instance ToJSON Mp2Settings where
        toJSON Mp2Settings'{..}
          = object
              (catMaybes
                 [("channels" .=) <$> _mssChannels,
                  ("sampleRate" .=) <$> _mssSampleRate,
                  ("bitrate" .=) <$> _mssBitrate])
