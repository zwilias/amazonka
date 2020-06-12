{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresInterlaceMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresInterlaceMode where

import Network.AWS.Prelude
  
-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
data ProresInterlaceMode = PIMBottomField
                         | PIMFollowBottomField
                         | PIMFollowTopField
                         | PIMProgressive
                         | PIMTopField
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText ProresInterlaceMode where
    parser = takeLowerText >>= \case
        "bottom_field" -> pure PIMBottomField
        "follow_bottom_field" -> pure PIMFollowBottomField
        "follow_top_field" -> pure PIMFollowTopField
        "progressive" -> pure PIMProgressive
        "top_field" -> pure PIMTopField
        e -> fromTextError $ "Failure parsing ProresInterlaceMode from value: '" <> e
           <> "'. Accepted values: bottom_field, follow_bottom_field, follow_top_field, progressive, top_field"

instance ToText ProresInterlaceMode where
    toText = \case
        PIMBottomField -> "BOTTOM_FIELD"
        PIMFollowBottomField -> "FOLLOW_BOTTOM_FIELD"
        PIMFollowTopField -> "FOLLOW_TOP_FIELD"
        PIMProgressive -> "PROGRESSIVE"
        PIMTopField -> "TOP_FIELD"

instance Hashable     ProresInterlaceMode
instance NFData       ProresInterlaceMode
instance ToByteString ProresInterlaceMode
instance ToQuery      ProresInterlaceMode
instance ToHeader     ProresInterlaceMode

instance ToJSON ProresInterlaceMode where
    toJSON = toJSONText

instance FromJSON ProresInterlaceMode where
    parseJSON = parseJSONText "ProresInterlaceMode"
