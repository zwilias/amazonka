{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior where

import Network.AWS.Prelude
  
-- | Placeholder documentation for M3u8TimedMetadataBehavior
data M3u8TimedMetadataBehavior = MNoPassthrough
                               | MPassthrough
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText M3u8TimedMetadataBehavior where
    parser = takeLowerText >>= \case
        "no_passthrough" -> pure MNoPassthrough
        "passthrough" -> pure MPassthrough
        e -> fromTextError $ "Failure parsing M3u8TimedMetadataBehavior from value: '" <> e
           <> "'. Accepted values: no_passthrough, passthrough"

instance ToText M3u8TimedMetadataBehavior where
    toText = \case
        MNoPassthrough -> "NO_PASSTHROUGH"
        MPassthrough -> "PASSTHROUGH"

instance Hashable     M3u8TimedMetadataBehavior
instance NFData       M3u8TimedMetadataBehavior
instance ToByteString M3u8TimedMetadataBehavior
instance ToQuery      M3u8TimedMetadataBehavior
instance ToHeader     M3u8TimedMetadataBehavior

instance ToJSON M3u8TimedMetadataBehavior where
    toJSON = toJSONText

instance FromJSON M3u8TimedMetadataBehavior where
    parseJSON = parseJSONText "M3u8TimedMetadataBehavior"
