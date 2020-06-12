{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Firehose.Types.DeliveryStreamStatus where

import Network.AWS.Prelude
  
data DeliveryStreamStatus = Active
                          | Creating
                          | Deleting
                              deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                        Data, Typeable, Generic)

instance FromText DeliveryStreamStatus where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "creating" -> pure Creating
        "deleting" -> pure Deleting
        e -> fromTextError $ "Failure parsing DeliveryStreamStatus from value: '" <> e
           <> "'. Accepted values: active, creating, deleting"

instance ToText DeliveryStreamStatus where
    toText = \case
        Active -> "ACTIVE"
        Creating -> "CREATING"
        Deleting -> "DELETING"

instance Hashable     DeliveryStreamStatus
instance NFData       DeliveryStreamStatus
instance ToByteString DeliveryStreamStatus
instance ToQuery      DeliveryStreamStatus
instance ToHeader     DeliveryStreamStatus

instance FromJSON DeliveryStreamStatus where
    parseJSON = parseJSONText "DeliveryStreamStatus"
