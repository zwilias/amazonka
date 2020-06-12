{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode where

import Network.AWS.Prelude
  
data DeviceStatusDetailCode = DeviceSoftwareUpdateNeeded
                            | DeviceWasOffline
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText DeviceStatusDetailCode where
    parser = takeLowerText >>= \case
        "device_software_update_needed" -> pure DeviceSoftwareUpdateNeeded
        "device_was_offline" -> pure DeviceWasOffline
        e -> fromTextError $ "Failure parsing DeviceStatusDetailCode from value: '" <> e
           <> "'. Accepted values: device_software_update_needed, device_was_offline"

instance ToText DeviceStatusDetailCode where
    toText = \case
        DeviceSoftwareUpdateNeeded -> "DEVICE_SOFTWARE_UPDATE_NEEDED"
        DeviceWasOffline -> "DEVICE_WAS_OFFLINE"

instance Hashable     DeviceStatusDetailCode
instance NFData       DeviceStatusDetailCode
instance ToByteString DeviceStatusDetailCode
instance ToQuery      DeviceStatusDetailCode
instance ToHeader     DeviceStatusDetailCode

instance FromJSON DeviceStatusDetailCode where
    parseJSON = parseJSONText "DeviceStatusDetailCode"
