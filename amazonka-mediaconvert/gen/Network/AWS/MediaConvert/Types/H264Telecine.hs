{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264Telecine
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264Telecine where

import Network.AWS.Prelude
  
-- | This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
data H264Telecine = HHard
                  | HNone
                  | HSoft
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText H264Telecine where
    parser = takeLowerText >>= \case
        "hard" -> pure HHard
        "none" -> pure HNone
        "soft" -> pure HSoft
        e -> fromTextError $ "Failure parsing H264Telecine from value: '" <> e
           <> "'. Accepted values: hard, none, soft"

instance ToText H264Telecine where
    toText = \case
        HHard -> "HARD"
        HNone -> "NONE"
        HSoft -> "SOFT"

instance Hashable     H264Telecine
instance NFData       H264Telecine
instance ToByteString H264Telecine
instance ToQuery      H264Telecine
instance ToHeader     H264Telecine

instance ToJSON H264Telecine where
    toJSON = toJSONText

instance FromJSON H264Telecine where
    parseJSON = parseJSONText "H264Telecine"
