{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsKeyProviderType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsKeyProviderType where

import Network.AWS.Prelude
  
-- | Indicates which type of key provider is used for encryption.
data HlsKeyProviderType = Speke
                        | StaticKey
                            deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                      Typeable, Generic)

instance FromText HlsKeyProviderType where
    parser = takeLowerText >>= \case
        "speke" -> pure Speke
        "static_key" -> pure StaticKey
        e -> fromTextError $ "Failure parsing HlsKeyProviderType from value: '" <> e
           <> "'. Accepted values: speke, static_key"

instance ToText HlsKeyProviderType where
    toText = \case
        Speke -> "SPEKE"
        StaticKey -> "STATIC_KEY"

instance Hashable     HlsKeyProviderType
instance NFData       HlsKeyProviderType
instance ToByteString HlsKeyProviderType
instance ToQuery      HlsKeyProviderType
instance ToHeader     HlsKeyProviderType

instance ToJSON HlsKeyProviderType where
    toJSON = toJSONText

instance FromJSON HlsKeyProviderType where
    parseJSON = parseJSONText "HlsKeyProviderType"
