{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl (
  DvbSubDestinationTeletextGridControl (
    ..
    , Fixed
    , Scaled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for DvbSubDestinationTeletextGridControl
data DvbSubDestinationTeletextGridControl = DvbSubDestinationTeletextGridControl' (CI
                                                                                     Text)
                                              deriving (Eq, Ord, Read, Show,
                                                        Data, Typeable, Generic)

pattern Fixed :: DvbSubDestinationTeletextGridControl
pattern Fixed = DvbSubDestinationTeletextGridControl' "FIXED"

pattern Scaled :: DvbSubDestinationTeletextGridControl
pattern Scaled = DvbSubDestinationTeletextGridControl' "SCALED"

{-# COMPLETE
  Fixed,
  Scaled,
  DvbSubDestinationTeletextGridControl' #-}

instance FromText DvbSubDestinationTeletextGridControl where
    parser = (DvbSubDestinationTeletextGridControl' . mk) <$> takeText

instance ToText DvbSubDestinationTeletextGridControl where
    toText (DvbSubDestinationTeletextGridControl' ci) = original ci

-- | Represents an enum of /known/ $DvbSubDestinationTeletextGridControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DvbSubDestinationTeletextGridControl where
    toEnum i = case i of
        0 -> Fixed
        1 -> Scaled
        _ -> (error . showText) $ "Unknown index for DvbSubDestinationTeletextGridControl: " <> toText i
    fromEnum x = case x of
        Fixed -> 0
        Scaled -> 1
        DvbSubDestinationTeletextGridControl' name -> (error . showText) $ "Unknown DvbSubDestinationTeletextGridControl: " <> original name

-- | Represents the bounds of /known/ $DvbSubDestinationTeletextGridControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DvbSubDestinationTeletextGridControl where
    minBound = Fixed
    maxBound = Scaled

instance Hashable     DvbSubDestinationTeletextGridControl
instance NFData       DvbSubDestinationTeletextGridControl
instance ToByteString DvbSubDestinationTeletextGridControl
instance ToQuery      DvbSubDestinationTeletextGridControl
instance ToHeader     DvbSubDestinationTeletextGridControl

instance ToJSON DvbSubDestinationTeletextGridControl where
    toJSON = toJSONText

instance FromJSON DvbSubDestinationTeletextGridControl where
    parseJSON = parseJSONText "DvbSubDestinationTeletextGridControl"
