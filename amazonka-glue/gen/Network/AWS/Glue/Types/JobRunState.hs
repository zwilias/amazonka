{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobRunState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.JobRunState where

import Network.AWS.Prelude
  
data JobRunState = Failed
                 | Running
                 | Starting
                 | Stopped
                 | Stopping
                 | Succeeded
                 | Timeout
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText JobRunState where
    parser = takeLowerText >>= \case
        "failed" -> pure Failed
        "running" -> pure Running
        "starting" -> pure Starting
        "stopped" -> pure Stopped
        "stopping" -> pure Stopping
        "succeeded" -> pure Succeeded
        "timeout" -> pure Timeout
        e -> fromTextError $ "Failure parsing JobRunState from value: '" <> e
           <> "'. Accepted values: failed, running, starting, stopped, stopping, succeeded, timeout"

instance ToText JobRunState where
    toText = \case
        Failed -> "FAILED"
        Running -> "RUNNING"
        Starting -> "STARTING"
        Stopped -> "STOPPED"
        Stopping -> "STOPPING"
        Succeeded -> "SUCCEEDED"
        Timeout -> "TIMEOUT"

instance Hashable     JobRunState
instance NFData       JobRunState
instance ToByteString JobRunState
instance ToQuery      JobRunState
instance ToHeader     JobRunState

instance ToJSON JobRunState where
    toJSON = toJSONText

instance FromJSON JobRunState where
    parseJSON = parseJSONText "JobRunState"
