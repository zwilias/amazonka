{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.Job
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.Job where

import Network.AWS.IoT.Types.JobExecutionsRolloutConfig
import Network.AWS.IoT.Types.JobProcessDetails
import Network.AWS.IoT.Types.JobStatus
import Network.AWS.IoT.Types.PresignedURLConfig
import Network.AWS.IoT.Types.TargetSelection
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @Job@ object contains details about a job.
--
--
--
-- /See:/ 'job' smart constructor.
data Job = Job'{_jobStatus :: !(Maybe JobStatus),
                _jobJobExecutionsRolloutConfig ::
                !(Maybe JobExecutionsRolloutConfig),
                _jobJobId :: !(Maybe Text),
                _jobLastUpdatedAt :: !(Maybe POSIX),
                _jobJobARN :: !(Maybe Text),
                _jobCreatedAt :: !(Maybe POSIX),
                _jobDocumentParameters :: !(Maybe (Map Text Text)),
                _jobJobProcessDetails :: !(Maybe JobProcessDetails),
                _jobPresignedURLConfig ::
                !(Maybe PresignedURLConfig),
                _jobTargets :: !(Maybe (List1 Text)),
                _jobCompletedAt :: !(Maybe POSIX),
                _jobComment :: !(Maybe Text),
                _jobDescription :: !(Maybe Text),
                _jobTargetSelection :: !(Maybe TargetSelection)}
             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobStatus' - The status of the job, one of @IN_PROGRESS@ , @CANCELED@ , or @COMPLETED@ . 
--
-- * 'jobJobExecutionsRolloutConfig' - Allows you to create a staged rollout of a job.
--
-- * 'jobJobId' - The unique identifier you assigned to this job when it was created.
--
-- * 'jobLastUpdatedAt' - The time, in milliseconds since the epoch, when the job was last updated.
--
-- * 'jobJobARN' - An ARN identifying the job with format "arn:aws:iot:region:account:job/jobId".
--
-- * 'jobCreatedAt' - The time, in milliseconds since the epoch, when the job was created.
--
-- * 'jobDocumentParameters' - The parameters specified for the job document.
--
-- * 'jobJobProcessDetails' - Details about the job process.
--
-- * 'jobPresignedURLConfig' - Configuration for pre-signed S3 URLs.
--
-- * 'jobTargets' - A list of IoT things and thing groups to which the job should be sent.
--
-- * 'jobCompletedAt' - The time, in milliseconds since the epoch, when the job was completed.
--
-- * 'jobComment' - If the job was updated, describes the reason for the update.
--
-- * 'jobDescription' - A short text description of the job.
--
-- * 'jobTargetSelection' - Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a device when the thing representing the device is added to a target group, even after the job was completed by all things originally in the group. 
job
    :: Job
job
  = Job'{_jobStatus = Nothing,
         _jobJobExecutionsRolloutConfig = Nothing,
         _jobJobId = Nothing, _jobLastUpdatedAt = Nothing,
         _jobJobARN = Nothing, _jobCreatedAt = Nothing,
         _jobDocumentParameters = Nothing,
         _jobJobProcessDetails = Nothing,
         _jobPresignedURLConfig = Nothing,
         _jobTargets = Nothing, _jobCompletedAt = Nothing,
         _jobComment = Nothing, _jobDescription = Nothing,
         _jobTargetSelection = Nothing}

-- | The status of the job, one of @IN_PROGRESS@ , @CANCELED@ , or @COMPLETED@ . 
jobStatus :: Lens' Job (Maybe JobStatus)
jobStatus = lens _jobStatus (\ s a -> s{_jobStatus = a})

-- | Allows you to create a staged rollout of a job.
jobJobExecutionsRolloutConfig :: Lens' Job (Maybe JobExecutionsRolloutConfig)
jobJobExecutionsRolloutConfig = lens _jobJobExecutionsRolloutConfig (\ s a -> s{_jobJobExecutionsRolloutConfig = a})

-- | The unique identifier you assigned to this job when it was created.
jobJobId :: Lens' Job (Maybe Text)
jobJobId = lens _jobJobId (\ s a -> s{_jobJobId = a})

-- | The time, in milliseconds since the epoch, when the job was last updated.
jobLastUpdatedAt :: Lens' Job (Maybe UTCTime)
jobLastUpdatedAt = lens _jobLastUpdatedAt (\ s a -> s{_jobLastUpdatedAt = a}) . mapping _Time

-- | An ARN identifying the job with format "arn:aws:iot:region:account:job/jobId".
jobJobARN :: Lens' Job (Maybe Text)
jobJobARN = lens _jobJobARN (\ s a -> s{_jobJobARN = a})

-- | The time, in milliseconds since the epoch, when the job was created.
jobCreatedAt :: Lens' Job (Maybe UTCTime)
jobCreatedAt = lens _jobCreatedAt (\ s a -> s{_jobCreatedAt = a}) . mapping _Time

-- | The parameters specified for the job document.
jobDocumentParameters :: Lens' Job (HashMap Text Text)
jobDocumentParameters = lens _jobDocumentParameters (\ s a -> s{_jobDocumentParameters = a}) . _Default . _Map

-- | Details about the job process.
jobJobProcessDetails :: Lens' Job (Maybe JobProcessDetails)
jobJobProcessDetails = lens _jobJobProcessDetails (\ s a -> s{_jobJobProcessDetails = a})

-- | Configuration for pre-signed S3 URLs.
jobPresignedURLConfig :: Lens' Job (Maybe PresignedURLConfig)
jobPresignedURLConfig = lens _jobPresignedURLConfig (\ s a -> s{_jobPresignedURLConfig = a})

-- | A list of IoT things and thing groups to which the job should be sent.
jobTargets :: Lens' Job (Maybe (NonEmpty Text))
jobTargets = lens _jobTargets (\ s a -> s{_jobTargets = a}) . mapping _List1

-- | The time, in milliseconds since the epoch, when the job was completed.
jobCompletedAt :: Lens' Job (Maybe UTCTime)
jobCompletedAt = lens _jobCompletedAt (\ s a -> s{_jobCompletedAt = a}) . mapping _Time

-- | If the job was updated, describes the reason for the update.
jobComment :: Lens' Job (Maybe Text)
jobComment = lens _jobComment (\ s a -> s{_jobComment = a})

-- | A short text description of the job.
jobDescription :: Lens' Job (Maybe Text)
jobDescription = lens _jobDescription (\ s a -> s{_jobDescription = a})

-- | Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a device when the thing representing the device is added to a target group, even after the job was completed by all things originally in the group. 
jobTargetSelection :: Lens' Job (Maybe TargetSelection)
jobTargetSelection = lens _jobTargetSelection (\ s a -> s{_jobTargetSelection = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ x ->
                 Job' <$>
                   (x .:? "status") <*>
                     (x .:? "jobExecutionsRolloutConfig")
                     <*> (x .:? "jobId")
                     <*> (x .:? "lastUpdatedAt")
                     <*> (x .:? "jobArn")
                     <*> (x .:? "createdAt")
                     <*> (x .:? "documentParameters" .!= mempty)
                     <*> (x .:? "jobProcessDetails")
                     <*> (x .:? "presignedUrlConfig")
                     <*> (x .:? "targets")
                     <*> (x .:? "completedAt")
                     <*> (x .:? "comment")
                     <*> (x .:? "description")
                     <*> (x .:? "targetSelection"))

instance Hashable Job where

instance NFData Job where
