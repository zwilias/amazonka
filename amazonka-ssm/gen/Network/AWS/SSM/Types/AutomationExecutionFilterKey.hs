{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.AutomationExecutionFilterKey (
  AutomationExecutionFilterKey (
    ..
    , AEFKCurrentAction
    , AEFKDocumentNamePrefix
    , AEFKExecutionId
    , AEFKExecutionStatus
    , AEFKParentExecutionId
    , AEFKStartTimeAfter
    , AEFKStartTimeBefore
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomationExecutionFilterKey = AutomationExecutionFilterKey' (CI
                                                                     Text)
                                      deriving (Eq, Ord, Read, Show, Data,
                                                Typeable, Generic)

pattern AEFKCurrentAction :: AutomationExecutionFilterKey
pattern AEFKCurrentAction = AutomationExecutionFilterKey' "CurrentAction"

pattern AEFKDocumentNamePrefix :: AutomationExecutionFilterKey
pattern AEFKDocumentNamePrefix = AutomationExecutionFilterKey' "DocumentNamePrefix"

pattern AEFKExecutionId :: AutomationExecutionFilterKey
pattern AEFKExecutionId = AutomationExecutionFilterKey' "ExecutionId"

pattern AEFKExecutionStatus :: AutomationExecutionFilterKey
pattern AEFKExecutionStatus = AutomationExecutionFilterKey' "ExecutionStatus"

pattern AEFKParentExecutionId :: AutomationExecutionFilterKey
pattern AEFKParentExecutionId = AutomationExecutionFilterKey' "ParentExecutionId"

pattern AEFKStartTimeAfter :: AutomationExecutionFilterKey
pattern AEFKStartTimeAfter = AutomationExecutionFilterKey' "StartTimeAfter"

pattern AEFKStartTimeBefore :: AutomationExecutionFilterKey
pattern AEFKStartTimeBefore = AutomationExecutionFilterKey' "StartTimeBefore"

{-# COMPLETE
  AEFKCurrentAction,
  AEFKDocumentNamePrefix,
  AEFKExecutionId,
  AEFKExecutionStatus,
  AEFKParentExecutionId,
  AEFKStartTimeAfter,
  AEFKStartTimeBefore,
  AutomationExecutionFilterKey' #-}

instance FromText AutomationExecutionFilterKey where
    parser = (AutomationExecutionFilterKey' . mk) <$> takeText

instance ToText AutomationExecutionFilterKey where
    toText (AutomationExecutionFilterKey' ci) = original ci

-- | Represents an enum of /known/ $AutomationExecutionFilterKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum AutomationExecutionFilterKey where
    toEnum i = case i of
        0 -> AEFKCurrentAction
        1 -> AEFKDocumentNamePrefix
        2 -> AEFKExecutionId
        3 -> AEFKExecutionStatus
        4 -> AEFKParentExecutionId
        5 -> AEFKStartTimeAfter
        6 -> AEFKStartTimeBefore
        _ -> (error . showText) $ "Unknown index for AutomationExecutionFilterKey: " <> toText i
    fromEnum x = case x of
        AEFKCurrentAction -> 0
        AEFKDocumentNamePrefix -> 1
        AEFKExecutionId -> 2
        AEFKExecutionStatus -> 3
        AEFKParentExecutionId -> 4
        AEFKStartTimeAfter -> 5
        AEFKStartTimeBefore -> 6
        AutomationExecutionFilterKey' name -> (error . showText) $ "Unknown AutomationExecutionFilterKey: " <> original name

-- | Represents the bounds of /known/ $AutomationExecutionFilterKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded AutomationExecutionFilterKey where
    minBound = AEFKCurrentAction
    maxBound = AEFKStartTimeBefore

instance Hashable     AutomationExecutionFilterKey
instance NFData       AutomationExecutionFilterKey
instance ToByteString AutomationExecutionFilterKey
instance ToQuery      AutomationExecutionFilterKey
instance ToHeader     AutomationExecutionFilterKey

instance ToJSON AutomationExecutionFilterKey where
    toJSON = toJSONText
