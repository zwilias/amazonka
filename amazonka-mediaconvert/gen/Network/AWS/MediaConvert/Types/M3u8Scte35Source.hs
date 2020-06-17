{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8Scte35Source
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M3u8Scte35Source (
  M3u8Scte35Source (
    ..
    , MNone
    , MPassthrough
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
data M3u8Scte35Source = M3u8Scte35Source' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern MNone :: M3u8Scte35Source
pattern MNone = M3u8Scte35Source' "NONE"

pattern MPassthrough :: M3u8Scte35Source
pattern MPassthrough = M3u8Scte35Source' "PASSTHROUGH"

{-# COMPLETE
  MNone,
  MPassthrough,
  M3u8Scte35Source' #-}

instance FromText M3u8Scte35Source where
    parser = (M3u8Scte35Source' . mk) <$> takeText

instance ToText M3u8Scte35Source where
    toText (M3u8Scte35Source' ci) = original ci

-- | Represents an enum of /known/ $M3u8Scte35Source.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum M3u8Scte35Source where
    toEnum i = case i of
        0 -> MNone
        1 -> MPassthrough
        _ -> (error . showText) $ "Unknown index for M3u8Scte35Source: " <> toText i
    fromEnum x = case x of
        MNone -> 0
        MPassthrough -> 1
        M3u8Scte35Source' name -> (error . showText) $ "Unknown M3u8Scte35Source: " <> original name

-- | Represents the bounds of /known/ $M3u8Scte35Source.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded M3u8Scte35Source where
    minBound = MNone
    maxBound = MPassthrough

instance Hashable     M3u8Scte35Source
instance NFData       M3u8Scte35Source
instance ToByteString M3u8Scte35Source
instance ToQuery      M3u8Scte35Source
instance ToHeader     M3u8Scte35Source

instance ToJSON M3u8Scte35Source where
    toJSON = toJSONText

instance FromJSON M3u8Scte35Source where
    parseJSON = parseJSONText "M3u8Scte35Source"
