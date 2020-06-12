{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryDeletionStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InventoryDeletionStatus where

import Network.AWS.Prelude
  
data InventoryDeletionStatus = Complete
                             | InProgress
                                 deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                           Data, Typeable, Generic)

instance FromText InventoryDeletionStatus where
    parser = takeLowerText >>= \case
        "complete" -> pure Complete
        "inprogress" -> pure InProgress
        e -> fromTextError $ "Failure parsing InventoryDeletionStatus from value: '" <> e
           <> "'. Accepted values: complete, inprogress"

instance ToText InventoryDeletionStatus where
    toText = \case
        Complete -> "Complete"
        InProgress -> "InProgress"

instance Hashable     InventoryDeletionStatus
instance NFData       InventoryDeletionStatus
instance ToByteString InventoryDeletionStatus
instance ToQuery      InventoryDeletionStatus
instance ToHeader     InventoryDeletionStatus

instance FromJSON InventoryDeletionStatus where
    parseJSON = parseJSONText "InventoryDeletionStatus"
