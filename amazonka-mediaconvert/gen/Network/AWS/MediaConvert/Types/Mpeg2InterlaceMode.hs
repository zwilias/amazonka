{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode where

import Network.AWS.Prelude
  
-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
data Mpeg2InterlaceMode = MIMBottomField
                        | MIMFollowBottomField
                        | MIMFollowTopField
                        | MIMProgressive
                        | MIMTopField
                            deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                      Typeable, Generic)

instance FromText Mpeg2InterlaceMode where
    parser = takeLowerText >>= \case
        "bottom_field" -> pure MIMBottomField
        "follow_bottom_field" -> pure MIMFollowBottomField
        "follow_top_field" -> pure MIMFollowTopField
        "progressive" -> pure MIMProgressive
        "top_field" -> pure MIMTopField
        e -> fromTextError $ "Failure parsing Mpeg2InterlaceMode from value: '" <> e
           <> "'. Accepted values: bottom_field, follow_bottom_field, follow_top_field, progressive, top_field"

instance ToText Mpeg2InterlaceMode where
    toText = \case
        MIMBottomField -> "BOTTOM_FIELD"
        MIMFollowBottomField -> "FOLLOW_BOTTOM_FIELD"
        MIMFollowTopField -> "FOLLOW_TOP_FIELD"
        MIMProgressive -> "PROGRESSIVE"
        MIMTopField -> "TOP_FIELD"

instance Hashable     Mpeg2InterlaceMode
instance NFData       Mpeg2InterlaceMode
instance ToByteString Mpeg2InterlaceMode
instance ToQuery      Mpeg2InterlaceMode
instance ToHeader     Mpeg2InterlaceMode

instance ToJSON Mpeg2InterlaceMode where
    toJSON = toJSONText

instance FromJSON Mpeg2InterlaceMode where
    parseJSON = parseJSONText "Mpeg2InterlaceMode"
