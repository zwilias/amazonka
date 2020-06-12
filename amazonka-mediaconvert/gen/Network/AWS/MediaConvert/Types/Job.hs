{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Job
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Job where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.JobSettings
import Network.AWS.MediaConvert.Types.JobStatus
import Network.AWS.MediaConvert.Types.OutputGroupDetail
import Network.AWS.MediaConvert.Types.Timing
import Network.AWS.Prelude

-- | Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
--
-- /See:/ 'job' smart constructor.
data Job = Job'{_jStatus :: !(Maybe JobStatus),
                _jJobTemplate :: !(Maybe Text),
                _jSettings :: !(Maybe JobSettings),
                _jARN :: !(Maybe Text),
                _jCreatedAt :: !(Maybe POSIX),
                _jQueue :: !(Maybe Text),
                _jUserMetadata :: !(Maybe (Map Text Text)),
                _jRole :: !(Maybe Text),
                _jOutputGroupDetails :: !(Maybe [OutputGroupDetail]),
                _jErrorCode :: !(Maybe Int), _jId :: !(Maybe Text),
                _jTiming :: !(Maybe Timing),
                _jErrorMessage :: !(Maybe Text)}
             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jStatus' - Undocumented member.
--
-- * 'jJobTemplate' - The job template that the job is created from, if it is created from a job template.
--
-- * 'jSettings' - Undocumented member.
--
-- * 'jARN' - An identifier for this resource that is unique within all of AWS.
--
-- * 'jCreatedAt' - The time, in Unix epoch format in seconds, when the job got created.
--
-- * 'jQueue' - Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
--
-- * 'jUserMetadata' - User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
--
-- * 'jRole' - The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
--
-- * 'jOutputGroupDetails' - List of output group details
--
-- * 'jErrorCode' - Error code for the job
--
-- * 'jId' - A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
--
-- * 'jTiming' - Undocumented member.
--
-- * 'jErrorMessage' - Error message of Job
job
    :: Job
job
  = Job'{_jStatus = Nothing, _jJobTemplate = Nothing,
         _jSettings = Nothing, _jARN = Nothing,
         _jCreatedAt = Nothing, _jQueue = Nothing,
         _jUserMetadata = Nothing, _jRole = Nothing,
         _jOutputGroupDetails = Nothing,
         _jErrorCode = Nothing, _jId = Nothing,
         _jTiming = Nothing, _jErrorMessage = Nothing}

-- | Undocumented member.
jStatus :: Lens' Job (Maybe JobStatus)
jStatus = lens _jStatus (\ s a -> s{_jStatus = a})

-- | The job template that the job is created from, if it is created from a job template.
jJobTemplate :: Lens' Job (Maybe Text)
jJobTemplate = lens _jJobTemplate (\ s a -> s{_jJobTemplate = a})

-- | Undocumented member.
jSettings :: Lens' Job (Maybe JobSettings)
jSettings = lens _jSettings (\ s a -> s{_jSettings = a})

-- | An identifier for this resource that is unique within all of AWS.
jARN :: Lens' Job (Maybe Text)
jARN = lens _jARN (\ s a -> s{_jARN = a})

-- | The time, in Unix epoch format in seconds, when the job got created.
jCreatedAt :: Lens' Job (Maybe UTCTime)
jCreatedAt = lens _jCreatedAt (\ s a -> s{_jCreatedAt = a}) . mapping _Time

-- | Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
jQueue :: Lens' Job (Maybe Text)
jQueue = lens _jQueue (\ s a -> s{_jQueue = a})

-- | User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
jUserMetadata :: Lens' Job (HashMap Text Text)
jUserMetadata = lens _jUserMetadata (\ s a -> s{_jUserMetadata = a}) . _Default . _Map

-- | The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
jRole :: Lens' Job (Maybe Text)
jRole = lens _jRole (\ s a -> s{_jRole = a})

-- | List of output group details
jOutputGroupDetails :: Lens' Job [OutputGroupDetail]
jOutputGroupDetails = lens _jOutputGroupDetails (\ s a -> s{_jOutputGroupDetails = a}) . _Default . _Coerce

-- | Error code for the job
jErrorCode :: Lens' Job (Maybe Int)
jErrorCode = lens _jErrorCode (\ s a -> s{_jErrorCode = a})

-- | A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | Undocumented member.
jTiming :: Lens' Job (Maybe Timing)
jTiming = lens _jTiming (\ s a -> s{_jTiming = a})

-- | Error message of Job
jErrorMessage :: Lens' Job (Maybe Text)
jErrorMessage = lens _jErrorMessage (\ s a -> s{_jErrorMessage = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ x ->
                 Job' <$>
                   (x .:? "status") <*> (x .:? "jobTemplate") <*>
                     (x .:? "settings")
                     <*> (x .:? "arn")
                     <*> (x .:? "createdAt")
                     <*> (x .:? "queue")
                     <*> (x .:? "userMetadata" .!= mempty)
                     <*> (x .:? "role")
                     <*> (x .:? "outputGroupDetails" .!= mempty)
                     <*> (x .:? "errorCode")
                     <*> (x .:? "id")
                     <*> (x .:? "timing")
                     <*> (x .:? "errorMessage"))

instance Hashable Job where

instance NFData Job where
