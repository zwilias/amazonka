{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication where

import Network.AWS.Prelude
  
-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
data MsSmoothAudioDeduplication = CombineDuplicateStreams
                                | None
                                    deriving (Eq, Ord, Read, Show, Enum,
                                              Bounded, Data, Typeable, Generic)

instance FromText MsSmoothAudioDeduplication where
    parser = takeLowerText >>= \case
        "combine_duplicate_streams" -> pure CombineDuplicateStreams
        "none" -> pure None
        e -> fromTextError $ "Failure parsing MsSmoothAudioDeduplication from value: '" <> e
           <> "'. Accepted values: combine_duplicate_streams, none"

instance ToText MsSmoothAudioDeduplication where
    toText = \case
        CombineDuplicateStreams -> "COMBINE_DUPLICATE_STREAMS"
        None -> "NONE"

instance Hashable     MsSmoothAudioDeduplication
instance NFData       MsSmoothAudioDeduplication
instance ToByteString MsSmoothAudioDeduplication
instance ToQuery      MsSmoothAudioDeduplication
instance ToHeader     MsSmoothAudioDeduplication

instance ToJSON MsSmoothAudioDeduplication where
    toJSON = toJSONText

instance FromJSON MsSmoothAudioDeduplication where
    parseJSON = parseJSONText "MsSmoothAudioDeduplication"
