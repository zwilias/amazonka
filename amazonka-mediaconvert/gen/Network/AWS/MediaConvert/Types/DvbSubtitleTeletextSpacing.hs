{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing (
  DvbSubtitleTeletextSpacing (
    ..
    , FixedGrid
    , Proportional
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
data DvbSubtitleTeletextSpacing = DvbSubtitleTeletextSpacing' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern FixedGrid :: DvbSubtitleTeletextSpacing
pattern FixedGrid = DvbSubtitleTeletextSpacing' "FIXED_GRID"

pattern Proportional :: DvbSubtitleTeletextSpacing
pattern Proportional = DvbSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  FixedGrid,
  Proportional,
  DvbSubtitleTeletextSpacing' #-}

instance FromText DvbSubtitleTeletextSpacing where
    parser = (DvbSubtitleTeletextSpacing' . mk) <$> takeText

instance ToText DvbSubtitleTeletextSpacing where
    toText (DvbSubtitleTeletextSpacing' ci) = original ci

-- | Represents an enum of /known/ $DvbSubtitleTeletextSpacing.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DvbSubtitleTeletextSpacing where
    toEnum i = case i of
        0 -> FixedGrid
        1 -> Proportional
        _ -> (error . showText) $ "Unknown index for DvbSubtitleTeletextSpacing: " <> toText i
    fromEnum x = case x of
        FixedGrid -> 0
        Proportional -> 1
        DvbSubtitleTeletextSpacing' name -> (error . showText) $ "Unknown DvbSubtitleTeletextSpacing: " <> original name

-- | Represents the bounds of /known/ $DvbSubtitleTeletextSpacing.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DvbSubtitleTeletextSpacing where
    minBound = FixedGrid
    maxBound = Proportional

instance Hashable     DvbSubtitleTeletextSpacing
instance NFData       DvbSubtitleTeletextSpacing
instance ToByteString DvbSubtitleTeletextSpacing
instance ToQuery      DvbSubtitleTeletextSpacing
instance ToHeader     DvbSubtitleTeletextSpacing

instance ToJSON DvbSubtitleTeletextSpacing where
    toJSON = toJSONText

instance FromJSON DvbSubtitleTeletextSpacing where
    parseJSON = parseJSONText "DvbSubtitleTeletextSpacing"
