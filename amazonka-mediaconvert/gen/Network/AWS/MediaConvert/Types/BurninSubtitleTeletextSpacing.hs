{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing where

import Network.AWS.Prelude
  
-- | Controls whether a fixed grid size or proportional font spacing will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
data BurninSubtitleTeletextSpacing = BSTSFixedGrid
                                   | BSTSProportional
                                       deriving (Eq, Ord, Read, Show, Enum,
                                                 Bounded, Data, Typeable,
                                                 Generic)

instance FromText BurninSubtitleTeletextSpacing where
    parser = takeLowerText >>= \case
        "fixed_grid" -> pure BSTSFixedGrid
        "proportional" -> pure BSTSProportional
        e -> fromTextError $ "Failure parsing BurninSubtitleTeletextSpacing from value: '" <> e
           <> "'. Accepted values: fixed_grid, proportional"

instance ToText BurninSubtitleTeletextSpacing where
    toText = \case
        BSTSFixedGrid -> "FIXED_GRID"
        BSTSProportional -> "PROPORTIONAL"

instance Hashable     BurninSubtitleTeletextSpacing
instance NFData       BurninSubtitleTeletextSpacing
instance ToByteString BurninSubtitleTeletextSpacing
instance ToQuery      BurninSubtitleTeletextSpacing
instance ToHeader     BurninSubtitleTeletextSpacing

instance ToJSON BurninSubtitleTeletextSpacing where
    toJSON = toJSONText

instance FromJSON BurninSubtitleTeletextSpacing where
    parseJSON = parseJSONText "BurninSubtitleTeletextSpacing"
