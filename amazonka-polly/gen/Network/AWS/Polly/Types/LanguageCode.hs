{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Polly.Types.LanguageCode (
  LanguageCode (
    ..
    , CyGb
    , DaDk
    , DeDe
    , EnAu
    , EnGb
    , EnGbWls
    , EnIn
    , EnUs
    , EsEs
    , EsUs
    , FrCa
    , FrFr
    , IsIs
    , ItIt
    , JaJp
    , KoKr
    , NbNo
    , NlNl
    , PlPl
    , PtBr
    , PtPt
    , RoRo
    , RuRu
    , SvSe
    , TrTr
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LanguageCode = LanguageCode' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern CyGb :: LanguageCode
pattern CyGb = LanguageCode' "cy-GB"

pattern DaDk :: LanguageCode
pattern DaDk = LanguageCode' "da-DK"

pattern DeDe :: LanguageCode
pattern DeDe = LanguageCode' "de-DE"

pattern EnAu :: LanguageCode
pattern EnAu = LanguageCode' "en-AU"

pattern EnGb :: LanguageCode
pattern EnGb = LanguageCode' "en-GB"

pattern EnGbWls :: LanguageCode
pattern EnGbWls = LanguageCode' "en-GB-WLS"

pattern EnIn :: LanguageCode
pattern EnIn = LanguageCode' "en-IN"

pattern EnUs :: LanguageCode
pattern EnUs = LanguageCode' "en-US"

pattern EsEs :: LanguageCode
pattern EsEs = LanguageCode' "es-ES"

pattern EsUs :: LanguageCode
pattern EsUs = LanguageCode' "es-US"

pattern FrCa :: LanguageCode
pattern FrCa = LanguageCode' "fr-CA"

pattern FrFr :: LanguageCode
pattern FrFr = LanguageCode' "fr-FR"

pattern IsIs :: LanguageCode
pattern IsIs = LanguageCode' "is-IS"

pattern ItIt :: LanguageCode
pattern ItIt = LanguageCode' "it-IT"

pattern JaJp :: LanguageCode
pattern JaJp = LanguageCode' "ja-JP"

pattern KoKr :: LanguageCode
pattern KoKr = LanguageCode' "ko-KR"

pattern NbNo :: LanguageCode
pattern NbNo = LanguageCode' "nb-NO"

pattern NlNl :: LanguageCode
pattern NlNl = LanguageCode' "nl-NL"

pattern PlPl :: LanguageCode
pattern PlPl = LanguageCode' "pl-PL"

pattern PtBr :: LanguageCode
pattern PtBr = LanguageCode' "pt-BR"

pattern PtPt :: LanguageCode
pattern PtPt = LanguageCode' "pt-PT"

pattern RoRo :: LanguageCode
pattern RoRo = LanguageCode' "ro-RO"

pattern RuRu :: LanguageCode
pattern RuRu = LanguageCode' "ru-RU"

pattern SvSe :: LanguageCode
pattern SvSe = LanguageCode' "sv-SE"

pattern TrTr :: LanguageCode
pattern TrTr = LanguageCode' "tr-TR"

{-# COMPLETE
  CyGb,
  DaDk,
  DeDe,
  EnAu,
  EnGb,
  EnGbWls,
  EnIn,
  EnUs,
  EsEs,
  EsUs,
  FrCa,
  FrFr,
  IsIs,
  ItIt,
  JaJp,
  KoKr,
  NbNo,
  NlNl,
  PlPl,
  PtBr,
  PtPt,
  RoRo,
  RuRu,
  SvSe,
  TrTr,
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
        0 -> CyGb
        1 -> DaDk
        2 -> DeDe
        3 -> EnAu
        4 -> EnGb
        5 -> EnGbWls
        6 -> EnIn
        7 -> EnUs
        8 -> EsEs
        9 -> EsUs
        10 -> FrCa
        11 -> FrFr
        12 -> IsIs
        13 -> ItIt
        14 -> JaJp
        15 -> KoKr
        16 -> NbNo
        17 -> NlNl
        18 -> PlPl
        19 -> PtBr
        20 -> PtPt
        21 -> RoRo
        22 -> RuRu
        23 -> SvSe
        24 -> TrTr
        _ -> (error . showText) $ "Unknown index for LanguageCode: " <> toText i
    fromEnum x = case x of
        CyGb -> 0
        DaDk -> 1
        DeDe -> 2
        EnAu -> 3
        EnGb -> 4
        EnGbWls -> 5
        EnIn -> 6
        EnUs -> 7
        EsEs -> 8
        EsUs -> 9
        FrCa -> 10
        FrFr -> 11
        IsIs -> 12
        ItIt -> 13
        JaJp -> 14
        KoKr -> 15
        NbNo -> 16
        NlNl -> 17
        PlPl -> 18
        PtBr -> 19
        PtPt -> 20
        RoRo -> 21
        RuRu -> 22
        SvSe -> 23
        TrTr -> 24
        LanguageCode' name -> (error . showText) $ "Unknown LanguageCode: " <> original name

-- | Represents the bounds of /known/ $LanguageCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LanguageCode where
    minBound = CyGb
    maxBound = TrTr

instance Hashable     LanguageCode
instance NFData       LanguageCode
instance ToByteString LanguageCode
instance ToQuery      LanguageCode
instance ToHeader     LanguageCode

instance ToJSON LanguageCode where
    toJSON = toJSONText

instance FromJSON LanguageCode where
    parseJSON = parseJSONText "LanguageCode"
