{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.LanguageCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Transcribe.Types.LanguageCode (
  LanguageCode (
    ..
    , EnUs
    , EsUs
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LanguageCode = LanguageCode' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern EnUs :: LanguageCode
pattern EnUs = LanguageCode' "en-US"

pattern EsUs :: LanguageCode
pattern EsUs = LanguageCode' "es-US"

{-# COMPLETE
  EnUs,
  EsUs,
  LanguageCode' #-}

instance FromText LanguageCode where
    parser = (LanguageCode' . mk) <$> takeText

instance ToText LanguageCode where
    toText (LanguageCode' ci) = original ci

-- | Represents an enum of /known/ $LanguageCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum LanguageCode where
    toEnum i = case i of
        0 -> EnUs
        1 -> EsUs
        _ -> (error . showText) $ "Unknown index for LanguageCode: " <> toText i
    fromEnum x = case x of
        EnUs -> 0
        EsUs -> 1
        LanguageCode' name -> (error . showText) $ "Unknown LanguageCode: " <> original name

-- | Represents the bounds of /known/ $LanguageCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LanguageCode where
    minBound = EnUs
    maxBound = EsUs

instance Hashable     LanguageCode
instance NFData       LanguageCode
instance ToByteString LanguageCode
instance ToQuery      LanguageCode
instance ToHeader     LanguageCode

instance ToJSON LanguageCode where
    toJSON = toJSONText

instance FromJSON LanguageCode where
    parseJSON = parseJSONText "LanguageCode"
