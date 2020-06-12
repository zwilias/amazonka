{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.SageMaker.Types.ProductionVariantInstanceType where

import Network.AWS.Prelude
  
data ProductionVariantInstanceType = PVITMl_C4_2XLarge
                                   | PVITMl_C4_4XLarge
                                   | PVITMl_C4_8XLarge
                                   | PVITMl_C4_Large
                                   | PVITMl_C4_XLarge
                                   | PVITMl_C5_18XLarge
                                   | PVITMl_C5_2XLarge
                                   | PVITMl_C5_4XLarge
                                   | PVITMl_C5_9XLarge
                                   | PVITMl_C5_Large
                                   | PVITMl_C5_XLarge
                                   | PVITMl_M4_10XLarge
                                   | PVITMl_M4_16XLarge
                                   | PVITMl_M4_2XLarge
                                   | PVITMl_M4_4XLarge
                                   | PVITMl_M4_XLarge
                                   | PVITMl_M5_12XLarge
                                   | PVITMl_M5_24XLarge
                                   | PVITMl_M5_2XLarge
                                   | PVITMl_M5_4XLarge
                                   | PVITMl_M5_Large
                                   | PVITMl_M5_XLarge
                                   | PVITMl_P2_16XLarge
                                   | PVITMl_P2_8XLarge
                                   | PVITMl_P2_XLarge
                                   | PVITMl_P3_16XLarge
                                   | PVITMl_P3_2XLarge
                                   | PVITMl_P3_8XLarge
                                   | PVITMl_T2_2XLarge
                                   | PVITMl_T2_Large
                                   | PVITMl_T2_Medium
                                   | PVITMl_T2_XLarge
                                       deriving (Eq, Ord, Read, Show, Enum,
                                                 Bounded, Data, Typeable,
                                                 Generic)

instance FromText ProductionVariantInstanceType where
    parser = takeLowerText >>= \case
        "ml.c4.2xlarge" -> pure PVITMl_C4_2XLarge
        "ml.c4.4xlarge" -> pure PVITMl_C4_4XLarge
        "ml.c4.8xlarge" -> pure PVITMl_C4_8XLarge
        "ml.c4.large" -> pure PVITMl_C4_Large
        "ml.c4.xlarge" -> pure PVITMl_C4_XLarge
        "ml.c5.18xlarge" -> pure PVITMl_C5_18XLarge
        "ml.c5.2xlarge" -> pure PVITMl_C5_2XLarge
        "ml.c5.4xlarge" -> pure PVITMl_C5_4XLarge
        "ml.c5.9xlarge" -> pure PVITMl_C5_9XLarge
        "ml.c5.large" -> pure PVITMl_C5_Large
        "ml.c5.xlarge" -> pure PVITMl_C5_XLarge
        "ml.m4.10xlarge" -> pure PVITMl_M4_10XLarge
        "ml.m4.16xlarge" -> pure PVITMl_M4_16XLarge
        "ml.m4.2xlarge" -> pure PVITMl_M4_2XLarge
        "ml.m4.4xlarge" -> pure PVITMl_M4_4XLarge
        "ml.m4.xlarge" -> pure PVITMl_M4_XLarge
        "ml.m5.12xlarge" -> pure PVITMl_M5_12XLarge
        "ml.m5.24xlarge" -> pure PVITMl_M5_24XLarge
        "ml.m5.2xlarge" -> pure PVITMl_M5_2XLarge
        "ml.m5.4xlarge" -> pure PVITMl_M5_4XLarge
        "ml.m5.large" -> pure PVITMl_M5_Large
        "ml.m5.xlarge" -> pure PVITMl_M5_XLarge
        "ml.p2.16xlarge" -> pure PVITMl_P2_16XLarge
        "ml.p2.8xlarge" -> pure PVITMl_P2_8XLarge
        "ml.p2.xlarge" -> pure PVITMl_P2_XLarge
        "ml.p3.16xlarge" -> pure PVITMl_P3_16XLarge
        "ml.p3.2xlarge" -> pure PVITMl_P3_2XLarge
        "ml.p3.8xlarge" -> pure PVITMl_P3_8XLarge
        "ml.t2.2xlarge" -> pure PVITMl_T2_2XLarge
        "ml.t2.large" -> pure PVITMl_T2_Large
        "ml.t2.medium" -> pure PVITMl_T2_Medium
        "ml.t2.xlarge" -> pure PVITMl_T2_XLarge
        e -> fromTextError $ "Failure parsing ProductionVariantInstanceType from value: '" <> e
           <> "'. Accepted values: ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c4.large, ml.c4.xlarge, ml.c5.18xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.large, ml.c5.xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.large, ml.m5.xlarge, ml.p2.16xlarge, ml.p2.8xlarge, ml.p2.xlarge, ml.p3.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.t2.2xlarge, ml.t2.large, ml.t2.medium, ml.t2.xlarge"

instance ToText ProductionVariantInstanceType where
    toText = \case
        PVITMl_C4_2XLarge -> "ml.c4.2xlarge"
        PVITMl_C4_4XLarge -> "ml.c4.4xlarge"
        PVITMl_C4_8XLarge -> "ml.c4.8xlarge"
        PVITMl_C4_Large -> "ml.c4.large"
        PVITMl_C4_XLarge -> "ml.c4.xlarge"
        PVITMl_C5_18XLarge -> "ml.c5.18xlarge"
        PVITMl_C5_2XLarge -> "ml.c5.2xlarge"
        PVITMl_C5_4XLarge -> "ml.c5.4xlarge"
        PVITMl_C5_9XLarge -> "ml.c5.9xlarge"
        PVITMl_C5_Large -> "ml.c5.large"
        PVITMl_C5_XLarge -> "ml.c5.xlarge"
        PVITMl_M4_10XLarge -> "ml.m4.10xlarge"
        PVITMl_M4_16XLarge -> "ml.m4.16xlarge"
        PVITMl_M4_2XLarge -> "ml.m4.2xlarge"
        PVITMl_M4_4XLarge -> "ml.m4.4xlarge"
        PVITMl_M4_XLarge -> "ml.m4.xlarge"
        PVITMl_M5_12XLarge -> "ml.m5.12xlarge"
        PVITMl_M5_24XLarge -> "ml.m5.24xlarge"
        PVITMl_M5_2XLarge -> "ml.m5.2xlarge"
        PVITMl_M5_4XLarge -> "ml.m5.4xlarge"
        PVITMl_M5_Large -> "ml.m5.large"
        PVITMl_M5_XLarge -> "ml.m5.xlarge"
        PVITMl_P2_16XLarge -> "ml.p2.16xlarge"
        PVITMl_P2_8XLarge -> "ml.p2.8xlarge"
        PVITMl_P2_XLarge -> "ml.p2.xlarge"
        PVITMl_P3_16XLarge -> "ml.p3.16xlarge"
        PVITMl_P3_2XLarge -> "ml.p3.2xlarge"
        PVITMl_P3_8XLarge -> "ml.p3.8xlarge"
        PVITMl_T2_2XLarge -> "ml.t2.2xlarge"
        PVITMl_T2_Large -> "ml.t2.large"
        PVITMl_T2_Medium -> "ml.t2.medium"
        PVITMl_T2_XLarge -> "ml.t2.xlarge"

instance Hashable     ProductionVariantInstanceType
instance NFData       ProductionVariantInstanceType
instance ToByteString ProductionVariantInstanceType
instance ToQuery      ProductionVariantInstanceType
instance ToHeader     ProductionVariantInstanceType

instance ToJSON ProductionVariantInstanceType where
    toJSON = toJSONText

instance FromJSON ProductionVariantInstanceType where
    parseJSON = parseJSONText "ProductionVariantInstanceType"
