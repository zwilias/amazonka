{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ChannelState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.ChannelState where

import Network.AWS.Prelude
  
-- | Placeholder documentation for ChannelState
data ChannelState = CreateFailed
                  | Creating
                  | Deleted
                  | Deleting
                  | Idle
                  | Recovering
                  | Running
                  | Starting
                  | Stopping
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText ChannelState where
    parser = takeLowerText >>= \case
        "create_failed" -> pure CreateFailed
        "creating" -> pure Creating
        "deleted" -> pure Deleted
        "deleting" -> pure Deleting
        "idle" -> pure Idle
        "recovering" -> pure Recovering
        "running" -> pure Running
        "starting" -> pure Starting
        "stopping" -> pure Stopping
        e -> fromTextError $ "Failure parsing ChannelState from value: '" <> e
           <> "'. Accepted values: create_failed, creating, deleted, deleting, idle, recovering, running, starting, stopping"

instance ToText ChannelState where
    toText = \case
        CreateFailed -> "CREATE_FAILED"
        Creating -> "CREATING"
        Deleted -> "DELETED"
        Deleting -> "DELETING"
        Idle -> "IDLE"
        Recovering -> "RECOVERING"
        Running -> "RUNNING"
        Starting -> "STARTING"
        Stopping -> "STOPPING"

instance Hashable     ChannelState
instance NFData       ChannelState
instance ToByteString ChannelState
instance ToQuery      ChannelState
instance ToHeader     ChannelState

instance FromJSON ChannelState where
    parseJSON = parseJSONText "ChannelState"
