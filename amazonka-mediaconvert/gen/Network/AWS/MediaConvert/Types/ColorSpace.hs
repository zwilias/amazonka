{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ColorSpace
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ColorSpace where

import Network.AWS.Prelude
  
-- | Specifies the colorspace of an input. This setting works in tandem with "Color Corrector":#color_corrector > color_space_conversion to determine if any conversion will be performed.
data ColorSpace = Follow
                | HDR10
                | Hlg2020
                | Rec601
                | Rec709
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText ColorSpace where
    parser = takeLowerText >>= \case
        "follow" -> pure Follow
        "hdr10" -> pure HDR10
        "hlg_2020" -> pure Hlg2020
        "rec_601" -> pure Rec601
        "rec_709" -> pure Rec709
        e -> fromTextError $ "Failure parsing ColorSpace from value: '" <> e
           <> "'. Accepted values: follow, hdr10, hlg_2020, rec_601, rec_709"

instance ToText ColorSpace where
    toText = \case
        Follow -> "FOLLOW"
        HDR10 -> "HDR10"
        Hlg2020 -> "HLG_2020"
        Rec601 -> "REC_601"
        Rec709 -> "REC_709"

instance Hashable     ColorSpace
instance NFData       ColorSpace
instance ToByteString ColorSpace
instance ToQuery      ColorSpace
instance ToHeader     ColorSpace

instance ToJSON ColorSpace where
    toJSON = toJSONText

instance FromJSON ColorSpace where
    parseJSON = parseJSONText "ColorSpace"
