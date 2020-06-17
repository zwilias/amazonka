{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm (
  H265FramerateConversionAlgorithm (
    ..
    , DuplicateDrop
    , Interpolate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to INTERPOLATE, produces smoother motion during framerate conversion.
data H265FramerateConversionAlgorithm = H265FramerateConversionAlgorithm' (CI
                                                                             Text)
                                          deriving (Eq, Ord, Read, Show, Data,
                                                    Typeable, Generic)

pattern DuplicateDrop :: H265FramerateConversionAlgorithm
pattern DuplicateDrop = H265FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern Interpolate :: H265FramerateConversionAlgorithm
pattern Interpolate = H265FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  DuplicateDrop,
  Interpolate,
  H265FramerateConversionAlgorithm' #-}

instance FromText H265FramerateConversionAlgorithm where
    parser = (H265FramerateConversionAlgorithm' . mk) <$> takeText

instance ToText H265FramerateConversionAlgorithm where
    toText (H265FramerateConversionAlgorithm' ci) = original ci

-- | Represents an enum of /known/ $H265FramerateConversionAlgorithm.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H265FramerateConversionAlgorithm where
    toEnum i = case i of
        0 -> DuplicateDrop
        1 -> Interpolate
        _ -> (error . showText) $ "Unknown index for H265FramerateConversionAlgorithm: " <> toText i
    fromEnum x = case x of
        DuplicateDrop -> 0
        Interpolate -> 1
        H265FramerateConversionAlgorithm' name -> (error . showText) $ "Unknown H265FramerateConversionAlgorithm: " <> original name

-- | Represents the bounds of /known/ $H265FramerateConversionAlgorithm.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H265FramerateConversionAlgorithm where
    minBound = DuplicateDrop
    maxBound = Interpolate

instance Hashable     H265FramerateConversionAlgorithm
instance NFData       H265FramerateConversionAlgorithm
instance ToByteString H265FramerateConversionAlgorithm
instance ToQuery      H265FramerateConversionAlgorithm
instance ToHeader     H265FramerateConversionAlgorithm

instance ToJSON H265FramerateConversionAlgorithm where
    toJSON = toJSONText

instance FromJSON H265FramerateConversionAlgorithm where
    parseJSON = parseJSONText "H265FramerateConversionAlgorithm"
