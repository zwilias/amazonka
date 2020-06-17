{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Feature
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.Feature (
  Feature (
    ..
    , All
    , Bluetooth
    , Lists
    , Notifications
    , Skills
    , Volume
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Feature = Feature' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern All :: Feature
pattern All = Feature' "ALL"

pattern Bluetooth :: Feature
pattern Bluetooth = Feature' "BLUETOOTH"

pattern Lists :: Feature
pattern Lists = Feature' "LISTS"

pattern Notifications :: Feature
pattern Notifications = Feature' "NOTIFICATIONS"

pattern Skills :: Feature
pattern Skills = Feature' "SKILLS"

pattern Volume :: Feature
pattern Volume = Feature' "VOLUME"

{-# COMPLETE
  All,
  Bluetooth,
  Lists,
  Notifications,
  Skills,
  Volume,
  Feature' #-}

instance FromText Feature where
    parser = (Feature' . mk) <$> takeText

instance ToText Feature where
    toText (Feature' ci) = original ci

-- | Represents an enum of /known/ $Feature.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Feature where
    toEnum i = case i of
        0 -> All
        1 -> Bluetooth
        2 -> Lists
        3 -> Notifications
        4 -> Skills
        5 -> Volume
        _ -> (error . showText) $ "Unknown index for Feature: " <> toText i
    fromEnum x = case x of
        All -> 0
        Bluetooth -> 1
        Lists -> 2
        Notifications -> 3
        Skills -> 4
        Volume -> 5
        Feature' name -> (error . showText) $ "Unknown Feature: " <> original name

-- | Represents the bounds of /known/ $Feature.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Feature where
    minBound = All
    maxBound = Volume

instance Hashable     Feature
instance NFData       Feature
instance ToByteString Feature
instance ToQuery      Feature
instance ToHeader     Feature

instance ToJSON Feature where
    toJSON = toJSONText
