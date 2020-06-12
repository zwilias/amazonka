{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioCodec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioCodec where

import Network.AWS.Prelude
  
-- | Type of Audio codec.
data AudioCodec = AC3
                | Aac
                | Aiff
                | EAC3
                | MP2
                | Passthrough
                | Wav
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText AudioCodec where
    parser = takeLowerText >>= \case
        "ac3" -> pure AC3
        "aac" -> pure Aac
        "aiff" -> pure Aiff
        "eac3" -> pure EAC3
        "mp2" -> pure MP2
        "passthrough" -> pure Passthrough
        "wav" -> pure Wav
        e -> fromTextError $ "Failure parsing AudioCodec from value: '" <> e
           <> "'. Accepted values: ac3, aac, aiff, eac3, mp2, passthrough, wav"

instance ToText AudioCodec where
    toText = \case
        AC3 -> "AC3"
        Aac -> "AAC"
        Aiff -> "AIFF"
        EAC3 -> "EAC3"
        MP2 -> "MP2"
        Passthrough -> "PASSTHROUGH"
        Wav -> "WAV"

instance Hashable     AudioCodec
instance NFData       AudioCodec
instance ToByteString AudioCodec
instance ToQuery      AudioCodec
instance ToHeader     AudioCodec

instance ToJSON AudioCodec where
    toJSON = toJSONText

instance FromJSON AudioCodec where
    parseJSON = parseJSONText "AudioCodec"
