{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobRun
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.JobRun where

import Network.AWS.Glue.Types.JobRunState
import Network.AWS.Glue.Types.Predecessor
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a job run.
--
--
--
-- /See:/ 'jobRun' smart constructor.
data JobRun = JobRun'{_jrCompletedOn ::
                      !(Maybe POSIX),
                      _jrTriggerName :: !(Maybe Text),
                      _jrLastModifiedOn :: !(Maybe POSIX),
                      _jrArguments :: !(Maybe (Map Text Text)),
                      _jrJobName :: !(Maybe Text),
                      _jrStartedOn :: !(Maybe POSIX),
                      _jrJobRunState :: !(Maybe JobRunState),
                      _jrExecutionTime :: !(Maybe Int),
                      _jrPredecessorRuns :: !(Maybe [Predecessor]),
                      _jrPreviousRunId :: !(Maybe Text),
                      _jrId :: !(Maybe Text), _jrAttempt :: !(Maybe Int),
                      _jrAllocatedCapacity :: !(Maybe Int),
                      _jrTimeout :: !(Maybe Nat),
                      _jrErrorMessage :: !(Maybe Text)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrCompletedOn' - The date and time this job run completed.
--
-- * 'jrTriggerName' - The name of the trigger that started this job run.
--
-- * 'jrLastModifiedOn' - The last time this job run was modified.
--
-- * 'jrArguments' - The job arguments associated with this run. These override equivalent default arguments set for the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'jrJobName' - The name of the job definition being used in this run.
--
-- * 'jrStartedOn' - The date and time at which this job run was started.
--
-- * 'jrJobRunState' - The current state of the job run.
--
-- * 'jrExecutionTime' - The amount of time (in seconds) that the job run consumed resources.
--
-- * 'jrPredecessorRuns' - A list of predecessors to this job run.
--
-- * 'jrPreviousRunId' - The ID of the previous run of this job. For example, the JobRunId specified in the StartJobRun action.
--
-- * 'jrId' - The ID of this job run.
--
-- * 'jrAttempt' - The number of the attempt to run this job.
--
-- * 'jrAllocatedCapacity' - The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'jrTimeout' - The job run timeout in minutes.
--
-- * 'jrErrorMessage' - An error message associated with this job run.
jobRun
    :: JobRun
jobRun
  = JobRun'{_jrCompletedOn = Nothing,
            _jrTriggerName = Nothing,
            _jrLastModifiedOn = Nothing, _jrArguments = Nothing,
            _jrJobName = Nothing, _jrStartedOn = Nothing,
            _jrJobRunState = Nothing, _jrExecutionTime = Nothing,
            _jrPredecessorRuns = Nothing,
            _jrPreviousRunId = Nothing, _jrId = Nothing,
            _jrAttempt = Nothing, _jrAllocatedCapacity = Nothing,
            _jrTimeout = Nothing, _jrErrorMessage = Nothing}

-- | The date and time this job run completed.
jrCompletedOn :: Lens' JobRun (Maybe UTCTime)
jrCompletedOn = lens _jrCompletedOn (\ s a -> s{_jrCompletedOn = a}) . mapping _Time

-- | The name of the trigger that started this job run.
jrTriggerName :: Lens' JobRun (Maybe Text)
jrTriggerName = lens _jrTriggerName (\ s a -> s{_jrTriggerName = a})

-- | The last time this job run was modified.
jrLastModifiedOn :: Lens' JobRun (Maybe UTCTime)
jrLastModifiedOn = lens _jrLastModifiedOn (\ s a -> s{_jrLastModifiedOn = a}) . mapping _Time

-- | The job arguments associated with this run. These override equivalent default arguments set for the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
jrArguments :: Lens' JobRun (HashMap Text Text)
jrArguments = lens _jrArguments (\ s a -> s{_jrArguments = a}) . _Default . _Map

-- | The name of the job definition being used in this run.
jrJobName :: Lens' JobRun (Maybe Text)
jrJobName = lens _jrJobName (\ s a -> s{_jrJobName = a})

-- | The date and time at which this job run was started.
jrStartedOn :: Lens' JobRun (Maybe UTCTime)
jrStartedOn = lens _jrStartedOn (\ s a -> s{_jrStartedOn = a}) . mapping _Time

-- | The current state of the job run.
jrJobRunState :: Lens' JobRun (Maybe JobRunState)
jrJobRunState = lens _jrJobRunState (\ s a -> s{_jrJobRunState = a})

-- | The amount of time (in seconds) that the job run consumed resources.
jrExecutionTime :: Lens' JobRun (Maybe Int)
jrExecutionTime = lens _jrExecutionTime (\ s a -> s{_jrExecutionTime = a})

-- | A list of predecessors to this job run.
jrPredecessorRuns :: Lens' JobRun [Predecessor]
jrPredecessorRuns = lens _jrPredecessorRuns (\ s a -> s{_jrPredecessorRuns = a}) . _Default . _Coerce

-- | The ID of the previous run of this job. For example, the JobRunId specified in the StartJobRun action.
jrPreviousRunId :: Lens' JobRun (Maybe Text)
jrPreviousRunId = lens _jrPreviousRunId (\ s a -> s{_jrPreviousRunId = a})

-- | The ID of this job run.
jrId :: Lens' JobRun (Maybe Text)
jrId = lens _jrId (\ s a -> s{_jrId = a})

-- | The number of the attempt to run this job.
jrAttempt :: Lens' JobRun (Maybe Int)
jrAttempt = lens _jrAttempt (\ s a -> s{_jrAttempt = a})

-- | The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
jrAllocatedCapacity :: Lens' JobRun (Maybe Int)
jrAllocatedCapacity = lens _jrAllocatedCapacity (\ s a -> s{_jrAllocatedCapacity = a})

-- | The job run timeout in minutes.
jrTimeout :: Lens' JobRun (Maybe Natural)
jrTimeout = lens _jrTimeout (\ s a -> s{_jrTimeout = a}) . mapping _Nat

-- | An error message associated with this job run.
jrErrorMessage :: Lens' JobRun (Maybe Text)
jrErrorMessage = lens _jrErrorMessage (\ s a -> s{_jrErrorMessage = a})

instance FromJSON JobRun where
        parseJSON
          = withObject "JobRun"
              (\ x ->
                 JobRun' <$>
                   (x .:? "CompletedOn") <*> (x .:? "TriggerName") <*>
                     (x .:? "LastModifiedOn")
                     <*> (x .:? "Arguments" .!= mempty)
                     <*> (x .:? "JobName")
                     <*> (x .:? "StartedOn")
                     <*> (x .:? "JobRunState")
                     <*> (x .:? "ExecutionTime")
                     <*> (x .:? "PredecessorRuns" .!= mempty)
                     <*> (x .:? "PreviousRunId")
                     <*> (x .:? "Id")
                     <*> (x .:? "Attempt")
                     <*> (x .:? "AllocatedCapacity")
                     <*> (x .:? "Timeout")
                     <*> (x .:? "ErrorMessage"))

instance Hashable JobRun where

instance NFData JobRun where
