{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.ExtraParamName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53Domains.Types.ExtraParamName (
  ExtraParamName (
    ..
    , AuIdNumber
    , AuIdType
    , BirthCity
    , BirthCountry
    , BirthDateInYyyyMmDd
    , BirthDepartment
    , BrandNumber
    , CaBusinessEntityType
    , CaLegalType
    , DocumentNumber
    , DunsNumber
    , EsIdentification
    , EsIdentificationType
    , EsLegalForm
    , FiBusinessNumber
    , FiIdNumber
    , FiNationality
    , FiOrganizationType
    , ItPin
    , ItRegistrantEntityType
    , RuPassportData
    , SeIdNumber
    , SgIdNumber
    , UkCompanyNumber
    , UkContactType
    , VatNumber
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExtraParamName = ExtraParamName' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern AuIdNumber :: ExtraParamName
pattern AuIdNumber = ExtraParamName' "AU_ID_NUMBER"

pattern AuIdType :: ExtraParamName
pattern AuIdType = ExtraParamName' "AU_ID_TYPE"

pattern BirthCity :: ExtraParamName
pattern BirthCity = ExtraParamName' "BIRTH_CITY"

pattern BirthCountry :: ExtraParamName
pattern BirthCountry = ExtraParamName' "BIRTH_COUNTRY"

pattern BirthDateInYyyyMmDd :: ExtraParamName
pattern BirthDateInYyyyMmDd = ExtraParamName' "BIRTH_DATE_IN_YYYY_MM_DD"

pattern BirthDepartment :: ExtraParamName
pattern BirthDepartment = ExtraParamName' "BIRTH_DEPARTMENT"

pattern BrandNumber :: ExtraParamName
pattern BrandNumber = ExtraParamName' "BRAND_NUMBER"

pattern CaBusinessEntityType :: ExtraParamName
pattern CaBusinessEntityType = ExtraParamName' "CA_BUSINESS_ENTITY_TYPE"

pattern CaLegalType :: ExtraParamName
pattern CaLegalType = ExtraParamName' "CA_LEGAL_TYPE"

pattern DocumentNumber :: ExtraParamName
pattern DocumentNumber = ExtraParamName' "DOCUMENT_NUMBER"

pattern DunsNumber :: ExtraParamName
pattern DunsNumber = ExtraParamName' "DUNS_NUMBER"

pattern EsIdentification :: ExtraParamName
pattern EsIdentification = ExtraParamName' "ES_IDENTIFICATION"

pattern EsIdentificationType :: ExtraParamName
pattern EsIdentificationType = ExtraParamName' "ES_IDENTIFICATION_TYPE"

pattern EsLegalForm :: ExtraParamName
pattern EsLegalForm = ExtraParamName' "ES_LEGAL_FORM"

pattern FiBusinessNumber :: ExtraParamName
pattern FiBusinessNumber = ExtraParamName' "FI_BUSINESS_NUMBER"

pattern FiIdNumber :: ExtraParamName
pattern FiIdNumber = ExtraParamName' "FI_ID_NUMBER"

pattern FiNationality :: ExtraParamName
pattern FiNationality = ExtraParamName' "FI_NATIONALITY"

pattern FiOrganizationType :: ExtraParamName
pattern FiOrganizationType = ExtraParamName' "FI_ORGANIZATION_TYPE"

pattern ItPin :: ExtraParamName
pattern ItPin = ExtraParamName' "IT_PIN"

pattern ItRegistrantEntityType :: ExtraParamName
pattern ItRegistrantEntityType = ExtraParamName' "IT_REGISTRANT_ENTITY_TYPE"

pattern RuPassportData :: ExtraParamName
pattern RuPassportData = ExtraParamName' "RU_PASSPORT_DATA"

pattern SeIdNumber :: ExtraParamName
pattern SeIdNumber = ExtraParamName' "SE_ID_NUMBER"

pattern SgIdNumber :: ExtraParamName
pattern SgIdNumber = ExtraParamName' "SG_ID_NUMBER"

pattern UkCompanyNumber :: ExtraParamName
pattern UkCompanyNumber = ExtraParamName' "UK_COMPANY_NUMBER"

pattern UkContactType :: ExtraParamName
pattern UkContactType = ExtraParamName' "UK_CONTACT_TYPE"

pattern VatNumber :: ExtraParamName
pattern VatNumber = ExtraParamName' "VAT_NUMBER"

{-# COMPLETE
  AuIdNumber,
  AuIdType,
  BirthCity,
  BirthCountry,
  BirthDateInYyyyMmDd,
  BirthDepartment,
  BrandNumber,
  CaBusinessEntityType,
  CaLegalType,
  DocumentNumber,
  DunsNumber,
  EsIdentification,
  EsIdentificationType,
  EsLegalForm,
  FiBusinessNumber,
  FiIdNumber,
  FiNationality,
  FiOrganizationType,
  ItPin,
  ItRegistrantEntityType,
  RuPassportData,
  SeIdNumber,
  SgIdNumber,
  UkCompanyNumber,
  UkContactType,
  VatNumber,
  ExtraParamName' #-}

instance FromText ExtraParamName where
    parser = (ExtraParamName' . mk) <$> takeText

instance ToText ExtraParamName where
    toText (ExtraParamName' ci) = original ci

-- | Represents an enum of /known/ $ExtraParamName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ExtraParamName where
    toEnum i = case i of
        0 -> AuIdNumber
        1 -> AuIdType
        2 -> BirthCity
        3 -> BirthCountry
        4 -> BirthDateInYyyyMmDd
        5 -> BirthDepartment
        6 -> BrandNumber
        7 -> CaBusinessEntityType
        8 -> CaLegalType
        9 -> DocumentNumber
        10 -> DunsNumber
        11 -> EsIdentification
        12 -> EsIdentificationType
        13 -> EsLegalForm
        14 -> FiBusinessNumber
        15 -> FiIdNumber
        16 -> FiNationality
        17 -> FiOrganizationType
        18 -> ItPin
        19 -> ItRegistrantEntityType
        20 -> RuPassportData
        21 -> SeIdNumber
        22 -> SgIdNumber
        23 -> UkCompanyNumber
        24 -> UkContactType
        25 -> VatNumber
        _ -> (error . showText) $ "Unknown index for ExtraParamName: " <> toText i
    fromEnum x = case x of
        AuIdNumber -> 0
        AuIdType -> 1
        BirthCity -> 2
        BirthCountry -> 3
        BirthDateInYyyyMmDd -> 4
        BirthDepartment -> 5
        BrandNumber -> 6
        CaBusinessEntityType -> 7
        CaLegalType -> 8
        DocumentNumber -> 9
        DunsNumber -> 10
        EsIdentification -> 11
        EsIdentificationType -> 12
        EsLegalForm -> 13
        FiBusinessNumber -> 14
        FiIdNumber -> 15
        FiNationality -> 16
        FiOrganizationType -> 17
        ItPin -> 18
        ItRegistrantEntityType -> 19
        RuPassportData -> 20
        SeIdNumber -> 21
        SgIdNumber -> 22
        UkCompanyNumber -> 23
        UkContactType -> 24
        VatNumber -> 25
        ExtraParamName' name -> (error . showText) $ "Unknown ExtraParamName: " <> original name

-- | Represents the bounds of /known/ $ExtraParamName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ExtraParamName where
    minBound = AuIdNumber
    maxBound = VatNumber

instance Hashable     ExtraParamName
instance NFData       ExtraParamName
instance ToByteString ExtraParamName
instance ToQuery      ExtraParamName
instance ToHeader     ExtraParamName

instance ToJSON ExtraParamName where
    toJSON = toJSONText

instance FromJSON ExtraParamName where
    parseJSON = parseJSONText "ExtraParamName"
