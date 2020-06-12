{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.StepExecution
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.StepExecution where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AutomationExecutionStatus
import Network.AWS.SSM.Types.FailureDetails

-- | Detailed information about an the execution state of an Automation step.
--
--
--
-- /See:/ 'stepExecution' smart constructor.
data StepExecution = StepExecution'{_seFailureDetails
                                    :: !(Maybe FailureDetails),
                                    _seInputs :: !(Maybe (Map Text Text)),
                                    _seStepName :: !(Maybe Text),
                                    _seExecutionEndTime :: !(Maybe POSIX),
                                    _seFailureMessage :: !(Maybe Text),
                                    _seResponse :: !(Maybe Text),
                                    _seAction :: !(Maybe Text),
                                    _seResponseCode :: !(Maybe Text),
                                    _seStepStatus ::
                                    !(Maybe AutomationExecutionStatus),
                                    _seOverriddenParameters ::
                                    !(Maybe (Map Text [Text])),
                                    _seOutputs :: !(Maybe (Map Text [Text])),
                                    _seExecutionStartTime :: !(Maybe POSIX),
                                    _seMaxAttempts :: !(Maybe Int),
                                    _seStepExecutionId :: !(Maybe Text),
                                    _seTimeoutSeconds :: !(Maybe Integer),
                                    _seOnFailure :: !(Maybe Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StepExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seFailureDetails' - Information about the Automation failure.
--
-- * 'seInputs' - Fully-resolved values passed into the step before execution.
--
-- * 'seStepName' - The name of this execution step.
--
-- * 'seExecutionEndTime' - If a step has finished execution, this contains the time the execution ended. If the step has not yet concluded, this field is not populated.
--
-- * 'seFailureMessage' - If a step failed, this message explains why the execution failed.
--
-- * 'seResponse' - A message associated with the response code for an execution.
--
-- * 'seAction' - The action this step performs. The action determines the behavior of the step.
--
-- * 'seResponseCode' - The response code returned by the execution of the step.
--
-- * 'seStepStatus' - The execution status for this step. Valid values include: Pending, InProgress, Success, Cancelled, Failed, and TimedOut.
--
-- * 'seOverriddenParameters' - A user-specified list of parameters to override when executing a step.
--
-- * 'seOutputs' - Returned values from the execution of the step.
--
-- * 'seExecutionStartTime' - If a step has begun execution, this contains the time the step started. If the step is in Pending status, this field is not populated.
--
-- * 'seMaxAttempts' - The maximum number of tries to run the action of the step. The default value is 1.
--
-- * 'seStepExecutionId' - The unique ID of a step execution.
--
-- * 'seTimeoutSeconds' - The timeout seconds of the step.
--
-- * 'seOnFailure' - The action to take if the step fails. The default value is Abort.
stepExecution
    :: StepExecution
stepExecution
  = StepExecution'{_seFailureDetails = Nothing,
                   _seInputs = Nothing, _seStepName = Nothing,
                   _seExecutionEndTime = Nothing,
                   _seFailureMessage = Nothing, _seResponse = Nothing,
                   _seAction = Nothing, _seResponseCode = Nothing,
                   _seStepStatus = Nothing,
                   _seOverriddenParameters = Nothing,
                   _seOutputs = Nothing,
                   _seExecutionStartTime = Nothing,
                   _seMaxAttempts = Nothing,
                   _seStepExecutionId = Nothing,
                   _seTimeoutSeconds = Nothing, _seOnFailure = Nothing}

-- | Information about the Automation failure.
seFailureDetails :: Lens' StepExecution (Maybe FailureDetails)
seFailureDetails = lens _seFailureDetails (\ s a -> s{_seFailureDetails = a})

-- | Fully-resolved values passed into the step before execution.
seInputs :: Lens' StepExecution (HashMap Text Text)
seInputs = lens _seInputs (\ s a -> s{_seInputs = a}) . _Default . _Map

-- | The name of this execution step.
seStepName :: Lens' StepExecution (Maybe Text)
seStepName = lens _seStepName (\ s a -> s{_seStepName = a})

-- | If a step has finished execution, this contains the time the execution ended. If the step has not yet concluded, this field is not populated.
seExecutionEndTime :: Lens' StepExecution (Maybe UTCTime)
seExecutionEndTime = lens _seExecutionEndTime (\ s a -> s{_seExecutionEndTime = a}) . mapping _Time

-- | If a step failed, this message explains why the execution failed.
seFailureMessage :: Lens' StepExecution (Maybe Text)
seFailureMessage = lens _seFailureMessage (\ s a -> s{_seFailureMessage = a})

-- | A message associated with the response code for an execution.
seResponse :: Lens' StepExecution (Maybe Text)
seResponse = lens _seResponse (\ s a -> s{_seResponse = a})

-- | The action this step performs. The action determines the behavior of the step.
seAction :: Lens' StepExecution (Maybe Text)
seAction = lens _seAction (\ s a -> s{_seAction = a})

-- | The response code returned by the execution of the step.
seResponseCode :: Lens' StepExecution (Maybe Text)
seResponseCode = lens _seResponseCode (\ s a -> s{_seResponseCode = a})

-- | The execution status for this step. Valid values include: Pending, InProgress, Success, Cancelled, Failed, and TimedOut.
seStepStatus :: Lens' StepExecution (Maybe AutomationExecutionStatus)
seStepStatus = lens _seStepStatus (\ s a -> s{_seStepStatus = a})

-- | A user-specified list of parameters to override when executing a step.
seOverriddenParameters :: Lens' StepExecution (HashMap Text [Text])
seOverriddenParameters = lens _seOverriddenParameters (\ s a -> s{_seOverriddenParameters = a}) . _Default . _Map

-- | Returned values from the execution of the step.
seOutputs :: Lens' StepExecution (HashMap Text [Text])
seOutputs = lens _seOutputs (\ s a -> s{_seOutputs = a}) . _Default . _Map

-- | If a step has begun execution, this contains the time the step started. If the step is in Pending status, this field is not populated.
seExecutionStartTime :: Lens' StepExecution (Maybe UTCTime)
seExecutionStartTime = lens _seExecutionStartTime (\ s a -> s{_seExecutionStartTime = a}) . mapping _Time

-- | The maximum number of tries to run the action of the step. The default value is 1.
seMaxAttempts :: Lens' StepExecution (Maybe Int)
seMaxAttempts = lens _seMaxAttempts (\ s a -> s{_seMaxAttempts = a})

-- | The unique ID of a step execution.
seStepExecutionId :: Lens' StepExecution (Maybe Text)
seStepExecutionId = lens _seStepExecutionId (\ s a -> s{_seStepExecutionId = a})

-- | The timeout seconds of the step.
seTimeoutSeconds :: Lens' StepExecution (Maybe Integer)
seTimeoutSeconds = lens _seTimeoutSeconds (\ s a -> s{_seTimeoutSeconds = a})

-- | The action to take if the step fails. The default value is Abort.
seOnFailure :: Lens' StepExecution (Maybe Text)
seOnFailure = lens _seOnFailure (\ s a -> s{_seOnFailure = a})

instance FromJSON StepExecution where
        parseJSON
          = withObject "StepExecution"
              (\ x ->
                 StepExecution' <$>
                   (x .:? "FailureDetails") <*>
                     (x .:? "Inputs" .!= mempty)
                     <*> (x .:? "StepName")
                     <*> (x .:? "ExecutionEndTime")
                     <*> (x .:? "FailureMessage")
                     <*> (x .:? "Response")
                     <*> (x .:? "Action")
                     <*> (x .:? "ResponseCode")
                     <*> (x .:? "StepStatus")
                     <*> (x .:? "OverriddenParameters" .!= mempty)
                     <*> (x .:? "Outputs" .!= mempty)
                     <*> (x .:? "ExecutionStartTime")
                     <*> (x .:? "MaxAttempts")
                     <*> (x .:? "StepExecutionId")
                     <*> (x .:? "TimeoutSeconds")
                     <*> (x .:? "OnFailure"))

instance Hashable StepExecution where

instance NFData StepExecution where
