{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoCodec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoCodec where

import Network.AWS.Prelude
  
-- | Type of video codec
data VideoCodec = FrameCapture
                | H264
                | H265
                | MPEG2
                | Prores
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText VideoCodec where
    parser = takeLowerText >>= \case
        "frame_capture" -> pure FrameCapture
        "h_264" -> pure H264
        "h_265" -> pure H265
        "mpeg2" -> pure MPEG2
        "prores" -> pure Prores
        e -> fromTextError $ "Failure parsing VideoCodec from value: '" <> e
           <> "'. Accepted values: frame_capture, h_264, h_265, mpeg2, prores"

instance ToText VideoCodec where
    toText = \case
        FrameCapture -> "FRAME_CAPTURE"
        H264 -> "H_264"
        H265 -> "H_265"
        MPEG2 -> "MPEG2"
        Prores -> "PRORES"

instance Hashable     VideoCodec
instance NFData       VideoCodec
instance ToByteString VideoCodec
instance ToQuery      VideoCodec
instance ToHeader     VideoCodec

instance ToJSON VideoCodec where
    toJSON = toJSONText

instance FromJSON VideoCodec where
    parseJSON = parseJSONText "VideoCodec"
