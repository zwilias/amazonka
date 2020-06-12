{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.CaptionDestinationType where

import Network.AWS.Prelude
  
-- | Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML, WebVTT, DVB-Sub, Teletext.
data CaptionDestinationType = CDTBurnIn
                            | CDTDvbSub
                            | CDTEmbedded
                            | CDTScc
                            | CDTSrt
                            | CDTTeletext
                            | CDTTtml
                            | CDTWebvtt
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText CaptionDestinationType where
    parser = takeLowerText >>= \case
        "burn_in" -> pure CDTBurnIn
        "dvb_sub" -> pure CDTDvbSub
        "embedded" -> pure CDTEmbedded
        "scc" -> pure CDTScc
        "srt" -> pure CDTSrt
        "teletext" -> pure CDTTeletext
        "ttml" -> pure CDTTtml
        "webvtt" -> pure CDTWebvtt
        e -> fromTextError $ "Failure parsing CaptionDestinationType from value: '" <> e
           <> "'. Accepted values: burn_in, dvb_sub, embedded, scc, srt, teletext, ttml, webvtt"

instance ToText CaptionDestinationType where
    toText = \case
        CDTBurnIn -> "BURN_IN"
        CDTDvbSub -> "DVB_SUB"
        CDTEmbedded -> "EMBEDDED"
        CDTScc -> "SCC"
        CDTSrt -> "SRT"
        CDTTeletext -> "TELETEXT"
        CDTTtml -> "TTML"
        CDTWebvtt -> "WEBVTT"

instance Hashable     CaptionDestinationType
instance NFData       CaptionDestinationType
instance ToByteString CaptionDestinationType
instance ToQuery      CaptionDestinationType
instance ToHeader     CaptionDestinationType

instance ToJSON CaptionDestinationType where
    toJSON = toJSONText

instance FromJSON CaptionDestinationType where
    parseJSON = parseJSONText "CaptionDestinationType"
