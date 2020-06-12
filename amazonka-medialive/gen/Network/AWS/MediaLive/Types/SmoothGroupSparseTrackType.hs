{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType where

import Network.AWS.Prelude
  
-- | Placeholder documentation for SmoothGroupSparseTrackType
data SmoothGroupSparseTrackType = SGSTTNone
                                | SGSTTScte35
                                    deriving (Eq, Ord, Read, Show, Enum,
                                              Bounded, Data, Typeable, Generic)

instance FromText SmoothGroupSparseTrackType where
    parser = takeLowerText >>= \case
        "none" -> pure SGSTTNone
        "scte_35" -> pure SGSTTScte35
        e -> fromTextError $ "Failure parsing SmoothGroupSparseTrackType from value: '" <> e
           <> "'. Accepted values: none, scte_35"

instance ToText SmoothGroupSparseTrackType where
    toText = \case
        SGSTTNone -> "NONE"
        SGSTTScte35 -> "SCTE_35"

instance Hashable     SmoothGroupSparseTrackType
instance NFData       SmoothGroupSparseTrackType
instance ToByteString SmoothGroupSparseTrackType
instance ToQuery      SmoothGroupSparseTrackType
instance ToHeader     SmoothGroupSparseTrackType

instance ToJSON SmoothGroupSparseTrackType where
    toJSON = toJSONText

instance FromJSON SmoothGroupSparseTrackType where
    parseJSON = parseJSONText "SmoothGroupSparseTrackType"
