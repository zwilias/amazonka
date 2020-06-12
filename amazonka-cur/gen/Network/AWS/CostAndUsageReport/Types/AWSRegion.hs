{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostAndUsageReport.Types.AWSRegion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostAndUsageReport.Types.AWSRegion where

import Network.AWS.Prelude
  
-- | The region of the S3 bucket that AWS delivers the report into.
--
--
data AWSRegion = ApEast1
               | ApNortheast1
               | ApNortheast3
               | ApSoutheast1
               | ApSoutheast2
               | EuCentral1
               | EuNorth1
               | EuWest1
               | UsEast1
               | UsWest1
               | UsWest2
                   deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                             Typeable, Generic)

instance FromText AWSRegion where
    parser = takeLowerText >>= \case
        "ap-east-1" -> pure ApEast1
        "ap-northeast-1" -> pure ApNortheast1
        "ap-northeast-3" -> pure ApNortheast3
        "ap-southeast-1" -> pure ApSoutheast1
        "ap-southeast-2" -> pure ApSoutheast2
        "eu-central-1" -> pure EuCentral1
        "eu-north-1" -> pure EuNorth1
        "eu-west-1" -> pure EuWest1
        "us-east-1" -> pure UsEast1
        "us-west-1" -> pure UsWest1
        "us-west-2" -> pure UsWest2
        e -> fromTextError $ "Failure parsing AWSRegion from value: '" <> e
           <> "'. Accepted values: ap-east-1, ap-northeast-1, ap-northeast-3, ap-southeast-1, ap-southeast-2, eu-central-1, eu-north-1, eu-west-1, us-east-1, us-west-1, us-west-2"

instance ToText AWSRegion where
    toText = \case
        ApEast1 -> "ap-east-1"
        ApNortheast1 -> "ap-northeast-1"
        ApNortheast3 -> "ap-northeast-3"
        ApSoutheast1 -> "ap-southeast-1"
        ApSoutheast2 -> "ap-southeast-2"
        EuCentral1 -> "eu-central-1"
        EuNorth1 -> "eu-north-1"
        EuWest1 -> "eu-west-1"
        UsEast1 -> "us-east-1"
        UsWest1 -> "us-west-1"
        UsWest2 -> "us-west-2"

instance Hashable     AWSRegion
instance NFData       AWSRegion
instance ToByteString AWSRegion
instance ToQuery      AWSRegion
instance ToHeader     AWSRegion

instance ToJSON AWSRegion where
    toJSON = toJSONText

instance FromJSON AWSRegion where
    parseJSON = parseJSONText "AWSRegion"
