{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264TemporalAdaptiveQuantization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264TemporalAdaptiveQuantization where

import Network.AWS.Prelude
  
-- | Adjust quantization within each frame based on temporal variation of content complexity.
data H264TemporalAdaptiveQuantization = H26Disabled
                                      | H26Enabled
                                          deriving (Eq, Ord, Read, Show, Enum,
                                                    Bounded, Data, Typeable,
                                                    Generic)

instance FromText H264TemporalAdaptiveQuantization where
    parser = takeLowerText >>= \case
        "disabled" -> pure H26Disabled
        "enabled" -> pure H26Enabled
        e -> fromTextError $ "Failure parsing H264TemporalAdaptiveQuantization from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H264TemporalAdaptiveQuantization where
    toText = \case
        H26Disabled -> "DISABLED"
        H26Enabled -> "ENABLED"

instance Hashable     H264TemporalAdaptiveQuantization
instance NFData       H264TemporalAdaptiveQuantization
instance ToByteString H264TemporalAdaptiveQuantization
instance ToQuery      H264TemporalAdaptiveQuantization
instance ToHeader     H264TemporalAdaptiveQuantization

instance ToJSON H264TemporalAdaptiveQuantization where
    toJSON = toJSONText

instance FromJSON H264TemporalAdaptiveQuantization where
    parseJSON = parseJSONText "H264TemporalAdaptiveQuantization"
