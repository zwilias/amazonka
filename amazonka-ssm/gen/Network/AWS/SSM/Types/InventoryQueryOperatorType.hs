{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryQueryOperatorType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InventoryQueryOperatorType where

import Network.AWS.Prelude
  
data InventoryQueryOperatorType = BeginWith
                                | Equal
                                | GreaterThan
                                | LessThan
                                | NotEqual
                                    deriving (Eq, Ord, Read, Show, Enum,
                                              Bounded, Data, Typeable, Generic)

instance FromText InventoryQueryOperatorType where
    parser = takeLowerText >>= \case
        "beginwith" -> pure BeginWith
        "equal" -> pure Equal
        "greaterthan" -> pure GreaterThan
        "lessthan" -> pure LessThan
        "notequal" -> pure NotEqual
        e -> fromTextError $ "Failure parsing InventoryQueryOperatorType from value: '" <> e
           <> "'. Accepted values: beginwith, equal, greaterthan, lessthan, notequal"

instance ToText InventoryQueryOperatorType where
    toText = \case
        BeginWith -> "BeginWith"
        Equal -> "Equal"
        GreaterThan -> "GreaterThan"
        LessThan -> "LessThan"
        NotEqual -> "NotEqual"

instance Hashable     InventoryQueryOperatorType
instance NFData       InventoryQueryOperatorType
instance ToByteString InventoryQueryOperatorType
instance ToQuery      InventoryQueryOperatorType
instance ToHeader     InventoryQueryOperatorType

instance ToJSON InventoryQueryOperatorType where
    toJSON = toJSONText
