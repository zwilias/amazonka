{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265AdaptiveQuantization (
  H265AdaptiveQuantization (
    ..
    , High
    , Higher
    , Low
    , Max
    , Medium
    , Off
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
data H265AdaptiveQuantization = H265AdaptiveQuantization' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern High :: H265AdaptiveQuantization
pattern High = H265AdaptiveQuantization' "HIGH"

pattern Higher :: H265AdaptiveQuantization
pattern Higher = H265AdaptiveQuantization' "HIGHER"

pattern Low :: H265AdaptiveQuantization
pattern Low = H265AdaptiveQuantization' "LOW"

pattern Max :: H265AdaptiveQuantization
pattern Max = H265AdaptiveQuantization' "MAX"

pattern Medium :: H265AdaptiveQuantization
pattern Medium = H265AdaptiveQuantization' "MEDIUM"

pattern Off :: H265AdaptiveQuantization
pattern Off = H265AdaptiveQuantization' "OFF"

{-# COMPLETE
  High,
  Higher,
  Low,
  Max,
  Medium,
  Off,
  H265AdaptiveQuantization' #-}

instance FromText H265AdaptiveQuantization where
    parser = (H265AdaptiveQuantization' . mk) <$> takeText

instance ToText H265AdaptiveQuantization where
    toText (H265AdaptiveQuantization' ci) = original ci

-- | Represents an enum of /known/ $H265AdaptiveQuantization.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H265AdaptiveQuantization where
    toEnum i = case i of
        0 -> High
        1 -> Higher
        2 -> Low
        3 -> Max
        4 -> Medium
        5 -> Off
        _ -> (error . showText) $ "Unknown index for H265AdaptiveQuantization: " <> toText i
    fromEnum x = case x of
        High -> 0
        Higher -> 1
        Low -> 2
        Max -> 3
        Medium -> 4
        Off -> 5
        H265AdaptiveQuantization' name -> (error . showText) $ "Unknown H265AdaptiveQuantization: " <> original name

-- | Represents the bounds of /known/ $H265AdaptiveQuantization.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H265AdaptiveQuantization where
    minBound = High
    maxBound = Off

instance Hashable     H265AdaptiveQuantization
instance NFData       H265AdaptiveQuantization
instance ToByteString H265AdaptiveQuantization
instance ToQuery      H265AdaptiveQuantization
instance ToHeader     H265AdaptiveQuantization

instance ToJSON H265AdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H265AdaptiveQuantization where
    parseJSON = parseJSONText "H265AdaptiveQuantization"
