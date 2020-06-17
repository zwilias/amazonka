{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ThingIndexingMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.ThingIndexingMode (
  ThingIndexingMode (
    ..
    , Off
    , Registry
    , RegistryAndShadow
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThingIndexingMode = ThingIndexingMode' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern Off :: ThingIndexingMode
pattern Off = ThingIndexingMode' "OFF"

pattern Registry :: ThingIndexingMode
pattern Registry = ThingIndexingMode' "REGISTRY"

pattern RegistryAndShadow :: ThingIndexingMode
pattern RegistryAndShadow = ThingIndexingMode' "REGISTRY_AND_SHADOW"

{-# COMPLETE
  Off,
  Registry,
  RegistryAndShadow,
  ThingIndexingMode' #-}

instance FromText ThingIndexingMode where
    parser = (ThingIndexingMode' . mk) <$> takeText

instance ToText ThingIndexingMode where
    toText (ThingIndexingMode' ci) = original ci

-- | Represents an enum of /known/ $ThingIndexingMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ThingIndexingMode where
    toEnum i = case i of
        0 -> Off
        1 -> Registry
        2 -> RegistryAndShadow
        _ -> (error . showText) $ "Unknown index for ThingIndexingMode: " <> toText i
    fromEnum x = case x of
        Off -> 0
        Registry -> 1
        RegistryAndShadow -> 2
        ThingIndexingMode' name -> (error . showText) $ "Unknown ThingIndexingMode: " <> original name

-- | Represents the bounds of /known/ $ThingIndexingMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ThingIndexingMode where
    minBound = Off
    maxBound = RegistryAndShadow

instance Hashable     ThingIndexingMode
instance NFData       ThingIndexingMode
instance ToByteString ThingIndexingMode
instance ToQuery      ThingIndexingMode
instance ToHeader     ThingIndexingMode

instance ToJSON ThingIndexingMode where
    toJSON = toJSONText

instance FromJSON ThingIndexingMode where
    parseJSON = parseJSONText "ThingIndexingMode"
