{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.TranscriptionJobSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.TranscriptionJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.TranscriptionJobStatus

-- | Provides a summary of information about a transcription job.
--
--
--
-- /See:/ 'transcriptionJobSummary' smart constructor.
data TranscriptionJobSummary = TranscriptionJobSummary'{_tjsCreationTime
                                                        :: !(Maybe POSIX),
                                                        _tjsFailureReason ::
                                                        !(Maybe Text),
                                                        _tjsLanguageCode ::
                                                        !(Maybe LanguageCode),
                                                        _tjsCompletionTime ::
                                                        !(Maybe POSIX),
                                                        _tjsTranscriptionJobStatus
                                                        ::
                                                        !(Maybe
                                                            TranscriptionJobStatus),
                                                        _tjsTranscriptionJobName
                                                        :: !(Maybe Text)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'TranscriptionJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjsCreationTime' - Timestamp of the date and time that the job was created.
--
-- * 'tjsFailureReason' - If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains a description of the error.
--
-- * 'tjsLanguageCode' - The language code for the input speech.
--
-- * 'tjsCompletionTime' - Timestamp of the date and time that the job completed.
--
-- * 'tjsTranscriptionJobStatus' - The status of the transcription job. When the status is @COMPLETED@ , use the @GetTranscriptionJob@ operation to get the results of the transcription.
--
-- * 'tjsTranscriptionJobName' - The name assigned to the transcription job when it was created.
transcriptionJobSummary
    :: TranscriptionJobSummary
transcriptionJobSummary
  = TranscriptionJobSummary'{_tjsCreationTime =
                               Nothing,
                             _tjsFailureReason = Nothing,
                             _tjsLanguageCode = Nothing,
                             _tjsCompletionTime = Nothing,
                             _tjsTranscriptionJobStatus = Nothing,
                             _tjsTranscriptionJobName = Nothing}

-- | Timestamp of the date and time that the job was created.
tjsCreationTime :: Lens' TranscriptionJobSummary (Maybe UTCTime)
tjsCreationTime = lens _tjsCreationTime (\ s a -> s{_tjsCreationTime = a}) . mapping _Time

-- | If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains a description of the error.
tjsFailureReason :: Lens' TranscriptionJobSummary (Maybe Text)
tjsFailureReason = lens _tjsFailureReason (\ s a -> s{_tjsFailureReason = a})

-- | The language code for the input speech.
tjsLanguageCode :: Lens' TranscriptionJobSummary (Maybe LanguageCode)
tjsLanguageCode = lens _tjsLanguageCode (\ s a -> s{_tjsLanguageCode = a})

-- | Timestamp of the date and time that the job completed.
tjsCompletionTime :: Lens' TranscriptionJobSummary (Maybe UTCTime)
tjsCompletionTime = lens _tjsCompletionTime (\ s a -> s{_tjsCompletionTime = a}) . mapping _Time

-- | The status of the transcription job. When the status is @COMPLETED@ , use the @GetTranscriptionJob@ operation to get the results of the transcription.
tjsTranscriptionJobStatus :: Lens' TranscriptionJobSummary (Maybe TranscriptionJobStatus)
tjsTranscriptionJobStatus = lens _tjsTranscriptionJobStatus (\ s a -> s{_tjsTranscriptionJobStatus = a})

-- | The name assigned to the transcription job when it was created.
tjsTranscriptionJobName :: Lens' TranscriptionJobSummary (Maybe Text)
tjsTranscriptionJobName = lens _tjsTranscriptionJobName (\ s a -> s{_tjsTranscriptionJobName = a})

instance FromJSON TranscriptionJobSummary where
        parseJSON
          = withObject "TranscriptionJobSummary"
              (\ x ->
                 TranscriptionJobSummary' <$>
                   (x .:? "CreationTime") <*> (x .:? "FailureReason")
                     <*> (x .:? "LanguageCode")
                     <*> (x .:? "CompletionTime")
                     <*> (x .:? "TranscriptionJobStatus")
                     <*> (x .:? "TranscriptionJobName"))

instance Hashable TranscriptionJobSummary where

instance NFData TranscriptionJobSummary where
