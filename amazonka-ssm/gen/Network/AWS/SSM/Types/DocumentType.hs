{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.DocumentType where

import Network.AWS.Prelude
  
data DocumentType = DTAutomation
                  | DTCommand
                  | DTPolicy
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText DocumentType where
    parser = takeLowerText >>= \case
        "automation" -> pure DTAutomation
        "command" -> pure DTCommand
        "policy" -> pure DTPolicy
        e -> fromTextError $ "Failure parsing DocumentType from value: '" <> e
           <> "'. Accepted values: automation, command, policy"

instance ToText DocumentType where
    toText = \case
        DTAutomation -> "Automation"
        DTCommand -> "Command"
        DTPolicy -> "Policy"

instance Hashable     DocumentType
instance NFData       DocumentType
instance ToByteString DocumentType
instance ToQuery      DocumentType
instance ToHeader     DocumentType

instance ToJSON DocumentType where
    toJSON = toJSONText

instance FromJSON DocumentType where
    parseJSON = parseJSONText "DocumentType"
