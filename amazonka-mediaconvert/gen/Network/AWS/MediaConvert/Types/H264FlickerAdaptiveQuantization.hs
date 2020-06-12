{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
data H264FlickerAdaptiveQuantization = HFAQFDisabled
                                     | HFAQFEnabled
                                         deriving (Eq, Ord, Read, Show, Enum,
                                                   Bounded, Data, Typeable,
                                                   Generic)

instance FromText H264FlickerAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure HFAQFDisabled
        "enabled" -> pure HFAQFEnabled
        e -> fromTextError $ "Failure parsing H264FlickerAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H264FlickerAdaptiveQuantization where
    toText = \case
        HFAQFDisabled -> "DISABLED"
        HFAQFEnabled -> "ENABLED"

instance Hashable     H264FlickerAdaptiveQuantization
instance NFData       H264FlickerAdaptiveQuantization
instance ToByteString H264FlickerAdaptiveQuantization
instance ToQuery      H264FlickerAdaptiveQuantization
instance ToHeader     H264FlickerAdaptiveQuantization

instance ToJSON H264FlickerAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264FlickerAdaptiveQuantization where
    parseJSON = parseJSONText "H264FlickerAdaptiveQuantization"
