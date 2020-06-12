{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.CloudWatchRegion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53.Types.CloudWatchRegion where

import Network.AWS.Prelude
import Network.AWS.Route53.Internal
  
data CloudWatchRegion = CWRApNortheast1
                      | CWRApNortheast2
                      | CWRApNortheast3
                      | CWRApSouth1
                      | CWRApSoutheast1
                      | CWRApSoutheast2
                      | CWRCaCentral1
                      | CWREuCentral1
                      | CWREuWest1
                      | CWREuWest2
                      | CWREuWest3
                      | CWRSaEast1
                      | CWRUsEast1
                      | CWRUsEast2
                      | CWRUsWest1
                      | CWRUsWest2
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText CloudWatchRegion where
    parser = takeLowerText >>= \case
        "ap-northeast-1" -> pure CWRApNortheast1
        "ap-northeast-2" -> pure CWRApNortheast2
        "ap-northeast-3" -> pure CWRApNortheast3
        "ap-south-1" -> pure CWRApSouth1
        "ap-southeast-1" -> pure CWRApSoutheast1
        "ap-southeast-2" -> pure CWRApSoutheast2
        "ca-central-1" -> pure CWRCaCentral1
        "eu-central-1" -> pure CWREuCentral1
        "eu-west-1" -> pure CWREuWest1
        "eu-west-2" -> pure CWREuWest2
        "eu-west-3" -> pure CWREuWest3
        "sa-east-1" -> pure CWRSaEast1
        "us-east-1" -> pure CWRUsEast1
        "us-east-2" -> pure CWRUsEast2
        "us-west-1" -> pure CWRUsWest1
        "us-west-2" -> pure CWRUsWest2
        e -> fromTextError $ "Failure parsing CloudWatchRegion from value: '" <> e
           <> "'. Accepted values: ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-southeast-1, ap-southeast-2, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2"

instance ToText CloudWatchRegion where
    toText = \case
        CWRApNortheast1 -> "ap-northeast-1"
        CWRApNortheast2 -> "ap-northeast-2"
        CWRApNortheast3 -> "ap-northeast-3"
        CWRApSouth1 -> "ap-south-1"
        CWRApSoutheast1 -> "ap-southeast-1"
        CWRApSoutheast2 -> "ap-southeast-2"
        CWRCaCentral1 -> "ca-central-1"
        CWREuCentral1 -> "eu-central-1"
        CWREuWest1 -> "eu-west-1"
        CWREuWest2 -> "eu-west-2"
        CWREuWest3 -> "eu-west-3"
        CWRSaEast1 -> "sa-east-1"
        CWRUsEast1 -> "us-east-1"
        CWRUsEast2 -> "us-east-2"
        CWRUsWest1 -> "us-west-1"
        CWRUsWest2 -> "us-west-2"

instance Hashable     CloudWatchRegion
instance NFData       CloudWatchRegion
instance ToByteString CloudWatchRegion
instance ToQuery      CloudWatchRegion
instance ToHeader     CloudWatchRegion

instance FromXML CloudWatchRegion where
    parseXML = parseXMLText "CloudWatchRegion"

instance ToXML CloudWatchRegion where
    toXML = toXMLText
