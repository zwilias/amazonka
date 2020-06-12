{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus where

import Network.AWS.Prelude
  
data LifecyclePolicyPreviewStatus = Complete
                                  | Expired
                                  | Failed
                                  | InProgress
                                      deriving (Eq, Ord, Read, Show, Enum,
                                                Bounded, Data, Typeable,
                                                Generic)

instance FromText LifecyclePolicyPreviewStatus where
    parser = takeLowerText >>= \case
        "complete" -> pure Complete
        "expired" -> pure Expired
        "failed" -> pure Failed
        "in_progress" -> pure InProgress
        e -> fromTextError $ "Failure parsing LifecyclePolicyPreviewStatus from value: '" <> e
           <> "'. Accepted values: complete, expired, failed, in_progress"

instance ToText LifecyclePolicyPreviewStatus where
    toText = \case
        Complete -> "COMPLETE"
        Expired -> "EXPIRED"
        Failed -> "FAILED"
        InProgress -> "IN_PROGRESS"

instance Hashable     LifecyclePolicyPreviewStatus
instance NFData       LifecyclePolicyPreviewStatus
instance ToByteString LifecyclePolicyPreviewStatus
instance ToQuery      LifecyclePolicyPreviewStatus
instance ToHeader     LifecyclePolicyPreviewStatus

instance FromJSON LifecyclePolicyPreviewStatus where
    parseJSON = parseJSONText "LifecyclePolicyPreviewStatus"
