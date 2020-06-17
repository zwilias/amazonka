{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TriggerState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.TriggerState (
  TriggerState (
    ..
    , Activated
    , Activating
    , Created
    , Creating
    , Deactivated
    , Deactivating
    , Deleting
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TriggerState = TriggerState' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Activated :: TriggerState
pattern Activated = TriggerState' "ACTIVATED"

pattern Activating :: TriggerState
pattern Activating = TriggerState' "ACTIVATING"

pattern Created :: TriggerState
pattern Created = TriggerState' "CREATED"

pattern Creating :: TriggerState
pattern Creating = TriggerState' "CREATING"

pattern Deactivated :: TriggerState
pattern Deactivated = TriggerState' "DEACTIVATED"

pattern Deactivating :: TriggerState
pattern Deactivating = TriggerState' "DEACTIVATING"

pattern Deleting :: TriggerState
pattern Deleting = TriggerState' "DELETING"

pattern Updating :: TriggerState
pattern Updating = TriggerState' "UPDATING"

{-# COMPLETE
  Activated,
  Activating,
  Created,
  Creating,
  Deactivated,
  Deactivating,
  Deleting,
  Updating,
  TriggerState' #-}

instance FromText TriggerState where
    parser = (TriggerState' . mk) <$> takeText

instance ToText TriggerState where
    toText (TriggerState' ci) = original ci

-- | Represents an enum of /known/ $TriggerState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TriggerState where
    toEnum i = case i of
        0 -> Activated
        1 -> Activating
        2 -> Created
        3 -> Creating
        4 -> Deactivated
        5 -> Deactivating
        6 -> Deleting
        7 -> Updating
        _ -> (error . showText) $ "Unknown index for TriggerState: " <> toText i
    fromEnum x = case x of
        Activated -> 0
        Activating -> 1
        Created -> 2
        Creating -> 3
        Deactivated -> 4
        Deactivating -> 5
        Deleting -> 6
        Updating -> 7
        TriggerState' name -> (error . showText) $ "Unknown TriggerState: " <> original name

-- | Represents the bounds of /known/ $TriggerState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TriggerState where
    minBound = Activated
    maxBound = Updating

instance Hashable     TriggerState
instance NFData       TriggerState
instance ToByteString TriggerState
instance ToQuery      TriggerState
instance ToHeader     TriggerState

instance FromJSON TriggerState where
    parseJSON = parseJSONText "TriggerState"
