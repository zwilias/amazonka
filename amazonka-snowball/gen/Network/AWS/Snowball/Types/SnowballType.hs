{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.SnowballType (
  SnowballType (
    ..
    , Edge
    , Standard
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnowballType = SnowballType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Edge :: SnowballType
pattern Edge = SnowballType' "EDGE"

pattern Standard :: SnowballType
pattern Standard = SnowballType' "STANDARD"

{-# COMPLETE
  Edge,
  Standard,
  SnowballType' #-}

instance FromText SnowballType where
    parser = (SnowballType' . mk) <$> takeText

instance ToText SnowballType where
    toText (SnowballType' ci) = original ci

-- | Represents an enum of /known/ $SnowballType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum SnowballType where
    toEnum i = case i of
        0 -> Edge
        1 -> Standard
        _ -> (error . showText) $ "Unknown index for SnowballType: " <> toText i
    fromEnum x = case x of
        Edge -> 0
        Standard -> 1
        SnowballType' name -> (error . showText) $ "Unknown SnowballType: " <> original name

-- | Represents the bounds of /known/ $SnowballType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded SnowballType where
    minBound = Edge
    maxBound = Standard

instance Hashable     SnowballType
instance NFData       SnowballType
instance ToByteString SnowballType
instance ToQuery      SnowballType
instance ToHeader     SnowballType

instance ToJSON SnowballType where
    toJSON = toJSONText

instance FromJSON SnowballType where
    parseJSON = parseJSONText "SnowballType"
