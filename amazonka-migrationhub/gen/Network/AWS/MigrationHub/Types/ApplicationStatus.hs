{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.ApplicationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MigrationHub.Types.ApplicationStatus where

import Network.AWS.Prelude
  
data ApplicationStatus = ASCompleted
                       | ASInProgress
                       | ASNotStarted
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText ApplicationStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure ASCompleted
        "in_progress" -> pure ASInProgress
        "not_started" -> pure ASNotStarted
        e -> fromTextError $ "Failure parsing ApplicationStatus from value: '" <> e
           <> "'. Accepted values: completed, in_progress, not_started"

instance ToText ApplicationStatus where
    toText = \case
        ASCompleted -> "COMPLETED"
        ASInProgress -> "IN_PROGRESS"
        ASNotStarted -> "NOT_STARTED"

instance Hashable     ApplicationStatus
instance NFData       ApplicationStatus
instance ToByteString ApplicationStatus
instance ToQuery      ApplicationStatus
instance ToHeader     ApplicationStatus

instance ToJSON ApplicationStatus where
    toJSON = toJSONText

instance FromJSON ApplicationStatus where
    parseJSON = parseJSONText "ApplicationStatus"
