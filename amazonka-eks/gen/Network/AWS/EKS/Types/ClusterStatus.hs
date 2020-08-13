{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.ClusterStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.ClusterStatus (
  ClusterStatus (
    ..
    , Active
    , Creating
    , Deleting
    , Failed
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClusterStatus = ClusterStatus' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Active :: ClusterStatus
pattern Active = ClusterStatus' "ACTIVE"

pattern Creating :: ClusterStatus
pattern Creating = ClusterStatus' "CREATING"

pattern Deleting :: ClusterStatus
pattern Deleting = ClusterStatus' "DELETING"

pattern Failed :: ClusterStatus
pattern Failed = ClusterStatus' "FAILED"

pattern Updating :: ClusterStatus
pattern Updating = ClusterStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  Deleting,
  Failed,
  Updating,
  ClusterStatus' #-}

instance FromText ClusterStatus where
    parser = (ClusterStatus' . mk) <$> takeText

instance ToText ClusterStatus where
    toText (ClusterStatus' ci) = original ci

-- | Represents an enum of /known/ $ClusterStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ClusterStatus where
    toEnum i = case i of
        0 -> Active
        1 -> Creating
        2 -> Deleting
        3 -> Failed
        4 -> Updating
        _ -> (error . showText) $ "Unknown index for ClusterStatus: " <> toText i
    fromEnum x = case x of
        Active -> 0
        Creating -> 1
        Deleting -> 2
        Failed -> 3
        Updating -> 4
        ClusterStatus' name -> (error . showText) $ "Unknown ClusterStatus: " <> original name

-- | Represents the bounds of /known/ $ClusterStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ClusterStatus where
    minBound = Active
    maxBound = Updating

instance Hashable     ClusterStatus
instance NFData       ClusterStatus
instance ToByteString ClusterStatus
instance ToQuery      ClusterStatus
instance ToHeader     ClusterStatus

instance FromJSON ClusterStatus where
    parseJSON = parseJSONText "ClusterStatus"
