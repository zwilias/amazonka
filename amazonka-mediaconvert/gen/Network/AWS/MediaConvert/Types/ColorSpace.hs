{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.ColorSpace (
  ColorSpace (
    ..
    , Follow
    , HDR10
    , Hlg2020
    , Rec601
    , Rec709
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the colorspace of an input. This setting works in tandem with "Color Corrector":#color_corrector > color_space_conversion to determine if any conversion will be performed.
data ColorSpace = ColorSpace' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern Follow :: ColorSpace
pattern Follow = ColorSpace' "FOLLOW"

pattern HDR10 :: ColorSpace
pattern HDR10 = ColorSpace' "HDR10"

pattern Hlg2020 :: ColorSpace
pattern Hlg2020 = ColorSpace' "HLG_2020"

pattern Rec601 :: ColorSpace
pattern Rec601 = ColorSpace' "REC_601"

pattern Rec709 :: ColorSpace
pattern Rec709 = ColorSpace' "REC_709"

{-# COMPLETE
  Follow,
  HDR10,
  Hlg2020,
  Rec601,
  Rec709,
  ColorSpace' #-}

instance FromText ColorSpace where
    parser = (ColorSpace' . mk) <$> takeText

instance ToText ColorSpace where
    toText (ColorSpace' ci) = original ci

-- | Represents an enum of /known/ $ColorSpace.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ColorSpace where
    toEnum i = case i of
        0 -> Follow
        1 -> HDR10
        2 -> Hlg2020
        3 -> Rec601
        4 -> Rec709
        _ -> (error . showText) $ "Unknown index for ColorSpace: " <> toText i
    fromEnum x = case x of
        Follow -> 0
        HDR10 -> 1
        Hlg2020 -> 2
        Rec601 -> 3
        Rec709 -> 4
        ColorSpace' name -> (error . showText) $ "Unknown ColorSpace: " <> original name

-- | Represents the bounds of /known/ $ColorSpace.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ColorSpace where
    minBound = Follow
    maxBound = Rec709

instance Hashable     ColorSpace
instance NFData       ColorSpace
instance ToByteString ColorSpace
instance ToQuery      ColorSpace
instance ToHeader     ColorSpace

instance ToJSON ColorSpace where
    toJSON = toJSONText

instance FromJSON ColorSpace where
    parseJSON = parseJSONText "ColorSpace"
