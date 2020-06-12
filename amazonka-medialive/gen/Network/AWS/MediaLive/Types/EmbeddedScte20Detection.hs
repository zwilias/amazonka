{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EmbeddedScte20Detection
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.EmbeddedScte20Detection where

import Network.AWS.Prelude
  
-- | Placeholder documentation for EmbeddedScte20Detection
data EmbeddedScte20Detection = Auto
                             | Off
                                 deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                           Data, Typeable, Generic)

instance FromText EmbeddedScte20Detection where
    parser = takeLowerText >>= \case
        "auto" -> pure Auto
        "off" -> pure Off
        e -> fromTextError $ "Failure parsing EmbeddedScte20Detection from value: '" <> e
           <> "'. Accepted values: auto, off"

instance ToText EmbeddedScte20Detection where
    toText = \case
        Auto -> "AUTO"
        Off -> "OFF"

instance Hashable     EmbeddedScte20Detection
instance NFData       EmbeddedScte20Detection
instance ToByteString EmbeddedScte20Detection
instance ToQuery      EmbeddedScte20Detection
instance ToHeader     EmbeddedScte20Detection

instance ToJSON EmbeddedScte20Detection where
    toJSON = toJSONText

instance FromJSON EmbeddedScte20Detection where
    parseJSON = parseJSONText "EmbeddedScte20Detection"
