{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioOnlyHlsSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.AudioOnlyHlsSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.Prelude

-- | Placeholder documentation for AudioOnlyHlsSettings
--
-- /See:/ 'audioOnlyHlsSettings' smart constructor.
data AudioOnlyHlsSettings = AudioOnlyHlsSettings'{_aohsAudioOnlyImage
                                                  :: !(Maybe InputLocation),
                                                  _aohsAudioGroupId ::
                                                  !(Maybe Text),
                                                  _aohsAudioTrackType ::
                                                  !(Maybe
                                                      AudioOnlyHlsTrackType)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AudioOnlyHlsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aohsAudioOnlyImage' - For use with an audio only Stream. Must be a .jpg or .png file. If given, this image will be used as the cover-art for the audio only output. Ideally, it should be formatted for an iPhone screen for two reasons. The iPhone does not resize the image, it crops a centered image on the top/bottom and left/right. Additionally, this image file gets saved bit-for-bit into every 10-second segment file, so will increase bandwidth by {image file size} * {segment count} * {user count.}.
--
-- * 'aohsAudioGroupId' - Specifies the group to which the audio Rendition belongs.
--
-- * 'aohsAudioTrackType' - Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
audioOnlyHlsSettings
    :: AudioOnlyHlsSettings
audioOnlyHlsSettings
  = AudioOnlyHlsSettings'{_aohsAudioOnlyImage =
                            Nothing,
                          _aohsAudioGroupId = Nothing,
                          _aohsAudioTrackType = Nothing}

-- | For use with an audio only Stream. Must be a .jpg or .png file. If given, this image will be used as the cover-art for the audio only output. Ideally, it should be formatted for an iPhone screen for two reasons. The iPhone does not resize the image, it crops a centered image on the top/bottom and left/right. Additionally, this image file gets saved bit-for-bit into every 10-second segment file, so will increase bandwidth by {image file size} * {segment count} * {user count.}.
aohsAudioOnlyImage :: Lens' AudioOnlyHlsSettings (Maybe InputLocation)
aohsAudioOnlyImage = lens _aohsAudioOnlyImage (\ s a -> s{_aohsAudioOnlyImage = a})

-- | Specifies the group to which the audio Rendition belongs.
aohsAudioGroupId :: Lens' AudioOnlyHlsSettings (Maybe Text)
aohsAudioGroupId = lens _aohsAudioGroupId (\ s a -> s{_aohsAudioGroupId = a})

-- | Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
aohsAudioTrackType :: Lens' AudioOnlyHlsSettings (Maybe AudioOnlyHlsTrackType)
aohsAudioTrackType = lens _aohsAudioTrackType (\ s a -> s{_aohsAudioTrackType = a})

instance FromJSON AudioOnlyHlsSettings where
        parseJSON
          = withObject "AudioOnlyHlsSettings"
              (\ x ->
                 AudioOnlyHlsSettings' <$>
                   (x .:? "audioOnlyImage") <*> (x .:? "audioGroupId")
                     <*> (x .:? "audioTrackType"))

instance Hashable AudioOnlyHlsSettings where

instance NFData AudioOnlyHlsSettings where

instance ToJSON AudioOnlyHlsSettings where
        toJSON AudioOnlyHlsSettings'{..}
          = object
              (catMaybes
                 [("audioOnlyImage" .=) <$> _aohsAudioOnlyImage,
                  ("audioGroupId" .=) <$> _aohsAudioGroupId,
                  ("audioTrackType" .=) <$> _aohsAudioTrackType])
