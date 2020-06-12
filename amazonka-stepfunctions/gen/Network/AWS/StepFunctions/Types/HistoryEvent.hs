{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.HistoryEvent
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StepFunctions.Types.HistoryEvent where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StepFunctions.Types.ActivityFailedEventDetails
import Network.AWS.StepFunctions.Types.ActivityScheduleFailedEventDetails
import Network.AWS.StepFunctions.Types.ActivityScheduledEventDetails
import Network.AWS.StepFunctions.Types.ActivityStartedEventDetails
import Network.AWS.StepFunctions.Types.ActivitySucceededEventDetails
import Network.AWS.StepFunctions.Types.ActivityTimedOutEventDetails
import Network.AWS.StepFunctions.Types.ExecutionAbortedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionFailedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionStartedEventDetails
import Network.AWS.StepFunctions.Types.ExecutionSucceededEventDetails
import Network.AWS.StepFunctions.Types.ExecutionTimedOutEventDetails
import Network.AWS.StepFunctions.Types.HistoryEventType
import Network.AWS.StepFunctions.Types.LambdaFunctionFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionScheduleFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionScheduledEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionStartFailedEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionSucceededEventDetails
import Network.AWS.StepFunctions.Types.LambdaFunctionTimedOutEventDetails
import Network.AWS.StepFunctions.Types.StateEnteredEventDetails
import Network.AWS.StepFunctions.Types.StateExitedEventDetails

-- | Contains details about the events of an execution.
--
--
--
-- /See:/ 'historyEvent' smart constructor.
data HistoryEvent = HistoryEvent'{_heActivityStartedEventDetails
                                  :: !(Maybe ActivityStartedEventDetails),
                                  _heLambdaFunctionStartFailedEventDetails ::
                                  !(Maybe
                                      LambdaFunctionStartFailedEventDetails),
                                  _heStateExitedEventDetails ::
                                  !(Maybe StateExitedEventDetails),
                                  _heLambdaFunctionSucceededEventDetails ::
                                  !(Maybe LambdaFunctionSucceededEventDetails),
                                  _heActivitySucceededEventDetails ::
                                  !(Maybe ActivitySucceededEventDetails),
                                  _heLambdaFunctionTimedOutEventDetails ::
                                  !(Maybe LambdaFunctionTimedOutEventDetails),
                                  _heActivityTimedOutEventDetails ::
                                  !(Maybe ActivityTimedOutEventDetails),
                                  _heExecutionFailedEventDetails ::
                                  !(Maybe ExecutionFailedEventDetails),
                                  _heExecutionAbortedEventDetails ::
                                  !(Maybe ExecutionAbortedEventDetails),
                                  _heExecutionSucceededEventDetails ::
                                  !(Maybe ExecutionSucceededEventDetails),
                                  _heLambdaFunctionScheduledEventDetails ::
                                  !(Maybe LambdaFunctionScheduledEventDetails),
                                  _heActivityScheduledEventDetails ::
                                  !(Maybe ActivityScheduledEventDetails),
                                  _heExecutionStartedEventDetails ::
                                  !(Maybe ExecutionStartedEventDetails),
                                  _heActivityScheduleFailedEventDetails ::
                                  !(Maybe ActivityScheduleFailedEventDetails),
                                  _heLambdaFunctionScheduleFailedEventDetails ::
                                  !(Maybe
                                      LambdaFunctionScheduleFailedEventDetails),
                                  _heStateEnteredEventDetails ::
                                  !(Maybe StateEnteredEventDetails),
                                  _hePreviousEventId :: !(Maybe Integer),
                                  _heActivityFailedEventDetails ::
                                  !(Maybe ActivityFailedEventDetails),
                                  _heLambdaFunctionFailedEventDetails ::
                                  !(Maybe LambdaFunctionFailedEventDetails),
                                  _heExecutionTimedOutEventDetails ::
                                  !(Maybe ExecutionTimedOutEventDetails),
                                  _heTimestamp :: !POSIX,
                                  _heType :: !HistoryEventType,
                                  _heId :: !Integer}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HistoryEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'heActivityStartedEventDetails' - Undocumented member.
--
-- * 'heLambdaFunctionStartFailedEventDetails' - Contains details about a lambda function which failed to start during an execution.
--
-- * 'heStateExitedEventDetails' - Undocumented member.
--
-- * 'heLambdaFunctionSucceededEventDetails' - Contains details about a lambda function which terminated successfully during an execution.
--
-- * 'heActivitySucceededEventDetails' - Undocumented member.
--
-- * 'heLambdaFunctionTimedOutEventDetails' - Undocumented member.
--
-- * 'heActivityTimedOutEventDetails' - Undocumented member.
--
-- * 'heExecutionFailedEventDetails' - Undocumented member.
--
-- * 'heExecutionAbortedEventDetails' - Undocumented member.
--
-- * 'heExecutionSucceededEventDetails' - Undocumented member.
--
-- * 'heLambdaFunctionScheduledEventDetails' - Undocumented member.
--
-- * 'heActivityScheduledEventDetails' - Undocumented member.
--
-- * 'heExecutionStartedEventDetails' - Undocumented member.
--
-- * 'heActivityScheduleFailedEventDetails' - Contains details about an activity schedule event which failed during an execution.
--
-- * 'heLambdaFunctionScheduleFailedEventDetails' - Undocumented member.
--
-- * 'heStateEnteredEventDetails' - Undocumented member.
--
-- * 'hePreviousEventId' - The id of the previous event.
--
-- * 'heActivityFailedEventDetails' - Undocumented member.
--
-- * 'heLambdaFunctionFailedEventDetails' - Undocumented member.
--
-- * 'heExecutionTimedOutEventDetails' - Undocumented member.
--
-- * 'heTimestamp' - The date the event occurred.
--
-- * 'heType' - The type of the event.
--
-- * 'heId' - The id of the event. Events are numbered sequentially, starting at one.
historyEvent
    :: UTCTime -- ^ 'heTimestamp'
    -> HistoryEventType -- ^ 'heType'
    -> Integer -- ^ 'heId'
    -> HistoryEvent
historyEvent pTimestamp_ pType_ pId_
  = HistoryEvent'{_heActivityStartedEventDetails =
                    Nothing,
                  _heLambdaFunctionStartFailedEventDetails = Nothing,
                  _heStateExitedEventDetails = Nothing,
                  _heLambdaFunctionSucceededEventDetails = Nothing,
                  _heActivitySucceededEventDetails = Nothing,
                  _heLambdaFunctionTimedOutEventDetails = Nothing,
                  _heActivityTimedOutEventDetails = Nothing,
                  _heExecutionFailedEventDetails = Nothing,
                  _heExecutionAbortedEventDetails = Nothing,
                  _heExecutionSucceededEventDetails = Nothing,
                  _heLambdaFunctionScheduledEventDetails = Nothing,
                  _heActivityScheduledEventDetails = Nothing,
                  _heExecutionStartedEventDetails = Nothing,
                  _heActivityScheduleFailedEventDetails = Nothing,
                  _heLambdaFunctionScheduleFailedEventDetails =
                    Nothing,
                  _heStateEnteredEventDetails = Nothing,
                  _hePreviousEventId = Nothing,
                  _heActivityFailedEventDetails = Nothing,
                  _heLambdaFunctionFailedEventDetails = Nothing,
                  _heExecutionTimedOutEventDetails = Nothing,
                  _heTimestamp = _Time # pTimestamp_, _heType = pType_,
                  _heId = pId_}

-- | Undocumented member.
heActivityStartedEventDetails :: Lens' HistoryEvent (Maybe ActivityStartedEventDetails)
heActivityStartedEventDetails = lens _heActivityStartedEventDetails (\ s a -> s{_heActivityStartedEventDetails = a})

-- | Contains details about a lambda function which failed to start during an execution.
heLambdaFunctionStartFailedEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionStartFailedEventDetails)
heLambdaFunctionStartFailedEventDetails = lens _heLambdaFunctionStartFailedEventDetails (\ s a -> s{_heLambdaFunctionStartFailedEventDetails = a})

-- | Undocumented member.
heStateExitedEventDetails :: Lens' HistoryEvent (Maybe StateExitedEventDetails)
heStateExitedEventDetails = lens _heStateExitedEventDetails (\ s a -> s{_heStateExitedEventDetails = a})

-- | Contains details about a lambda function which terminated successfully during an execution.
heLambdaFunctionSucceededEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionSucceededEventDetails)
heLambdaFunctionSucceededEventDetails = lens _heLambdaFunctionSucceededEventDetails (\ s a -> s{_heLambdaFunctionSucceededEventDetails = a})

-- | Undocumented member.
heActivitySucceededEventDetails :: Lens' HistoryEvent (Maybe ActivitySucceededEventDetails)
heActivitySucceededEventDetails = lens _heActivitySucceededEventDetails (\ s a -> s{_heActivitySucceededEventDetails = a})

-- | Undocumented member.
heLambdaFunctionTimedOutEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionTimedOutEventDetails)
heLambdaFunctionTimedOutEventDetails = lens _heLambdaFunctionTimedOutEventDetails (\ s a -> s{_heLambdaFunctionTimedOutEventDetails = a})

-- | Undocumented member.
heActivityTimedOutEventDetails :: Lens' HistoryEvent (Maybe ActivityTimedOutEventDetails)
heActivityTimedOutEventDetails = lens _heActivityTimedOutEventDetails (\ s a -> s{_heActivityTimedOutEventDetails = a})

-- | Undocumented member.
heExecutionFailedEventDetails :: Lens' HistoryEvent (Maybe ExecutionFailedEventDetails)
heExecutionFailedEventDetails = lens _heExecutionFailedEventDetails (\ s a -> s{_heExecutionFailedEventDetails = a})

-- | Undocumented member.
heExecutionAbortedEventDetails :: Lens' HistoryEvent (Maybe ExecutionAbortedEventDetails)
heExecutionAbortedEventDetails = lens _heExecutionAbortedEventDetails (\ s a -> s{_heExecutionAbortedEventDetails = a})

-- | Undocumented member.
heExecutionSucceededEventDetails :: Lens' HistoryEvent (Maybe ExecutionSucceededEventDetails)
heExecutionSucceededEventDetails = lens _heExecutionSucceededEventDetails (\ s a -> s{_heExecutionSucceededEventDetails = a})

-- | Undocumented member.
heLambdaFunctionScheduledEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionScheduledEventDetails)
heLambdaFunctionScheduledEventDetails = lens _heLambdaFunctionScheduledEventDetails (\ s a -> s{_heLambdaFunctionScheduledEventDetails = a})

-- | Undocumented member.
heActivityScheduledEventDetails :: Lens' HistoryEvent (Maybe ActivityScheduledEventDetails)
heActivityScheduledEventDetails = lens _heActivityScheduledEventDetails (\ s a -> s{_heActivityScheduledEventDetails = a})

-- | Undocumented member.
heExecutionStartedEventDetails :: Lens' HistoryEvent (Maybe ExecutionStartedEventDetails)
heExecutionStartedEventDetails = lens _heExecutionStartedEventDetails (\ s a -> s{_heExecutionStartedEventDetails = a})

-- | Contains details about an activity schedule event which failed during an execution.
heActivityScheduleFailedEventDetails :: Lens' HistoryEvent (Maybe ActivityScheduleFailedEventDetails)
heActivityScheduleFailedEventDetails = lens _heActivityScheduleFailedEventDetails (\ s a -> s{_heActivityScheduleFailedEventDetails = a})

-- | Undocumented member.
heLambdaFunctionScheduleFailedEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionScheduleFailedEventDetails)
heLambdaFunctionScheduleFailedEventDetails = lens _heLambdaFunctionScheduleFailedEventDetails (\ s a -> s{_heLambdaFunctionScheduleFailedEventDetails = a})

-- | Undocumented member.
heStateEnteredEventDetails :: Lens' HistoryEvent (Maybe StateEnteredEventDetails)
heStateEnteredEventDetails = lens _heStateEnteredEventDetails (\ s a -> s{_heStateEnteredEventDetails = a})

-- | The id of the previous event.
hePreviousEventId :: Lens' HistoryEvent (Maybe Integer)
hePreviousEventId = lens _hePreviousEventId (\ s a -> s{_hePreviousEventId = a})

-- | Undocumented member.
heActivityFailedEventDetails :: Lens' HistoryEvent (Maybe ActivityFailedEventDetails)
heActivityFailedEventDetails = lens _heActivityFailedEventDetails (\ s a -> s{_heActivityFailedEventDetails = a})

-- | Undocumented member.
heLambdaFunctionFailedEventDetails :: Lens' HistoryEvent (Maybe LambdaFunctionFailedEventDetails)
heLambdaFunctionFailedEventDetails = lens _heLambdaFunctionFailedEventDetails (\ s a -> s{_heLambdaFunctionFailedEventDetails = a})

-- | Undocumented member.
heExecutionTimedOutEventDetails :: Lens' HistoryEvent (Maybe ExecutionTimedOutEventDetails)
heExecutionTimedOutEventDetails = lens _heExecutionTimedOutEventDetails (\ s a -> s{_heExecutionTimedOutEventDetails = a})

-- | The date the event occurred.
heTimestamp :: Lens' HistoryEvent UTCTime
heTimestamp = lens _heTimestamp (\ s a -> s{_heTimestamp = a}) . _Time

-- | The type of the event.
heType :: Lens' HistoryEvent HistoryEventType
heType = lens _heType (\ s a -> s{_heType = a})

-- | The id of the event. Events are numbered sequentially, starting at one.
heId :: Lens' HistoryEvent Integer
heId = lens _heId (\ s a -> s{_heId = a})

instance FromJSON HistoryEvent where
        parseJSON
          = withObject "HistoryEvent"
              (\ x ->
                 HistoryEvent' <$>
                   (x .:? "activityStartedEventDetails") <*>
                     (x .:? "lambdaFunctionStartFailedEventDetails")
                     <*> (x .:? "stateExitedEventDetails")
                     <*> (x .:? "lambdaFunctionSucceededEventDetails")
                     <*> (x .:? "activitySucceededEventDetails")
                     <*> (x .:? "lambdaFunctionTimedOutEventDetails")
                     <*> (x .:? "activityTimedOutEventDetails")
                     <*> (x .:? "executionFailedEventDetails")
                     <*> (x .:? "executionAbortedEventDetails")
                     <*> (x .:? "executionSucceededEventDetails")
                     <*> (x .:? "lambdaFunctionScheduledEventDetails")
                     <*> (x .:? "activityScheduledEventDetails")
                     <*> (x .:? "executionStartedEventDetails")
                     <*> (x .:? "activityScheduleFailedEventDetails")
                     <*>
                     (x .:? "lambdaFunctionScheduleFailedEventDetails")
                     <*> (x .:? "stateEnteredEventDetails")
                     <*> (x .:? "previousEventId")
                     <*> (x .:? "activityFailedEventDetails")
                     <*> (x .:? "lambdaFunctionFailedEventDetails")
                     <*> (x .:? "executionTimedOutEventDetails")
                     <*> (x .: "timestamp")
                     <*> (x .: "type")
                     <*> (x .: "id"))

instance Hashable HistoryEvent where

instance NFData HistoryEvent where
