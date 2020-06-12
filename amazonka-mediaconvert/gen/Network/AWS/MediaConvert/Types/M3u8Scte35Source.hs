{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8Scte35Source
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M3u8Scte35Source where

import Network.AWS.Prelude
  
-- | Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
data M3u8Scte35Source = MNone
                      | MPassthrough
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText M3u8Scte35Source where
    parser = takeLowerText >>= \case
        "none" -> pure MNone
        "passthrough" -> pure MPassthrough
        e -> fromTextError $ "Failure parsing M3u8Scte35Source from value: '" <> e
           <> "'. Accepted values: none, passthrough"

instance ToText M3u8Scte35Source where
    toText = \case
        MNone -> "NONE"
        MPassthrough -> "PASSTHROUGH"

instance Hashable     M3u8Scte35Source
instance NFData       M3u8Scte35Source
instance ToByteString M3u8Scte35Source
instance ToQuery      M3u8Scte35Source
instance ToHeader     M3u8Scte35Source

instance ToJSON M3u8Scte35Source where
    toJSON = toJSONText

instance FromJSON M3u8Scte35Source where
    parseJSON = parseJSONText "M3u8Scte35Source"
