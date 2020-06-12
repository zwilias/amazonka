{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
data H265FlickerAdaptiveQuantization = HFAQDisabled
                                     | HFAQEnabled
                                         deriving (Eq, Ord, Read, Show, Enum,
                                                   Bounded, Data, Typeable,
                                                   Generic)

instance FromText H265FlickerAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure HFAQDisabled
        "enabled" -> pure HFAQEnabled
        e -> fromTextError $ "Failure parsing H265FlickerAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H265FlickerAdaptiveQuantization where
    toText = \case
        HFAQDisabled -> "DISABLED"
        HFAQEnabled -> "ENABLED"

instance Hashable     H265FlickerAdaptiveQuantization
instance NFData       H265FlickerAdaptiveQuantization
instance ToByteString H265FlickerAdaptiveQuantization
instance ToQuery      H265FlickerAdaptiveQuantization
instance ToHeader     H265FlickerAdaptiveQuantization

instance ToJSON H265FlickerAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H265FlickerAdaptiveQuantization where
    parseJSON = parseJSONText "H265FlickerAdaptiveQuantization"
