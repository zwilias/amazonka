{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm where

import Network.AWS.Prelude
  
-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
data ProresFramerateConversionAlgorithm = PFCADuplicateDrop
                                        | PFCAInterpolate
                                            deriving (Eq, Ord, Read, Show, Enum,
                                                      Bounded, Data, Typeable,
                                                      Generic)

instance FromText ProresFramerateConversionAlgorithm where
    parser = takeLowerText >>= \case
        "duplicate_drop" -> pure PFCADuplicateDrop
        "interpolate" -> pure PFCAInterpolate
        e -> fromTextError $ "Failure parsing ProresFramerateConversionAlgorithm from value: '" <> e
           <> "'. Accepted values: duplicate_drop, interpolate"

instance ToText ProresFramerateConversionAlgorithm where
    toText = \case
        PFCADuplicateDrop -> "DUPLICATE_DROP"
        PFCAInterpolate -> "INTERPOLATE"

instance Hashable     ProresFramerateConversionAlgorithm
instance NFData       ProresFramerateConversionAlgorithm
instance ToByteString ProresFramerateConversionAlgorithm
instance ToQuery      ProresFramerateConversionAlgorithm
instance ToHeader     ProresFramerateConversionAlgorithm

instance ToJSON ProresFramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON ProresFramerateConversionAlgorithm where
    parseJSON = parseJSONText "ProresFramerateConversionAlgorithm"
