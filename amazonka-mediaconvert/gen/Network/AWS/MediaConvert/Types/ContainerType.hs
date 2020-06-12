{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ContainerType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ContainerType where

import Network.AWS.Prelude
  
-- | Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
data ContainerType = F4V
                   | Ismv
                   | M2TS
                   | M3U8
                   | MP4
                   | Mov
                   | Mpd
                   | Mxf
                   | Raw
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText ContainerType where
    parser = takeLowerText >>= \case
        "f4v" -> pure F4V
        "ismv" -> pure Ismv
        "m2ts" -> pure M2TS
        "m3u8" -> pure M3U8
        "mp4" -> pure MP4
        "mov" -> pure Mov
        "mpd" -> pure Mpd
        "mxf" -> pure Mxf
        "raw" -> pure Raw
        e -> fromTextError $ "Failure parsing ContainerType from value: '" <> e
           <> "'. Accepted values: f4v, ismv, m2ts, m3u8, mp4, mov, mpd, mxf, raw"

instance ToText ContainerType where
    toText = \case
        F4V -> "F4V"
        Ismv -> "ISMV"
        M2TS -> "M2TS"
        M3U8 -> "M3U8"
        MP4 -> "MP4"
        Mov -> "MOV"
        Mpd -> "MPD"
        Mxf -> "MXF"
        Raw -> "RAW"

instance Hashable     ContainerType
instance NFData       ContainerType
instance ToByteString ContainerType
instance ToQuery      ContainerType
instance ToHeader     ContainerType

instance ToJSON ContainerType where
    toJSON = toJSONText

instance FromJSON ContainerType where
    parseJSON = parseJSONText "ContainerType"
