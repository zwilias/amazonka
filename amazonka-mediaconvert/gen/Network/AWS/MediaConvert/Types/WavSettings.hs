{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.WavSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.WavSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
--
-- /See:/ 'wavSettings' smart constructor.
data WavSettings = WavSettings'{_wsBitDepth ::
                                !(Maybe Int),
                                _wsChannels :: !(Maybe Int),
                                _wsSampleRate :: !(Maybe Int)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WavSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsBitDepth' - Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
--
-- * 'wsChannels' - Set Channels to specify the number of channels in this output audio track. With WAV, valid values 1, 2, 4, and 8. In the console, these values are Mono, Stereo, 4-Channel, and 8-Channel, respectively.
--
-- * 'wsSampleRate' - Sample rate in Hz.
wavSettings
    :: WavSettings
wavSettings
  = WavSettings'{_wsBitDepth = Nothing,
                 _wsChannels = Nothing, _wsSampleRate = Nothing}

-- | Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
wsBitDepth :: Lens' WavSettings (Maybe Int)
wsBitDepth = lens _wsBitDepth (\ s a -> s{_wsBitDepth = a})

-- | Set Channels to specify the number of channels in this output audio track. With WAV, valid values 1, 2, 4, and 8. In the console, these values are Mono, Stereo, 4-Channel, and 8-Channel, respectively.
wsChannels :: Lens' WavSettings (Maybe Int)
wsChannels = lens _wsChannels (\ s a -> s{_wsChannels = a})

-- | Sample rate in Hz.
wsSampleRate :: Lens' WavSettings (Maybe Int)
wsSampleRate = lens _wsSampleRate (\ s a -> s{_wsSampleRate = a})

instance FromJSON WavSettings where
        parseJSON
          = withObject "WavSettings"
              (\ x ->
                 WavSettings' <$>
                   (x .:? "bitDepth") <*> (x .:? "channels") <*>
                     (x .:? "sampleRate"))

instance Hashable WavSettings where

instance NFData WavSettings where

instance ToJSON WavSettings where
        toJSON WavSettings'{..}
          = object
              (catMaybes
                 [("bitDepth" .=) <$> _wsBitDepth,
                  ("channels" .=) <$> _wsChannels,
                  ("sampleRate" .=) <$> _wsSampleRate])
