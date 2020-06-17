{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RegionName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.RegionName (
  RegionName (
    ..
    , ApNortheast1
    , ApNortheast2
    , ApSouth1
    , ApSoutheast1
    , ApSoutheast2
    , EuCentral1
    , EuWest1
    , EuWest2
    , UsEast1
    , UsEast2
    , UsWest1
    , UsWest2
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RegionName = RegionName' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ApNortheast1 :: RegionName
pattern ApNortheast1 = RegionName' "ap-northeast-1"

pattern ApNortheast2 :: RegionName
pattern ApNortheast2 = RegionName' "ap-northeast-2"

pattern ApSouth1 :: RegionName
pattern ApSouth1 = RegionName' "ap-south-1"

pattern ApSoutheast1 :: RegionName
pattern ApSoutheast1 = RegionName' "ap-southeast-1"

pattern ApSoutheast2 :: RegionName
pattern ApSoutheast2 = RegionName' "ap-southeast-2"

pattern EuCentral1 :: RegionName
pattern EuCentral1 = RegionName' "eu-central-1"

pattern EuWest1 :: RegionName
pattern EuWest1 = RegionName' "eu-west-1"

pattern EuWest2 :: RegionName
pattern EuWest2 = RegionName' "eu-west-2"

pattern UsEast1 :: RegionName
pattern UsEast1 = RegionName' "us-east-1"

pattern UsEast2 :: RegionName
pattern UsEast2 = RegionName' "us-east-2"

pattern UsWest1 :: RegionName
pattern UsWest1 = RegionName' "us-west-1"

pattern UsWest2 :: RegionName
pattern UsWest2 = RegionName' "us-west-2"

{-# COMPLETE
  ApNortheast1,
  ApNortheast2,
  ApSouth1,
  ApSoutheast1,
  ApSoutheast2,
  EuCentral1,
  EuWest1,
  EuWest2,
  UsEast1,
  UsEast2,
  UsWest1,
  UsWest2,
  RegionName' #-}

instance FromText RegionName where
    parser = (RegionName' . mk) <$> takeText

instance ToText RegionName where
    toText (RegionName' ci) = original ci

-- | Represents an enum of /known/ $RegionName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum RegionName where
    toEnum i = case i of
        0 -> ApNortheast1
        1 -> ApNortheast2
        2 -> ApSouth1
        3 -> ApSoutheast1
        4 -> ApSoutheast2
        5 -> EuCentral1
        6 -> EuWest1
        7 -> EuWest2
        8 -> UsEast1
        9 -> UsEast2
        10 -> UsWest1
        11 -> UsWest2
        _ -> (error . showText) $ "Unknown index for RegionName: " <> toText i
    fromEnum x = case x of
        ApNortheast1 -> 0
        ApNortheast2 -> 1
        ApSouth1 -> 2
        ApSoutheast1 -> 3
        ApSoutheast2 -> 4
        EuCentral1 -> 5
        EuWest1 -> 6
        EuWest2 -> 7
        UsEast1 -> 8
        UsEast2 -> 9
        UsWest1 -> 10
        UsWest2 -> 11
        RegionName' name -> (error . showText) $ "Unknown RegionName: " <> original name

-- | Represents the bounds of /known/ $RegionName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded RegionName where
    minBound = ApNortheast1
    maxBound = UsWest2

instance Hashable     RegionName
instance NFData       RegionName
instance ToByteString RegionName
instance ToQuery      RegionName
instance ToHeader     RegionName

instance FromJSON RegionName where
    parseJSON = parseJSONText "RegionName"
