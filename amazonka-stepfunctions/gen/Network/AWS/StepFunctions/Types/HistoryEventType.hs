{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.HistoryEventType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StepFunctions.Types.HistoryEventType (
  HistoryEventType (
    ..
    , ActivityFailed
    , ActivityScheduleFailed
    , ActivityScheduled
    , ActivityStarted
    , ActivitySucceeded
    , ActivityTimedOut
    , ChoiceStateEntered
    , ChoiceStateExited
    , ExecutionAborted
    , ExecutionFailed
    , ExecutionStarted
    , ExecutionSucceeded
    , ExecutionTimedOut
    , FailStateEntered
    , LambdaFunctionFailed
    , LambdaFunctionScheduleFailed
    , LambdaFunctionScheduled
    , LambdaFunctionStartFailed
    , LambdaFunctionStarted
    , LambdaFunctionSucceeded
    , LambdaFunctionTimedOut
    , ParallelStateAborted
    , ParallelStateEntered
    , ParallelStateExited
    , ParallelStateFailed
    , ParallelStateStarted
    , ParallelStateSucceeded
    , PassStateEntered
    , PassStateExited
    , SucceedStateEntered
    , SucceedStateExited
    , TaskStateAborted
    , TaskStateEntered
    , TaskStateExited
    , WaitStateAborted
    , WaitStateEntered
    , WaitStateExited
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HistoryEventType = HistoryEventType' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern ActivityFailed :: HistoryEventType
pattern ActivityFailed = HistoryEventType' "ActivityFailed"

pattern ActivityScheduleFailed :: HistoryEventType
pattern ActivityScheduleFailed = HistoryEventType' "ActivityScheduleFailed"

pattern ActivityScheduled :: HistoryEventType
pattern ActivityScheduled = HistoryEventType' "ActivityScheduled"

pattern ActivityStarted :: HistoryEventType
pattern ActivityStarted = HistoryEventType' "ActivityStarted"

pattern ActivitySucceeded :: HistoryEventType
pattern ActivitySucceeded = HistoryEventType' "ActivitySucceeded"

pattern ActivityTimedOut :: HistoryEventType
pattern ActivityTimedOut = HistoryEventType' "ActivityTimedOut"

pattern ChoiceStateEntered :: HistoryEventType
pattern ChoiceStateEntered = HistoryEventType' "ChoiceStateEntered"

pattern ChoiceStateExited :: HistoryEventType
pattern ChoiceStateExited = HistoryEventType' "ChoiceStateExited"

pattern ExecutionAborted :: HistoryEventType
pattern ExecutionAborted = HistoryEventType' "ExecutionAborted"

pattern ExecutionFailed :: HistoryEventType
pattern ExecutionFailed = HistoryEventType' "ExecutionFailed"

pattern ExecutionStarted :: HistoryEventType
pattern ExecutionStarted = HistoryEventType' "ExecutionStarted"

pattern ExecutionSucceeded :: HistoryEventType
pattern ExecutionSucceeded = HistoryEventType' "ExecutionSucceeded"

pattern ExecutionTimedOut :: HistoryEventType
pattern ExecutionTimedOut = HistoryEventType' "ExecutionTimedOut"

pattern FailStateEntered :: HistoryEventType
pattern FailStateEntered = HistoryEventType' "FailStateEntered"

pattern LambdaFunctionFailed :: HistoryEventType
pattern LambdaFunctionFailed = HistoryEventType' "LambdaFunctionFailed"

pattern LambdaFunctionScheduleFailed :: HistoryEventType
pattern LambdaFunctionScheduleFailed = HistoryEventType' "LambdaFunctionScheduleFailed"

pattern LambdaFunctionScheduled :: HistoryEventType
pattern LambdaFunctionScheduled = HistoryEventType' "LambdaFunctionScheduled"

pattern LambdaFunctionStartFailed :: HistoryEventType
pattern LambdaFunctionStartFailed = HistoryEventType' "LambdaFunctionStartFailed"

pattern LambdaFunctionStarted :: HistoryEventType
pattern LambdaFunctionStarted = HistoryEventType' "LambdaFunctionStarted"

pattern LambdaFunctionSucceeded :: HistoryEventType
pattern LambdaFunctionSucceeded = HistoryEventType' "LambdaFunctionSucceeded"

pattern LambdaFunctionTimedOut :: HistoryEventType
pattern LambdaFunctionTimedOut = HistoryEventType' "LambdaFunctionTimedOut"

pattern ParallelStateAborted :: HistoryEventType
pattern ParallelStateAborted = HistoryEventType' "ParallelStateAborted"

pattern ParallelStateEntered :: HistoryEventType
pattern ParallelStateEntered = HistoryEventType' "ParallelStateEntered"

pattern ParallelStateExited :: HistoryEventType
pattern ParallelStateExited = HistoryEventType' "ParallelStateExited"

pattern ParallelStateFailed :: HistoryEventType
pattern ParallelStateFailed = HistoryEventType' "ParallelStateFailed"

pattern ParallelStateStarted :: HistoryEventType
pattern ParallelStateStarted = HistoryEventType' "ParallelStateStarted"

pattern ParallelStateSucceeded :: HistoryEventType
pattern ParallelStateSucceeded = HistoryEventType' "ParallelStateSucceeded"

pattern PassStateEntered :: HistoryEventType
pattern PassStateEntered = HistoryEventType' "PassStateEntered"

pattern PassStateExited :: HistoryEventType
pattern PassStateExited = HistoryEventType' "PassStateExited"

pattern SucceedStateEntered :: HistoryEventType
pattern SucceedStateEntered = HistoryEventType' "SucceedStateEntered"

pattern SucceedStateExited :: HistoryEventType
pattern SucceedStateExited = HistoryEventType' "SucceedStateExited"

pattern TaskStateAborted :: HistoryEventType
pattern TaskStateAborted = HistoryEventType' "TaskStateAborted"

pattern TaskStateEntered :: HistoryEventType
pattern TaskStateEntered = HistoryEventType' "TaskStateEntered"

pattern TaskStateExited :: HistoryEventType
pattern TaskStateExited = HistoryEventType' "TaskStateExited"

pattern WaitStateAborted :: HistoryEventType
pattern WaitStateAborted = HistoryEventType' "WaitStateAborted"

pattern WaitStateEntered :: HistoryEventType
pattern WaitStateEntered = HistoryEventType' "WaitStateEntered"

pattern WaitStateExited :: HistoryEventType
pattern WaitStateExited = HistoryEventType' "WaitStateExited"

{-# COMPLETE
  ActivityFailed,
  ActivityScheduleFailed,
  ActivityScheduled,
  ActivityStarted,
  ActivitySucceeded,
  ActivityTimedOut,
  ChoiceStateEntered,
  ChoiceStateExited,
  ExecutionAborted,
  ExecutionFailed,
  ExecutionStarted,
  ExecutionSucceeded,
  ExecutionTimedOut,
  FailStateEntered,
  LambdaFunctionFailed,
  LambdaFunctionScheduleFailed,
  LambdaFunctionScheduled,
  LambdaFunctionStartFailed,
  LambdaFunctionStarted,
  LambdaFunctionSucceeded,
  LambdaFunctionTimedOut,
  ParallelStateAborted,
  ParallelStateEntered,
  ParallelStateExited,
  ParallelStateFailed,
  ParallelStateStarted,
  ParallelStateSucceeded,
  PassStateEntered,
  PassStateExited,
  SucceedStateEntered,
  SucceedStateExited,
  TaskStateAborted,
  TaskStateEntered,
  TaskStateExited,
  WaitStateAborted,
  WaitStateEntered,
  WaitStateExited,
  HistoryEventType' #-}

instance FromText HistoryEventType where
    parser = (HistoryEventType' . mk) <$> takeText

instance ToText HistoryEventType where
    toText (HistoryEventType' ci) = original ci

-- | Represents an enum of /known/ $HistoryEventType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum HistoryEventType where
    toEnum i = case i of
        0 -> ActivityFailed
        1 -> ActivityScheduleFailed
        2 -> ActivityScheduled
        3 -> ActivityStarted
        4 -> ActivitySucceeded
        5 -> ActivityTimedOut
        6 -> ChoiceStateEntered
        7 -> ChoiceStateExited
        8 -> ExecutionAborted
        9 -> ExecutionFailed
        10 -> ExecutionStarted
        11 -> ExecutionSucceeded
        12 -> ExecutionTimedOut
        13 -> FailStateEntered
        14 -> LambdaFunctionFailed
        15 -> LambdaFunctionScheduleFailed
        16 -> LambdaFunctionScheduled
        17 -> LambdaFunctionStartFailed
        18 -> LambdaFunctionStarted
        19 -> LambdaFunctionSucceeded
        20 -> LambdaFunctionTimedOut
        21 -> ParallelStateAborted
        22 -> ParallelStateEntered
        23 -> ParallelStateExited
        24 -> ParallelStateFailed
        25 -> ParallelStateStarted
        26 -> ParallelStateSucceeded
        27 -> PassStateEntered
        28 -> PassStateExited
        29 -> SucceedStateEntered
        30 -> SucceedStateExited
        31 -> TaskStateAborted
        32 -> TaskStateEntered
        33 -> TaskStateExited
        34 -> WaitStateAborted
        35 -> WaitStateEntered
        36 -> WaitStateExited
        _ -> (error . showText) $ "Unknown index for HistoryEventType: " <> toText i
    fromEnum x = case x of
        ActivityFailed -> 0
        ActivityScheduleFailed -> 1
        ActivityScheduled -> 2
        ActivityStarted -> 3
        ActivitySucceeded -> 4
        ActivityTimedOut -> 5
        ChoiceStateEntered -> 6
        ChoiceStateExited -> 7
        ExecutionAborted -> 8
        ExecutionFailed -> 9
        ExecutionStarted -> 10
        ExecutionSucceeded -> 11
        ExecutionTimedOut -> 12
        FailStateEntered -> 13
        LambdaFunctionFailed -> 14
        LambdaFunctionScheduleFailed -> 15
        LambdaFunctionScheduled -> 16
        LambdaFunctionStartFailed -> 17
        LambdaFunctionStarted -> 18
        LambdaFunctionSucceeded -> 19
        LambdaFunctionTimedOut -> 20
        ParallelStateAborted -> 21
        ParallelStateEntered -> 22
        ParallelStateExited -> 23
        ParallelStateFailed -> 24
        ParallelStateStarted -> 25
        ParallelStateSucceeded -> 26
        PassStateEntered -> 27
        PassStateExited -> 28
        SucceedStateEntered -> 29
        SucceedStateExited -> 30
        TaskStateAborted -> 31
        TaskStateEntered -> 32
        TaskStateExited -> 33
        WaitStateAborted -> 34
        WaitStateEntered -> 35
        WaitStateExited -> 36
        HistoryEventType' name -> (error . showText) $ "Unknown HistoryEventType: " <> original name

-- | Represents the bounds of /known/ $HistoryEventType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded HistoryEventType where
    minBound = ActivityFailed
    maxBound = WaitStateExited

instance Hashable     HistoryEventType
instance NFData       HistoryEventType
instance ToByteString HistoryEventType
instance ToQuery      HistoryEventType
instance ToHeader     HistoryEventType

instance FromJSON HistoryEventType where
    parseJSON = parseJSONText "HistoryEventType"
