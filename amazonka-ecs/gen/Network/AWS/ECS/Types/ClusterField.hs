{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ClusterField
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ClusterField where

import Network.AWS.Prelude
  
data ClusterField = Statistics
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText ClusterField where
    parser = takeLowerText >>= \case
        "statistics" -> pure Statistics
        e -> fromTextError $ "Failure parsing ClusterField from value: '" <> e
           <> "'. Accepted values: statistics"

instance ToText ClusterField where
    toText = \case
        Statistics -> "STATISTICS"

instance Hashable     ClusterField
instance NFData       ClusterField
instance ToByteString ClusterField
instance ToQuery      ClusterField
instance ToHeader     ClusterField

instance ToJSON ClusterField where
    toJSON = toJSONText
