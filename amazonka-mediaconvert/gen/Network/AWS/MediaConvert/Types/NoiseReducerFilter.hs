{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NoiseReducerFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.NoiseReducerFilter where

import Network.AWS.Prelude
  
-- | Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral is an edge preserving noise reduction filter * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) are convolution filters * Conserve is a min/max noise reduction filter * Spatial is frequency-domain filter based on JND principles.
data NoiseReducerFilter = Bilateral
                        | Conserve
                        | Gaussian
                        | Lanczos
                        | Mean
                        | Sharpen
                        | Spatial
                            deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                      Typeable, Generic)

instance FromText NoiseReducerFilter where
    parser = takeLowerText >>= \case
        "bilateral" -> pure Bilateral
        "conserve" -> pure Conserve
        "gaussian" -> pure Gaussian
        "lanczos" -> pure Lanczos
        "mean" -> pure Mean
        "sharpen" -> pure Sharpen
        "spatial" -> pure Spatial
        e -> fromTextError $ "Failure parsing NoiseReducerFilter from value: '" <> e
           <> "'. Accepted values: bilateral, conserve, gaussian, lanczos, mean, sharpen, spatial"

instance ToText NoiseReducerFilter where
    toText = \case
        Bilateral -> "BILATERAL"
        Conserve -> "CONSERVE"
        Gaussian -> "GAUSSIAN"
        Lanczos -> "LANCZOS"
        Mean -> "MEAN"
        Sharpen -> "SHARPEN"
        Spatial -> "SPATIAL"

instance Hashable     NoiseReducerFilter
instance NFData       NoiseReducerFilter
instance ToByteString NoiseReducerFilter
instance ToQuery      NoiseReducerFilter
instance ToHeader     NoiseReducerFilter

instance ToJSON NoiseReducerFilter where
    toJSON = toJSONText

instance FromJSON NoiseReducerFilter where
    parseJSON = parseJSONText "NoiseReducerFilter"
