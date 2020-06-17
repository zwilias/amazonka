{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationJobState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ReplicationJobState (
  ReplicationJobState (
    ..
    , RJSActive
    , RJSDeleted
    , RJSDeleting
    , RJSFailed
    , RJSPending
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Current state of Replication Job
data ReplicationJobState = ReplicationJobState' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern RJSActive :: ReplicationJobState
pattern RJSActive = ReplicationJobState' "ACTIVE"

pattern RJSDeleted :: ReplicationJobState
pattern RJSDeleted = ReplicationJobState' "DELETED"

pattern RJSDeleting :: ReplicationJobState
pattern RJSDeleting = ReplicationJobState' "DELETING"

pattern RJSFailed :: ReplicationJobState
pattern RJSFailed = ReplicationJobState' "FAILED"

pattern RJSPending :: ReplicationJobState
pattern RJSPending = ReplicationJobState' "PENDING"

{-# COMPLETE
  RJSActive,
  RJSDeleted,
  RJSDeleting,
  RJSFailed,
  RJSPending,
  ReplicationJobState' #-}

instance FromText ReplicationJobState where
    parser = (ReplicationJobState' . mk) <$> takeText

instance ToText ReplicationJobState where
    toText (ReplicationJobState' ci) = original ci

-- | Represents an enum of /known/ $ReplicationJobState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ReplicationJobState where
    toEnum i = case i of
        0 -> RJSActive
        1 -> RJSDeleted
        2 -> RJSDeleting
        3 -> RJSFailed
        4 -> RJSPending
        _ -> (error . showText) $ "Unknown index for ReplicationJobState: " <> toText i
    fromEnum x = case x of
        RJSActive -> 0
        RJSDeleted -> 1
        RJSDeleting -> 2
        RJSFailed -> 3
        RJSPending -> 4
        ReplicationJobState' name -> (error . showText) $ "Unknown ReplicationJobState: " <> original name

-- | Represents the bounds of /known/ $ReplicationJobState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ReplicationJobState where
    minBound = RJSActive
    maxBound = RJSPending

instance Hashable     ReplicationJobState
instance NFData       ReplicationJobState
instance ToByteString ReplicationJobState
instance ToQuery      ReplicationJobState
instance ToHeader     ReplicationJobState

instance FromJSON ReplicationJobState where
    parseJSON = parseJSONText "ReplicationJobState"
