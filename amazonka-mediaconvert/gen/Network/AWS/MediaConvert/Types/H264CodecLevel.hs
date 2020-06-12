{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264CodecLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264CodecLevel where

import Network.AWS.Prelude
  
-- | H.264 Level.
data H264CodecLevel = HCLAuto
                    | HCLLevel1
                    | HCLLevel11
                    | HCLLevel12
                    | HCLLevel13
                    | HCLLevel2
                    | HCLLevel21
                    | HCLLevel22
                    | HCLLevel3
                    | HCLLevel31
                    | HCLLevel32
                    | HCLLevel4
                    | HCLLevel41
                    | HCLLevel42
                    | HCLLevel5
                    | HCLLevel51
                    | HCLLevel52
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText H264CodecLevel where
    parser = takeLowerText >>= \case
        "auto" -> pure HCLAuto
        "level_1" -> pure HCLLevel1
        "level_1_1" -> pure HCLLevel11
        "level_1_2" -> pure HCLLevel12
        "level_1_3" -> pure HCLLevel13
        "level_2" -> pure HCLLevel2
        "level_2_1" -> pure HCLLevel21
        "level_2_2" -> pure HCLLevel22
        "level_3" -> pure HCLLevel3
        "level_3_1" -> pure HCLLevel31
        "level_3_2" -> pure HCLLevel32
        "level_4" -> pure HCLLevel4
        "level_4_1" -> pure HCLLevel41
        "level_4_2" -> pure HCLLevel42
        "level_5" -> pure HCLLevel5
        "level_5_1" -> pure HCLLevel51
        "level_5_2" -> pure HCLLevel52
        e -> fromTextError $ "Failure parsing H264CodecLevel from value: '" <> e
           <> "'. Accepted values: auto, level_1, level_1_1, level_1_2, level_1_3, level_2, level_2_1, level_2_2, level_3, level_3_1, level_3_2, level_4, level_4_1, level_4_2, level_5, level_5_1, level_5_2"

instance ToText H264CodecLevel where
    toText = \case
        HCLAuto -> "AUTO"
        HCLLevel1 -> "LEVEL_1"
        HCLLevel11 -> "LEVEL_1_1"
        HCLLevel12 -> "LEVEL_1_2"
        HCLLevel13 -> "LEVEL_1_3"
        HCLLevel2 -> "LEVEL_2"
        HCLLevel21 -> "LEVEL_2_1"
        HCLLevel22 -> "LEVEL_2_2"
        HCLLevel3 -> "LEVEL_3"
        HCLLevel31 -> "LEVEL_3_1"
        HCLLevel32 -> "LEVEL_3_2"
        HCLLevel4 -> "LEVEL_4"
        HCLLevel41 -> "LEVEL_4_1"
        HCLLevel42 -> "LEVEL_4_2"
        HCLLevel5 -> "LEVEL_5"
        HCLLevel51 -> "LEVEL_5_1"
        HCLLevel52 -> "LEVEL_5_2"

instance Hashable     H264CodecLevel
instance NFData       H264CodecLevel
instance ToByteString H264CodecLevel
instance ToQuery      H264CodecLevel
instance ToHeader     H264CodecLevel

instance ToJSON H264CodecLevel where
    toJSON = toJSONText

instance FromJSON H264CodecLevel where
    parseJSON = parseJSONText "H264CodecLevel"
