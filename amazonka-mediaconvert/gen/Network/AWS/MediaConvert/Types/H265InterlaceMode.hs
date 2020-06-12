{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265InterlaceMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265InterlaceMode where

import Network.AWS.Prelude
  
-- | Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOw_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same  field polarity as the source. Therefore, behavior depends on the input scan type. - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first". - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
data H265InterlaceMode = BottomField
                       | FollowBottomField
                       | FollowTopField
                       | Progressive
                       | TopField
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText H265InterlaceMode where
    parser = takeLowerText >>= \case
        "bottom_field" -> pure BottomField
        "follow_bottom_field" -> pure FollowBottomField
        "follow_top_field" -> pure FollowTopField
        "progressive" -> pure Progressive
        "top_field" -> pure TopField
        e -> fromTextError $ "Failure parsing H265InterlaceMode from value: '" <> e
           <> "'. Accepted values: bottom_field, follow_bottom_field, follow_top_field, progressive, top_field"

instance ToText H265InterlaceMode where
    toText = \case
        BottomField -> "BOTTOM_FIELD"
        FollowBottomField -> "FOLLOW_BOTTOM_FIELD"
        FollowTopField -> "FOLLOW_TOP_FIELD"
        Progressive -> "PROGRESSIVE"
        TopField -> "TOP_FIELD"

instance Hashable     H265InterlaceMode
instance NFData       H265InterlaceMode
instance ToByteString H265InterlaceMode
instance ToQuery      H265InterlaceMode
instance ToHeader     H265InterlaceMode

instance ToJSON H265InterlaceMode where
    toJSON = toJSONText

instance FromJSON H265InterlaceMode where
    parseJSON = parseJSONText "H265InterlaceMode"
