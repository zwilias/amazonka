{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing (
  BurninSubtitleTeletextSpacing (
    ..
    , BSTSFixedGrid
    , BSTSProportional
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
data BurninSubtitleTeletextSpacing = BurninSubtitleTeletextSpacing' (CI
                                                                       Text)
                                       deriving (Eq, Ord, Read, Show, Data,
                                                 Typeable, Generic)

pattern BSTSFixedGrid :: BurninSubtitleTeletextSpacing
pattern BSTSFixedGrid = BurninSubtitleTeletextSpacing' "FIXED_GRID"

pattern BSTSProportional :: BurninSubtitleTeletextSpacing
pattern BSTSProportional = BurninSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  BSTSFixedGrid,
  BSTSProportional,
  BurninSubtitleTeletextSpacing' #-}

instance FromText BurninSubtitleTeletextSpacing where
    parser = (BurninSubtitleTeletextSpacing' . mk) <$> takeText

instance ToText BurninSubtitleTeletextSpacing where
    toText (BurninSubtitleTeletextSpacing' ci) = original ci

-- | Represents an enum of /known/ $BurninSubtitleTeletextSpacing.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum BurninSubtitleTeletextSpacing where
    toEnum i = case i of
        0 -> BSTSFixedGrid
        1 -> BSTSProportional
        _ -> (error . showText) $ "Unknown index for BurninSubtitleTeletextSpacing: " <> toText i
    fromEnum x = case x of
        BSTSFixedGrid -> 0
        BSTSProportional -> 1
        BurninSubtitleTeletextSpacing' name -> (error . showText) $ "Unknown BurninSubtitleTeletextSpacing: " <> original name

-- | Represents the bounds of /known/ $BurninSubtitleTeletextSpacing.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded BurninSubtitleTeletextSpacing where
    minBound = BSTSFixedGrid
    maxBound = BSTSProportional

instance Hashable     BurninSubtitleTeletextSpacing
instance NFData       BurninSubtitleTeletextSpacing
instance ToByteString BurninSubtitleTeletextSpacing
instance ToQuery      BurninSubtitleTeletextSpacing
instance ToHeader     BurninSubtitleTeletextSpacing

instance ToJSON BurninSubtitleTeletextSpacing where
    toJSON = toJSONText

instance FromJSON BurninSubtitleTeletextSpacing where
    parseJSON = parseJSONText "BurninSubtitleTeletextSpacing"
