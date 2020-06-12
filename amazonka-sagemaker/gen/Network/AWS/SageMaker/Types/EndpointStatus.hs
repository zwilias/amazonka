{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.EndpointStatus where

import Network.AWS.Prelude
  
data EndpointStatus = Creating
                    | Deleting
                    | Failed
                    | InService
                    | OutOfService
                    | RollingBack
                    | Updating
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText EndpointStatus where
    parser = takeLowerText >>= \case
        "creating" -> pure Creating
        "deleting" -> pure Deleting
        "failed" -> pure Failed
        "inservice" -> pure InService
        "outofservice" -> pure OutOfService
        "rollingback" -> pure RollingBack
        "updating" -> pure Updating
        e -> fromTextError $ "Failure parsing EndpointStatus from value: '" <> e
           <> "'. Accepted values: creating, deleting, failed, inservice, outofservice, rollingback, updating"

instance ToText EndpointStatus where
    toText = \case
        Creating -> "Creating"
        Deleting -> "Deleting"
        Failed -> "Failed"
        InService -> "InService"
        OutOfService -> "OutOfService"
        RollingBack -> "RollingBack"
        Updating -> "Updating"

instance Hashable     EndpointStatus
instance NFData       EndpointStatus
instance ToByteString EndpointStatus
instance ToQuery      EndpointStatus
instance ToHeader     EndpointStatus

instance ToJSON EndpointStatus where
    toJSON = toJSONText

instance FromJSON EndpointStatus where
    parseJSON = parseJSONText "EndpointStatus"
