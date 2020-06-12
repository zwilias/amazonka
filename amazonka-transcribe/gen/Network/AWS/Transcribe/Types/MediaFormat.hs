{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.MediaFormat
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.MediaFormat where

import Network.AWS.Prelude
  
data MediaFormat = Flac
                 | MP3
                 | MP4
                 | Wav
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText MediaFormat where
    parser = takeLowerText >>= \case
        "flac" -> pure Flac
        "mp3" -> pure MP3
        "mp4" -> pure MP4
        "wav" -> pure Wav
        e -> fromTextError $ "Failure parsing MediaFormat from value: '" <> e
           <> "'. Accepted values: flac, mp3, mp4, wav"

instance ToText MediaFormat where
    toText = \case
        Flac -> "flac"
        MP3 -> "mp3"
        MP4 -> "mp4"
        Wav -> "wav"

instance Hashable     MediaFormat
instance NFData       MediaFormat
instance ToByteString MediaFormat
instance ToQuery      MediaFormat
instance ToHeader     MediaFormat

instance ToJSON MediaFormat where
    toJSON = toJSONText

instance FromJSON MediaFormat where
    parseJSON = parseJSONText "MediaFormat"
