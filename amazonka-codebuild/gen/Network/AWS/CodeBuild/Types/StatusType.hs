{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.StatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.StatusType where

import Network.AWS.Prelude
  
data StatusType = STFailed
                | STFault
                | STInProgress
                | STStopped
                | STSucceeded
                | STTimedOut
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText StatusType where
    parser = takeLowerText >>= \case
        "failed" -> pure STFailed
        "fault" -> pure STFault
        "in_progress" -> pure STInProgress
        "stopped" -> pure STStopped
        "succeeded" -> pure STSucceeded
        "timed_out" -> pure STTimedOut
        e -> fromTextError $ "Failure parsing StatusType from value: '" <> e
           <> "'. Accepted values: failed, fault, in_progress, stopped, succeeded, timed_out"

instance ToText StatusType where
    toText = \case
        STFailed -> "FAILED"
        STFault -> "FAULT"
        STInProgress -> "IN_PROGRESS"
        STStopped -> "STOPPED"
        STSucceeded -> "SUCCEEDED"
        STTimedOut -> "TIMED_OUT"

instance Hashable     StatusType
instance NFData       StatusType
instance ToByteString StatusType
instance ToQuery      StatusType
instance ToHeader     StatusType

instance FromJSON StatusType where
    parseJSON = parseJSONText "StatusType"
