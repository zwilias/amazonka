{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264AdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264AdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Placeholder documentation for H264AdaptiveQuantization
data H264AdaptiveQuantization = HAQHigh
                              | HAQHigher
                              | HAQLow
                              | HAQMax
                              | HAQMedium
                              | HAQOff
                                  deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                            Data, Typeable, Generic)

instance FromText H264AdaptiveQuantization where
    parser = takeLowerText >>= \case
        "high" -> pure HAQHigh
        "higher" -> pure HAQHigher
        "low" -> pure HAQLow
        "max" -> pure HAQMax
        "medium" -> pure HAQMedium
        "off" -> pure HAQOff
        e -> fromTextError $ "Failure parsing H264AdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: high, higher, low, max, medium, off"

instance ToText H264AdaptiveQuantization where
    toText = \case
        HAQHigh -> "HIGH"
        HAQHigher -> "HIGHER"
        HAQLow -> "LOW"
        HAQMax -> "MAX"
        HAQMedium -> "MEDIUM"
        HAQOff -> "OFF"

instance Hashable     H264AdaptiveQuantization
instance NFData       H264AdaptiveQuantization
instance ToByteString H264AdaptiveQuantization
instance ToQuery      H264AdaptiveQuantization
instance ToHeader     H264AdaptiveQuantization

instance ToJSON H264AdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264AdaptiveQuantization where
    parseJSON = parseJSONText "H264AdaptiveQuantization"
