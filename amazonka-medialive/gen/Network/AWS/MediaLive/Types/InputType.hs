{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaLive.Types.InputType (
  InputType (
    ..
    , RtmpPull
    , RtmpPush
    , RtpPush
    , URLPull
    , UdpPush
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for InputType
data InputType = InputType' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern RtmpPull :: InputType
pattern RtmpPull = InputType' "RTMP_PULL"

pattern RtmpPush :: InputType
pattern RtmpPush = InputType' "RTMP_PUSH"

pattern RtpPush :: InputType
pattern RtpPush = InputType' "RTP_PUSH"

pattern URLPull :: InputType
pattern URLPull = InputType' "URL_PULL"

pattern UdpPush :: InputType
pattern UdpPush = InputType' "UDP_PUSH"

{-# COMPLETE
  RtmpPull,
  RtmpPush,
  RtpPush,
  URLPull,
  UdpPush,
  InputType' #-}

instance FromText InputType where
    parser = (InputType' . mk) <$> takeText

instance ToText InputType where
    toText (InputType' ci) = original ci

-- | Represents an enum of /known/ $InputType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InputType where
    toEnum i = case i of
        0 -> RtmpPull
        1 -> RtmpPush
        2 -> RtpPush
        3 -> URLPull
        4 -> UdpPush
        _ -> (error . showText) $ "Unknown index for InputType: " <> toText i
    fromEnum x = case x of
        RtmpPull -> 0
        RtmpPush -> 1
        RtpPush -> 2
        URLPull -> 3
        UdpPush -> 4
        InputType' name -> (error . showText) $ "Unknown InputType: " <> original name

-- | Represents the bounds of /known/ $InputType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InputType where
    minBound = RtmpPull
    maxBound = UdpPush

instance Hashable     InputType
instance NFData       InputType
instance ToByteString InputType
instance ToQuery      InputType
instance ToHeader     InputType

instance ToJSON InputType where
    toJSON = toJSONText

instance FromJSON InputType where
    parseJSON = parseJSONText "InputType"
