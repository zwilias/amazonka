{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior (
  M3u8TimedMetadataBehavior (
    ..
    , MNoPassthrough
    , MPassthrough
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for M3u8TimedMetadataBehavior
data M3u8TimedMetadataBehavior = M3u8TimedMetadataBehavior' (CI
                                                               Text)
                                   deriving (Eq, Ord, Read, Show, Data,
                                             Typeable, Generic)

pattern MNoPassthrough :: M3u8TimedMetadataBehavior
pattern MNoPassthrough = M3u8TimedMetadataBehavior' "NO_PASSTHROUGH"

pattern MPassthrough :: M3u8TimedMetadataBehavior
pattern MPassthrough = M3u8TimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  MNoPassthrough,
  MPassthrough,
  M3u8TimedMetadataBehavior' #-}

instance FromText M3u8TimedMetadataBehavior where
    parser = (M3u8TimedMetadataBehavior' . mk) <$> takeText

instance ToText M3u8TimedMetadataBehavior where
    toText (M3u8TimedMetadataBehavior' ci) = original ci

-- | Represents an enum of /known/ $M3u8TimedMetadataBehavior.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum M3u8TimedMetadataBehavior where
    toEnum i = case i of
        0 -> MNoPassthrough
        1 -> MPassthrough
        _ -> (error . showText) $ "Unknown index for M3u8TimedMetadataBehavior: " <> toText i
    fromEnum x = case x of
        MNoPassthrough -> 0
        MPassthrough -> 1
        M3u8TimedMetadataBehavior' name -> (error . showText) $ "Unknown M3u8TimedMetadataBehavior: " <> original name

-- | Represents the bounds of /known/ $M3u8TimedMetadataBehavior.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded M3u8TimedMetadataBehavior where
    minBound = MNoPassthrough
    maxBound = MPassthrough

instance Hashable     M3u8TimedMetadataBehavior
instance NFData       M3u8TimedMetadataBehavior
instance ToByteString M3u8TimedMetadataBehavior
instance ToQuery      M3u8TimedMetadataBehavior
instance ToHeader     M3u8TimedMetadataBehavior

instance ToJSON M3u8TimedMetadataBehavior where
    toJSON = toJSONText

instance FromJSON M3u8TimedMetadataBehavior where
    parseJSON = parseJSONText "M3u8TimedMetadataBehavior"
