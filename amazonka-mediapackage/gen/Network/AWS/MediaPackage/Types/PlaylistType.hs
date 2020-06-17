{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.PlaylistType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types.PlaylistType (
  PlaylistType (
    ..
    , Event
    , None
    , Vod
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlaylistType = PlaylistType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Event :: PlaylistType
pattern Event = PlaylistType' "EVENT"

pattern None :: PlaylistType
pattern None = PlaylistType' "NONE"

pattern Vod :: PlaylistType
pattern Vod = PlaylistType' "VOD"

{-# COMPLETE
  Event,
  None,
  Vod,
  PlaylistType' #-}

instance FromText PlaylistType where
    parser = (PlaylistType' . mk) <$> takeText

instance ToText PlaylistType where
    toText (PlaylistType' ci) = original ci

-- | Represents an enum of /known/ $PlaylistType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum PlaylistType where
    toEnum i = case i of
        0 -> Event
        1 -> None
        2 -> Vod
        _ -> (error . showText) $ "Unknown index for PlaylistType: " <> toText i
    fromEnum x = case x of
        Event -> 0
        None -> 1
        Vod -> 2
        PlaylistType' name -> (error . showText) $ "Unknown PlaylistType: " <> original name

-- | Represents the bounds of /known/ $PlaylistType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded PlaylistType where
    minBound = Event
    maxBound = Vod

instance Hashable     PlaylistType
instance NFData       PlaylistType
instance ToByteString PlaylistType
instance ToQuery      PlaylistType
instance ToHeader     PlaylistType

instance ToJSON PlaylistType where
    toJSON = toJSONText

instance FromJSON PlaylistType where
    parseJSON = parseJSONText "PlaylistType"
