{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265AdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
data H265AdaptiveQuantization = High
                              | Higher
                              | Low
                              | Max
                              | Medium
                              | Off
                                  deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                            Data, Typeable, Generic)

instance FromText H265AdaptiveQuantization where
    parser = takeLowerText >>= \case
        "high" -> pure High
        "higher" -> pure Higher
        "low" -> pure Low
        "max" -> pure Max
        "medium" -> pure Medium
        "off" -> pure Off
        e -> fromTextError $ "Failure parsing H265AdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: high, higher, low, max, medium, off"

instance ToText H265AdaptiveQuantization where
    toText = \case
        High -> "HIGH"
        Higher -> "HIGHER"
        Low -> "LOW"
        Max -> "MAX"
        Medium -> "MEDIUM"
        Off -> "OFF"

instance Hashable     H265AdaptiveQuantization
instance NFData       H265AdaptiveQuantization
instance ToByteString H265AdaptiveQuantization
instance ToQuery      H265AdaptiveQuantization
instance ToHeader     H265AdaptiveQuantization

instance ToJSON H265AdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H265AdaptiveQuantization where
    parseJSON = parseJSONText "H265AdaptiveQuantization"
