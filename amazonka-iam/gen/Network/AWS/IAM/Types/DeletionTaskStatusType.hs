{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.IAM.Types.DeletionTaskStatusType where

import Network.AWS.Prelude
  
data DeletionTaskStatusType = Failed
                            | InProgress
                            | NotStarted
                            | Succeeded
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText DeletionTaskStatusType where
    parser = takeLowerText >>= \case
        "failed" -> pure Failed
        "in_progress" -> pure InProgress
        "not_started" -> pure NotStarted
        "succeeded" -> pure Succeeded
        e -> fromTextError $ "Failure parsing DeletionTaskStatusType from value: '" <> e
           <> "'. Accepted values: failed, in_progress, not_started, succeeded"

instance ToText DeletionTaskStatusType where
    toText = \case
        Failed -> "FAILED"
        InProgress -> "IN_PROGRESS"
        NotStarted -> "NOT_STARTED"
        Succeeded -> "SUCCEEDED"

instance Hashable     DeletionTaskStatusType
instance NFData       DeletionTaskStatusType
instance ToByteString DeletionTaskStatusType
instance ToQuery      DeletionTaskStatusType
instance ToHeader     DeletionTaskStatusType

instance FromXML DeletionTaskStatusType where
    parseXML = parseXMLText "DeletionTaskStatusType"
