{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.NodegroupStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.NodegroupStatus (
  NodegroupStatus (
    ..
    , NSActive
    , NSCreateFailed
    , NSCreating
    , NSDegraded
    , NSDeleteFailed
    , NSDeleting
    , NSUpdating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NodegroupStatus = NodegroupStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern NSActive :: NodegroupStatus
pattern NSActive = NodegroupStatus' "ACTIVE"

pattern NSCreateFailed :: NodegroupStatus
pattern NSCreateFailed = NodegroupStatus' "CREATE_FAILED"

pattern NSCreating :: NodegroupStatus
pattern NSCreating = NodegroupStatus' "CREATING"

pattern NSDegraded :: NodegroupStatus
pattern NSDegraded = NodegroupStatus' "DEGRADED"

pattern NSDeleteFailed :: NodegroupStatus
pattern NSDeleteFailed = NodegroupStatus' "DELETE_FAILED"

pattern NSDeleting :: NodegroupStatus
pattern NSDeleting = NodegroupStatus' "DELETING"

pattern NSUpdating :: NodegroupStatus
pattern NSUpdating = NodegroupStatus' "UPDATING"

{-# COMPLETE
  NSActive,
  NSCreateFailed,
  NSCreating,
  NSDegraded,
  NSDeleteFailed,
  NSDeleting,
  NSUpdating,
  NodegroupStatus' #-}

instance FromText NodegroupStatus where
    parser = (NodegroupStatus' . mk) <$> takeText

instance ToText NodegroupStatus where
    toText (NodegroupStatus' ci) = original ci

-- | Represents an enum of /known/ $NodegroupStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum NodegroupStatus where
    toEnum i = case i of
        0 -> NSActive
        1 -> NSCreateFailed
        2 -> NSCreating
        3 -> NSDegraded
        4 -> NSDeleteFailed
        5 -> NSDeleting
        6 -> NSUpdating
        _ -> (error . showText) $ "Unknown index for NodegroupStatus: " <> toText i
    fromEnum x = case x of
        NSActive -> 0
        NSCreateFailed -> 1
        NSCreating -> 2
        NSDegraded -> 3
        NSDeleteFailed -> 4
        NSDeleting -> 5
        NSUpdating -> 6
        NodegroupStatus' name -> (error . showText) $ "Unknown NodegroupStatus: " <> original name

-- | Represents the bounds of /known/ $NodegroupStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded NodegroupStatus where
    minBound = NSActive
    maxBound = NSUpdating

instance Hashable     NodegroupStatus
instance NFData       NodegroupStatus
instance ToByteString NodegroupStatus
instance ToQuery      NodegroupStatus
instance ToHeader     NodegroupStatus

instance FromJSON NodegroupStatus where
    parseJSON = parseJSONText "NodegroupStatus"
