{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing where

import Network.AWS.Prelude
  
-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
data DvbSubtitleTeletextSpacing = FixedGrid
                                | Proportional
                                    deriving (Eq, Ord, Read, Show, Enum,
                                              Bounded, Data, Typeable, Generic)

instance FromText DvbSubtitleTeletextSpacing where
    parser = takeLowerText >>= \case
        "fixed_grid" -> pure FixedGrid
        "proportional" -> pure Proportional
        e -> fromTextError $ "Failure parsing DvbSubtitleTeletextSpacing from value: '" <> e
           <> "'. Accepted values: fixed_grid, proportional"

instance ToText DvbSubtitleTeletextSpacing where
    toText = \case
        FixedGrid -> "FIXED_GRID"
        Proportional -> "PROPORTIONAL"

instance Hashable     DvbSubtitleTeletextSpacing
instance NFData       DvbSubtitleTeletextSpacing
instance ToByteString DvbSubtitleTeletextSpacing
instance ToQuery      DvbSubtitleTeletextSpacing
instance ToHeader     DvbSubtitleTeletextSpacing

instance ToJSON DvbSubtitleTeletextSpacing where
    toJSON = toJSONText

instance FromJSON DvbSubtitleTeletextSpacing where
    parseJSON = parseJSONText "DvbSubtitleTeletextSpacing"
