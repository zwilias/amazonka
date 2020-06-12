{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.ConfigurationSetAttribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.ConfigurationSetAttribute where

import Network.AWS.Prelude
  
data ConfigurationSetAttribute = EventDestinations
                               | ReputationOptions
                               | TrackingOptions
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText ConfigurationSetAttribute where
    parser = takeLowerText >>= \case
        "eventdestinations" -> pure EventDestinations
        "reputationoptions" -> pure ReputationOptions
        "trackingoptions" -> pure TrackingOptions
        e -> fromTextError $ "Failure parsing ConfigurationSetAttribute from value: '" <> e
           <> "'. Accepted values: eventdestinations, reputationoptions, trackingoptions"

instance ToText ConfigurationSetAttribute where
    toText = \case
        EventDestinations -> "eventDestinations"
        ReputationOptions -> "reputationOptions"
        TrackingOptions -> "trackingOptions"

instance Hashable     ConfigurationSetAttribute
instance NFData       ConfigurationSetAttribute
instance ToByteString ConfigurationSetAttribute
instance ToQuery      ConfigurationSetAttribute
instance ToHeader     ConfigurationSetAttribute
