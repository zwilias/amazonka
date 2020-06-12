{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioSelector where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioDefaultSelection
import Network.AWS.MediaConvert.Types.AudioSelectorType
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.MediaConvert.Types.RemixSettings
import Network.AWS.Prelude

-- | Selector for Audio
--
-- /See:/ 'audioSelector' smart constructor.
data AudioSelector = AudioSelector'{_asTracks ::
                                    !(Maybe [Int]),
                                    _asProgramSelection :: !(Maybe Int),
                                    _asLanguageCode :: !(Maybe LanguageCode),
                                    _asOffset :: !(Maybe Int),
                                    _asDefaultSelection ::
                                    !(Maybe AudioDefaultSelection),
                                    _asPids :: !(Maybe [Int]),
                                    _asSelectorType ::
                                    !(Maybe AudioSelectorType),
                                    _asExternalAudioFileInput :: !(Maybe Text),
                                    _asRemixSettings :: !(Maybe RemixSettings)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AudioSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asTracks' - Identify the channel to include in this selector by entering the 1-based track index.  To combine several tracks, enter a comma-separated list, e.g. "1,2,3" for tracks 1-3.
--
-- * 'asProgramSelection' - Applies only when input streams contain Dolby E. Enter the program ID (according to the metadata in the audio) of the Dolby E program to extract from the specified track. One program extracted per audio selector. To select multiple programs, create multiple selectors with the same Track and different Program numbers. "All channels" means to ignore the program IDs and include all the channels in this selector; useful if metadata is known to be incorrect.
--
-- * 'asLanguageCode' - Selects a specific language code from within an audio source.
--
-- * 'asOffset' - Specifies a time delta in milliseconds to offset the audio from the input video.
--
-- * 'asDefaultSelection' - Undocumented member.
--
-- * 'asPids' - Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
--
-- * 'asSelectorType' - Undocumented member.
--
-- * 'asExternalAudioFileInput' - Specifies audio data from an external file source.
--
-- * 'asRemixSettings' - Advanced audio remixing settings.
audioSelector
    :: AudioSelector
audioSelector
  = AudioSelector'{_asTracks = Nothing,
                   _asProgramSelection = Nothing,
                   _asLanguageCode = Nothing, _asOffset = Nothing,
                   _asDefaultSelection = Nothing, _asPids = Nothing,
                   _asSelectorType = Nothing,
                   _asExternalAudioFileInput = Nothing,
                   _asRemixSettings = Nothing}

-- | Identify the channel to include in this selector by entering the 1-based track index.  To combine several tracks, enter a comma-separated list, e.g. "1,2,3" for tracks 1-3.
asTracks :: Lens' AudioSelector [Int]
asTracks = lens _asTracks (\ s a -> s{_asTracks = a}) . _Default . _Coerce

-- | Applies only when input streams contain Dolby E. Enter the program ID (according to the metadata in the audio) of the Dolby E program to extract from the specified track. One program extracted per audio selector. To select multiple programs, create multiple selectors with the same Track and different Program numbers. "All channels" means to ignore the program IDs and include all the channels in this selector; useful if metadata is known to be incorrect.
asProgramSelection :: Lens' AudioSelector (Maybe Int)
asProgramSelection = lens _asProgramSelection (\ s a -> s{_asProgramSelection = a})

-- | Selects a specific language code from within an audio source.
asLanguageCode :: Lens' AudioSelector (Maybe LanguageCode)
asLanguageCode = lens _asLanguageCode (\ s a -> s{_asLanguageCode = a})

-- | Specifies a time delta in milliseconds to offset the audio from the input video.
asOffset :: Lens' AudioSelector (Maybe Int)
asOffset = lens _asOffset (\ s a -> s{_asOffset = a})

-- | Undocumented member.
asDefaultSelection :: Lens' AudioSelector (Maybe AudioDefaultSelection)
asDefaultSelection = lens _asDefaultSelection (\ s a -> s{_asDefaultSelection = a})

-- | Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
asPids :: Lens' AudioSelector [Int]
asPids = lens _asPids (\ s a -> s{_asPids = a}) . _Default . _Coerce

-- | Undocumented member.
asSelectorType :: Lens' AudioSelector (Maybe AudioSelectorType)
asSelectorType = lens _asSelectorType (\ s a -> s{_asSelectorType = a})

-- | Specifies audio data from an external file source.
asExternalAudioFileInput :: Lens' AudioSelector (Maybe Text)
asExternalAudioFileInput = lens _asExternalAudioFileInput (\ s a -> s{_asExternalAudioFileInput = a})

-- | Advanced audio remixing settings.
asRemixSettings :: Lens' AudioSelector (Maybe RemixSettings)
asRemixSettings = lens _asRemixSettings (\ s a -> s{_asRemixSettings = a})

instance FromJSON AudioSelector where
        parseJSON
          = withObject "AudioSelector"
              (\ x ->
                 AudioSelector' <$>
                   (x .:? "tracks" .!= mempty) <*>
                     (x .:? "programSelection")
                     <*> (x .:? "languageCode")
                     <*> (x .:? "offset")
                     <*> (x .:? "defaultSelection")
                     <*> (x .:? "pids" .!= mempty)
                     <*> (x .:? "selectorType")
                     <*> (x .:? "externalAudioFileInput")
                     <*> (x .:? "remixSettings"))

instance Hashable AudioSelector where

instance NFData AudioSelector where

instance ToJSON AudioSelector where
        toJSON AudioSelector'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _asTracks,
                  ("programSelection" .=) <$> _asProgramSelection,
                  ("languageCode" .=) <$> _asLanguageCode,
                  ("offset" .=) <$> _asOffset,
                  ("defaultSelection" .=) <$> _asDefaultSelection,
                  ("pids" .=) <$> _asPids,
                  ("selectorType" .=) <$> _asSelectorType,
                  ("externalAudioFileInput" .=) <$>
                    _asExternalAudioFileInput,
                  ("remixSettings" .=) <$> _asRemixSettings])
