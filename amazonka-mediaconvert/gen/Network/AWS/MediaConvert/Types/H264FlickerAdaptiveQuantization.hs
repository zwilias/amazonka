{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization (
  H264FlickerAdaptiveQuantization (
    ..
    , HFAQFDisabled
    , HFAQFEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
data H264FlickerAdaptiveQuantization = H264FlickerAdaptiveQuantization' (CI
                                                                           Text)
                                         deriving (Eq, Ord, Read, Show, Data,
                                                   Typeable, Generic)

pattern HFAQFDisabled :: H264FlickerAdaptiveQuantization
pattern HFAQFDisabled = H264FlickerAdaptiveQuantization' "DISABLED"

pattern HFAQFEnabled :: H264FlickerAdaptiveQuantization
pattern HFAQFEnabled = H264FlickerAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  HFAQFDisabled,
  HFAQFEnabled,
  H264FlickerAdaptiveQuantization' #-}

instance FromText H264FlickerAdaptiveQuantization where
    parser = (H264FlickerAdaptiveQuantization' . mk) <$> takeText

instance ToText H264FlickerAdaptiveQuantization where
    toText (H264FlickerAdaptiveQuantization' ci) = original ci

-- | Represents an enum of /known/ $H264FlickerAdaptiveQuantization.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264FlickerAdaptiveQuantization where
    toEnum i = case i of
        0 -> HFAQFDisabled
        1 -> HFAQFEnabled
        _ -> (error . showText) $ "Unknown index for H264FlickerAdaptiveQuantization: " <> toText i
    fromEnum x = case x of
        HFAQFDisabled -> 0
        HFAQFEnabled -> 1
        H264FlickerAdaptiveQuantization' name -> (error . showText) $ "Unknown H264FlickerAdaptiveQuantization: " <> original name

-- | Represents the bounds of /known/ $H264FlickerAdaptiveQuantization.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264FlickerAdaptiveQuantization where
    minBound = HFAQFDisabled
    maxBound = HFAQFEnabled

instance Hashable     H264FlickerAdaptiveQuantization
instance NFData       H264FlickerAdaptiveQuantization
instance ToByteString H264FlickerAdaptiveQuantization
instance ToQuery      H264FlickerAdaptiveQuantization
instance ToHeader     H264FlickerAdaptiveQuantization

instance ToJSON H264FlickerAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264FlickerAdaptiveQuantization where
    parseJSON = parseJSONText "H264FlickerAdaptiveQuantization"
