{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AiffSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AiffSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
--
-- /See:/ 'aiffSettings' smart constructor.
data AiffSettings = AiffSettings'{_asBitDepth ::
                                  !(Maybe Int),
                                  _asChannels :: !(Maybe Int),
                                  _asSampleRate :: !(Maybe Int)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AiffSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asBitDepth' - Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
--
-- * 'asChannels' - Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
--
-- * 'asSampleRate' - Sample rate in hz.
aiffSettings
    :: AiffSettings
aiffSettings
  = AiffSettings'{_asBitDepth = Nothing,
                  _asChannels = Nothing, _asSampleRate = Nothing}

-- | Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
asBitDepth :: Lens' AiffSettings (Maybe Int)
asBitDepth = lens _asBitDepth (\ s a -> s{_asBitDepth = a})

-- | Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
asChannels :: Lens' AiffSettings (Maybe Int)
asChannels = lens _asChannels (\ s a -> s{_asChannels = a})

-- | Sample rate in hz.
asSampleRate :: Lens' AiffSettings (Maybe Int)
asSampleRate = lens _asSampleRate (\ s a -> s{_asSampleRate = a})

instance FromJSON AiffSettings where
        parseJSON
          = withObject "AiffSettings"
              (\ x ->
                 AiffSettings' <$>
                   (x .:? "bitDepth") <*> (x .:? "channels") <*>
                     (x .:? "sampleRate"))

instance Hashable AiffSettings where

instance NFData AiffSettings where

instance ToJSON AiffSettings where
        toJSON AiffSettings'{..}
          = object
              (catMaybes
                 [("bitDepth" .=) <$> _asBitDepth,
                  ("channels" .=) <$> _asChannels,
                  ("sampleRate" .=) <$> _asSampleRate])
