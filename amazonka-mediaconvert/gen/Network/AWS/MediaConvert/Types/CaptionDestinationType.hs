{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDestinationType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionDestinationType (
  CaptionDestinationType (
    ..
    , CDTBurnIn
    , CDTDvbSub
    , CDTEmbedded
    , CDTScc
    , CDTSrt
    , CDTTeletext
    , CDTTtml
    , CDTWebvtt
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML, WebVTT, DVB-Sub, Teletext.
data CaptionDestinationType = CaptionDestinationType' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern CDTBurnIn :: CaptionDestinationType
pattern CDTBurnIn = CaptionDestinationType' "BURN_IN"

pattern CDTDvbSub :: CaptionDestinationType
pattern CDTDvbSub = CaptionDestinationType' "DVB_SUB"

pattern CDTEmbedded :: CaptionDestinationType
pattern CDTEmbedded = CaptionDestinationType' "EMBEDDED"

pattern CDTScc :: CaptionDestinationType
pattern CDTScc = CaptionDestinationType' "SCC"

pattern CDTSrt :: CaptionDestinationType
pattern CDTSrt = CaptionDestinationType' "SRT"

pattern CDTTeletext :: CaptionDestinationType
pattern CDTTeletext = CaptionDestinationType' "TELETEXT"

pattern CDTTtml :: CaptionDestinationType
pattern CDTTtml = CaptionDestinationType' "TTML"

pattern CDTWebvtt :: CaptionDestinationType
pattern CDTWebvtt = CaptionDestinationType' "WEBVTT"

{-# COMPLETE
  CDTBurnIn,
  CDTDvbSub,
  CDTEmbedded,
  CDTScc,
  CDTSrt,
  CDTTeletext,
  CDTTtml,
  CDTWebvtt,
  CaptionDestinationType' #-}

instance FromText CaptionDestinationType where
    parser = (CaptionDestinationType' . mk) <$> takeText

instance ToText CaptionDestinationType where
    toText (CaptionDestinationType' ci) = original ci

-- | Represents an enum of /known/ $CaptionDestinationType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CaptionDestinationType where
    toEnum i = case i of
        0 -> CDTBurnIn
        1 -> CDTDvbSub
        2 -> CDTEmbedded
        3 -> CDTScc
        4 -> CDTSrt
        5 -> CDTTeletext
        6 -> CDTTtml
        7 -> CDTWebvtt
        _ -> (error . showText) $ "Unknown index for CaptionDestinationType: " <> toText i
    fromEnum x = case x of
        CDTBurnIn -> 0
        CDTDvbSub -> 1
        CDTEmbedded -> 2
        CDTScc -> 3
        CDTSrt -> 4
        CDTTeletext -> 5
        CDTTtml -> 6
        CDTWebvtt -> 7
        CaptionDestinationType' name -> (error . showText) $ "Unknown CaptionDestinationType: " <> original name

-- | Represents the bounds of /known/ $CaptionDestinationType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CaptionDestinationType where
    minBound = CDTBurnIn
    maxBound = CDTWebvtt

instance Hashable     CaptionDestinationType
instance NFData       CaptionDestinationType
instance ToByteString CaptionDestinationType
instance ToQuery      CaptionDestinationType
instance ToHeader     CaptionDestinationType

instance ToJSON CaptionDestinationType where
    toJSON = toJSONText

instance FromJSON CaptionDestinationType where
    parseJSON = parseJSONText "CaptionDestinationType"
