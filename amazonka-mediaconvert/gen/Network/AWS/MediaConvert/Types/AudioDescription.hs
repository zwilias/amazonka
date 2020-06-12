{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioDescription where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioCodecSettings
import Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
import Network.AWS.MediaConvert.Types.AudioNormalizationSettings
import Network.AWS.MediaConvert.Types.AudioTypeControl
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.MediaConvert.Types.RemixSettings
import Network.AWS.Prelude

-- | Description of audio output
--
-- /See:/ 'audioDescription' smart constructor.
data AudioDescription = AudioDescription'{_adAudioSourceName
                                          :: !(Maybe Text),
                                          _adLanguageCode ::
                                          !(Maybe LanguageCode),
                                          _adAudioType :: !(Maybe Int),
                                          _adAudioNormalizationSettings ::
                                          !(Maybe AudioNormalizationSettings),
                                          _adLanguageCodeControl ::
                                          !(Maybe AudioLanguageCodeControl),
                                          _adCodecSettings ::
                                          !(Maybe AudioCodecSettings),
                                          _adStreamName :: !(Maybe Text),
                                          _adRemixSettings ::
                                          !(Maybe RemixSettings),
                                          _adAudioTypeControl ::
                                          !(Maybe AudioTypeControl)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AudioDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAudioSourceName' - Specifies which audio data to use from each input. In the simplest case, specify an "Audio Selector":#inputs-audio_selector by name based on its order within each input. For example if you specify "Audio Selector 3", then the third audio selector will be used from each input. If an input does not have an "Audio Selector 3", then the audio selector marked as "default" in that input will be used. If there is no audio selector marked as "default", silence will be inserted for the duration of that input. Alternatively, an "Audio Selector Group":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then "Audio Selector 1" will be chosen automatically.
--
-- * 'adLanguageCode' - Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
--
-- * 'adAudioType' - Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved.
--
-- * 'adAudioNormalizationSettings' - Undocumented member.
--
-- * 'adLanguageCodeControl' - Undocumented member.
--
-- * 'adCodecSettings' - Undocumented member.
--
-- * 'adStreamName' - Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary). Alphanumeric characters, spaces, and underscore are legal.
--
-- * 'adRemixSettings' - Advanced audio remixing settings.
--
-- * 'adAudioTypeControl' - Undocumented member.
audioDescription
    :: AudioDescription
audioDescription
  = AudioDescription'{_adAudioSourceName = Nothing,
                      _adLanguageCode = Nothing, _adAudioType = Nothing,
                      _adAudioNormalizationSettings = Nothing,
                      _adLanguageCodeControl = Nothing,
                      _adCodecSettings = Nothing, _adStreamName = Nothing,
                      _adRemixSettings = Nothing,
                      _adAudioTypeControl = Nothing}

-- | Specifies which audio data to use from each input. In the simplest case, specify an "Audio Selector":#inputs-audio_selector by name based on its order within each input. For example if you specify "Audio Selector 3", then the third audio selector will be used from each input. If an input does not have an "Audio Selector 3", then the audio selector marked as "default" in that input will be used. If there is no audio selector marked as "default", silence will be inserted for the duration of that input. Alternatively, an "Audio Selector Group":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then "Audio Selector 1" will be chosen automatically.
adAudioSourceName :: Lens' AudioDescription (Maybe Text)
adAudioSourceName = lens _adAudioSourceName (\ s a -> s{_adAudioSourceName = a})

-- | Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
adLanguageCode :: Lens' AudioDescription (Maybe LanguageCode)
adLanguageCode = lens _adLanguageCode (\ s a -> s{_adLanguageCode = a})

-- | Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved.
adAudioType :: Lens' AudioDescription (Maybe Int)
adAudioType = lens _adAudioType (\ s a -> s{_adAudioType = a})

-- | Undocumented member.
adAudioNormalizationSettings :: Lens' AudioDescription (Maybe AudioNormalizationSettings)
adAudioNormalizationSettings = lens _adAudioNormalizationSettings (\ s a -> s{_adAudioNormalizationSettings = a})

-- | Undocumented member.
adLanguageCodeControl :: Lens' AudioDescription (Maybe AudioLanguageCodeControl)
adLanguageCodeControl = lens _adLanguageCodeControl (\ s a -> s{_adLanguageCodeControl = a})

-- | Undocumented member.
adCodecSettings :: Lens' AudioDescription (Maybe AudioCodecSettings)
adCodecSettings = lens _adCodecSettings (\ s a -> s{_adCodecSettings = a})

-- | Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary). Alphanumeric characters, spaces, and underscore are legal.
adStreamName :: Lens' AudioDescription (Maybe Text)
adStreamName = lens _adStreamName (\ s a -> s{_adStreamName = a})

-- | Advanced audio remixing settings.
adRemixSettings :: Lens' AudioDescription (Maybe RemixSettings)
adRemixSettings = lens _adRemixSettings (\ s a -> s{_adRemixSettings = a})

-- | Undocumented member.
adAudioTypeControl :: Lens' AudioDescription (Maybe AudioTypeControl)
adAudioTypeControl = lens _adAudioTypeControl (\ s a -> s{_adAudioTypeControl = a})

instance FromJSON AudioDescription where
        parseJSON
          = withObject "AudioDescription"
              (\ x ->
                 AudioDescription' <$>
                   (x .:? "audioSourceName") <*> (x .:? "languageCode")
                     <*> (x .:? "audioType")
                     <*> (x .:? "audioNormalizationSettings")
                     <*> (x .:? "languageCodeControl")
                     <*> (x .:? "codecSettings")
                     <*> (x .:? "streamName")
                     <*> (x .:? "remixSettings")
                     <*> (x .:? "audioTypeControl"))

instance Hashable AudioDescription where

instance NFData AudioDescription where

instance ToJSON AudioDescription where
        toJSON AudioDescription'{..}
          = object
              (catMaybes
                 [("audioSourceName" .=) <$> _adAudioSourceName,
                  ("languageCode" .=) <$> _adLanguageCode,
                  ("audioType" .=) <$> _adAudioType,
                  ("audioNormalizationSettings" .=) <$>
                    _adAudioNormalizationSettings,
                  ("languageCodeControl" .=) <$>
                    _adLanguageCodeControl,
                  ("codecSettings" .=) <$> _adCodecSettings,
                  ("streamName" .=) <$> _adStreamName,
                  ("remixSettings" .=) <$> _adRemixSettings,
                  ("audioTypeControl" .=) <$> _adAudioTypeControl])
