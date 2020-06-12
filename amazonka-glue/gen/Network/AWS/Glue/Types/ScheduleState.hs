{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ScheduleState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.ScheduleState where

import Network.AWS.Prelude
  
data ScheduleState = NotScheduled
                   | Scheduled
                   | Transitioning
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText ScheduleState where
    parser = takeLowerText >>= \case
        "not_scheduled" -> pure NotScheduled
        "scheduled" -> pure Scheduled
        "transitioning" -> pure Transitioning
        e -> fromTextError $ "Failure parsing ScheduleState from value: '" <> e
           <> "'. Accepted values: not_scheduled, scheduled, transitioning"

instance ToText ScheduleState where
    toText = \case
        NotScheduled -> "NOT_SCHEDULED"
        Scheduled -> "SCHEDULED"
        Transitioning -> "TRANSITIONING"

instance Hashable     ScheduleState
instance NFData       ScheduleState
instance ToByteString ScheduleState
instance ToQuery      ScheduleState
instance ToHeader     ScheduleState

instance FromJSON ScheduleState where
    parseJSON = parseJSONText "ScheduleState"
