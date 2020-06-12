{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ChannelType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ChannelType where

import Network.AWS.Prelude
  
data ChannelType = ADM
                 | APNS
                 | APNSSandbox
                 | APNSVoip
                 | APNSVoipSandbox
                 | Baidu
                 | Custom
                 | Email
                 | GCM
                 | Sms
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText ChannelType where
    parser = takeLowerText >>= \case
        "adm" -> pure ADM
        "apns" -> pure APNS
        "apns_sandbox" -> pure APNSSandbox
        "apns_voip" -> pure APNSVoip
        "apns_voip_sandbox" -> pure APNSVoipSandbox
        "baidu" -> pure Baidu
        "custom" -> pure Custom
        "email" -> pure Email
        "gcm" -> pure GCM
        "sms" -> pure Sms
        e -> fromTextError $ "Failure parsing ChannelType from value: '" <> e
           <> "'. Accepted values: adm, apns, apns_sandbox, apns_voip, apns_voip_sandbox, baidu, custom, email, gcm, sms"

instance ToText ChannelType where
    toText = \case
        ADM -> "ADM"
        APNS -> "APNS"
        APNSSandbox -> "APNS_SANDBOX"
        APNSVoip -> "APNS_VOIP"
        APNSVoipSandbox -> "APNS_VOIP_SANDBOX"
        Baidu -> "BAIDU"
        Custom -> "CUSTOM"
        Email -> "EMAIL"
        GCM -> "GCM"
        Sms -> "SMS"

instance Hashable     ChannelType
instance NFData       ChannelType
instance ToByteString ChannelType
instance ToQuery      ChannelType
instance ToHeader     ChannelType

instance ToJSON ChannelType where
    toJSON = toJSONText

instance FromJSON ChannelType where
    parseJSON = parseJSONText "ChannelType"
