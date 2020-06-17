{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode (
  DeviceStatusDetailCode (
    ..
    , DeviceSoftwareUpdateNeeded
    , DeviceWasOffline
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceStatusDetailCode = DeviceStatusDetailCode' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern DeviceSoftwareUpdateNeeded :: DeviceStatusDetailCode
pattern DeviceSoftwareUpdateNeeded = DeviceStatusDetailCode' "DEVICE_SOFTWARE_UPDATE_NEEDED"

pattern DeviceWasOffline :: DeviceStatusDetailCode
pattern DeviceWasOffline = DeviceStatusDetailCode' "DEVICE_WAS_OFFLINE"

{-# COMPLETE
  DeviceSoftwareUpdateNeeded,
  DeviceWasOffline,
  DeviceStatusDetailCode' #-}

instance FromText DeviceStatusDetailCode where
    parser = (DeviceStatusDetailCode' . mk) <$> takeText

instance ToText DeviceStatusDetailCode where
    toText (DeviceStatusDetailCode' ci) = original ci

-- | Represents an enum of /known/ $DeviceStatusDetailCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DeviceStatusDetailCode where
    toEnum i = case i of
        0 -> DeviceSoftwareUpdateNeeded
        1 -> DeviceWasOffline
        _ -> (error . showText) $ "Unknown index for DeviceStatusDetailCode: " <> toText i
    fromEnum x = case x of
        DeviceSoftwareUpdateNeeded -> 0
        DeviceWasOffline -> 1
        DeviceStatusDetailCode' name -> (error . showText) $ "Unknown DeviceStatusDetailCode: " <> original name

-- | Represents the bounds of /known/ $DeviceStatusDetailCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DeviceStatusDetailCode where
    minBound = DeviceSoftwareUpdateNeeded
    maxBound = DeviceWasOffline

instance Hashable     DeviceStatusDetailCode
instance NFData       DeviceStatusDetailCode
instance ToByteString DeviceStatusDetailCode
instance ToQuery      DeviceStatusDetailCode
instance ToHeader     DeviceStatusDetailCode

instance FromJSON DeviceStatusDetailCode where
    parseJSON = parseJSONText "DeviceStatusDetailCode"
