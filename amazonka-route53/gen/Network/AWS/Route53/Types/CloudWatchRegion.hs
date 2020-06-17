{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Route53.Types.CloudWatchRegion (
  CloudWatchRegion (
    ..
    , CWRApNortheast1
    , CWRApNortheast2
    , CWRApNortheast3
    , CWRApSouth1
    , CWRApSoutheast1
    , CWRApSoutheast2
    , CWRCaCentral1
    , CWREuCentral1
    , CWREuWest1
    , CWREuWest2
    , CWREuWest3
    , CWRSaEast1
    , CWRUsEast1
    , CWRUsEast2
    , CWRUsWest1
    , CWRUsWest2
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data CloudWatchRegion = CloudWatchRegion' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern CWRApNortheast1 :: CloudWatchRegion
pattern CWRApNortheast1 = CloudWatchRegion' "ap-northeast-1"

pattern CWRApNortheast2 :: CloudWatchRegion
pattern CWRApNortheast2 = CloudWatchRegion' "ap-northeast-2"

pattern CWRApNortheast3 :: CloudWatchRegion
pattern CWRApNortheast3 = CloudWatchRegion' "ap-northeast-3"

pattern CWRApSouth1 :: CloudWatchRegion
pattern CWRApSouth1 = CloudWatchRegion' "ap-south-1"

pattern CWRApSoutheast1 :: CloudWatchRegion
pattern CWRApSoutheast1 = CloudWatchRegion' "ap-southeast-1"

pattern CWRApSoutheast2 :: CloudWatchRegion
pattern CWRApSoutheast2 = CloudWatchRegion' "ap-southeast-2"

pattern CWRCaCentral1 :: CloudWatchRegion
pattern CWRCaCentral1 = CloudWatchRegion' "ca-central-1"

pattern CWREuCentral1 :: CloudWatchRegion
pattern CWREuCentral1 = CloudWatchRegion' "eu-central-1"

pattern CWREuWest1 :: CloudWatchRegion
pattern CWREuWest1 = CloudWatchRegion' "eu-west-1"

pattern CWREuWest2 :: CloudWatchRegion
pattern CWREuWest2 = CloudWatchRegion' "eu-west-2"

pattern CWREuWest3 :: CloudWatchRegion
pattern CWREuWest3 = CloudWatchRegion' "eu-west-3"

pattern CWRSaEast1 :: CloudWatchRegion
pattern CWRSaEast1 = CloudWatchRegion' "sa-east-1"

pattern CWRUsEast1 :: CloudWatchRegion
pattern CWRUsEast1 = CloudWatchRegion' "us-east-1"

pattern CWRUsEast2 :: CloudWatchRegion
pattern CWRUsEast2 = CloudWatchRegion' "us-east-2"

pattern CWRUsWest1 :: CloudWatchRegion
pattern CWRUsWest1 = CloudWatchRegion' "us-west-1"

pattern CWRUsWest2 :: CloudWatchRegion
pattern CWRUsWest2 = CloudWatchRegion' "us-west-2"

{-# COMPLETE
  CWRApNortheast1,
  CWRApNortheast2,
  CWRApNortheast3,
  CWRApSouth1,
  CWRApSoutheast1,
  CWRApSoutheast2,
  CWRCaCentral1,
  CWREuCentral1,
  CWREuWest1,
  CWREuWest2,
  CWREuWest3,
  CWRSaEast1,
  CWRUsEast1,
  CWRUsEast2,
  CWRUsWest1,
  CWRUsWest2,
  CloudWatchRegion' #-}

instance FromText CloudWatchRegion where
    parser = (CloudWatchRegion' . mk) <$> takeText

instance ToText CloudWatchRegion where
    toText (CloudWatchRegion' ci) = original ci

-- | Represents an enum of /known/ $CloudWatchRegion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CloudWatchRegion where
    toEnum i = case i of
        0 -> CWRApNortheast1
        1 -> CWRApNortheast2
        2 -> CWRApNortheast3
        3 -> CWRApSouth1
        4 -> CWRApSoutheast1
        5 -> CWRApSoutheast2
        6 -> CWRCaCentral1
        7 -> CWREuCentral1
        8 -> CWREuWest1
        9 -> CWREuWest2
        10 -> CWREuWest3
        11 -> CWRSaEast1
        12 -> CWRUsEast1
        13 -> CWRUsEast2
        14 -> CWRUsWest1
        15 -> CWRUsWest2
        _ -> (error . showText) $ "Unknown index for CloudWatchRegion: " <> toText i
    fromEnum x = case x of
        CWRApNortheast1 -> 0
        CWRApNortheast2 -> 1
        CWRApNortheast3 -> 2
        CWRApSouth1 -> 3
        CWRApSoutheast1 -> 4
        CWRApSoutheast2 -> 5
        CWRCaCentral1 -> 6
        CWREuCentral1 -> 7
        CWREuWest1 -> 8
        CWREuWest2 -> 9
        CWREuWest3 -> 10
        CWRSaEast1 -> 11
        CWRUsEast1 -> 12
        CWRUsEast2 -> 13
        CWRUsWest1 -> 14
        CWRUsWest2 -> 15
        CloudWatchRegion' name -> (error . showText) $ "Unknown CloudWatchRegion: " <> original name

-- | Represents the bounds of /known/ $CloudWatchRegion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CloudWatchRegion where
    minBound = CWRApNortheast1
    maxBound = CWRUsWest2

instance Hashable     CloudWatchRegion
instance NFData       CloudWatchRegion
instance ToByteString CloudWatchRegion
instance ToQuery      CloudWatchRegion
instance ToHeader     CloudWatchRegion

instance FromXML CloudWatchRegion where
    parseXML = parseXMLText "CloudWatchRegion"

instance ToXML CloudWatchRegion where
    toXML = toXMLText
