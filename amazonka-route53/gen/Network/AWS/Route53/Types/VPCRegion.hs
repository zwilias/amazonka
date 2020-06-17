{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.VPCRegion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53.Types.VPCRegion (
  VPCRegion (
    ..
    , ApNortheast1
    , ApNortheast2
    , ApNortheast3
    , ApSouth1
    , ApSoutheast1
    , ApSoutheast2
    , CaCentral1
    , CnNorth1
    , EuCentral1
    , EuWest1
    , EuWest2
    , EuWest3
    , SaEast1
    , UsEast1
    , UsEast2
    , UsWest1
    , UsWest2
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data VPCRegion = VPCRegion' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern ApNortheast1 :: VPCRegion
pattern ApNortheast1 = VPCRegion' "ap-northeast-1"

pattern ApNortheast2 :: VPCRegion
pattern ApNortheast2 = VPCRegion' "ap-northeast-2"

pattern ApNortheast3 :: VPCRegion
pattern ApNortheast3 = VPCRegion' "ap-northeast-3"

pattern ApSouth1 :: VPCRegion
pattern ApSouth1 = VPCRegion' "ap-south-1"

pattern ApSoutheast1 :: VPCRegion
pattern ApSoutheast1 = VPCRegion' "ap-southeast-1"

pattern ApSoutheast2 :: VPCRegion
pattern ApSoutheast2 = VPCRegion' "ap-southeast-2"

pattern CaCentral1 :: VPCRegion
pattern CaCentral1 = VPCRegion' "ca-central-1"

pattern CnNorth1 :: VPCRegion
pattern CnNorth1 = VPCRegion' "cn-north-1"

pattern EuCentral1 :: VPCRegion
pattern EuCentral1 = VPCRegion' "eu-central-1"

pattern EuWest1 :: VPCRegion
pattern EuWest1 = VPCRegion' "eu-west-1"

pattern EuWest2 :: VPCRegion
pattern EuWest2 = VPCRegion' "eu-west-2"

pattern EuWest3 :: VPCRegion
pattern EuWest3 = VPCRegion' "eu-west-3"

pattern SaEast1 :: VPCRegion
pattern SaEast1 = VPCRegion' "sa-east-1"

pattern UsEast1 :: VPCRegion
pattern UsEast1 = VPCRegion' "us-east-1"

pattern UsEast2 :: VPCRegion
pattern UsEast2 = VPCRegion' "us-east-2"

pattern UsWest1 :: VPCRegion
pattern UsWest1 = VPCRegion' "us-west-1"

pattern UsWest2 :: VPCRegion
pattern UsWest2 = VPCRegion' "us-west-2"

{-# COMPLETE
  ApNortheast1,
  ApNortheast2,
  ApNortheast3,
  ApSouth1,
  ApSoutheast1,
  ApSoutheast2,
  CaCentral1,
  CnNorth1,
  EuCentral1,
  EuWest1,
  EuWest2,
  EuWest3,
  SaEast1,
  UsEast1,
  UsEast2,
  UsWest1,
  UsWest2,
  VPCRegion' #-}

instance FromText VPCRegion where
    parser = (VPCRegion' . mk) <$> takeText

instance ToText VPCRegion where
    toText (VPCRegion' ci) = original ci

-- | Represents an enum of /known/ $VPCRegion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum VPCRegion where
    toEnum i = case i of
        0 -> ApNortheast1
        1 -> ApNortheast2
        2 -> ApNortheast3
        3 -> ApSouth1
        4 -> ApSoutheast1
        5 -> ApSoutheast2
        6 -> CaCentral1
        7 -> CnNorth1
        8 -> EuCentral1
        9 -> EuWest1
        10 -> EuWest2
        11 -> EuWest3
        12 -> SaEast1
        13 -> UsEast1
        14 -> UsEast2
        15 -> UsWest1
        16 -> UsWest2
        _ -> (error . showText) $ "Unknown index for VPCRegion: " <> toText i
    fromEnum x = case x of
        ApNortheast1 -> 0
        ApNortheast2 -> 1
        ApNortheast3 -> 2
        ApSouth1 -> 3
        ApSoutheast1 -> 4
        ApSoutheast2 -> 5
        CaCentral1 -> 6
        CnNorth1 -> 7
        EuCentral1 -> 8
        EuWest1 -> 9
        EuWest2 -> 10
        EuWest3 -> 11
        SaEast1 -> 12
        UsEast1 -> 13
        UsEast2 -> 14
        UsWest1 -> 15
        UsWest2 -> 16
        VPCRegion' name -> (error . showText) $ "Unknown VPCRegion: " <> original name

-- | Represents the bounds of /known/ $VPCRegion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded VPCRegion where
    minBound = ApNortheast1
    maxBound = UsWest2

instance Hashable     VPCRegion
instance NFData       VPCRegion
instance ToByteString VPCRegion
instance ToQuery      VPCRegion
instance ToHeader     VPCRegion

instance FromXML VPCRegion where
    parseXML = parseXMLText "VPCRegion"

instance ToXML VPCRegion where
    toXML = toXMLText
