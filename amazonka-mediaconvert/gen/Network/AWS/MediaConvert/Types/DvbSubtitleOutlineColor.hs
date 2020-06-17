{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor (
  DvbSubtitleOutlineColor (
    ..
    , Black
    , Blue
    , Green
    , Red
    , White
    , Yellow
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data DvbSubtitleOutlineColor = DvbSubtitleOutlineColor' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern Black :: DvbSubtitleOutlineColor
pattern Black = DvbSubtitleOutlineColor' "BLACK"

pattern Blue :: DvbSubtitleOutlineColor
pattern Blue = DvbSubtitleOutlineColor' "BLUE"

pattern Green :: DvbSubtitleOutlineColor
pattern Green = DvbSubtitleOutlineColor' "GREEN"

pattern Red :: DvbSubtitleOutlineColor
pattern Red = DvbSubtitleOutlineColor' "RED"

pattern White :: DvbSubtitleOutlineColor
pattern White = DvbSubtitleOutlineColor' "WHITE"

pattern Yellow :: DvbSubtitleOutlineColor
pattern Yellow = DvbSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  Black,
  Blue,
  Green,
  Red,
  White,
  Yellow,
  DvbSubtitleOutlineColor' #-}

instance FromText DvbSubtitleOutlineColor where
    parser = (DvbSubtitleOutlineColor' . mk) <$> takeText

instance ToText DvbSubtitleOutlineColor where
    toText (DvbSubtitleOutlineColor' ci) = original ci

-- | Represents an enum of /known/ $DvbSubtitleOutlineColor.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DvbSubtitleOutlineColor where
    toEnum i = case i of
        0 -> Black
        1 -> Blue
        2 -> Green
        3 -> Red
        4 -> White
        5 -> Yellow
        _ -> (error . showText) $ "Unknown index for DvbSubtitleOutlineColor: " <> toText i
    fromEnum x = case x of
        Black -> 0
        Blue -> 1
        Green -> 2
        Red -> 3
        White -> 4
        Yellow -> 5
        DvbSubtitleOutlineColor' name -> (error . showText) $ "Unknown DvbSubtitleOutlineColor: " <> original name

-- | Represents the bounds of /known/ $DvbSubtitleOutlineColor.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DvbSubtitleOutlineColor where
    minBound = Black
    maxBound = Yellow

instance Hashable     DvbSubtitleOutlineColor
instance NFData       DvbSubtitleOutlineColor
instance ToByteString DvbSubtitleOutlineColor
instance ToQuery      DvbSubtitleOutlineColor
instance ToHeader     DvbSubtitleOutlineColor

instance ToJSON DvbSubtitleOutlineColor where
    toJSON = toJSONText

instance FromJSON DvbSubtitleOutlineColor where
    parseJSON = parseJSONText "DvbSubtitleOutlineColor"
