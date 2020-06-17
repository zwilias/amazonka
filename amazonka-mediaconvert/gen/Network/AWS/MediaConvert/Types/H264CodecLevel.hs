{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264CodecLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264CodecLevel (
  H264CodecLevel (
    ..
    , HCLAuto
    , HCLLevel1
    , HCLLevel11
    , HCLLevel12
    , HCLLevel13
    , HCLLevel2
    , HCLLevel21
    , HCLLevel22
    , HCLLevel3
    , HCLLevel31
    , HCLLevel32
    , HCLLevel4
    , HCLLevel41
    , HCLLevel42
    , HCLLevel5
    , HCLLevel51
    , HCLLevel52
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H.264 Level.
data H264CodecLevel = H264CodecLevel' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern HCLAuto :: H264CodecLevel
pattern HCLAuto = H264CodecLevel' "AUTO"

pattern HCLLevel1 :: H264CodecLevel
pattern HCLLevel1 = H264CodecLevel' "LEVEL_1"

pattern HCLLevel11 :: H264CodecLevel
pattern HCLLevel11 = H264CodecLevel' "LEVEL_1_1"

pattern HCLLevel12 :: H264CodecLevel
pattern HCLLevel12 = H264CodecLevel' "LEVEL_1_2"

pattern HCLLevel13 :: H264CodecLevel
pattern HCLLevel13 = H264CodecLevel' "LEVEL_1_3"

pattern HCLLevel2 :: H264CodecLevel
pattern HCLLevel2 = H264CodecLevel' "LEVEL_2"

pattern HCLLevel21 :: H264CodecLevel
pattern HCLLevel21 = H264CodecLevel' "LEVEL_2_1"

pattern HCLLevel22 :: H264CodecLevel
pattern HCLLevel22 = H264CodecLevel' "LEVEL_2_2"

pattern HCLLevel3 :: H264CodecLevel
pattern HCLLevel3 = H264CodecLevel' "LEVEL_3"

pattern HCLLevel31 :: H264CodecLevel
pattern HCLLevel31 = H264CodecLevel' "LEVEL_3_1"

pattern HCLLevel32 :: H264CodecLevel
pattern HCLLevel32 = H264CodecLevel' "LEVEL_3_2"

pattern HCLLevel4 :: H264CodecLevel
pattern HCLLevel4 = H264CodecLevel' "LEVEL_4"

pattern HCLLevel41 :: H264CodecLevel
pattern HCLLevel41 = H264CodecLevel' "LEVEL_4_1"

pattern HCLLevel42 :: H264CodecLevel
pattern HCLLevel42 = H264CodecLevel' "LEVEL_4_2"

pattern HCLLevel5 :: H264CodecLevel
pattern HCLLevel5 = H264CodecLevel' "LEVEL_5"

pattern HCLLevel51 :: H264CodecLevel
pattern HCLLevel51 = H264CodecLevel' "LEVEL_5_1"

pattern HCLLevel52 :: H264CodecLevel
pattern HCLLevel52 = H264CodecLevel' "LEVEL_5_2"

{-# COMPLETE
  HCLAuto,
  HCLLevel1,
  HCLLevel11,
  HCLLevel12,
  HCLLevel13,
  HCLLevel2,
  HCLLevel21,
  HCLLevel22,
  HCLLevel3,
  HCLLevel31,
  HCLLevel32,
  HCLLevel4,
  HCLLevel41,
  HCLLevel42,
  HCLLevel5,
  HCLLevel51,
  HCLLevel52,
  H264CodecLevel' #-}

instance FromText H264CodecLevel where
    parser = (H264CodecLevel' . mk) <$> takeText

instance ToText H264CodecLevel where
    toText (H264CodecLevel' ci) = original ci

-- | Represents an enum of /known/ $H264CodecLevel.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264CodecLevel where
    toEnum i = case i of
        0 -> HCLAuto
        1 -> HCLLevel1
        2 -> HCLLevel11
        3 -> HCLLevel12
        4 -> HCLLevel13
        5 -> HCLLevel2
        6 -> HCLLevel21
        7 -> HCLLevel22
        8 -> HCLLevel3
        9 -> HCLLevel31
        10 -> HCLLevel32
        11 -> HCLLevel4
        12 -> HCLLevel41
        13 -> HCLLevel42
        14 -> HCLLevel5
        15 -> HCLLevel51
        16 -> HCLLevel52
        _ -> (error . showText) $ "Unknown index for H264CodecLevel: " <> toText i
    fromEnum x = case x of
        HCLAuto -> 0
        HCLLevel1 -> 1
        HCLLevel11 -> 2
        HCLLevel12 -> 3
        HCLLevel13 -> 4
        HCLLevel2 -> 5
        HCLLevel21 -> 6
        HCLLevel22 -> 7
        HCLLevel3 -> 8
        HCLLevel31 -> 9
        HCLLevel32 -> 10
        HCLLevel4 -> 11
        HCLLevel41 -> 12
        HCLLevel42 -> 13
        HCLLevel5 -> 14
        HCLLevel51 -> 15
        HCLLevel52 -> 16
        H264CodecLevel' name -> (error . showText) $ "Unknown H264CodecLevel: " <> original name

-- | Represents the bounds of /known/ $H264CodecLevel.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264CodecLevel where
    minBound = HCLAuto
    maxBound = HCLLevel52

instance Hashable     H264CodecLevel
instance NFData       H264CodecLevel
instance ToByteString H264CodecLevel
instance ToQuery      H264CodecLevel
instance ToHeader     H264CodecLevel

instance ToJSON H264CodecLevel where
    toJSON = toJSONText

instance FromJSON H264CodecLevel where
    parseJSON = parseJSONText "H264CodecLevel"
