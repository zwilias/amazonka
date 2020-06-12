{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.AutomationExecutionFilterKey where

import Network.AWS.Prelude
  
data AutomationExecutionFilterKey = AEFKCurrentAction
                                  | AEFKDocumentNamePrefix
                                  | AEFKExecutionId
                                  | AEFKExecutionStatus
                                  | AEFKParentExecutionId
                                  | AEFKStartTimeAfter
                                  | AEFKStartTimeBefore
                                      deriving (Eq, Ord, Read, Show, Enum,
                                                Bounded, Data, Typeable,
                                                Generic)

instance FromText AutomationExecutionFilterKey where
    parser = takeLowerText >>= \case
        "currentaction" -> pure AEFKCurrentAction
        "documentnameprefix" -> pure AEFKDocumentNamePrefix
        "executionid" -> pure AEFKExecutionId
        "executionstatus" -> pure AEFKExecutionStatus
        "parentexecutionid" -> pure AEFKParentExecutionId
        "starttimeafter" -> pure AEFKStartTimeAfter
        "starttimebefore" -> pure AEFKStartTimeBefore
        e -> fromTextError $ "Failure parsing AutomationExecutionFilterKey from value: '" <> e
           <> "'. Accepted values: currentaction, documentnameprefix, executionid, executionstatus, parentexecutionid, starttimeafter, starttimebefore"

instance ToText AutomationExecutionFilterKey where
    toText = \case
        AEFKCurrentAction -> "CurrentAction"
        AEFKDocumentNamePrefix -> "DocumentNamePrefix"
        AEFKExecutionId -> "ExecutionId"
        AEFKExecutionStatus -> "ExecutionStatus"
        AEFKParentExecutionId -> "ParentExecutionId"
        AEFKStartTimeAfter -> "StartTimeAfter"
        AEFKStartTimeBefore -> "StartTimeBefore"

instance Hashable     AutomationExecutionFilterKey
instance NFData       AutomationExecutionFilterKey
instance ToByteString AutomationExecutionFilterKey
instance ToQuery      AutomationExecutionFilterKey
instance ToHeader     AutomationExecutionFilterKey

instance ToJSON AutomationExecutionFilterKey where
    toJSON = toJSONText
