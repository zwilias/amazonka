{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJobSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.TrainingJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrainingJobStatus

-- | Provides summary information about a training job.
--
--
--
-- /See:/ 'trainingJobSummary' smart constructor.
data TrainingJobSummary = TrainingJobSummary'{_tjsTrainingEndTime
                                              :: !(Maybe POSIX),
                                              _tjsLastModifiedTime ::
                                              !(Maybe POSIX),
                                              _tjsTrainingJobName :: !Text,
                                              _tjsTrainingJobARN :: !Text,
                                              _tjsCreationTime :: !POSIX,
                                              _tjsTrainingJobStatus ::
                                              !TrainingJobStatus}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjsTrainingEndTime' - A timestamp that shows when the training job ended. This field is set only if the training job has one of the terminal statuses (@Completed@ , @Failed@ , or @Stopped@ ). 
--
-- * 'tjsLastModifiedTime' - Timestamp when the training job was last modified. 
--
-- * 'tjsTrainingJobName' - The name of the training job that you want a summary for.
--
-- * 'tjsTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
--
-- * 'tjsCreationTime' - A timestamp that shows when the training job was created.
--
-- * 'tjsTrainingJobStatus' - The status of the training job.
trainingJobSummary
    :: Text -- ^ 'tjsTrainingJobName'
    -> Text -- ^ 'tjsTrainingJobARN'
    -> UTCTime -- ^ 'tjsCreationTime'
    -> TrainingJobStatus -- ^ 'tjsTrainingJobStatus'
    -> TrainingJobSummary
trainingJobSummary pTrainingJobName_ pTrainingJobARN_
  pCreationTime_ pTrainingJobStatus_
  = TrainingJobSummary'{_tjsTrainingEndTime = Nothing,
                        _tjsLastModifiedTime = Nothing,
                        _tjsTrainingJobName = pTrainingJobName_,
                        _tjsTrainingJobARN = pTrainingJobARN_,
                        _tjsCreationTime = _Time # pCreationTime_,
                        _tjsTrainingJobStatus = pTrainingJobStatus_}

-- | A timestamp that shows when the training job ended. This field is set only if the training job has one of the terminal statuses (@Completed@ , @Failed@ , or @Stopped@ ). 
tjsTrainingEndTime :: Lens' TrainingJobSummary (Maybe UTCTime)
tjsTrainingEndTime = lens _tjsTrainingEndTime (\ s a -> s{_tjsTrainingEndTime = a}) . mapping _Time

-- | Timestamp when the training job was last modified. 
tjsLastModifiedTime :: Lens' TrainingJobSummary (Maybe UTCTime)
tjsLastModifiedTime = lens _tjsLastModifiedTime (\ s a -> s{_tjsLastModifiedTime = a}) . mapping _Time

-- | The name of the training job that you want a summary for.
tjsTrainingJobName :: Lens' TrainingJobSummary Text
tjsTrainingJobName = lens _tjsTrainingJobName (\ s a -> s{_tjsTrainingJobName = a})

-- | The Amazon Resource Name (ARN) of the training job.
tjsTrainingJobARN :: Lens' TrainingJobSummary Text
tjsTrainingJobARN = lens _tjsTrainingJobARN (\ s a -> s{_tjsTrainingJobARN = a})

-- | A timestamp that shows when the training job was created.
tjsCreationTime :: Lens' TrainingJobSummary UTCTime
tjsCreationTime = lens _tjsCreationTime (\ s a -> s{_tjsCreationTime = a}) . _Time

-- | The status of the training job.
tjsTrainingJobStatus :: Lens' TrainingJobSummary TrainingJobStatus
tjsTrainingJobStatus = lens _tjsTrainingJobStatus (\ s a -> s{_tjsTrainingJobStatus = a})

instance FromJSON TrainingJobSummary where
        parseJSON
          = withObject "TrainingJobSummary"
              (\ x ->
                 TrainingJobSummary' <$>
                   (x .:? "TrainingEndTime") <*>
                     (x .:? "LastModifiedTime")
                     <*> (x .: "TrainingJobName")
                     <*> (x .: "TrainingJobArn")
                     <*> (x .: "CreationTime")
                     <*> (x .: "TrainingJobStatus"))

instance Hashable TrainingJobSummary where

instance NFData TrainingJobSummary where
