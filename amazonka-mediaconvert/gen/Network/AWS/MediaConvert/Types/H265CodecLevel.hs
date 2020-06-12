{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265CodecLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265CodecLevel where

import Network.AWS.Prelude
  
-- | H.265 Level.
data H265CodecLevel = Auto
                    | Level1
                    | Level2
                    | Level21
                    | Level3
                    | Level31
                    | Level4
                    | Level41
                    | Level5
                    | Level51
                    | Level52
                    | Level6
                    | Level61
                    | Level62
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText H265CodecLevel where
    parser = takeLowerText >>= \case
        "auto" -> pure Auto
        "level_1" -> pure Level1
        "level_2" -> pure Level2
        "level_2_1" -> pure Level21
        "level_3" -> pure Level3
        "level_3_1" -> pure Level31
        "level_4" -> pure Level4
        "level_4_1" -> pure Level41
        "level_5" -> pure Level5
        "level_5_1" -> pure Level51
        "level_5_2" -> pure Level52
        "level_6" -> pure Level6
        "level_6_1" -> pure Level61
        "level_6_2" -> pure Level62
        e -> fromTextError $ "Failure parsing H265CodecLevel from value: '" <> e
           <> "'. Accepted values: auto, level_1, level_2, level_2_1, level_3, level_3_1, level_4, level_4_1, level_5, level_5_1, level_5_2, level_6, level_6_1, level_6_2"

instance ToText H265CodecLevel where
    toText = \case
        Auto -> "AUTO"
        Level1 -> "LEVEL_1"
        Level2 -> "LEVEL_2"
        Level21 -> "LEVEL_2_1"
        Level3 -> "LEVEL_3"
        Level31 -> "LEVEL_3_1"
        Level4 -> "LEVEL_4"
        Level41 -> "LEVEL_4_1"
        Level5 -> "LEVEL_5"
        Level51 -> "LEVEL_5_1"
        Level52 -> "LEVEL_5_2"
        Level6 -> "LEVEL_6"
        Level61 -> "LEVEL_6_1"
        Level62 -> "LEVEL_6_2"

instance Hashable     H265CodecLevel
instance NFData       H265CodecLevel
instance ToByteString H265CodecLevel
instance ToQuery      H265CodecLevel
instance ToHeader     H265CodecLevel

instance ToJSON H265CodecLevel where
    toJSON = toJSONText

instance FromJSON H265CodecLevel where
    parseJSON = parseJSONText "H265CodecLevel"
