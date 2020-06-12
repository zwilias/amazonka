{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.ChangeSetType where

import Network.AWS.Prelude
  
data ChangeSetType = Create
                   | Update
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText ChangeSetType where
    parser = takeLowerText >>= \case
        "create" -> pure Create
        "update" -> pure Update
        e -> fromTextError $ "Failure parsing ChangeSetType from value: '" <> e
           <> "'. Accepted values: create, update"

instance ToText ChangeSetType where
    toText = \case
        Create -> "CREATE"
        Update -> "UPDATE"

instance Hashable     ChangeSetType
instance NFData       ChangeSetType
instance ToByteString ChangeSetType
instance ToQuery      ChangeSetType
instance ToHeader     ChangeSetType
