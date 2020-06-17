{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.DeletionTaskStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.DeletionTaskStatusType (
  DeletionTaskStatusType (
    ..
    , Failed
    , InProgress
    , NotStarted
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeletionTaskStatusType = DeletionTaskStatusType' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Failed :: DeletionTaskStatusType
pattern Failed = DeletionTaskStatusType' "FAILED"

pattern InProgress :: DeletionTaskStatusType
pattern InProgress = DeletionTaskStatusType' "IN_PROGRESS"

pattern NotStarted :: DeletionTaskStatusType
pattern NotStarted = DeletionTaskStatusType' "NOT_STARTED"

pattern Succeeded :: DeletionTaskStatusType
pattern Succeeded = DeletionTaskStatusType' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  NotStarted,
  Succeeded,
  DeletionTaskStatusType' #-}

instance FromText DeletionTaskStatusType where
    parser = (DeletionTaskStatusType' . mk) <$> takeText

instance ToText DeletionTaskStatusType where
    toText (DeletionTaskStatusType' ci) = original ci

-- | Represents an enum of /known/ $DeletionTaskStatusType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DeletionTaskStatusType where
    toEnum i = case i of
        0 -> Failed
        1 -> InProgress
        2 -> NotStarted
        3 -> Succeeded
        _ -> (error . showText) $ "Unknown index for DeletionTaskStatusType: " <> toText i
    fromEnum x = case x of
        Failed -> 0
        InProgress -> 1
        NotStarted -> 2
        Succeeded -> 3
        DeletionTaskStatusType' name -> (error . showText) $ "Unknown DeletionTaskStatusType: " <> original name

-- | Represents the bounds of /known/ $DeletionTaskStatusType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DeletionTaskStatusType where
    minBound = Failed
    maxBound = Succeeded

instance Hashable     DeletionTaskStatusType
instance NFData       DeletionTaskStatusType
instance ToByteString DeletionTaskStatusType
instance ToQuery      DeletionTaskStatusType
instance ToHeader     DeletionTaskStatusType

instance FromXML DeletionTaskStatusType where
    parseXML = parseXMLText "DeletionTaskStatusType"
