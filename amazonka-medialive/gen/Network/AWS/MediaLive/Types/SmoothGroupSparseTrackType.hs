{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType (
  SmoothGroupSparseTrackType (
    ..
    , SGSTTNone
    , SGSTTScte35
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for SmoothGroupSparseTrackType
data SmoothGroupSparseTrackType = SmoothGroupSparseTrackType' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern SGSTTNone :: SmoothGroupSparseTrackType
pattern SGSTTNone = SmoothGroupSparseTrackType' "NONE"

pattern SGSTTScte35 :: SmoothGroupSparseTrackType
pattern SGSTTScte35 = SmoothGroupSparseTrackType' "SCTE_35"

{-# COMPLETE
  SGSTTNone,
  SGSTTScte35,
  SmoothGroupSparseTrackType' #-}

instance FromText SmoothGroupSparseTrackType where
    parser = (SmoothGroupSparseTrackType' . mk) <$> takeText

instance ToText SmoothGroupSparseTrackType where
    toText (SmoothGroupSparseTrackType' ci) = original ci

-- | Represents an enum of /known/ $SmoothGroupSparseTrackType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum SmoothGroupSparseTrackType where
    toEnum i = case i of
        0 -> SGSTTNone
        1 -> SGSTTScte35
        _ -> (error . showText) $ "Unknown index for SmoothGroupSparseTrackType: " <> toText i
    fromEnum x = case x of
        SGSTTNone -> 0
        SGSTTScte35 -> 1
        SmoothGroupSparseTrackType' name -> (error . showText) $ "Unknown SmoothGroupSparseTrackType: " <> original name

-- | Represents the bounds of /known/ $SmoothGroupSparseTrackType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded SmoothGroupSparseTrackType where
    minBound = SGSTTNone
    maxBound = SGSTTScte35

instance Hashable     SmoothGroupSparseTrackType
instance NFData       SmoothGroupSparseTrackType
instance ToByteString SmoothGroupSparseTrackType
instance ToQuery      SmoothGroupSparseTrackType
instance ToHeader     SmoothGroupSparseTrackType

instance ToJSON SmoothGroupSparseTrackType where
    toJSON = toJSONText

instance FromJSON SmoothGroupSparseTrackType where
    parseJSON = parseJSONText "SmoothGroupSparseTrackType"
