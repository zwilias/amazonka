{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264SlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264SlowPal where

import Network.AWS.Prelude
  
-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
data H264SlowPal = HSPSDisabled
                 | HSPSEnabled
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText H264SlowPal where
    parser = takeLowerText >>= \case
        "disabled" -> pure HSPSDisabled
        "enabled" -> pure HSPSEnabled
        e -> fromTextError $ "Failure parsing H264SlowPal from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H264SlowPal where
    toText = \case
        HSPSDisabled -> "DISABLED"
        HSPSEnabled -> "ENABLED"

instance Hashable     H264SlowPal
instance NFData       H264SlowPal
instance ToByteString H264SlowPal
instance ToQuery      H264SlowPal
instance ToHeader     H264SlowPal

instance ToJSON H264SlowPal where
    toJSON = toJSONText

instance FromJSON H264SlowPal where
    parseJSON = parseJSONText "H264SlowPal"
