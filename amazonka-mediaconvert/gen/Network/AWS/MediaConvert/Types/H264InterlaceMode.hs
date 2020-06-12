{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264InterlaceMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264InterlaceMode where

import Network.AWS.Prelude
  
-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
data H264InterlaceMode = HIMBottomField
                       | HIMFollowBottomField
                       | HIMFollowTopField
                       | HIMProgressive
                       | HIMTopField
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText H264InterlaceMode where
    parser = takeLowerText >>= \case
        "bottom_field" -> pure HIMBottomField
        "follow_bottom_field" -> pure HIMFollowBottomField
        "follow_top_field" -> pure HIMFollowTopField
        "progressive" -> pure HIMProgressive
        "top_field" -> pure HIMTopField
        e -> fromTextError $ "Failure parsing H264InterlaceMode from value: '" <> e
           <> "'. Accepted values: bottom_field, follow_bottom_field, follow_top_field, progressive, top_field"

instance ToText H264InterlaceMode where
    toText = \case
        HIMBottomField -> "BOTTOM_FIELD"
        HIMFollowBottomField -> "FOLLOW_BOTTOM_FIELD"
        HIMFollowTopField -> "FOLLOW_TOP_FIELD"
        HIMProgressive -> "PROGRESSIVE"
        HIMTopField -> "TOP_FIELD"

instance Hashable     H264InterlaceMode
instance NFData       H264InterlaceMode
instance ToByteString H264InterlaceMode
instance ToQuery      H264InterlaceMode
instance ToHeader     H264InterlaceMode

instance ToJSON H264InterlaceMode where
    toJSON = toJSONText

instance FromJSON H264InterlaceMode where
    parseJSON = parseJSONText "H264InterlaceMode"
