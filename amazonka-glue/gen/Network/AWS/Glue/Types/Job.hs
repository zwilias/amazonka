{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Job
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Job where

import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a job definition.
--
--
--
-- /See:/ 'job' smart constructor.
data Job = Job'{_jCommand :: !(Maybe JobCommand),
                _jLastModifiedOn :: !(Maybe POSIX),
                _jConnections :: !(Maybe ConnectionsList),
                _jRole :: !(Maybe Text), _jName :: !(Maybe Text),
                _jLogURI :: !(Maybe Text),
                _jMaxRetries :: !(Maybe Int),
                _jExecutionProperty :: !(Maybe ExecutionProperty),
                _jAllocatedCapacity :: !(Maybe Int),
                _jTimeout :: !(Maybe Nat),
                _jDefaultArguments :: !(Maybe (Map Text Text)),
                _jDescription :: !(Maybe Text),
                _jCreatedOn :: !(Maybe POSIX)}
             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jCommand' - The JobCommand that executes this job.
--
-- * 'jLastModifiedOn' - The last point in time when this job definition was modified.
--
-- * 'jConnections' - The connections used for this job.
--
-- * 'jRole' - The name or ARN of the IAM role associated with this job.
--
-- * 'jName' - The name you assign to this job definition.
--
-- * 'jLogURI' - This field is reserved for future use.
--
-- * 'jMaxRetries' - The maximum number of times to retry this job after a JobRun fails.
--
-- * 'jExecutionProperty' - An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.
--
-- * 'jAllocatedCapacity' - The number of AWS Glue data processing units (DPUs) allocated to runs of this job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'jTimeout' - The job timeout in minutes.
--
-- * 'jDefaultArguments' - The default arguments for this job, specified as name-value pairs. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'jDescription' - Description of the job being defined.
--
-- * 'jCreatedOn' - The time and date that this job definition was created.
job
    :: Job
job
  = Job'{_jCommand = Nothing,
         _jLastModifiedOn = Nothing, _jConnections = Nothing,
         _jRole = Nothing, _jName = Nothing,
         _jLogURI = Nothing, _jMaxRetries = Nothing,
         _jExecutionProperty = Nothing,
         _jAllocatedCapacity = Nothing, _jTimeout = Nothing,
         _jDefaultArguments = Nothing,
         _jDescription = Nothing, _jCreatedOn = Nothing}

-- | The JobCommand that executes this job.
jCommand :: Lens' Job (Maybe JobCommand)
jCommand = lens _jCommand (\ s a -> s{_jCommand = a})

-- | The last point in time when this job definition was modified.
jLastModifiedOn :: Lens' Job (Maybe UTCTime)
jLastModifiedOn = lens _jLastModifiedOn (\ s a -> s{_jLastModifiedOn = a}) . mapping _Time

-- | The connections used for this job.
jConnections :: Lens' Job (Maybe ConnectionsList)
jConnections = lens _jConnections (\ s a -> s{_jConnections = a})

-- | The name or ARN of the IAM role associated with this job.
jRole :: Lens' Job (Maybe Text)
jRole = lens _jRole (\ s a -> s{_jRole = a})

-- | The name you assign to this job definition.
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | This field is reserved for future use.
jLogURI :: Lens' Job (Maybe Text)
jLogURI = lens _jLogURI (\ s a -> s{_jLogURI = a})

-- | The maximum number of times to retry this job after a JobRun fails.
jMaxRetries :: Lens' Job (Maybe Int)
jMaxRetries = lens _jMaxRetries (\ s a -> s{_jMaxRetries = a})

-- | An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.
jExecutionProperty :: Lens' Job (Maybe ExecutionProperty)
jExecutionProperty = lens _jExecutionProperty (\ s a -> s{_jExecutionProperty = a})

-- | The number of AWS Glue data processing units (DPUs) allocated to runs of this job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
jAllocatedCapacity :: Lens' Job (Maybe Int)
jAllocatedCapacity = lens _jAllocatedCapacity (\ s a -> s{_jAllocatedCapacity = a})

-- | The job timeout in minutes.
jTimeout :: Lens' Job (Maybe Natural)
jTimeout = lens _jTimeout (\ s a -> s{_jTimeout = a}) . mapping _Nat

-- | The default arguments for this job, specified as name-value pairs. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
jDefaultArguments :: Lens' Job (HashMap Text Text)
jDefaultArguments = lens _jDefaultArguments (\ s a -> s{_jDefaultArguments = a}) . _Default . _Map

-- | Description of the job being defined.
jDescription :: Lens' Job (Maybe Text)
jDescription = lens _jDescription (\ s a -> s{_jDescription = a})

-- | The time and date that this job definition was created.
jCreatedOn :: Lens' Job (Maybe UTCTime)
jCreatedOn = lens _jCreatedOn (\ s a -> s{_jCreatedOn = a}) . mapping _Time

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ x ->
                 Job' <$>
                   (x .:? "Command") <*> (x .:? "LastModifiedOn") <*>
                     (x .:? "Connections")
                     <*> (x .:? "Role")
                     <*> (x .:? "Name")
                     <*> (x .:? "LogUri")
                     <*> (x .:? "MaxRetries")
                     <*> (x .:? "ExecutionProperty")
                     <*> (x .:? "AllocatedCapacity")
                     <*> (x .:? "Timeout")
                     <*> (x .:? "DefaultArguments" .!= mempty)
                     <*> (x .:? "Description")
                     <*> (x .:? "CreatedOn"))

instance Hashable Job where

instance NFData Job where
