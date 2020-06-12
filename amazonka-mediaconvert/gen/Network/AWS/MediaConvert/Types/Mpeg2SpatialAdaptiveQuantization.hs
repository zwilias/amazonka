{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame based on spatial variation of content complexity.
data Mpeg2SpatialAdaptiveQuantization = MSAQDisabled
                                      | MSAQEnabled
                                          deriving (Eq, Ord, Read, Show, Enum,
                                                    Bounded, Data, Typeable,
                                                    Generic)

instance FromText Mpeg2SpatialAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure MSAQDisabled
        "enabled" -> pure MSAQEnabled
        e -> fromTextError $ "Failure parsing Mpeg2SpatialAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText Mpeg2SpatialAdaptiveQuantization where
    toText = \case
        MSAQDisabled -> "DISABLED"
        MSAQEnabled -> "ENABLED"

instance Hashable     Mpeg2SpatialAdaptiveQuantization
instance NFData       Mpeg2SpatialAdaptiveQuantization
instance ToByteString Mpeg2SpatialAdaptiveQuantization
instance ToQuery      Mpeg2SpatialAdaptiveQuantization
instance ToHeader     Mpeg2SpatialAdaptiveQuantization

instance ToJSON Mpeg2SpatialAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON Mpeg2SpatialAdaptiveQuantization where
    parseJSON = parseJSONText "Mpeg2SpatialAdaptiveQuantization"
