{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TriggerState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.TriggerState where

import Network.AWS.Prelude
  
data TriggerState = Activated
                  | Activating
                  | Created
                  | Creating
                  | Deactivated
                  | Deactivating
                  | Deleting
                  | Updating
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText TriggerState where
    parser = takeLowerText >>= \case
        "activated" -> pure Activated
        "activating" -> pure Activating
        "created" -> pure Created
        "creating" -> pure Creating
        "deactivated" -> pure Deactivated
        "deactivating" -> pure Deactivating
        "deleting" -> pure Deleting
        "updating" -> pure Updating
        e -> fromTextError $ "Failure parsing TriggerState from value: '" <> e
           <> "'. Accepted values: activated, activating, created, creating, deactivated, deactivating, deleting, updating"

instance ToText TriggerState where
    toText = \case
        Activated -> "ACTIVATED"
        Activating -> "ACTIVATING"
        Created -> "CREATED"
        Creating -> "CREATING"
        Deactivated -> "DEACTIVATED"
        Deactivating -> "DEACTIVATING"
        Deleting -> "DELETING"
        Updating -> "UPDATING"

instance Hashable     TriggerState
instance NFData       TriggerState
instance ToByteString TriggerState
instance ToQuery      TriggerState
instance ToHeader     TriggerState

instance FromJSON TriggerState where
    parseJSON = parseJSONText "TriggerState"
