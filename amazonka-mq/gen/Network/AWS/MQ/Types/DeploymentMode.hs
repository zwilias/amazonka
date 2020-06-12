{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.DeploymentMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MQ.Types.DeploymentMode where

import Network.AWS.Prelude
  
-- | The deployment mode of the broker. Possible values: SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ SINGLE_INSTANCE creates a single-instance broker in a single Availability Zone. ACTIVE_STANDBY_MULTI_AZ creates an active/standby broker for high availability.
data DeploymentMode = ActiveStandbyMultiAz
                    | SingleInstance
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText DeploymentMode where
    parser = takeLowerText >>= \case
        "active_standby_multi_az" -> pure ActiveStandbyMultiAz
        "single_instance" -> pure SingleInstance
        e -> fromTextError $ "Failure parsing DeploymentMode from value: '" <> e
           <> "'. Accepted values: active_standby_multi_az, single_instance"

instance ToText DeploymentMode where
    toText = \case
        ActiveStandbyMultiAz -> "ACTIVE_STANDBY_MULTI_AZ"
        SingleInstance -> "SINGLE_INSTANCE"

instance Hashable     DeploymentMode
instance NFData       DeploymentMode
instance ToByteString DeploymentMode
instance ToQuery      DeploymentMode
instance ToHeader     DeploymentMode

instance ToJSON DeploymentMode where
    toJSON = toJSONText

instance FromJSON DeploymentMode where
    parseJSON = parseJSONText "DeploymentMode"
