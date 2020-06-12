{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceMetricName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.InstanceMetricName where

import Network.AWS.Prelude
  
data InstanceMetricName = CPUUtilization
                        | NetworkIn
                        | NetworkOut
                        | StatusCheckFailed
                        | StatusCheckFailedInstance
                        | StatusCheckFailedSystem
                            deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                      Typeable, Generic)

instance FromText InstanceMetricName where
    parser = takeLowerText >>= \case
        "cpuutilization" -> pure CPUUtilization
        "networkin" -> pure NetworkIn
        "networkout" -> pure NetworkOut
        "statuscheckfailed" -> pure StatusCheckFailed
        "statuscheckfailed_instance" -> pure StatusCheckFailedInstance
        "statuscheckfailed_system" -> pure StatusCheckFailedSystem
        e -> fromTextError $ "Failure parsing InstanceMetricName from value: '" <> e
           <> "'. Accepted values: cpuutilization, networkin, networkout, statuscheckfailed, statuscheckfailed_instance, statuscheckfailed_system"

instance ToText InstanceMetricName where
    toText = \case
        CPUUtilization -> "CPUUtilization"
        NetworkIn -> "NetworkIn"
        NetworkOut -> "NetworkOut"
        StatusCheckFailed -> "StatusCheckFailed"
        StatusCheckFailedInstance -> "StatusCheckFailed_Instance"
        StatusCheckFailedSystem -> "StatusCheckFailed_System"

instance Hashable     InstanceMetricName
instance NFData       InstanceMetricName
instance ToByteString InstanceMetricName
instance ToQuery      InstanceMetricName
instance ToHeader     InstanceMetricName

instance ToJSON InstanceMetricName where
    toJSON = toJSONText

instance FromJSON InstanceMetricName where
    parseJSON = parseJSONText "InstanceMetricName"
