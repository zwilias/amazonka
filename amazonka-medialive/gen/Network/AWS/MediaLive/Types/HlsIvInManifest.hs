{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsIvInManifest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.HlsIvInManifest where

import Network.AWS.Prelude
  
-- | Placeholder documentation for HlsIvInManifest
data HlsIvInManifest = Exclude
                     | Include
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText HlsIvInManifest where
    parser = takeLowerText >>= \case
        "exclude" -> pure Exclude
        "include" -> pure Include
        e -> fromTextError $ "Failure parsing HlsIvInManifest from value: '" <> e
           <> "'. Accepted values: exclude, include"

instance ToText HlsIvInManifest where
    toText = \case
        Exclude -> "EXCLUDE"
        Include -> "INCLUDE"

instance Hashable     HlsIvInManifest
instance NFData       HlsIvInManifest
instance ToByteString HlsIvInManifest
instance ToQuery      HlsIvInManifest
instance ToHeader     HlsIvInManifest

instance ToJSON HlsIvInManifest where
    toJSON = toJSONText

instance FromJSON HlsIvInManifest where
    parseJSON = parseJSONText "HlsIvInManifest"
