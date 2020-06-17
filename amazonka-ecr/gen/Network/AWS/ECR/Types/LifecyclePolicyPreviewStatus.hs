{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus (
  LifecyclePolicyPreviewStatus (
    ..
    , Complete
    , Expired
    , Failed
    , InProgress
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifecyclePolicyPreviewStatus = LifecyclePolicyPreviewStatus' (CI
                                                                     Text)
                                      deriving (Eq, Ord, Read, Show, Data,
                                                Typeable, Generic)

pattern Complete :: LifecyclePolicyPreviewStatus
pattern Complete = LifecyclePolicyPreviewStatus' "COMPLETE"

pattern Expired :: LifecyclePolicyPreviewStatus
pattern Expired = LifecyclePolicyPreviewStatus' "EXPIRED"

pattern Failed :: LifecyclePolicyPreviewStatus
pattern Failed = LifecyclePolicyPreviewStatus' "FAILED"

pattern InProgress :: LifecyclePolicyPreviewStatus
pattern InProgress = LifecyclePolicyPreviewStatus' "IN_PROGRESS"

{-# COMPLETE
  Complete,
  Expired,
  Failed,
  InProgress,
  LifecyclePolicyPreviewStatus' #-}

instance FromText LifecyclePolicyPreviewStatus where
    parser = (LifecyclePolicyPreviewStatus' . mk) <$> takeText

instance ToText LifecyclePolicyPreviewStatus where
    toText (LifecyclePolicyPreviewStatus' ci) = original ci

-- | Represents an enum of /known/ $LifecyclePolicyPreviewStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum LifecyclePolicyPreviewStatus where
    toEnum i = case i of
        0 -> Complete
        1 -> Expired
        2 -> Failed
        3 -> InProgress
        _ -> (error . showText) $ "Unknown index for LifecyclePolicyPreviewStatus: " <> toText i
    fromEnum x = case x of
        Complete -> 0
        Expired -> 1
        Failed -> 2
        InProgress -> 3
        LifecyclePolicyPreviewStatus' name -> (error . showText) $ "Unknown LifecyclePolicyPreviewStatus: " <> original name

-- | Represents the bounds of /known/ $LifecyclePolicyPreviewStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LifecyclePolicyPreviewStatus where
    minBound = Complete
    maxBound = InProgress

instance Hashable     LifecyclePolicyPreviewStatus
instance NFData       LifecyclePolicyPreviewStatus
instance ToByteString LifecyclePolicyPreviewStatus
instance ToQuery      LifecyclePolicyPreviewStatus
instance ToHeader     LifecyclePolicyPreviewStatus

instance FromJSON LifecyclePolicyPreviewStatus where
    parseJSON = parseJSONText "LifecyclePolicyPreviewStatus"
