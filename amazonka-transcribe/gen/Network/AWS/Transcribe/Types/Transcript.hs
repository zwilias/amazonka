{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.Transcript
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.Transcript where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the output of a transcription job.
--
--
--
-- /See:/ 'transcript' smart constructor.
newtype Transcript = Transcript'{_tTranscriptFileURI
                                 :: Maybe Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Transcript' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTranscriptFileURI' - The S3 location where the transcription result is stored. Use this URI to access the results of the transcription job. 
transcript
    :: Transcript
transcript
  = Transcript'{_tTranscriptFileURI = Nothing}

-- | The S3 location where the transcription result is stored. Use this URI to access the results of the transcription job. 
tTranscriptFileURI :: Lens' Transcript (Maybe Text)
tTranscriptFileURI = lens _tTranscriptFileURI (\ s a -> s{_tTranscriptFileURI = a})

instance FromJSON Transcript where
        parseJSON
          = withObject "Transcript"
              (\ x -> Transcript' <$> (x .:? "TranscriptFileUri"))

instance Hashable Transcript where

instance NFData Transcript where
