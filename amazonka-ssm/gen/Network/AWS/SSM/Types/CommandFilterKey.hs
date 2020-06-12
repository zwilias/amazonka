{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.CommandFilterKey where

import Network.AWS.Prelude
  
data CommandFilterKey = CommandInvokedAfter
                      | CommandInvokedBefore
                      | CommandStatus
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText CommandFilterKey where
    parser = takeLowerText >>= \case
        "invokedafter" -> pure CommandInvokedAfter
        "invokedbefore" -> pure CommandInvokedBefore
        "status" -> pure CommandStatus
        e -> fromTextError $ "Failure parsing CommandFilterKey from value: '" <> e
           <> "'. Accepted values: invokedafter, invokedbefore, status"

instance ToText CommandFilterKey where
    toText = \case
        CommandInvokedAfter -> "InvokedAfter"
        CommandInvokedBefore -> "InvokedBefore"
        CommandStatus -> "Status"

instance Hashable     CommandFilterKey
instance NFData       CommandFilterKey
instance ToByteString CommandFilterKey
instance ToQuery      CommandFilterKey
instance ToHeader     CommandFilterKey

instance ToJSON CommandFilterKey where
    toJSON = toJSONText
