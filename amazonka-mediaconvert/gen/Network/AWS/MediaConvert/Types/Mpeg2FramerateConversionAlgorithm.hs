{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm where

import Network.AWS.Prelude
  
-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
data Mpeg2FramerateConversionAlgorithm = MFCADuplicateDrop
                                       | MFCAInterpolate
                                           deriving (Eq, Ord, Read, Show, Enum,
                                                     Bounded, Data, Typeable,
                                                     Generic)

instance FromText Mpeg2FramerateConversionAlgorithm where
    parser = takeLowerText >>= \case
        "duplicate_drop" -> pure MFCADuplicateDrop
        "interpolate" -> pure MFCAInterpolate
        e -> fromTextError $ "Failure parsing Mpeg2FramerateConversionAlgorithm from value: '" <> e
           <> "'. Accepted values: duplicate_drop, interpolate"

instance ToText Mpeg2FramerateConversionAlgorithm where
    toText = \case
        MFCADuplicateDrop -> "DUPLICATE_DROP"
        MFCAInterpolate -> "INTERPOLATE"

instance Hashable     Mpeg2FramerateConversionAlgorithm
instance NFData       Mpeg2FramerateConversionAlgorithm
instance ToByteString Mpeg2FramerateConversionAlgorithm
instance ToQuery      Mpeg2FramerateConversionAlgorithm
instance ToHeader     Mpeg2FramerateConversionAlgorithm

instance ToJSON Mpeg2FramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON Mpeg2FramerateConversionAlgorithm where
    parseJSON = parseJSONText "Mpeg2FramerateConversionAlgorithm"
