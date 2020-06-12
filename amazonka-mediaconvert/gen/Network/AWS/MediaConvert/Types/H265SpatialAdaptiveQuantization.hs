{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame based on spatial variation of content complexity.
data H265SpatialAdaptiveQuantization = HSAQDisabled
                                     | HSAQEnabled
                                         deriving (Eq, Ord, Read, Show, Enum,
                                                   Bounded, Data, Typeable,
                                                   Generic)

instance FromText H265SpatialAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure HSAQDisabled
        "enabled" -> pure HSAQEnabled
        e -> fromTextError $ "Failure parsing H265SpatialAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H265SpatialAdaptiveQuantization where
    toText = \case
        HSAQDisabled -> "DISABLED"
        HSAQEnabled -> "ENABLED"

instance Hashable     H265SpatialAdaptiveQuantization
instance NFData       H265SpatialAdaptiveQuantization
instance ToByteString H265SpatialAdaptiveQuantization
instance ToQuery      H265SpatialAdaptiveQuantization
instance ToHeader     H265SpatialAdaptiveQuantization

instance ToJSON H265SpatialAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H265SpatialAdaptiveQuantization where
    parseJSON = parseJSONText "H265SpatialAdaptiveQuantization"
