{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.InstanceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.InstanceType where

import Network.AWS.Prelude
  
data InstanceType = Ml_M4_10XLarge
                  | Ml_M4_16XLarge
                  | Ml_M4_2XLarge
                  | Ml_M4_4XLarge
                  | Ml_M4_XLarge
                  | Ml_P2_16XLarge
                  | Ml_P2_8XLarge
                  | Ml_P2_XLarge
                  | Ml_P3_16XLarge
                  | Ml_P3_2XLarge
                  | Ml_P3_8XLarge
                  | Ml_T2_2XLarge
                  | Ml_T2_Large
                  | Ml_T2_Medium
                  | Ml_T2_XLarge
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText InstanceType where
    parser = takeLowerText >>= \case
        "ml.m4.10xlarge" -> pure Ml_M4_10XLarge
        "ml.m4.16xlarge" -> pure Ml_M4_16XLarge
        "ml.m4.2xlarge" -> pure Ml_M4_2XLarge
        "ml.m4.4xlarge" -> pure Ml_M4_4XLarge
        "ml.m4.xlarge" -> pure Ml_M4_XLarge
        "ml.p2.16xlarge" -> pure Ml_P2_16XLarge
        "ml.p2.8xlarge" -> pure Ml_P2_8XLarge
        "ml.p2.xlarge" -> pure Ml_P2_XLarge
        "ml.p3.16xlarge" -> pure Ml_P3_16XLarge
        "ml.p3.2xlarge" -> pure Ml_P3_2XLarge
        "ml.p3.8xlarge" -> pure Ml_P3_8XLarge
        "ml.t2.2xlarge" -> pure Ml_T2_2XLarge
        "ml.t2.large" -> pure Ml_T2_Large
        "ml.t2.medium" -> pure Ml_T2_Medium
        "ml.t2.xlarge" -> pure Ml_T2_XLarge
        e -> fromTextError $ "Failure parsing InstanceType from value: '" <> e
           <> "'. Accepted values: ml.m4.10xlarge, ml.m4.16xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.xlarge, ml.p2.16xlarge, ml.p2.8xlarge, ml.p2.xlarge, ml.p3.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.t2.2xlarge, ml.t2.large, ml.t2.medium, ml.t2.xlarge"

instance ToText InstanceType where
    toText = \case
        Ml_M4_10XLarge -> "ml.m4.10xlarge"
        Ml_M4_16XLarge -> "ml.m4.16xlarge"
        Ml_M4_2XLarge -> "ml.m4.2xlarge"
        Ml_M4_4XLarge -> "ml.m4.4xlarge"
        Ml_M4_XLarge -> "ml.m4.xlarge"
        Ml_P2_16XLarge -> "ml.p2.16xlarge"
        Ml_P2_8XLarge -> "ml.p2.8xlarge"
        Ml_P2_XLarge -> "ml.p2.xlarge"
        Ml_P3_16XLarge -> "ml.p3.16xlarge"
        Ml_P3_2XLarge -> "ml.p3.2xlarge"
        Ml_P3_8XLarge -> "ml.p3.8xlarge"
        Ml_T2_2XLarge -> "ml.t2.2xlarge"
        Ml_T2_Large -> "ml.t2.large"
        Ml_T2_Medium -> "ml.t2.medium"
        Ml_T2_XLarge -> "ml.t2.xlarge"

instance Hashable     InstanceType
instance NFData       InstanceType
instance ToByteString InstanceType
instance ToQuery      InstanceType
instance ToHeader     InstanceType

instance ToJSON InstanceType where
    toJSON = toJSONText

instance FromJSON InstanceType where
    parseJSON = parseJSONText "InstanceType"
