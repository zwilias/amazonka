{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265SlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265SlowPal where

import Network.AWS.Prelude
  
-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
data H265SlowPal = HSPDisabled
                 | HSPEnabled
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText H265SlowPal where
    parser = takeLowerText >>= \case
        "disabled" -> pure HSPDisabled
        "enabled" -> pure HSPEnabled
        e -> fromTextError $ "Failure parsing H265SlowPal from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText H265SlowPal where
    toText = \case
        HSPDisabled -> "DISABLED"
        HSPEnabled -> "ENABLED"

instance Hashable     H265SlowPal
instance NFData       H265SlowPal
instance ToByteString H265SlowPal
instance ToQuery      H265SlowPal
instance ToHeader     H265SlowPal

instance ToJSON H265SlowPal where
    toJSON = toJSONText

instance FromJSON H265SlowPal where
    parseJSON = parseJSONText "H265SlowPal"
