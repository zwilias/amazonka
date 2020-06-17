{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.HlsKeyProviderType (
  HlsKeyProviderType (
    ..
    , Speke
    , StaticKey
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates which type of key provider is used for encryption.
data HlsKeyProviderType = HlsKeyProviderType' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Speke :: HlsKeyProviderType
pattern Speke = HlsKeyProviderType' "SPEKE"

pattern StaticKey :: HlsKeyProviderType
pattern StaticKey = HlsKeyProviderType' "STATIC_KEY"

{-# COMPLETE
  Speke,
  StaticKey,
  HlsKeyProviderType' #-}

instance FromText HlsKeyProviderType where
    parser = (HlsKeyProviderType' . mk) <$> takeText

instance ToText HlsKeyProviderType where
    toText (HlsKeyProviderType' ci) = original ci

-- | Represents an enum of /known/ $HlsKeyProviderType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum HlsKeyProviderType where
    toEnum i = case i of
        0 -> Speke
        1 -> StaticKey
        _ -> (error . showText) $ "Unknown index for HlsKeyProviderType: " <> toText i
    fromEnum x = case x of
        Speke -> 0
        StaticKey -> 1
        HlsKeyProviderType' name -> (error . showText) $ "Unknown HlsKeyProviderType: " <> original name

-- | Represents the bounds of /known/ $HlsKeyProviderType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded HlsKeyProviderType where
    minBound = Speke
    maxBound = StaticKey

instance Hashable     HlsKeyProviderType
instance NFData       HlsKeyProviderType
instance ToByteString HlsKeyProviderType
instance ToQuery      HlsKeyProviderType
instance ToHeader     HlsKeyProviderType

instance ToJSON HlsKeyProviderType where
    toJSON = toJSONText

instance FromJSON HlsKeyProviderType where
    parseJSON = parseJSONText "HlsKeyProviderType"
