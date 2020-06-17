{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TtmlStylePassthrough
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.TtmlStylePassthrough (
  TtmlStylePassthrough (
    ..
    , TSPDisabled
    , TSPEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
data TtmlStylePassthrough = TtmlStylePassthrough' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern TSPDisabled :: TtmlStylePassthrough
pattern TSPDisabled = TtmlStylePassthrough' "DISABLED"

pattern TSPEnabled :: TtmlStylePassthrough
pattern TSPEnabled = TtmlStylePassthrough' "ENABLED"

{-# COMPLETE
  TSPDisabled,
  TSPEnabled,
  TtmlStylePassthrough' #-}

instance FromText TtmlStylePassthrough where
    parser = (TtmlStylePassthrough' . mk) <$> takeText

instance ToText TtmlStylePassthrough where
    toText (TtmlStylePassthrough' ci) = original ci

-- | Represents an enum of /known/ $TtmlStylePassthrough.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TtmlStylePassthrough where
    toEnum i = case i of
        0 -> TSPDisabled
        1 -> TSPEnabled
        _ -> (error . showText) $ "Unknown index for TtmlStylePassthrough: " <> toText i
    fromEnum x = case x of
        TSPDisabled -> 0
        TSPEnabled -> 1
        TtmlStylePassthrough' name -> (error . showText) $ "Unknown TtmlStylePassthrough: " <> original name

-- | Represents the bounds of /known/ $TtmlStylePassthrough.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TtmlStylePassthrough where
    minBound = TSPDisabled
    maxBound = TSPEnabled

instance Hashable     TtmlStylePassthrough
instance NFData       TtmlStylePassthrough
instance ToByteString TtmlStylePassthrough
instance ToQuery      TtmlStylePassthrough
instance ToHeader     TtmlStylePassthrough

instance ToJSON TtmlStylePassthrough where
    toJSON = toJSONText

instance FromJSON TtmlStylePassthrough where
    parseJSON = parseJSONText "TtmlStylePassthrough"
