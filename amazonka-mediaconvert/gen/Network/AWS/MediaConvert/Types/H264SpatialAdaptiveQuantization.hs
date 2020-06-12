{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame based on spatial variation of content complexity.
data H264SpatialAdaptiveQuantization = HSAQSDisabled
                                     | HSAQSEnabled
                                         deriving (Eq, Ord, Read, Show, Enum,
                                                   Bounded, Data, Typeable,
                                                   Generic)

instance FromText H264SpatialAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure HSAQSDisabled
        "enabled" -> pure HSAQSEnabled
        e -> fromTextError $ "Failure parsing H264SpatialAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H264SpatialAdaptiveQuantization where
    toText = \case
        HSAQSDisabled -> "DISABLED"
        HSAQSEnabled -> "ENABLED"

instance Hashable     H264SpatialAdaptiveQuantization
instance NFData       H264SpatialAdaptiveQuantization
instance ToByteString H264SpatialAdaptiveQuantization
instance ToQuery      H264SpatialAdaptiveQuantization
instance ToHeader     H264SpatialAdaptiveQuantization

instance ToJSON H264SpatialAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264SpatialAdaptiveQuantization where
    parseJSON = parseJSONText "H264SpatialAdaptiveQuantization"
