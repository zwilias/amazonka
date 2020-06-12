{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.ChangeSetStatus where

import Network.AWS.Prelude
  
data ChangeSetStatus = CSSCreateComplete
                     | CSSCreateInProgress
                     | CSSCreatePending
                     | CSSDeleteComplete
                     | CSSFailed
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText ChangeSetStatus where
    parser = takeLowerText >>= \case
        "create_complete" -> pure CSSCreateComplete
        "create_in_progress" -> pure CSSCreateInProgress
        "create_pending" -> pure CSSCreatePending
        "delete_complete" -> pure CSSDeleteComplete
        "failed" -> pure CSSFailed
        e -> fromTextError $ "Failure parsing ChangeSetStatus from value: '" <> e
           <> "'. Accepted values: create_complete, create_in_progress, create_pending, delete_complete, failed"

instance ToText ChangeSetStatus where
    toText = \case
        CSSCreateComplete -> "CREATE_COMPLETE"
        CSSCreateInProgress -> "CREATE_IN_PROGRESS"
        CSSCreatePending -> "CREATE_PENDING"
        CSSDeleteComplete -> "DELETE_COMPLETE"
        CSSFailed -> "FAILED"

instance Hashable     ChangeSetStatus
instance NFData       ChangeSetStatus
instance ToByteString ChangeSetStatus
instance ToQuery      ChangeSetStatus
instance ToHeader     ChangeSetStatus

instance FromXML ChangeSetStatus where
    parseXML = parseXMLText "ChangeSetStatus"
