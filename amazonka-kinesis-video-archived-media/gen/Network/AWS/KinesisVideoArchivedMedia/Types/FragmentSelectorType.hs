{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType (
  FragmentSelectorType (
    ..
    , ProducerTimestamp
    , ServerTimestamp
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FragmentSelectorType = FragmentSelectorType' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern ProducerTimestamp :: FragmentSelectorType
pattern ProducerTimestamp = FragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern ServerTimestamp :: FragmentSelectorType
pattern ServerTimestamp = FragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  ProducerTimestamp,
  ServerTimestamp,
  FragmentSelectorType' #-}

instance FromText FragmentSelectorType where
    parser = (FragmentSelectorType' . mk) <$> takeText

instance ToText FragmentSelectorType where
    toText (FragmentSelectorType' ci) = original ci

-- | Represents an enum of /known/ $FragmentSelectorType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum FragmentSelectorType where
    toEnum i = case i of
        0 -> ProducerTimestamp
        1 -> ServerTimestamp
        _ -> (error . showText) $ "Unknown index for FragmentSelectorType: " <> toText i
    fromEnum x = case x of
        ProducerTimestamp -> 0
        ServerTimestamp -> 1
        FragmentSelectorType' name -> (error . showText) $ "Unknown FragmentSelectorType: " <> original name

-- | Represents the bounds of /known/ $FragmentSelectorType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded FragmentSelectorType where
    minBound = ProducerTimestamp
    maxBound = ServerTimestamp

instance Hashable     FragmentSelectorType
instance NFData       FragmentSelectorType
instance ToByteString FragmentSelectorType
instance ToQuery      FragmentSelectorType
instance ToHeader     FragmentSelectorType

instance ToJSON FragmentSelectorType where
    toJSON = toJSONText
