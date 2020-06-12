{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobUpdate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.JobUpdate where

import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies information used to update an existing job definition. Note that the previous job definition will be completely overwritten by this information.
--
--
--
-- /See:/ 'jobUpdate' smart constructor.
data JobUpdate = JobUpdate'{_juCommand ::
                            !(Maybe JobCommand),
                            _juConnections :: !(Maybe ConnectionsList),
                            _juRole :: !(Maybe Text),
                            _juLogURI :: !(Maybe Text),
                            _juMaxRetries :: !(Maybe Int),
                            _juExecutionProperty :: !(Maybe ExecutionProperty),
                            _juAllocatedCapacity :: !(Maybe Int),
                            _juTimeout :: !(Maybe Nat),
                            _juDefaultArguments :: !(Maybe (Map Text Text)),
                            _juDescription :: !(Maybe Text)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'juCommand' - The JobCommand that executes this job (required).
--
-- * 'juConnections' - The connections used for this job.
--
-- * 'juRole' - The name or ARN of the IAM role associated with this job (required).
--
-- * 'juLogURI' - This field is reserved for future use.
--
-- * 'juMaxRetries' - The maximum number of times to retry this job if it fails.
--
-- * 'juExecutionProperty' - An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.
--
-- * 'juAllocatedCapacity' - The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'juTimeout' - The job timeout in minutes. The default is 2880 minutes (48 hours).
--
-- * 'juDefaultArguments' - The default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'juDescription' - Description of the job being defined.
jobUpdate
    :: JobUpdate
jobUpdate
  = JobUpdate'{_juCommand = Nothing,
               _juConnections = Nothing, _juRole = Nothing,
               _juLogURI = Nothing, _juMaxRetries = Nothing,
               _juExecutionProperty = Nothing,
               _juAllocatedCapacity = Nothing, _juTimeout = Nothing,
               _juDefaultArguments = Nothing,
               _juDescription = Nothing}

-- | The JobCommand that executes this job (required).
juCommand :: Lens' JobUpdate (Maybe JobCommand)
juCommand = lens _juCommand (\ s a -> s{_juCommand = a})

-- | The connections used for this job.
juConnections :: Lens' JobUpdate (Maybe ConnectionsList)
juConnections = lens _juConnections (\ s a -> s{_juConnections = a})

-- | The name or ARN of the IAM role associated with this job (required).
juRole :: Lens' JobUpdate (Maybe Text)
juRole = lens _juRole (\ s a -> s{_juRole = a})

-- | This field is reserved for future use.
juLogURI :: Lens' JobUpdate (Maybe Text)
juLogURI = lens _juLogURI (\ s a -> s{_juLogURI = a})

-- | The maximum number of times to retry this job if it fails.
juMaxRetries :: Lens' JobUpdate (Maybe Int)
juMaxRetries = lens _juMaxRetries (\ s a -> s{_juMaxRetries = a})

-- | An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.
juExecutionProperty :: Lens' JobUpdate (Maybe ExecutionProperty)
juExecutionProperty = lens _juExecutionProperty (\ s a -> s{_juExecutionProperty = a})

-- | The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
juAllocatedCapacity :: Lens' JobUpdate (Maybe Int)
juAllocatedCapacity = lens _juAllocatedCapacity (\ s a -> s{_juAllocatedCapacity = a})

-- | The job timeout in minutes. The default is 2880 minutes (48 hours).
juTimeout :: Lens' JobUpdate (Maybe Natural)
juTimeout = lens _juTimeout (\ s a -> s{_juTimeout = a}) . mapping _Nat

-- | The default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
juDefaultArguments :: Lens' JobUpdate (HashMap Text Text)
juDefaultArguments = lens _juDefaultArguments (\ s a -> s{_juDefaultArguments = a}) . _Default . _Map

-- | Description of the job being defined.
juDescription :: Lens' JobUpdate (Maybe Text)
juDescription = lens _juDescription (\ s a -> s{_juDescription = a})

instance Hashable JobUpdate where

instance NFData JobUpdate where

instance ToJSON JobUpdate where
        toJSON JobUpdate'{..}
          = object
              (catMaybes
                 [("Command" .=) <$> _juCommand,
                  ("Connections" .=) <$> _juConnections,
                  ("Role" .=) <$> _juRole, ("LogUri" .=) <$> _juLogURI,
                  ("MaxRetries" .=) <$> _juMaxRetries,
                  ("ExecutionProperty" .=) <$> _juExecutionProperty,
                  ("AllocatedCapacity" .=) <$> _juAllocatedCapacity,
                  ("Timeout" .=) <$> _juTimeout,
                  ("DefaultArguments" .=) <$> _juDefaultArguments,
                  ("Description" .=) <$> _juDescription])
