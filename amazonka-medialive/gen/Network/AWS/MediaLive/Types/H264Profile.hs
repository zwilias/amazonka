{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264Profile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264Profile where

import Network.AWS.Prelude
  
-- | Placeholder documentation for H264Profile
data H264Profile = Baseline
                 | High
                 | High10BIT
                 | High422
                 | High42210BIT
                 | Main
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText H264Profile where
    parser = takeLowerText >>= \case
        "baseline" -> pure Baseline
        "high" -> pure High
        "high_10bit" -> pure High10BIT
        "high_422" -> pure High422
        "high_422_10bit" -> pure High42210BIT
        "main" -> pure Main
        e -> fromTextError $ "Failure parsing H264Profile from value: '" <> e
           <> "'. Accepted values: baseline, high, high_10bit, high_422, high_422_10bit, main"

instance ToText H264Profile where
    toText = \case
        Baseline -> "BASELINE"
        High -> "HIGH"
        High10BIT -> "HIGH_10BIT"
        High422 -> "HIGH_422"
        High42210BIT -> "HIGH_422_10BIT"
        Main -> "MAIN"

instance Hashable     H264Profile
instance NFData       H264Profile
instance ToByteString H264Profile
instance ToQuery      H264Profile
instance ToHeader     H264Profile

instance ToJSON H264Profile where
    toJSON = toJSONText

instance FromJSON H264Profile where
    parseJSON = parseJSONText "H264Profile"
