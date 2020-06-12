{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackSetOperationAction where

import Network.AWS.Prelude
  
data StackSetOperationAction = SSOACreate
                             | SSOADelete
                             | SSOAUpdate
                                 deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                           Data, Typeable, Generic)

instance FromText StackSetOperationAction where
    parser = takeLowerText >>= \case
        "create" -> pure SSOACreate
        "delete" -> pure SSOADelete
        "update" -> pure SSOAUpdate
        e -> fromTextError $ "Failure parsing StackSetOperationAction from value: '" <> e
           <> "'. Accepted values: create, delete, update"

instance ToText StackSetOperationAction where
    toText = \case
        SSOACreate -> "CREATE"
        SSOADelete -> "DELETE"
        SSOAUpdate -> "UPDATE"

instance Hashable     StackSetOperationAction
instance NFData       StackSetOperationAction
instance ToByteString StackSetOperationAction
instance ToQuery      StackSetOperationAction
instance ToHeader     StackSetOperationAction

instance FromXML StackSetOperationAction where
    parseXML = parseXMLText "StackSetOperationAction"
