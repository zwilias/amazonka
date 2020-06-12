{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.LanguageCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Polly.Types.LanguageCode where

import Network.AWS.Prelude
  
data LanguageCode = CyGb
                  | DaDk
                  | DeDe
                  | EnAu
                  | EnGb
                  | EnGbWls
                  | EnIn
                  | EnUs
                  | EsEs
                  | EsUs
                  | FrCa
                  | FrFr
                  | IsIs
                  | ItIt
                  | JaJp
                  | KoKr
                  | NbNo
                  | NlNl
                  | PlPl
                  | PtBr
                  | PtPt
                  | RoRo
                  | RuRu
                  | SvSe
                  | TrTr
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText LanguageCode where
    parser = takeLowerText >>= \case
        "cy-gb" -> pure CyGb
        "da-dk" -> pure DaDk
        "de-de" -> pure DeDe
        "en-au" -> pure EnAu
        "en-gb" -> pure EnGb
        "en-gb-wls" -> pure EnGbWls
        "en-in" -> pure EnIn
        "en-us" -> pure EnUs
        "es-es" -> pure EsEs
        "es-us" -> pure EsUs
        "fr-ca" -> pure FrCa
        "fr-fr" -> pure FrFr
        "is-is" -> pure IsIs
        "it-it" -> pure ItIt
        "ja-jp" -> pure JaJp
        "ko-kr" -> pure KoKr
        "nb-no" -> pure NbNo
        "nl-nl" -> pure NlNl
        "pl-pl" -> pure PlPl
        "pt-br" -> pure PtBr
        "pt-pt" -> pure PtPt
        "ro-ro" -> pure RoRo
        "ru-ru" -> pure RuRu
        "sv-se" -> pure SvSe
        "tr-tr" -> pure TrTr
        e -> fromTextError $ "Failure parsing LanguageCode from value: '" <> e
           <> "'. Accepted values: cy-gb, da-dk, de-de, en-au, en-gb, en-gb-wls, en-in, en-us, es-es, es-us, fr-ca, fr-fr, is-is, it-it, ja-jp, ko-kr, nb-no, nl-nl, pl-pl, pt-br, pt-pt, ro-ro, ru-ru, sv-se, tr-tr"

instance ToText LanguageCode where
    toText = \case
        CyGb -> "cy-GB"
        DaDk -> "da-DK"
        DeDe -> "de-DE"
        EnAu -> "en-AU"
        EnGb -> "en-GB"
        EnGbWls -> "en-GB-WLS"
        EnIn -> "en-IN"
        EnUs -> "en-US"
        EsEs -> "es-ES"
        EsUs -> "es-US"
        FrCa -> "fr-CA"
        FrFr -> "fr-FR"
        IsIs -> "is-IS"
        ItIt -> "it-IT"
        JaJp -> "ja-JP"
        KoKr -> "ko-KR"
        NbNo -> "nb-NO"
        NlNl -> "nl-NL"
        PlPl -> "pl-PL"
        PtBr -> "pt-BR"
        PtPt -> "pt-PT"
        RoRo -> "ro-RO"
        RuRu -> "ru-RU"
        SvSe -> "sv-SE"
        TrTr -> "tr-TR"

instance Hashable     LanguageCode
instance NFData       LanguageCode
instance ToByteString LanguageCode
instance ToQuery      LanguageCode
instance ToHeader     LanguageCode

instance ToJSON LanguageCode where
    toJSON = toJSONText

instance FromJSON LanguageCode where
    parseJSON = parseJSONText "LanguageCode"
