{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.GameLift.Types.GameSessionPlacementState where

import Network.AWS.Prelude
  
data GameSessionPlacementState = Cancelled
                               | Fulfilled
                               | Pending
                               | TimedOut
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText GameSessionPlacementState where
    parser = takeLowerText >>= \case
        "cancelled" -> pure Cancelled
        "fulfilled" -> pure Fulfilled
        "pending" -> pure Pending
        "timed_out" -> pure TimedOut
        e -> fromTextError $ "Failure parsing GameSessionPlacementState from value: '" <> e
           <> "'. Accepted values: cancelled, fulfilled, pending, timed_out"

instance ToText GameSessionPlacementState where
    toText = \case
        Cancelled -> "CANCELLED"
        Fulfilled -> "FULFILLED"
        Pending -> "PENDING"
        TimedOut -> "TIMED_OUT"

instance Hashable     GameSessionPlacementState
instance NFData       GameSessionPlacementState
instance ToByteString GameSessionPlacementState
instance ToQuery      GameSessionPlacementState
instance ToHeader     GameSessionPlacementState

instance FromJSON GameSessionPlacementState where
    parseJSON = parseJSONText "GameSessionPlacementState"
