{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecution
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.JobExecution where

import Network.AWS.IoT.Types.JobExecutionStatus
import Network.AWS.IoT.Types.JobExecutionStatusDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The job execution object represents the execution of a job on a particular device.
--
--
--
-- /See:/ 'jobExecution' smart constructor.
data JobExecution = JobExecution'{_jeStatus ::
                                  !(Maybe JobExecutionStatus),
                                  _jeJobId :: !(Maybe Text),
                                  _jeLastUpdatedAt :: !(Maybe POSIX),
                                  _jeQueuedAt :: !(Maybe POSIX),
                                  _jeStatusDetails ::
                                  !(Maybe JobExecutionStatusDetails),
                                  _jeThingARN :: !(Maybe Text),
                                  _jeExecutionNumber :: !(Maybe Integer),
                                  _jeStartedAt :: !(Maybe POSIX)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeStatus' - The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCESS, CANCELED, or REJECTED).
--
-- * 'jeJobId' - The unique identifier you assigned to the job when it was created.
--
-- * 'jeLastUpdatedAt' - The time, in milliseconds since the epoch, when the job execution was last updated.
--
-- * 'jeQueuedAt' - The time, in milliseconds since the epoch, when the job execution was queued.
--
-- * 'jeStatusDetails' - A collection of name/value pairs that describe the status of the job execution.
--
-- * 'jeThingARN' - The ARN of the thing on which the job execution is running.
--
-- * 'jeExecutionNumber' - A string (consisting of the digits "0" through "9") which identifies this particular job execution on this particular device. It can be used in commands which return or update job execution information. 
--
-- * 'jeStartedAt' - The time, in milliseconds since the epoch, when the job execution started.
jobExecution
    :: JobExecution
jobExecution
  = JobExecution'{_jeStatus = Nothing,
                  _jeJobId = Nothing, _jeLastUpdatedAt = Nothing,
                  _jeQueuedAt = Nothing, _jeStatusDetails = Nothing,
                  _jeThingARN = Nothing, _jeExecutionNumber = Nothing,
                  _jeStartedAt = Nothing}

-- | The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCESS, CANCELED, or REJECTED).
jeStatus :: Lens' JobExecution (Maybe JobExecutionStatus)
jeStatus = lens _jeStatus (\ s a -> s{_jeStatus = a})

-- | The unique identifier you assigned to the job when it was created.
jeJobId :: Lens' JobExecution (Maybe Text)
jeJobId = lens _jeJobId (\ s a -> s{_jeJobId = a})

-- | The time, in milliseconds since the epoch, when the job execution was last updated.
jeLastUpdatedAt :: Lens' JobExecution (Maybe UTCTime)
jeLastUpdatedAt = lens _jeLastUpdatedAt (\ s a -> s{_jeLastUpdatedAt = a}) . mapping _Time

-- | The time, in milliseconds since the epoch, when the job execution was queued.
jeQueuedAt :: Lens' JobExecution (Maybe UTCTime)
jeQueuedAt = lens _jeQueuedAt (\ s a -> s{_jeQueuedAt = a}) . mapping _Time

-- | A collection of name/value pairs that describe the status of the job execution.
jeStatusDetails :: Lens' JobExecution (Maybe JobExecutionStatusDetails)
jeStatusDetails = lens _jeStatusDetails (\ s a -> s{_jeStatusDetails = a})

-- | The ARN of the thing on which the job execution is running.
jeThingARN :: Lens' JobExecution (Maybe Text)
jeThingARN = lens _jeThingARN (\ s a -> s{_jeThingARN = a})

-- | A string (consisting of the digits "0" through "9") which identifies this particular job execution on this particular device. It can be used in commands which return or update job execution information. 
jeExecutionNumber :: Lens' JobExecution (Maybe Integer)
jeExecutionNumber = lens _jeExecutionNumber (\ s a -> s{_jeExecutionNumber = a})

-- | The time, in milliseconds since the epoch, when the job execution started.
jeStartedAt :: Lens' JobExecution (Maybe UTCTime)
jeStartedAt = lens _jeStartedAt (\ s a -> s{_jeStartedAt = a}) . mapping _Time

instance FromJSON JobExecution where
        parseJSON
          = withObject "JobExecution"
              (\ x ->
                 JobExecution' <$>
                   (x .:? "status") <*> (x .:? "jobId") <*>
                     (x .:? "lastUpdatedAt")
                     <*> (x .:? "queuedAt")
                     <*> (x .:? "statusDetails")
                     <*> (x .:? "thingArn")
                     <*> (x .:? "executionNumber")
                     <*> (x .:? "startedAt"))

instance Hashable JobExecution where

instance NFData JobExecution where
