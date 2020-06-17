{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProductionVariantInstanceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.ProductionVariantInstanceType (
  ProductionVariantInstanceType (
    ..
    , PVITMl_C4_2XLarge
    , PVITMl_C4_4XLarge
    , PVITMl_C4_8XLarge
    , PVITMl_C4_Large
    , PVITMl_C4_XLarge
    , PVITMl_C5_18XLarge
    , PVITMl_C5_2XLarge
    , PVITMl_C5_4XLarge
    , PVITMl_C5_9XLarge
    , PVITMl_C5_Large
    , PVITMl_C5_XLarge
    , PVITMl_M4_10XLarge
    , PVITMl_M4_16XLarge
    , PVITMl_M4_2XLarge
    , PVITMl_M4_4XLarge
    , PVITMl_M4_XLarge
    , PVITMl_M5_12XLarge
    , PVITMl_M5_24XLarge
    , PVITMl_M5_2XLarge
    , PVITMl_M5_4XLarge
    , PVITMl_M5_Large
    , PVITMl_M5_XLarge
    , PVITMl_P2_16XLarge
    , PVITMl_P2_8XLarge
    , PVITMl_P2_XLarge
    , PVITMl_P3_16XLarge
    , PVITMl_P3_2XLarge
    , PVITMl_P3_8XLarge
    , PVITMl_T2_2XLarge
    , PVITMl_T2_Large
    , PVITMl_T2_Medium
    , PVITMl_T2_XLarge
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProductionVariantInstanceType = ProductionVariantInstanceType' (CI
                                                                       Text)
                                       deriving (Eq, Ord, Read, Show, Data,
                                                 Typeable, Generic)

pattern PVITMl_C4_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_C4_2XLarge = ProductionVariantInstanceType' "ml.c4.2xlarge"

pattern PVITMl_C4_4XLarge :: ProductionVariantInstanceType
pattern PVITMl_C4_4XLarge = ProductionVariantInstanceType' "ml.c4.4xlarge"

pattern PVITMl_C4_8XLarge :: ProductionVariantInstanceType
pattern PVITMl_C4_8XLarge = ProductionVariantInstanceType' "ml.c4.8xlarge"

pattern PVITMl_C4_Large :: ProductionVariantInstanceType
pattern PVITMl_C4_Large = ProductionVariantInstanceType' "ml.c4.large"

pattern PVITMl_C4_XLarge :: ProductionVariantInstanceType
pattern PVITMl_C4_XLarge = ProductionVariantInstanceType' "ml.c4.xlarge"

pattern PVITMl_C5_18XLarge :: ProductionVariantInstanceType
pattern PVITMl_C5_18XLarge = ProductionVariantInstanceType' "ml.c5.18xlarge"

pattern PVITMl_C5_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_C5_2XLarge = ProductionVariantInstanceType' "ml.c5.2xlarge"

pattern PVITMl_C5_4XLarge :: ProductionVariantInstanceType
pattern PVITMl_C5_4XLarge = ProductionVariantInstanceType' "ml.c5.4xlarge"

pattern PVITMl_C5_9XLarge :: ProductionVariantInstanceType
pattern PVITMl_C5_9XLarge = ProductionVariantInstanceType' "ml.c5.9xlarge"

pattern PVITMl_C5_Large :: ProductionVariantInstanceType
pattern PVITMl_C5_Large = ProductionVariantInstanceType' "ml.c5.large"

pattern PVITMl_C5_XLarge :: ProductionVariantInstanceType
pattern PVITMl_C5_XLarge = ProductionVariantInstanceType' "ml.c5.xlarge"

pattern PVITMl_M4_10XLarge :: ProductionVariantInstanceType
pattern PVITMl_M4_10XLarge = ProductionVariantInstanceType' "ml.m4.10xlarge"

pattern PVITMl_M4_16XLarge :: ProductionVariantInstanceType
pattern PVITMl_M4_16XLarge = ProductionVariantInstanceType' "ml.m4.16xlarge"

pattern PVITMl_M4_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_M4_2XLarge = ProductionVariantInstanceType' "ml.m4.2xlarge"

pattern PVITMl_M4_4XLarge :: ProductionVariantInstanceType
pattern PVITMl_M4_4XLarge = ProductionVariantInstanceType' "ml.m4.4xlarge"

pattern PVITMl_M4_XLarge :: ProductionVariantInstanceType
pattern PVITMl_M4_XLarge = ProductionVariantInstanceType' "ml.m4.xlarge"

pattern PVITMl_M5_12XLarge :: ProductionVariantInstanceType
pattern PVITMl_M5_12XLarge = ProductionVariantInstanceType' "ml.m5.12xlarge"

pattern PVITMl_M5_24XLarge :: ProductionVariantInstanceType
pattern PVITMl_M5_24XLarge = ProductionVariantInstanceType' "ml.m5.24xlarge"

pattern PVITMl_M5_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_M5_2XLarge = ProductionVariantInstanceType' "ml.m5.2xlarge"

pattern PVITMl_M5_4XLarge :: ProductionVariantInstanceType
pattern PVITMl_M5_4XLarge = ProductionVariantInstanceType' "ml.m5.4xlarge"

pattern PVITMl_M5_Large :: ProductionVariantInstanceType
pattern PVITMl_M5_Large = ProductionVariantInstanceType' "ml.m5.large"

pattern PVITMl_M5_XLarge :: ProductionVariantInstanceType
pattern PVITMl_M5_XLarge = ProductionVariantInstanceType' "ml.m5.xlarge"

pattern PVITMl_P2_16XLarge :: ProductionVariantInstanceType
pattern PVITMl_P2_16XLarge = ProductionVariantInstanceType' "ml.p2.16xlarge"

pattern PVITMl_P2_8XLarge :: ProductionVariantInstanceType
pattern PVITMl_P2_8XLarge = ProductionVariantInstanceType' "ml.p2.8xlarge"

pattern PVITMl_P2_XLarge :: ProductionVariantInstanceType
pattern PVITMl_P2_XLarge = ProductionVariantInstanceType' "ml.p2.xlarge"

pattern PVITMl_P3_16XLarge :: ProductionVariantInstanceType
pattern PVITMl_P3_16XLarge = ProductionVariantInstanceType' "ml.p3.16xlarge"

pattern PVITMl_P3_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_P3_2XLarge = ProductionVariantInstanceType' "ml.p3.2xlarge"

pattern PVITMl_P3_8XLarge :: ProductionVariantInstanceType
pattern PVITMl_P3_8XLarge = ProductionVariantInstanceType' "ml.p3.8xlarge"

pattern PVITMl_T2_2XLarge :: ProductionVariantInstanceType
pattern PVITMl_T2_2XLarge = ProductionVariantInstanceType' "ml.t2.2xlarge"

pattern PVITMl_T2_Large :: ProductionVariantInstanceType
pattern PVITMl_T2_Large = ProductionVariantInstanceType' "ml.t2.large"

pattern PVITMl_T2_Medium :: ProductionVariantInstanceType
pattern PVITMl_T2_Medium = ProductionVariantInstanceType' "ml.t2.medium"

pattern PVITMl_T2_XLarge :: ProductionVariantInstanceType
pattern PVITMl_T2_XLarge = ProductionVariantInstanceType' "ml.t2.xlarge"

{-# COMPLETE
  PVITMl_C4_2XLarge,
  PVITMl_C4_4XLarge,
  PVITMl_C4_8XLarge,
  PVITMl_C4_Large,
  PVITMl_C4_XLarge,
  PVITMl_C5_18XLarge,
  PVITMl_C5_2XLarge,
  PVITMl_C5_4XLarge,
  PVITMl_C5_9XLarge,
  PVITMl_C5_Large,
  PVITMl_C5_XLarge,
  PVITMl_M4_10XLarge,
  PVITMl_M4_16XLarge,
  PVITMl_M4_2XLarge,
  PVITMl_M4_4XLarge,
  PVITMl_M4_XLarge,
  PVITMl_M5_12XLarge,
  PVITMl_M5_24XLarge,
  PVITMl_M5_2XLarge,
  PVITMl_M5_4XLarge,
  PVITMl_M5_Large,
  PVITMl_M5_XLarge,
  PVITMl_P2_16XLarge,
  PVITMl_P2_8XLarge,
  PVITMl_P2_XLarge,
  PVITMl_P3_16XLarge,
  PVITMl_P3_2XLarge,
  PVITMl_P3_8XLarge,
  PVITMl_T2_2XLarge,
  PVITMl_T2_Large,
  PVITMl_T2_Medium,
  PVITMl_T2_XLarge,
  ProductionVariantInstanceType' #-}

instance FromText ProductionVariantInstanceType where
    parser = (ProductionVariantInstanceType' . mk) <$> takeText

instance ToText ProductionVariantInstanceType where
    toText (ProductionVariantInstanceType' ci) = original ci

-- | Represents an enum of /known/ $ProductionVariantInstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ProductionVariantInstanceType where
    toEnum i = case i of
        0 -> PVITMl_C4_2XLarge
        1 -> PVITMl_C4_4XLarge
        2 -> PVITMl_C4_8XLarge
        3 -> PVITMl_C4_Large
        4 -> PVITMl_C4_XLarge
        5 -> PVITMl_C5_18XLarge
        6 -> PVITMl_C5_2XLarge
        7 -> PVITMl_C5_4XLarge
        8 -> PVITMl_C5_9XLarge
        9 -> PVITMl_C5_Large
        10 -> PVITMl_C5_XLarge
        11 -> PVITMl_M4_10XLarge
        12 -> PVITMl_M4_16XLarge
        13 -> PVITMl_M4_2XLarge
        14 -> PVITMl_M4_4XLarge
        15 -> PVITMl_M4_XLarge
        16 -> PVITMl_M5_12XLarge
        17 -> PVITMl_M5_24XLarge
        18 -> PVITMl_M5_2XLarge
        19 -> PVITMl_M5_4XLarge
        20 -> PVITMl_M5_Large
        21 -> PVITMl_M5_XLarge
        22 -> PVITMl_P2_16XLarge
        23 -> PVITMl_P2_8XLarge
        24 -> PVITMl_P2_XLarge
        25 -> PVITMl_P3_16XLarge
        26 -> PVITMl_P3_2XLarge
        27 -> PVITMl_P3_8XLarge
        28 -> PVITMl_T2_2XLarge
        29 -> PVITMl_T2_Large
        30 -> PVITMl_T2_Medium
        31 -> PVITMl_T2_XLarge
        _ -> (error . showText) $ "Unknown index for ProductionVariantInstanceType: " <> toText i
    fromEnum x = case x of
        PVITMl_C4_2XLarge -> 0
        PVITMl_C4_4XLarge -> 1
        PVITMl_C4_8XLarge -> 2
        PVITMl_C4_Large -> 3
        PVITMl_C4_XLarge -> 4
        PVITMl_C5_18XLarge -> 5
        PVITMl_C5_2XLarge -> 6
        PVITMl_C5_4XLarge -> 7
        PVITMl_C5_9XLarge -> 8
        PVITMl_C5_Large -> 9
        PVITMl_C5_XLarge -> 10
        PVITMl_M4_10XLarge -> 11
        PVITMl_M4_16XLarge -> 12
        PVITMl_M4_2XLarge -> 13
        PVITMl_M4_4XLarge -> 14
        PVITMl_M4_XLarge -> 15
        PVITMl_M5_12XLarge -> 16
        PVITMl_M5_24XLarge -> 17
        PVITMl_M5_2XLarge -> 18
        PVITMl_M5_4XLarge -> 19
        PVITMl_M5_Large -> 20
        PVITMl_M5_XLarge -> 21
        PVITMl_P2_16XLarge -> 22
        PVITMl_P2_8XLarge -> 23
        PVITMl_P2_XLarge -> 24
        PVITMl_P3_16XLarge -> 25
        PVITMl_P3_2XLarge -> 26
        PVITMl_P3_8XLarge -> 27
        PVITMl_T2_2XLarge -> 28
        PVITMl_T2_Large -> 29
        PVITMl_T2_Medium -> 30
        PVITMl_T2_XLarge -> 31
        ProductionVariantInstanceType' name -> (error . showText) $ "Unknown ProductionVariantInstanceType: " <> original name

-- | Represents the bounds of /known/ $ProductionVariantInstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ProductionVariantInstanceType where
    minBound = PVITMl_C4_2XLarge
    maxBound = PVITMl_T2_XLarge

instance Hashable     ProductionVariantInstanceType
instance NFData       ProductionVariantInstanceType
instance ToByteString ProductionVariantInstanceType
instance ToQuery      ProductionVariantInstanceType
instance ToHeader     ProductionVariantInstanceType

instance ToJSON ProductionVariantInstanceType where
    toJSON = toJSONText

instance FromJSON ProductionVariantInstanceType where
    parseJSON = parseJSONText "ProductionVariantInstanceType"
