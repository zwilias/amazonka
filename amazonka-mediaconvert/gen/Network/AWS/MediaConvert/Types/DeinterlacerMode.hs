{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DeinterlacerMode (
  DeinterlacerMode (
    ..
    , Adaptive
    , Deinterlace
    , InverseTelecine
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
data DeinterlacerMode = DeinterlacerMode' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Adaptive :: DeinterlacerMode
pattern Adaptive = DeinterlacerMode' "ADAPTIVE"

pattern Deinterlace :: DeinterlacerMode
pattern Deinterlace = DeinterlacerMode' "DEINTERLACE"

pattern InverseTelecine :: DeinterlacerMode
pattern InverseTelecine = DeinterlacerMode' "INVERSE_TELECINE"

{-# COMPLETE
  Adaptive,
  Deinterlace,
  InverseTelecine,
  DeinterlacerMode' #-}

instance FromText DeinterlacerMode where
    parser = (DeinterlacerMode' . mk) <$> takeText

instance ToText DeinterlacerMode where
    toText (DeinterlacerMode' ci) = original ci

-- | Represents an enum of /known/ $DeinterlacerMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DeinterlacerMode where
    toEnum i = case i of
        0 -> Adaptive
        1 -> Deinterlace
        2 -> InverseTelecine
        _ -> (error . showText) $ "Unknown index for DeinterlacerMode: " <> toText i
    fromEnum x = case x of
        Adaptive -> 0
        Deinterlace -> 1
        InverseTelecine -> 2
        DeinterlacerMode' name -> (error . showText) $ "Unknown DeinterlacerMode: " <> original name

-- | Represents the bounds of /known/ $DeinterlacerMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DeinterlacerMode where
    minBound = Adaptive
    maxBound = InverseTelecine

instance Hashable     DeinterlacerMode
instance NFData       DeinterlacerMode
instance ToByteString DeinterlacerMode
instance ToQuery      DeinterlacerMode
instance ToHeader     DeinterlacerMode

instance ToJSON DeinterlacerMode where
    toJSON = toJSONText

instance FromJSON DeinterlacerMode where
    parseJSON = parseJSONText "DeinterlacerMode"
