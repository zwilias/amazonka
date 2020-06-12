{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.TranscriptionJob
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.TranscriptionJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.Media
import Network.AWS.Transcribe.Types.MediaFormat
import Network.AWS.Transcribe.Types.Settings
import Network.AWS.Transcribe.Types.Transcript
import Network.AWS.Transcribe.Types.TranscriptionJobStatus

-- | Describes an asynchronous transcription job that was created with the @StartTranscriptionJob@ operation.
--
--
--
-- /See:/ 'transcriptionJob' smart constructor.
data TranscriptionJob = TranscriptionJob'{_tjCreationTime
                                          :: !(Maybe POSIX),
                                          _tjFailureReason :: !(Maybe Text),
                                          _tjLanguageCode ::
                                          !(Maybe LanguageCode),
                                          _tjSettings :: !(Maybe Settings),
                                          _tjCompletionTime :: !(Maybe POSIX),
                                          _tjMedia :: !(Maybe Media),
                                          _tjMediaFormat ::
                                          !(Maybe MediaFormat),
                                          _tjTranscriptionJobStatus ::
                                          !(Maybe TranscriptionJobStatus),
                                          _tjTranscriptionJobName ::
                                          !(Maybe Text),
                                          _tjTranscript :: !(Maybe Transcript),
                                          _tjMediaSampleRateHertz ::
                                          !(Maybe Nat)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjCreationTime' - Timestamp of the date and time that the job was created.
--
-- * 'tjFailureReason' - If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains information about why the job failed.
--
-- * 'tjLanguageCode' - The language code for the input speech.
--
-- * 'tjSettings' - Optional settings for the transcription job.
--
-- * 'tjCompletionTime' - Timestamp of the date and time that the job completed.
--
-- * 'tjMedia' - An object that describes the input media for a transcription job.
--
-- * 'tjMediaFormat' - The format of the input media file.
--
-- * 'tjTranscriptionJobStatus' - The status of the transcription job.
--
-- * 'tjTranscriptionJobName' - A name to identify the transcription job.
--
-- * 'tjTranscript' - An object that describes the output of the transcription job.
--
-- * 'tjMediaSampleRateHertz' - The sample rate, in Hertz, of the audio track in the input media file. 
transcriptionJob
    :: TranscriptionJob
transcriptionJob
  = TranscriptionJob'{_tjCreationTime = Nothing,
                      _tjFailureReason = Nothing,
                      _tjLanguageCode = Nothing, _tjSettings = Nothing,
                      _tjCompletionTime = Nothing, _tjMedia = Nothing,
                      _tjMediaFormat = Nothing,
                      _tjTranscriptionJobStatus = Nothing,
                      _tjTranscriptionJobName = Nothing,
                      _tjTranscript = Nothing,
                      _tjMediaSampleRateHertz = Nothing}

-- | Timestamp of the date and time that the job was created.
tjCreationTime :: Lens' TranscriptionJob (Maybe UTCTime)
tjCreationTime = lens _tjCreationTime (\ s a -> s{_tjCreationTime = a}) . mapping _Time

-- | If the @TranscriptionJobStatus@ field is @FAILED@ , this field contains information about why the job failed.
tjFailureReason :: Lens' TranscriptionJob (Maybe Text)
tjFailureReason = lens _tjFailureReason (\ s a -> s{_tjFailureReason = a})

-- | The language code for the input speech.
tjLanguageCode :: Lens' TranscriptionJob (Maybe LanguageCode)
tjLanguageCode = lens _tjLanguageCode (\ s a -> s{_tjLanguageCode = a})

-- | Optional settings for the transcription job.
tjSettings :: Lens' TranscriptionJob (Maybe Settings)
tjSettings = lens _tjSettings (\ s a -> s{_tjSettings = a})

-- | Timestamp of the date and time that the job completed.
tjCompletionTime :: Lens' TranscriptionJob (Maybe UTCTime)
tjCompletionTime = lens _tjCompletionTime (\ s a -> s{_tjCompletionTime = a}) . mapping _Time

-- | An object that describes the input media for a transcription job.
tjMedia :: Lens' TranscriptionJob (Maybe Media)
tjMedia = lens _tjMedia (\ s a -> s{_tjMedia = a})

-- | The format of the input media file.
tjMediaFormat :: Lens' TranscriptionJob (Maybe MediaFormat)
tjMediaFormat = lens _tjMediaFormat (\ s a -> s{_tjMediaFormat = a})

-- | The status of the transcription job.
tjTranscriptionJobStatus :: Lens' TranscriptionJob (Maybe TranscriptionJobStatus)
tjTranscriptionJobStatus = lens _tjTranscriptionJobStatus (\ s a -> s{_tjTranscriptionJobStatus = a})

-- | A name to identify the transcription job.
tjTranscriptionJobName :: Lens' TranscriptionJob (Maybe Text)
tjTranscriptionJobName = lens _tjTranscriptionJobName (\ s a -> s{_tjTranscriptionJobName = a})

-- | An object that describes the output of the transcription job.
tjTranscript :: Lens' TranscriptionJob (Maybe Transcript)
tjTranscript = lens _tjTranscript (\ s a -> s{_tjTranscript = a})

-- | The sample rate, in Hertz, of the audio track in the input media file. 
tjMediaSampleRateHertz :: Lens' TranscriptionJob (Maybe Natural)
tjMediaSampleRateHertz = lens _tjMediaSampleRateHertz (\ s a -> s{_tjMediaSampleRateHertz = a}) . mapping _Nat

instance FromJSON TranscriptionJob where
        parseJSON
          = withObject "TranscriptionJob"
              (\ x ->
                 TranscriptionJob' <$>
                   (x .:? "CreationTime") <*> (x .:? "FailureReason")
                     <*> (x .:? "LanguageCode")
                     <*> (x .:? "Settings")
                     <*> (x .:? "CompletionTime")
                     <*> (x .:? "Media")
                     <*> (x .:? "MediaFormat")
                     <*> (x .:? "TranscriptionJobStatus")
                     <*> (x .:? "TranscriptionJobName")
                     <*> (x .:? "Transcript")
                     <*> (x .:? "MediaSampleRateHertz"))

instance Hashable TranscriptionJob where

instance NFData TranscriptionJob where
