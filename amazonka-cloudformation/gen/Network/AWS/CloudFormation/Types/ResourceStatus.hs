{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ResourceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.ResourceStatus (
  ResourceStatus (
    ..
    , CreateComplete
    , CreateFailed
    , CreateInProgress
    , DeleteComplete
    , DeleteFailed
    , DeleteInProgress
    , DeleteSkipped
    , UpdateComplete
    , UpdateFailed
    , UpdateInProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceStatus = ResourceStatus' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern CreateComplete :: ResourceStatus
pattern CreateComplete = ResourceStatus' "CREATE_COMPLETE"

pattern CreateFailed :: ResourceStatus
pattern CreateFailed = ResourceStatus' "CREATE_FAILED"

pattern CreateInProgress :: ResourceStatus
pattern CreateInProgress = ResourceStatus' "CREATE_IN_PROGRESS"

pattern DeleteComplete :: ResourceStatus
pattern DeleteComplete = ResourceStatus' "DELETE_COMPLETE"

pattern DeleteFailed :: ResourceStatus
pattern DeleteFailed = ResourceStatus' "DELETE_FAILED"

pattern DeleteInProgress :: ResourceStatus
pattern DeleteInProgress = ResourceStatus' "DELETE_IN_PROGRESS"

pattern DeleteSkipped :: ResourceStatus
pattern DeleteSkipped = ResourceStatus' "DELETE_SKIPPED"

pattern UpdateComplete :: ResourceStatus
pattern UpdateComplete = ResourceStatus' "UPDATE_COMPLETE"

pattern UpdateFailed :: ResourceStatus
pattern UpdateFailed = ResourceStatus' "UPDATE_FAILED"

pattern UpdateInProgress :: ResourceStatus
pattern UpdateInProgress = ResourceStatus' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  CreateComplete,
  CreateFailed,
  CreateInProgress,
  DeleteComplete,
  DeleteFailed,
  DeleteInProgress,
  DeleteSkipped,
  UpdateComplete,
  UpdateFailed,
  UpdateInProgress,
  ResourceStatus' #-}

instance FromText ResourceStatus where
    parser = (ResourceStatus' . mk) <$> takeText

instance ToText ResourceStatus where
    toText (ResourceStatus' ci) = original ci

-- | Represents an enum of /known/ $ResourceStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ResourceStatus where
    toEnum i = case i of
        0 -> CreateComplete
        1 -> CreateFailed
        2 -> CreateInProgress
        3 -> DeleteComplete
        4 -> DeleteFailed
        5 -> DeleteInProgress
        6 -> DeleteSkipped
        7 -> UpdateComplete
        8 -> UpdateFailed
        9 -> UpdateInProgress
        _ -> (error . showText) $ "Unknown index for ResourceStatus: " <> toText i
    fromEnum x = case x of
        CreateComplete -> 0
        CreateFailed -> 1
        CreateInProgress -> 2
        DeleteComplete -> 3
        DeleteFailed -> 4
        DeleteInProgress -> 5
        DeleteSkipped -> 6
        UpdateComplete -> 7
        UpdateFailed -> 8
        UpdateInProgress -> 9
        ResourceStatus' name -> (error . showText) $ "Unknown ResourceStatus: " <> original name

-- | Represents the bounds of /known/ $ResourceStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ResourceStatus where
    minBound = CreateComplete
    maxBound = UpdateInProgress

instance Hashable     ResourceStatus
instance NFData       ResourceStatus
instance ToByteString ResourceStatus
instance ToQuery      ResourceStatus
instance ToHeader     ResourceStatus

instance FromXML ResourceStatus where
    parseXML = parseXMLText "ResourceStatus"
