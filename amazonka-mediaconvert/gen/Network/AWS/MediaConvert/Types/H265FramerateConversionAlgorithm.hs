{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm where

import Network.AWS.Prelude
  
-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
data H265FramerateConversionAlgorithm = DuplicateDrop
                                      | Interpolate
                                          deriving (Eq, Ord, Read, Show, Enum,
                                                    Bounded, Data, Typeable,
                                                    Generic)

instance FromText H265FramerateConversionAlgorithm where
    parser = takeLowerText >>= \case
        "duplicate_drop" -> pure DuplicateDrop
        "interpolate" -> pure Interpolate
        e -> fromTextError $ "Failure parsing H265FramerateConversionAlgorithm from value: '" <> e
           <> "'. Accepted values: duplicate_drop, interpolate"

instance ToText H265FramerateConversionAlgorithm where
    toText = \case
        DuplicateDrop -> "DUPLICATE_DROP"
        Interpolate -> "INTERPOLATE"

instance Hashable     H265FramerateConversionAlgorithm
instance NFData       H265FramerateConversionAlgorithm
instance ToByteString H265FramerateConversionAlgorithm
instance ToQuery      H265FramerateConversionAlgorithm
instance ToHeader     H265FramerateConversionAlgorithm

instance ToJSON H265FramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON H265FramerateConversionAlgorithm where
    parseJSON = parseJSONText "H265FramerateConversionAlgorithm"
