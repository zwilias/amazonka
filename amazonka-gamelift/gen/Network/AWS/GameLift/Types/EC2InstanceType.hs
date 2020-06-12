{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.EC2InstanceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.EC2InstanceType where

import Network.AWS.Prelude
  
data EC2InstanceType = C3_2XLarge
                     | C3_4XLarge
                     | C3_8XLarge
                     | C3_Large
                     | C3_XLarge
                     | C4_2XLarge
                     | C4_4XLarge
                     | C4_8XLarge
                     | C4_Large
                     | C4_XLarge
                     | M3_2XLarge
                     | M3_Large
                     | M3_Medium
                     | M3_XLarge
                     | M4_10XLarge
                     | M4_2XLarge
                     | M4_4XLarge
                     | M4_Large
                     | M4_XLarge
                     | R3_2XLarge
                     | R3_4XLarge
                     | R3_8XLarge
                     | R3_Large
                     | R3_XLarge
                     | R4_16XLarge
                     | R4_2XLarge
                     | R4_4XLarge
                     | R4_8XLarge
                     | R4_Large
                     | R4_XLarge
                     | T2_Large
                     | T2_Medium
                     | T2_Micro
                     | T2_Small
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText EC2InstanceType where
    parser = takeLowerText >>= \case
        "c3.2xlarge" -> pure C3_2XLarge
        "c3.4xlarge" -> pure C3_4XLarge
        "c3.8xlarge" -> pure C3_8XLarge
        "c3.large" -> pure C3_Large
        "c3.xlarge" -> pure C3_XLarge
        "c4.2xlarge" -> pure C4_2XLarge
        "c4.4xlarge" -> pure C4_4XLarge
        "c4.8xlarge" -> pure C4_8XLarge
        "c4.large" -> pure C4_Large
        "c4.xlarge" -> pure C4_XLarge
        "m3.2xlarge" -> pure M3_2XLarge
        "m3.large" -> pure M3_Large
        "m3.medium" -> pure M3_Medium
        "m3.xlarge" -> pure M3_XLarge
        "m4.10xlarge" -> pure M4_10XLarge
        "m4.2xlarge" -> pure M4_2XLarge
        "m4.4xlarge" -> pure M4_4XLarge
        "m4.large" -> pure M4_Large
        "m4.xlarge" -> pure M4_XLarge
        "r3.2xlarge" -> pure R3_2XLarge
        "r3.4xlarge" -> pure R3_4XLarge
        "r3.8xlarge" -> pure R3_8XLarge
        "r3.large" -> pure R3_Large
        "r3.xlarge" -> pure R3_XLarge
        "r4.16xlarge" -> pure R4_16XLarge
        "r4.2xlarge" -> pure R4_2XLarge
        "r4.4xlarge" -> pure R4_4XLarge
        "r4.8xlarge" -> pure R4_8XLarge
        "r4.large" -> pure R4_Large
        "r4.xlarge" -> pure R4_XLarge
        "t2.large" -> pure T2_Large
        "t2.medium" -> pure T2_Medium
        "t2.micro" -> pure T2_Micro
        "t2.small" -> pure T2_Small
        e -> fromTextError $ "Failure parsing EC2InstanceType from value: '" <> e
           <> "'. Accepted values: c3.2xlarge, c3.4xlarge, c3.8xlarge, c3.large, c3.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c4.large, c4.xlarge, m3.2xlarge, m3.large, m3.medium, m3.xlarge, m4.10xlarge, m4.2xlarge, m4.4xlarge, m4.large, m4.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r3.large, r3.xlarge, r4.16xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.large, r4.xlarge, t2.large, t2.medium, t2.micro, t2.small"

instance ToText EC2InstanceType where
    toText = \case
        C3_2XLarge -> "c3.2xlarge"
        C3_4XLarge -> "c3.4xlarge"
        C3_8XLarge -> "c3.8xlarge"
        C3_Large -> "c3.large"
        C3_XLarge -> "c3.xlarge"
        C4_2XLarge -> "c4.2xlarge"
        C4_4XLarge -> "c4.4xlarge"
        C4_8XLarge -> "c4.8xlarge"
        C4_Large -> "c4.large"
        C4_XLarge -> "c4.xlarge"
        M3_2XLarge -> "m3.2xlarge"
        M3_Large -> "m3.large"
        M3_Medium -> "m3.medium"
        M3_XLarge -> "m3.xlarge"
        M4_10XLarge -> "m4.10xlarge"
        M4_2XLarge -> "m4.2xlarge"
        M4_4XLarge -> "m4.4xlarge"
        M4_Large -> "m4.large"
        M4_XLarge -> "m4.xlarge"
        R3_2XLarge -> "r3.2xlarge"
        R3_4XLarge -> "r3.4xlarge"
        R3_8XLarge -> "r3.8xlarge"
        R3_Large -> "r3.large"
        R3_XLarge -> "r3.xlarge"
        R4_16XLarge -> "r4.16xlarge"
        R4_2XLarge -> "r4.2xlarge"
        R4_4XLarge -> "r4.4xlarge"
        R4_8XLarge -> "r4.8xlarge"
        R4_Large -> "r4.large"
        R4_XLarge -> "r4.xlarge"
        T2_Large -> "t2.large"
        T2_Medium -> "t2.medium"
        T2_Micro -> "t2.micro"
        T2_Small -> "t2.small"

instance Hashable     EC2InstanceType
instance NFData       EC2InstanceType
instance ToByteString EC2InstanceType
instance ToQuery      EC2InstanceType
instance ToHeader     EC2InstanceType

instance ToJSON EC2InstanceType where
    toJSON = toJSONText

instance FromJSON EC2InstanceType where
    parseJSON = parseJSONText "EC2InstanceType"
