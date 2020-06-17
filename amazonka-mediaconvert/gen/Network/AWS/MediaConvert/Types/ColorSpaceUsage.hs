{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ColorSpaceUsage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ColorSpaceUsage (
  ColorSpaceUsage (
    ..
    , Fallback
    , Force
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | There are two sources for color metadata, the input file and the job configuration. This enum controls which takes precedence. FORCE: System will use color metadata supplied by user, if any. If the user does not supply color metadata the system will use data from the source. FALLBACK: System will use color metadata from the source. If source has no color metadata, the system will use user-supplied color metadata values if available.
data ColorSpaceUsage = ColorSpaceUsage' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Fallback :: ColorSpaceUsage
pattern Fallback = ColorSpaceUsage' "FALLBACK"

pattern Force :: ColorSpaceUsage
pattern Force = ColorSpaceUsage' "FORCE"

{-# COMPLETE
  Fallback,
  Force,
  ColorSpaceUsage' #-}

instance FromText ColorSpaceUsage where
    parser = (ColorSpaceUsage' . mk) <$> takeText

instance ToText ColorSpaceUsage where
    toText (ColorSpaceUsage' ci) = original ci

-- | Represents an enum of /known/ $ColorSpaceUsage.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ColorSpaceUsage where
    toEnum i = case i of
        0 -> Fallback
        1 -> Force
        _ -> (error . showText) $ "Unknown index for ColorSpaceUsage: " <> toText i
    fromEnum x = case x of
        Fallback -> 0
        Force -> 1
        ColorSpaceUsage' name -> (error . showText) $ "Unknown ColorSpaceUsage: " <> original name

-- | Represents the bounds of /known/ $ColorSpaceUsage.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ColorSpaceUsage where
    minBound = Fallback
    maxBound = Force

instance Hashable     ColorSpaceUsage
instance NFData       ColorSpaceUsage
instance ToByteString ColorSpaceUsage
instance ToQuery      ColorSpaceUsage
instance ToHeader     ColorSpaceUsage

instance ToJSON ColorSpaceUsage where
    toJSON = toJSONText

instance FromJSON ColorSpaceUsage where
    parseJSON = parseJSONText "ColorSpaceUsage"
