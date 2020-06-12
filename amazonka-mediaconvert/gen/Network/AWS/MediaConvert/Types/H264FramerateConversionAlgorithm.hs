{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm where

import Network.AWS.Prelude
  
-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
data H264FramerateConversionAlgorithm = HFCADuplicateDrop
                                      | HFCAInterpolate
                                          deriving (Eq, Ord, Read, Show, Enum,
                                                    Bounded, Data, Typeable,
                                                    Generic)

instance FromText H264FramerateConversionAlgorithm where
    parser = takeLowerText >>= \case
        "duplicate_drop" -> pure HFCADuplicateDrop
        "interpolate" -> pure HFCAInterpolate
        e -> fromTextError $ "Failure parsing H264FramerateConversionAlgorithm from value: '" <> e
           <> "'. Accepted values: duplicate_drop, interpolate"

instance ToText H264FramerateConversionAlgorithm where
    toText = \case
        HFCADuplicateDrop -> "DUPLICATE_DROP"
        HFCAInterpolate -> "INTERPOLATE"

instance Hashable     H264FramerateConversionAlgorithm
instance NFData       H264FramerateConversionAlgorithm
instance ToByteString H264FramerateConversionAlgorithm
instance ToQuery      H264FramerateConversionAlgorithm
instance ToHeader     H264FramerateConversionAlgorithm

instance ToJSON H264FramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON H264FramerateConversionAlgorithm where
    parseJSON = parseJSONText "H264FramerateConversionAlgorithm"
