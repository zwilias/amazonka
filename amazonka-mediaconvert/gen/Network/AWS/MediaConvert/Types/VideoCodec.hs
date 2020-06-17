{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.VideoCodec (
  VideoCodec (
    ..
    , FrameCapture
    , H264
    , H265
    , MPEG2
    , Prores
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of video codec
data VideoCodec = VideoCodec' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern FrameCapture :: VideoCodec
pattern FrameCapture = VideoCodec' "FRAME_CAPTURE"

pattern H264 :: VideoCodec
pattern H264 = VideoCodec' "H_264"

pattern H265 :: VideoCodec
pattern H265 = VideoCodec' "H_265"

pattern MPEG2 :: VideoCodec
pattern MPEG2 = VideoCodec' "MPEG2"

pattern Prores :: VideoCodec
pattern Prores = VideoCodec' "PRORES"

{-# COMPLETE
  FrameCapture,
  H264,
  H265,
  MPEG2,
  Prores,
  VideoCodec' #-}

instance FromText VideoCodec where
    parser = (VideoCodec' . mk) <$> takeText

instance ToText VideoCodec where
    toText (VideoCodec' ci) = original ci

-- | Represents an enum of /known/ $VideoCodec.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum VideoCodec where
    toEnum i = case i of
        0 -> FrameCapture
        1 -> H264
        2 -> H265
        3 -> MPEG2
        4 -> Prores
        _ -> (error . showText) $ "Unknown index for VideoCodec: " <> toText i
    fromEnum x = case x of
        FrameCapture -> 0
        H264 -> 1
        H265 -> 2
        MPEG2 -> 3
        Prores -> 4
        VideoCodec' name -> (error . showText) $ "Unknown VideoCodec: " <> original name

-- | Represents the bounds of /known/ $VideoCodec.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded VideoCodec where
    minBound = FrameCapture
    maxBound = Prores

instance Hashable     VideoCodec
instance NFData       VideoCodec
instance ToByteString VideoCodec
instance ToQuery      VideoCodec
instance ToHeader     VideoCodec

instance ToJSON VideoCodec where
    toJSON = toJSONText

instance FromJSON VideoCodec where
    parseJSON = parseJSONText "VideoCodec"
