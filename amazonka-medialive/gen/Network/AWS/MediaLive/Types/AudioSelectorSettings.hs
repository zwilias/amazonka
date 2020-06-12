{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioSelectorSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.AudioSelectorSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AudioLanguageSelection
import Network.AWS.MediaLive.Types.AudioPidSelection
import Network.AWS.Prelude

-- | Placeholder documentation for AudioSelectorSettings
--
-- /See:/ 'audioSelectorSettings' smart constructor.
data AudioSelectorSettings = AudioSelectorSettings'{_assAudioLanguageSelection
                                                    ::
                                                    !(Maybe
                                                        AudioLanguageSelection),
                                                    _assAudioPidSelection ::
                                                    !(Maybe AudioPidSelection)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'AudioSelectorSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assAudioLanguageSelection' - Undocumented member.
--
-- * 'assAudioPidSelection' - Undocumented member.
audioSelectorSettings
    :: AudioSelectorSettings
audioSelectorSettings
  = AudioSelectorSettings'{_assAudioLanguageSelection =
                             Nothing,
                           _assAudioPidSelection = Nothing}

-- | Undocumented member.
assAudioLanguageSelection :: Lens' AudioSelectorSettings (Maybe AudioLanguageSelection)
assAudioLanguageSelection = lens _assAudioLanguageSelection (\ s a -> s{_assAudioLanguageSelection = a})

-- | Undocumented member.
assAudioPidSelection :: Lens' AudioSelectorSettings (Maybe AudioPidSelection)
assAudioPidSelection = lens _assAudioPidSelection (\ s a -> s{_assAudioPidSelection = a})

instance FromJSON AudioSelectorSettings where
        parseJSON
          = withObject "AudioSelectorSettings"
              (\ x ->
                 AudioSelectorSettings' <$>
                   (x .:? "audioLanguageSelection") <*>
                     (x .:? "audioPidSelection"))

instance Hashable AudioSelectorSettings where

instance NFData AudioSelectorSettings where

instance ToJSON AudioSelectorSettings where
        toJSON AudioSelectorSettings'{..}
          = object
              (catMaybes
                 [("audioLanguageSelection" .=) <$>
                    _assAudioLanguageSelection,
                  ("audioPidSelection" .=) <$> _assAudioPidSelection])
