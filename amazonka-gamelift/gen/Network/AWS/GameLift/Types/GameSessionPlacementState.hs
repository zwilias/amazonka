{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameSessionPlacementState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.GameSessionPlacementState (
  GameSessionPlacementState (
    ..
    , Cancelled
    , Fulfilled
    , Pending
    , TimedOut
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameSessionPlacementState = GameSessionPlacementState' (CI
                                                               Text)
                                   deriving (Eq, Ord, Read, Show, Data,
                                             Typeable, Generic)

pattern Cancelled :: GameSessionPlacementState
pattern Cancelled = GameSessionPlacementState' "CANCELLED"

pattern Fulfilled :: GameSessionPlacementState
pattern Fulfilled = GameSessionPlacementState' "FULFILLED"

pattern Pending :: GameSessionPlacementState
pattern Pending = GameSessionPlacementState' "PENDING"

pattern TimedOut :: GameSessionPlacementState
pattern TimedOut = GameSessionPlacementState' "TIMED_OUT"

{-# COMPLETE
  Cancelled,
  Fulfilled,
  Pending,
  TimedOut,
  GameSessionPlacementState' #-}

instance FromText GameSessionPlacementState where
    parser = (GameSessionPlacementState' . mk) <$> takeText

instance ToText GameSessionPlacementState where
    toText (GameSessionPlacementState' ci) = original ci

-- | Represents an enum of /known/ $GameSessionPlacementState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum GameSessionPlacementState where
    toEnum i = case i of
        0 -> Cancelled
        1 -> Fulfilled
        2 -> Pending
        3 -> TimedOut
        _ -> (error . showText) $ "Unknown index for GameSessionPlacementState: " <> toText i
    fromEnum x = case x of
        Cancelled -> 0
        Fulfilled -> 1
        Pending -> 2
        TimedOut -> 3
        GameSessionPlacementState' name -> (error . showText) $ "Unknown GameSessionPlacementState: " <> original name

-- | Represents the bounds of /known/ $GameSessionPlacementState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded GameSessionPlacementState where
    minBound = Cancelled
    maxBound = TimedOut

instance Hashable     GameSessionPlacementState
instance NFData       GameSessionPlacementState
instance ToByteString GameSessionPlacementState
instance ToQuery      GameSessionPlacementState
instance ToHeader     GameSessionPlacementState

instance FromJSON GameSessionPlacementState where
    parseJSON = parseJSONText "GameSessionPlacementState"
