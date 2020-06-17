{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Glue.Types.ScheduleState (
  ScheduleState (
    ..
    , NotScheduled
    , Scheduled
    , Transitioning
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleState = ScheduleState' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern NotScheduled :: ScheduleState
pattern NotScheduled = ScheduleState' "NOT_SCHEDULED"

pattern Scheduled :: ScheduleState
pattern Scheduled = ScheduleState' "SCHEDULED"

pattern Transitioning :: ScheduleState
pattern Transitioning = ScheduleState' "TRANSITIONING"

{-# COMPLETE
  NotScheduled,
  Scheduled,
  Transitioning,
  ScheduleState' #-}

instance FromText ScheduleState where
    parser = (ScheduleState' . mk) <$> takeText

instance ToText ScheduleState where
    toText (ScheduleState' ci) = original ci

-- | Represents an enum of /known/ $ScheduleState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ScheduleState where
    toEnum i = case i of
        0 -> NotScheduled
        1 -> Scheduled
        2 -> Transitioning
        _ -> (error . showText) $ "Unknown index for ScheduleState: " <> toText i
    fromEnum x = case x of
        NotScheduled -> 0
        Scheduled -> 1
        Transitioning -> 2
        ScheduleState' name -> (error . showText) $ "Unknown ScheduleState: " <> original name

-- | Represents the bounds of /known/ $ScheduleState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ScheduleState where
    minBound = NotScheduled
    maxBound = Transitioning

instance Hashable     ScheduleState
instance NFData       ScheduleState
instance ToByteString ScheduleState
instance ToQuery      ScheduleState
instance ToHeader     ScheduleState

instance FromJSON ScheduleState where
    parseJSON = parseJSONText "ScheduleState"
