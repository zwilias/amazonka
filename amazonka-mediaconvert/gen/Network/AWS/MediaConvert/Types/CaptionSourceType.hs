{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionSourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionSourceType where

import Network.AWS.Prelude
  
-- | Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
data CaptionSourceType = CSTAncillary
                       | CSTDvbSub
                       | CSTEmbedded
                       | CSTNullSource
                       | CSTScc
                       | CSTSrt
                       | CSTStl
                       | CSTTeletext
                       | CSTTtml
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText CaptionSourceType where
    parser = takeLowerText >>= \case
        "ancillary" -> pure CSTAncillary
        "dvb_sub" -> pure CSTDvbSub
        "embedded" -> pure CSTEmbedded
        "null_source" -> pure CSTNullSource
        "scc" -> pure CSTScc
        "srt" -> pure CSTSrt
        "stl" -> pure CSTStl
        "teletext" -> pure CSTTeletext
        "ttml" -> pure CSTTtml
        e -> fromTextError $ "Failure parsing CaptionSourceType from value: '" <> e
           <> "'. Accepted values: ancillary, dvb_sub, embedded, null_source, scc, srt, stl, teletext, ttml"

instance ToText CaptionSourceType where
    toText = \case
        CSTAncillary -> "ANCILLARY"
        CSTDvbSub -> "DVB_SUB"
        CSTEmbedded -> "EMBEDDED"
        CSTNullSource -> "NULL_SOURCE"
        CSTScc -> "SCC"
        CSTSrt -> "SRT"
        CSTStl -> "STL"
        CSTTeletext -> "TELETEXT"
        CSTTtml -> "TTML"

instance Hashable     CaptionSourceType
instance NFData       CaptionSourceType
instance ToByteString CaptionSourceType
instance ToQuery      CaptionSourceType
instance ToHeader     CaptionSourceType

instance ToJSON CaptionSourceType where
    toJSON = toJSONText

instance FromJSON CaptionSourceType where
    parseJSON = parseJSONText "CaptionSourceType"
