{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265CodecLevel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265CodecLevel (
  H265CodecLevel (
    ..
    , Auto
    , Level1
    , Level2
    , Level21
    , Level3
    , Level31
    , Level4
    , Level41
    , Level5
    , Level51
    , Level52
    , Level6
    , Level61
    , Level62
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H.265 Level.
data H265CodecLevel = H265CodecLevel' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Auto :: H265CodecLevel
pattern Auto = H265CodecLevel' "AUTO"

pattern Level1 :: H265CodecLevel
pattern Level1 = H265CodecLevel' "LEVEL_1"

pattern Level2 :: H265CodecLevel
pattern Level2 = H265CodecLevel' "LEVEL_2"

pattern Level21 :: H265CodecLevel
pattern Level21 = H265CodecLevel' "LEVEL_2_1"

pattern Level3 :: H265CodecLevel
pattern Level3 = H265CodecLevel' "LEVEL_3"

pattern Level31 :: H265CodecLevel
pattern Level31 = H265CodecLevel' "LEVEL_3_1"

pattern Level4 :: H265CodecLevel
pattern Level4 = H265CodecLevel' "LEVEL_4"

pattern Level41 :: H265CodecLevel
pattern Level41 = H265CodecLevel' "LEVEL_4_1"

pattern Level5 :: H265CodecLevel
pattern Level5 = H265CodecLevel' "LEVEL_5"

pattern Level51 :: H265CodecLevel
pattern Level51 = H265CodecLevel' "LEVEL_5_1"

pattern Level52 :: H265CodecLevel
pattern Level52 = H265CodecLevel' "LEVEL_5_2"

pattern Level6 :: H265CodecLevel
pattern Level6 = H265CodecLevel' "LEVEL_6"

pattern Level61 :: H265CodecLevel
pattern Level61 = H265CodecLevel' "LEVEL_6_1"

pattern Level62 :: H265CodecLevel
pattern Level62 = H265CodecLevel' "LEVEL_6_2"

{-# COMPLETE
  Auto,
  Level1,
  Level2,
  Level21,
  Level3,
  Level31,
  Level4,
  Level41,
  Level5,
  Level51,
  Level52,
  Level6,
  Level61,
  Level62,
  H265CodecLevel' #-}

instance FromText H265CodecLevel where
    parser = (H265CodecLevel' . mk) <$> takeText

instance ToText H265CodecLevel where
    toText (H265CodecLevel' ci) = original ci

-- | Represents an enum of /known/ $H265CodecLevel.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H265CodecLevel where
    toEnum i = case i of
        0 -> Auto
        1 -> Level1
        2 -> Level2
        3 -> Level21
        4 -> Level3
        5 -> Level31
        6 -> Level4
        7 -> Level41
        8 -> Level5
        9 -> Level51
        10 -> Level52
        11 -> Level6
        12 -> Level61
        13 -> Level62
        _ -> (error . showText) $ "Unknown index for H265CodecLevel: " <> toText i
    fromEnum x = case x of
        Auto -> 0
        Level1 -> 1
        Level2 -> 2
        Level21 -> 3
        Level3 -> 4
        Level31 -> 5
        Level4 -> 6
        Level41 -> 7
        Level5 -> 8
        Level51 -> 9
        Level52 -> 10
        Level6 -> 11
        Level61 -> 12
        Level62 -> 13
        H265CodecLevel' name -> (error . showText) $ "Unknown H265CodecLevel: " <> original name

-- | Represents the bounds of /known/ $H265CodecLevel.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H265CodecLevel where
    minBound = Auto
    maxBound = Level62

instance Hashable     H265CodecLevel
instance NFData       H265CodecLevel
instance ToByteString H265CodecLevel
instance ToQuery      H265CodecLevel
instance ToHeader     H265CodecLevel

instance ToJSON H265CodecLevel where
    toJSON = toJSONText

instance FromJSON H265CodecLevel where
    parseJSON = parseJSONText "H265CodecLevel"
