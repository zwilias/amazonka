{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Pinpoint.Types.ChannelType (
  ChannelType (
    ..
    , ADM
    , APNS
    , APNSSandbox
    , APNSVoip
    , APNSVoipSandbox
    , Baidu
    , Custom
    , Email
    , GCM
    , Sms
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelType = ChannelType' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern ADM :: ChannelType
pattern ADM = ChannelType' "ADM"

pattern APNS :: ChannelType
pattern APNS = ChannelType' "APNS"

pattern APNSSandbox :: ChannelType
pattern APNSSandbox = ChannelType' "APNS_SANDBOX"

pattern APNSVoip :: ChannelType
pattern APNSVoip = ChannelType' "APNS_VOIP"

pattern APNSVoipSandbox :: ChannelType
pattern APNSVoipSandbox = ChannelType' "APNS_VOIP_SANDBOX"

pattern Baidu :: ChannelType
pattern Baidu = ChannelType' "BAIDU"

pattern Custom :: ChannelType
pattern Custom = ChannelType' "CUSTOM"

pattern Email :: ChannelType
pattern Email = ChannelType' "EMAIL"

pattern GCM :: ChannelType
pattern GCM = ChannelType' "GCM"

pattern Sms :: ChannelType
pattern Sms = ChannelType' "SMS"

{-# COMPLETE
  ADM,
  APNS,
  APNSSandbox,
  APNSVoip,
  APNSVoipSandbox,
  Baidu,
  Custom,
  Email,
  GCM,
  Sms,
  ChannelType' #-}

instance FromText ChannelType where
    parser = (ChannelType' . mk) <$> takeText

instance ToText ChannelType where
    toText (ChannelType' ci) = original ci

-- | Represents an enum of /known/ $ChannelType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ChannelType where
    toEnum i = case i of
        0 -> ADM
        1 -> APNS
        2 -> APNSSandbox
        3 -> APNSVoip
        4 -> APNSVoipSandbox
        5 -> Baidu
        6 -> Custom
        7 -> Email
        8 -> GCM
        9 -> Sms
        _ -> (error . showText) $ "Unknown index for ChannelType: " <> toText i
    fromEnum x = case x of
        ADM -> 0
        APNS -> 1
        APNSSandbox -> 2
        APNSVoip -> 3
        APNSVoipSandbox -> 4
        Baidu -> 5
        Custom -> 6
        Email -> 7
        GCM -> 8
        Sms -> 9
        ChannelType' name -> (error . showText) $ "Unknown ChannelType: " <> original name

-- | Represents the bounds of /known/ $ChannelType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ChannelType where
    minBound = ADM
    maxBound = Sms

instance Hashable     ChannelType
instance NFData       ChannelType
instance ToByteString ChannelType
instance ToQuery      ChannelType
instance ToHeader     ChannelType

instance ToJSON ChannelType where
    toJSON = toJSONText

instance FromJSON ChannelType where
    parseJSON = parseJSONText "ChannelType"
