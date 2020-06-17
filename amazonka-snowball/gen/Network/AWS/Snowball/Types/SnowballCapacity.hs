{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballCapacity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.SnowballCapacity (
  SnowballCapacity (
    ..
    , NoPreference
    , T100
    , T50
    , T80
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnowballCapacity = SnowballCapacity' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern NoPreference :: SnowballCapacity
pattern NoPreference = SnowballCapacity' "NoPreference"

pattern T100 :: SnowballCapacity
pattern T100 = SnowballCapacity' "T100"

pattern T50 :: SnowballCapacity
pattern T50 = SnowballCapacity' "T50"

pattern T80 :: SnowballCapacity
pattern T80 = SnowballCapacity' "T80"

{-# COMPLETE
  NoPreference,
  T100,
  T50,
  T80,
  SnowballCapacity' #-}

instance FromText SnowballCapacity where
    parser = (SnowballCapacity' . mk) <$> takeText

instance ToText SnowballCapacity where
    toText (SnowballCapacity' ci) = original ci

-- | Represents an enum of /known/ $SnowballCapacity.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum SnowballCapacity where
    toEnum i = case i of
        0 -> NoPreference
        1 -> T100
        2 -> T50
        3 -> T80
        _ -> (error . showText) $ "Unknown index for SnowballCapacity: " <> toText i
    fromEnum x = case x of
        NoPreference -> 0
        T100 -> 1
        T50 -> 2
        T80 -> 3
        SnowballCapacity' name -> (error . showText) $ "Unknown SnowballCapacity: " <> original name

-- | Represents the bounds of /known/ $SnowballCapacity.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded SnowballCapacity where
    minBound = NoPreference
    maxBound = T80

instance Hashable     SnowballCapacity
instance NFData       SnowballCapacity
instance ToByteString SnowballCapacity
instance ToQuery      SnowballCapacity
instance ToHeader     SnowballCapacity

instance ToJSON SnowballCapacity where
    toJSON = toJSONText

instance FromJSON SnowballCapacity where
    parseJSON = parseJSONText "SnowballCapacity"
