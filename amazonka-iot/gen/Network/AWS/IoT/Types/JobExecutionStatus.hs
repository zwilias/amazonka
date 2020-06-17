{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecutionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.JobExecutionStatus (
  JobExecutionStatus (
    ..
    , Canceled
    , Failed
    , InProgress
    , Queued
    , Rejected
    , Removed
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobExecutionStatus = JobExecutionStatus' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Canceled :: JobExecutionStatus
pattern Canceled = JobExecutionStatus' "CANCELED"

pattern Failed :: JobExecutionStatus
pattern Failed = JobExecutionStatus' "FAILED"

pattern InProgress :: JobExecutionStatus
pattern InProgress = JobExecutionStatus' "IN_PROGRESS"

pattern Queued :: JobExecutionStatus
pattern Queued = JobExecutionStatus' "QUEUED"

pattern Rejected :: JobExecutionStatus
pattern Rejected = JobExecutionStatus' "REJECTED"

pattern Removed :: JobExecutionStatus
pattern Removed = JobExecutionStatus' "REMOVED"

pattern Succeeded :: JobExecutionStatus
pattern Succeeded = JobExecutionStatus' "SUCCEEDED"

{-# COMPLETE
  Canceled,
  Failed,
  InProgress,
  Queued,
  Rejected,
  Removed,
  Succeeded,
  JobExecutionStatus' #-}

instance FromText JobExecutionStatus where
    parser = (JobExecutionStatus' . mk) <$> takeText

instance ToText JobExecutionStatus where
    toText (JobExecutionStatus' ci) = original ci

-- | Represents an enum of /known/ $JobExecutionStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum JobExecutionStatus where
    toEnum i = case i of
        0 -> Canceled
        1 -> Failed
        2 -> InProgress
        3 -> Queued
        4 -> Rejected
        5 -> Removed
        6 -> Succeeded
        _ -> (error . showText) $ "Unknown index for JobExecutionStatus: " <> toText i
    fromEnum x = case x of
        Canceled -> 0
        Failed -> 1
        InProgress -> 2
        Queued -> 3
        Rejected -> 4
        Removed -> 5
        Succeeded -> 6
        JobExecutionStatus' name -> (error . showText) $ "Unknown JobExecutionStatus: " <> original name

-- | Represents the bounds of /known/ $JobExecutionStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded JobExecutionStatus where
    minBound = Canceled
    maxBound = Succeeded

instance Hashable     JobExecutionStatus
instance NFData       JobExecutionStatus
instance ToByteString JobExecutionStatus
instance ToQuery      JobExecutionStatus
instance ToHeader     JobExecutionStatus

instance ToJSON JobExecutionStatus where
    toJSON = toJSONText

instance FromJSON JobExecutionStatus where
    parseJSON = parseJSONText "JobExecutionStatus"
