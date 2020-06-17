{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.SageMaker.Types.InstanceType (
  InstanceType (
    ..
    , Ml_M4_10XLarge
    , Ml_M4_16XLarge
    , Ml_M4_2XLarge
    , Ml_M4_4XLarge
    , Ml_M4_XLarge
    , Ml_P2_16XLarge
    , Ml_P2_8XLarge
    , Ml_P2_XLarge
    , Ml_P3_16XLarge
    , Ml_P3_2XLarge
    , Ml_P3_8XLarge
    , Ml_T2_2XLarge
    , Ml_T2_Large
    , Ml_T2_Medium
    , Ml_T2_XLarge
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceType = InstanceType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Ml_M4_10XLarge :: InstanceType
pattern Ml_M4_10XLarge = InstanceType' "ml.m4.10xlarge"

pattern Ml_M4_16XLarge :: InstanceType
pattern Ml_M4_16XLarge = InstanceType' "ml.m4.16xlarge"

pattern Ml_M4_2XLarge :: InstanceType
pattern Ml_M4_2XLarge = InstanceType' "ml.m4.2xlarge"

pattern Ml_M4_4XLarge :: InstanceType
pattern Ml_M4_4XLarge = InstanceType' "ml.m4.4xlarge"

pattern Ml_M4_XLarge :: InstanceType
pattern Ml_M4_XLarge = InstanceType' "ml.m4.xlarge"

pattern Ml_P2_16XLarge :: InstanceType
pattern Ml_P2_16XLarge = InstanceType' "ml.p2.16xlarge"

pattern Ml_P2_8XLarge :: InstanceType
pattern Ml_P2_8XLarge = InstanceType' "ml.p2.8xlarge"

pattern Ml_P2_XLarge :: InstanceType
pattern Ml_P2_XLarge = InstanceType' "ml.p2.xlarge"

pattern Ml_P3_16XLarge :: InstanceType
pattern Ml_P3_16XLarge = InstanceType' "ml.p3.16xlarge"

pattern Ml_P3_2XLarge :: InstanceType
pattern Ml_P3_2XLarge = InstanceType' "ml.p3.2xlarge"

pattern Ml_P3_8XLarge :: InstanceType
pattern Ml_P3_8XLarge = InstanceType' "ml.p3.8xlarge"

pattern Ml_T2_2XLarge :: InstanceType
pattern Ml_T2_2XLarge = InstanceType' "ml.t2.2xlarge"

pattern Ml_T2_Large :: InstanceType
pattern Ml_T2_Large = InstanceType' "ml.t2.large"

pattern Ml_T2_Medium :: InstanceType
pattern Ml_T2_Medium = InstanceType' "ml.t2.medium"

pattern Ml_T2_XLarge :: InstanceType
pattern Ml_T2_XLarge = InstanceType' "ml.t2.xlarge"

{-# COMPLETE
  Ml_M4_10XLarge,
  Ml_M4_16XLarge,
  Ml_M4_2XLarge,
  Ml_M4_4XLarge,
  Ml_M4_XLarge,
  Ml_P2_16XLarge,
  Ml_P2_8XLarge,
  Ml_P2_XLarge,
  Ml_P3_16XLarge,
  Ml_P3_2XLarge,
  Ml_P3_8XLarge,
  Ml_T2_2XLarge,
  Ml_T2_Large,
  Ml_T2_Medium,
  Ml_T2_XLarge,
  InstanceType' #-}

instance FromText InstanceType where
    parser = (InstanceType' . mk) <$> takeText

instance ToText InstanceType where
    toText (InstanceType' ci) = original ci

-- | Represents an enum of /known/ $InstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InstanceType where
    toEnum i = case i of
        0 -> Ml_M4_10XLarge
        1 -> Ml_M4_16XLarge
        2 -> Ml_M4_2XLarge
        3 -> Ml_M4_4XLarge
        4 -> Ml_M4_XLarge
        5 -> Ml_P2_16XLarge
        6 -> Ml_P2_8XLarge
        7 -> Ml_P2_XLarge
        8 -> Ml_P3_16XLarge
        9 -> Ml_P3_2XLarge
        10 -> Ml_P3_8XLarge
        11 -> Ml_T2_2XLarge
        12 -> Ml_T2_Large
        13 -> Ml_T2_Medium
        14 -> Ml_T2_XLarge
        _ -> (error . showText) $ "Unknown index for InstanceType: " <> toText i
    fromEnum x = case x of
        Ml_M4_10XLarge -> 0
        Ml_M4_16XLarge -> 1
        Ml_M4_2XLarge -> 2
        Ml_M4_4XLarge -> 3
        Ml_M4_XLarge -> 4
        Ml_P2_16XLarge -> 5
        Ml_P2_8XLarge -> 6
        Ml_P2_XLarge -> 7
        Ml_P3_16XLarge -> 8
        Ml_P3_2XLarge -> 9
        Ml_P3_8XLarge -> 10
        Ml_T2_2XLarge -> 11
        Ml_T2_Large -> 12
        Ml_T2_Medium -> 13
        Ml_T2_XLarge -> 14
        InstanceType' name -> (error . showText) $ "Unknown InstanceType: " <> original name

-- | Represents the bounds of /known/ $InstanceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InstanceType where
    minBound = Ml_M4_10XLarge
    maxBound = Ml_T2_XLarge

instance Hashable     InstanceType
instance NFData       InstanceType
instance ToByteString InstanceType
instance ToQuery      InstanceType
instance ToHeader     InstanceType

instance ToJSON InstanceType where
    toJSON = toJSONText

instance FromJSON InstanceType where
    parseJSON = parseJSONText "InstanceType"
