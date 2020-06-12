{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.DocumentStatus where

import Network.AWS.Prelude
  
data DocumentStatus = Active
                    | Creating
                    | Deleting
                    | Updating
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText DocumentStatus where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "creating" -> pure Creating
        "deleting" -> pure Deleting
        "updating" -> pure Updating
        e -> fromTextError $ "Failure parsing DocumentStatus from value: '" <> e
           <> "'. Accepted values: active, creating, deleting, updating"

instance ToText DocumentStatus where
    toText = \case
        Active -> "Active"
        Creating -> "Creating"
        Deleting -> "Deleting"
        Updating -> "Updating"

instance Hashable     DocumentStatus
instance NFData       DocumentStatus
instance ToByteString DocumentStatus
instance ToQuery      DocumentStatus
instance ToHeader     DocumentStatus

instance FromJSON DocumentStatus where
    parseJSON = parseJSONText "DocumentStatus"
