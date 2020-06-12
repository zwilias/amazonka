{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AacSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
import Network.AWS.MediaConvert.Types.AacCodecProfile
import Network.AWS.MediaConvert.Types.AacCodingMode
import Network.AWS.MediaConvert.Types.AacRateControlMode
import Network.AWS.MediaConvert.Types.AacRawFormat
import Network.AWS.MediaConvert.Types.AacSpecification
import Network.AWS.MediaConvert.Types.AacVbrQuality
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC.
--
-- /See:/ 'aacSettings' smart constructor.
data AacSettings = AacSettings'{_assAudioDescriptionBroadcasterMix
                                :: !(Maybe AacAudioDescriptionBroadcasterMix),
                                _assRawFormat :: !(Maybe AacRawFormat),
                                _assCodingMode :: !(Maybe AacCodingMode),
                                _assRateControlMode ::
                                !(Maybe AacRateControlMode),
                                _assSampleRate :: !(Maybe Int),
                                _assSpecification :: !(Maybe AacSpecification),
                                _assCodecProfile :: !(Maybe AacCodecProfile),
                                _assBitrate :: !(Maybe Int),
                                _assVbrQuality :: !(Maybe AacVbrQuality)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AacSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assAudioDescriptionBroadcasterMix' - Undocumented member.
--
-- * 'assRawFormat' - Undocumented member.
--
-- * 'assCodingMode' - Undocumented member.
--
-- * 'assRateControlMode' - Undocumented member.
--
-- * 'assSampleRate' - Sample rate in Hz. Valid values depend on rate control mode and profile.
--
-- * 'assSpecification' - Undocumented member.
--
-- * 'assCodecProfile' - Undocumented member.
--
-- * 'assBitrate' - Average bitrate in bits/second. Valid values depend on rate control mode and profile.
--
-- * 'assVbrQuality' - Undocumented member.
aacSettings
    :: AacSettings
aacSettings
  = AacSettings'{_assAudioDescriptionBroadcasterMix =
                   Nothing,
                 _assRawFormat = Nothing, _assCodingMode = Nothing,
                 _assRateControlMode = Nothing,
                 _assSampleRate = Nothing,
                 _assSpecification = Nothing,
                 _assCodecProfile = Nothing, _assBitrate = Nothing,
                 _assVbrQuality = Nothing}

-- | Undocumented member.
assAudioDescriptionBroadcasterMix :: Lens' AacSettings (Maybe AacAudioDescriptionBroadcasterMix)
assAudioDescriptionBroadcasterMix = lens _assAudioDescriptionBroadcasterMix (\ s a -> s{_assAudioDescriptionBroadcasterMix = a})

-- | Undocumented member.
assRawFormat :: Lens' AacSettings (Maybe AacRawFormat)
assRawFormat = lens _assRawFormat (\ s a -> s{_assRawFormat = a})

-- | Undocumented member.
assCodingMode :: Lens' AacSettings (Maybe AacCodingMode)
assCodingMode = lens _assCodingMode (\ s a -> s{_assCodingMode = a})

-- | Undocumented member.
assRateControlMode :: Lens' AacSettings (Maybe AacRateControlMode)
assRateControlMode = lens _assRateControlMode (\ s a -> s{_assRateControlMode = a})

-- | Sample rate in Hz. Valid values depend on rate control mode and profile.
assSampleRate :: Lens' AacSettings (Maybe Int)
assSampleRate = lens _assSampleRate (\ s a -> s{_assSampleRate = a})

-- | Undocumented member.
assSpecification :: Lens' AacSettings (Maybe AacSpecification)
assSpecification = lens _assSpecification (\ s a -> s{_assSpecification = a})

-- | Undocumented member.
assCodecProfile :: Lens' AacSettings (Maybe AacCodecProfile)
assCodecProfile = lens _assCodecProfile (\ s a -> s{_assCodecProfile = a})

-- | Average bitrate in bits/second. Valid values depend on rate control mode and profile.
assBitrate :: Lens' AacSettings (Maybe Int)
assBitrate = lens _assBitrate (\ s a -> s{_assBitrate = a})

-- | Undocumented member.
assVbrQuality :: Lens' AacSettings (Maybe AacVbrQuality)
assVbrQuality = lens _assVbrQuality (\ s a -> s{_assVbrQuality = a})

instance FromJSON AacSettings where
        parseJSON
          = withObject "AacSettings"
              (\ x ->
                 AacSettings' <$>
                   (x .:? "audioDescriptionBroadcasterMix") <*>
                     (x .:? "rawFormat")
                     <*> (x .:? "codingMode")
                     <*> (x .:? "rateControlMode")
                     <*> (x .:? "sampleRate")
                     <*> (x .:? "specification")
                     <*> (x .:? "codecProfile")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "vbrQuality"))

instance Hashable AacSettings where

instance NFData AacSettings where

instance ToJSON AacSettings where
        toJSON AacSettings'{..}
          = object
              (catMaybes
                 [("audioDescriptionBroadcasterMix" .=) <$>
                    _assAudioDescriptionBroadcasterMix,
                  ("rawFormat" .=) <$> _assRawFormat,
                  ("codingMode" .=) <$> _assCodingMode,
                  ("rateControlMode" .=) <$> _assRateControlMode,
                  ("sampleRate" .=) <$> _assSampleRate,
                  ("specification" .=) <$> _assSpecification,
                  ("codecProfile" .=) <$> _assCodecProfile,
                  ("bitrate" .=) <$> _assBitrate,
                  ("vbrQuality" .=) <$> _assVbrQuality])
