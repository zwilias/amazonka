{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.Settings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides optional settings for the @StartTranscriptionJob@ operation.
--
--
--
-- /See:/ 'settings' smart constructor.
data Settings = Settings'{_sVocabularyName ::
                          !(Maybe Text),
                          _sMaxSpeakerLabels :: !(Maybe Nat),
                          _sShowSpeakerLabels :: !(Maybe Bool)}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sVocabularyName' - The name of a vocabulary to use when processing the transcription job.
--
-- * 'sMaxSpeakerLabels' - The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers will be identified as a single speaker. If you specify the @MaxSpeakerLabels@ field, you must set the @ShowSpeakerLabels@ field to true.
--
-- * 'sShowSpeakerLabels' - Determines whether the transcription job should use speaker recognition to identify different speakers in the input audio. If you set the @ShowSpeakerLabels@ field to true, you must also set the maximum number of speaker labels @MaxSpeakerLabels@ field.
settings
    :: Settings
settings
  = Settings'{_sVocabularyName = Nothing,
              _sMaxSpeakerLabels = Nothing,
              _sShowSpeakerLabels = Nothing}

-- | The name of a vocabulary to use when processing the transcription job.
sVocabularyName :: Lens' Settings (Maybe Text)
sVocabularyName = lens _sVocabularyName (\ s a -> s{_sVocabularyName = a})

-- | The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers will be identified as a single speaker. If you specify the @MaxSpeakerLabels@ field, you must set the @ShowSpeakerLabels@ field to true.
sMaxSpeakerLabels :: Lens' Settings (Maybe Natural)
sMaxSpeakerLabels = lens _sMaxSpeakerLabels (\ s a -> s{_sMaxSpeakerLabels = a}) . mapping _Nat

-- | Determines whether the transcription job should use speaker recognition to identify different speakers in the input audio. If you set the @ShowSpeakerLabels@ field to true, you must also set the maximum number of speaker labels @MaxSpeakerLabels@ field.
sShowSpeakerLabels :: Lens' Settings (Maybe Bool)
sShowSpeakerLabels = lens _sShowSpeakerLabels (\ s a -> s{_sShowSpeakerLabels = a})

instance FromJSON Settings where
        parseJSON
          = withObject "Settings"
              (\ x ->
                 Settings' <$>
                   (x .:? "VocabularyName") <*>
                     (x .:? "MaxSpeakerLabels")
                     <*> (x .:? "ShowSpeakerLabels"))

instance Hashable Settings where

instance NFData Settings where

instance ToJSON Settings where
        toJSON Settings'{..}
          = object
              (catMaybes
                 [("VocabularyName" .=) <$> _sVocabularyName,
                  ("MaxSpeakerLabels" .=) <$> _sMaxSpeakerLabels,
                  ("ShowSpeakerLabels" .=) <$> _sShowSpeakerLabels])
