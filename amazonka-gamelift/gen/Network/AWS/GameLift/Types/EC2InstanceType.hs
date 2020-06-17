{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.GameLift.Types.EC2InstanceType (
  EC2InstanceType (
    ..
    , C3_2XLarge
    , C3_4XLarge
    , C3_8XLarge
    , C3_Large
    , C3_XLarge
    , C4_2XLarge
    , C4_4XLarge
    , C4_8XLarge
    , C4_Large
    , C4_XLarge
    , M3_2XLarge
    , M3_Large
    , M3_Medium
    , M3_XLarge
    , M4_10XLarge
    , M4_2XLarge
    , M4_4XLarge
    , M4_Large
    , M4_XLarge
    , R3_2XLarge
    , R3_4XLarge
    , R3_8XLarge
    , R3_Large
    , R3_XLarge
    , R4_16XLarge
    , R4_2XLarge
    , R4_4XLarge
    , R4_8XLarge
    , R4_Large
    , R4_XLarge
    , T2_Large
    , T2_Medium
    , T2_Micro
    , T2_Small
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EC2InstanceType = EC2InstanceType' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern C3_2XLarge :: EC2InstanceType
pattern C3_2XLarge = EC2InstanceType' "c3.2xlarge"

pattern C3_4XLarge :: EC2InstanceType
pattern C3_4XLarge = EC2InstanceType' "c3.4xlarge"

pattern C3_8XLarge :: EC2InstanceType
pattern C3_8XLarge = EC2InstanceType' "c3.8xlarge"

pattern C3_Large :: EC2InstanceType
pattern C3_Large = EC2InstanceType' "c3.large"

pattern C3_XLarge :: EC2InstanceType
pattern C3_XLarge = EC2InstanceType' "c3.xlarge"

pattern C4_2XLarge :: EC2InstanceType
pattern C4_2XLarge = EC2InstanceType' "c4.2xlarge"

pattern C4_4XLarge :: EC2InstanceType
pattern C4_4XLarge = EC2InstanceType' "c4.4xlarge"

pattern C4_8XLarge :: EC2InstanceType
pattern C4_8XLarge = EC2InstanceType' "c4.8xlarge"

pattern C4_Large :: EC2InstanceType
pattern C4_Large = EC2InstanceType' "c4.large"

pattern C4_XLarge :: EC2InstanceType
pattern C4_XLarge = EC2InstanceType' "c4.xlarge"

pattern M3_2XLarge :: EC2InstanceType
pattern M3_2XLarge = EC2InstanceType' "m3.2xlarge"

pattern M3_Large :: EC2InstanceType
pattern M3_Large = EC2InstanceType' "m3.large"

pattern M3_Medium :: EC2InstanceType
pattern M3_Medium = EC2InstanceType' "m3.medium"

pattern M3_XLarge :: EC2InstanceType
pattern M3_XLarge = EC2InstanceType' "m3.xlarge"

pattern M4_10XLarge :: EC2InstanceType
pattern M4_10XLarge = EC2InstanceType' "m4.10xlarge"

pattern M4_2XLarge :: EC2InstanceType
pattern M4_2XLarge = EC2InstanceType' "m4.2xlarge"

pattern M4_4XLarge :: EC2InstanceType
pattern M4_4XLarge = EC2InstanceType' "m4.4xlarge"

pattern M4_Large :: EC2InstanceType
pattern M4_Large = EC2InstanceType' "m4.large"

pattern M4_XLarge :: EC2InstanceType
pattern M4_XLarge = EC2InstanceType' "m4.xlarge"

pattern R3_2XLarge :: EC2InstanceType
pattern R3_2XLarge = EC2InstanceType' "r3.2xlarge"

pattern R3_4XLarge :: EC2InstanceType
pattern R3_4XLarge = EC2InstanceType' "r3.4xlarge"

pattern R3_8XLarge :: EC2InstanceType
pattern R3_8XLarge = EC2InstanceType' "r3.8xlarge"

pattern R3_Large :: EC2InstanceType
pattern R3_Large = EC2InstanceType' "r3.large"

pattern R3_XLarge :: EC2InstanceType
pattern R3_XLarge = EC2InstanceType' "r3.xlarge"

pattern R4_16XLarge :: EC2InstanceType
pattern R4_16XLarge = EC2InstanceType' "r4.16xlarge"

pattern R4_2XLarge :: EC2InstanceType
pattern R4_2XLarge = EC2InstanceType' "r4.2xlarge"

pattern R4_4XLarge :: EC2InstanceType
pattern R4_4XLarge = EC2InstanceType' "r4.4xlarge"

pattern R4_8XLarge :: EC2InstanceType
pattern R4_8XLarge = EC2InstanceType' "r4.8xlarge"

pattern R4_Large :: EC2InstanceType
pattern R4_Large = EC2InstanceType' "r4.large"

pattern R4_XLarge :: EC2InstanceType
pattern R4_XLarge = EC2InstanceType' "r4.xlarge"

pattern T2_Large :: EC2InstanceType
pattern T2_Large = EC2InstanceType' "t2.large"

pattern T2_Medium :: EC2InstanceType
pattern T2_Medium = EC2InstanceType' "t2.medium"

pattern T2_Micro :: EC2InstanceType
pattern T2_Micro = EC2InstanceType' "t2.micro"

pattern T2_Small :: EC2InstanceType
pattern T2_Small = EC2InstanceType' "t2.small"

{-# COMPLETE
  C3_2XLarge,
  C3_4XLarge,
  C3_8XLarge,
  C3_Large,
  C3_XLarge,
  C4_2XLarge,
  C4_4XLarge,
  C4_8XLarge,
  C4_Large,
  C4_XLarge,
  M3_2XLarge,
  M3_Large,
  M3_Medium,
  M3_XLarge,
  M4_10XLarge,
  M4_2XLarge,
  M4_4XLarge,
  M4_Large,
  M4_XLarge,
  R3_2XLarge,
  R3_4XLarge,
  R3_8XLarge,
  R3_Large,
  R3_XLarge,
  R4_16XLarge,
  R4_2XLarge,
  R4_4XLarge,
  R4_8XLarge,
  R4_Large,
  R4_XLarge,
  T2_Large,
  T2_Medium,
  T2_Micro,
  T2_Small,
  EC2InstanceType' #-}

instance FromText EC2InstanceType where
    parser = (EC2InstanceType' . mk) <$> takeText

instance ToText EC2InstanceType where
    toText (EC2InstanceType' ci) = original ci

-- | Represents an enum of /known/ $EC2InstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum EC2InstanceType where
    toEnum i = case i of
        0 -> C3_2XLarge
        1 -> C3_4XLarge
        2 -> C3_8XLarge
        3 -> C3_Large
        4 -> C3_XLarge
        5 -> C4_2XLarge
        6 -> C4_4XLarge
        7 -> C4_8XLarge
        8 -> C4_Large
        9 -> C4_XLarge
        10 -> M3_2XLarge
        11 -> M3_Large
        12 -> M3_Medium
        13 -> M3_XLarge
        14 -> M4_10XLarge
        15 -> M4_2XLarge
        16 -> M4_4XLarge
        17 -> M4_Large
        18 -> M4_XLarge
        19 -> R3_2XLarge
        20 -> R3_4XLarge
        21 -> R3_8XLarge
        22 -> R3_Large
        23 -> R3_XLarge
        24 -> R4_16XLarge
        25 -> R4_2XLarge
        26 -> R4_4XLarge
        27 -> R4_8XLarge
        28 -> R4_Large
        29 -> R4_XLarge
        30 -> T2_Large
        31 -> T2_Medium
        32 -> T2_Micro
        33 -> T2_Small
        _ -> (error . showText) $ "Unknown index for EC2InstanceType: " <> toText i
    fromEnum x = case x of
        C3_2XLarge -> 0
        C3_4XLarge -> 1
        C3_8XLarge -> 2
        C3_Large -> 3
        C3_XLarge -> 4
        C4_2XLarge -> 5
        C4_4XLarge -> 6
        C4_8XLarge -> 7
        C4_Large -> 8
        C4_XLarge -> 9
        M3_2XLarge -> 10
        M3_Large -> 11
        M3_Medium -> 12
        M3_XLarge -> 13
        M4_10XLarge -> 14
        M4_2XLarge -> 15
        M4_4XLarge -> 16
        M4_Large -> 17
        M4_XLarge -> 18
        R3_2XLarge -> 19
        R3_4XLarge -> 20
        R3_8XLarge -> 21
        R3_Large -> 22
        R3_XLarge -> 23
        R4_16XLarge -> 24
        R4_2XLarge -> 25
        R4_4XLarge -> 26
        R4_8XLarge -> 27
        R4_Large -> 28
        R4_XLarge -> 29
        T2_Large -> 30
        T2_Medium -> 31
        T2_Micro -> 32
        T2_Small -> 33
        EC2InstanceType' name -> (error . showText) $ "Unknown EC2InstanceType: " <> original name

-- | Represents the bounds of /known/ $EC2InstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded EC2InstanceType where
    minBound = C3_2XLarge
    maxBound = T2_Small

instance Hashable     EC2InstanceType
instance NFData       EC2InstanceType
instance ToByteString EC2InstanceType
instance ToQuery      EC2InstanceType
instance ToHeader     EC2InstanceType

instance ToJSON EC2InstanceType where
    toJSON = toJSONText

instance FromJSON EC2InstanceType where
    parseJSON = parseJSONText "EC2InstanceType"
