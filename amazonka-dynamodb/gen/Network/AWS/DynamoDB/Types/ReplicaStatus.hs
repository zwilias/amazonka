{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.ReplicaStatus where

import Network.AWS.Prelude
  
data ReplicaStatus = RSActive
                   | RSCreating
                   | RSCreationFailed
                   | RSDeleting
                   | RSUpdating
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText ReplicaStatus where
    parser = takeLowerText >>= \case
        "active" -> pure RSActive
        "creating" -> pure RSCreating
        "creation_failed" -> pure RSCreationFailed
        "deleting" -> pure RSDeleting
        "updating" -> pure RSUpdating
        e -> fromTextError $ "Failure parsing ReplicaStatus from value: '" <> e
           <> "'. Accepted values: active, creating, creation_failed, deleting, updating"

instance ToText ReplicaStatus where
    toText = \case
        RSActive -> "ACTIVE"
        RSCreating -> "CREATING"
        RSCreationFailed -> "CREATION_FAILED"
        RSDeleting -> "DELETING"
        RSUpdating -> "UPDATING"

instance Hashable     ReplicaStatus
instance NFData       ReplicaStatus
instance ToByteString ReplicaStatus
instance ToQuery      ReplicaStatus
instance ToHeader     ReplicaStatus

instance FromJSON ReplicaStatus where
    parseJSON = parseJSONText "ReplicaStatus"
