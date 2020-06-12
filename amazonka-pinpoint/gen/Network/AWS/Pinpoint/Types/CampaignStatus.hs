{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignStatus where

import Network.AWS.Prelude
  
data CampaignStatus = Completed
                    | Executing
                    | Paused
                    | PendingNextRun
                    | Scheduled
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText CampaignStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure Completed
        "executing" -> pure Executing
        "paused" -> pure Paused
        "pending_next_run" -> pure PendingNextRun
        "scheduled" -> pure Scheduled
        e -> fromTextError $ "Failure parsing CampaignStatus from value: '" <> e
           <> "'. Accepted values: completed, executing, paused, pending_next_run, scheduled"

instance ToText CampaignStatus where
    toText = \case
        Completed -> "COMPLETED"
        Executing -> "EXECUTING"
        Paused -> "PAUSED"
        PendingNextRun -> "PENDING_NEXT_RUN"
        Scheduled -> "SCHEDULED"

instance Hashable     CampaignStatus
instance NFData       CampaignStatus
instance ToByteString CampaignStatus
instance ToQuery      CampaignStatus
instance ToHeader     CampaignStatus

instance FromJSON CampaignStatus where
    parseJSON = parseJSONText "CampaignStatus"
