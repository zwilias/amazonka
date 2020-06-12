{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.InputType where

import Network.AWS.Prelude
  
-- | Placeholder documentation for InputType
data InputType = RtmpPull
               | RtmpPush
               | RtpPush
               | URLPull
               | UdpPush
                   deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                             Typeable, Generic)

instance FromText InputType where
    parser = takeLowerText >>= \case
        "rtmp_pull" -> pure RtmpPull
        "rtmp_push" -> pure RtmpPush
        "rtp_push" -> pure RtpPush
        "url_pull" -> pure URLPull
        "udp_push" -> pure UdpPush
        e -> fromTextError $ "Failure parsing InputType from value: '" <> e
           <> "'. Accepted values: rtmp_pull, rtmp_push, rtp_push, url_pull, udp_push"

instance ToText InputType where
    toText = \case
        RtmpPull -> "RTMP_PULL"
        RtmpPush -> "RTMP_PUSH"
        RtpPush -> "RTP_PUSH"
        URLPull -> "URL_PULL"
        UdpPush -> "UDP_PUSH"

instance Hashable     InputType
instance NFData       InputType
instance ToByteString InputType
instance ToQuery      InputType
instance ToHeader     InputType

instance ToJSON InputType where
    toJSON = toJSONText

instance FromJSON InputType where
    parseJSON = parseJSONText "InputType"
