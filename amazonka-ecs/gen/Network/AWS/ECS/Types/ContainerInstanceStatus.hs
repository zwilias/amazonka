{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstanceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerInstanceStatus where

import Network.AWS.Prelude
  
data ContainerInstanceStatus = Active
                             | Draining
                                 deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                           Data, Typeable, Generic)

instance FromText ContainerInstanceStatus where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "draining" -> pure Draining
        e -> fromTextError $ "Failure parsing ContainerInstanceStatus from value: '" <> e
           <> "'. Accepted values: active, draining"

instance ToText ContainerInstanceStatus where
    toText = \case
        Active -> "ACTIVE"
        Draining -> "DRAINING"

instance Hashable     ContainerInstanceStatus
instance NFData       ContainerInstanceStatus
instance ToByteString ContainerInstanceStatus
instance ToQuery      ContainerInstanceStatus
instance ToHeader     ContainerInstanceStatus

instance ToJSON ContainerInstanceStatus where
    toJSON = toJSONText
