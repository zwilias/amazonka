{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.QueueStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.QueueStatus (
  QueueStatus (
    ..
    , Active
    , Paused
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue will not begin. Jobs running when a queue is paused continue to run until they finish or error out.
data QueueStatus = QueueStatus' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern Active :: QueueStatus
pattern Active = QueueStatus' "ACTIVE"

pattern Paused :: QueueStatus
pattern Paused = QueueStatus' "PAUSED"

{-# COMPLETE
  Active,
  Paused,
  QueueStatus' #-}

instance FromText QueueStatus where
    parser = (QueueStatus' . mk) <$> takeText

instance ToText QueueStatus where
    toText (QueueStatus' ci) = original ci

-- | Represents an enum of /known/ $QueueStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum QueueStatus where
    toEnum i = case i of
        0 -> Active
        1 -> Paused
        _ -> (error . showText) $ "Unknown index for QueueStatus: " <> toText i
    fromEnum x = case x of
        Active -> 0
        Paused -> 1
        QueueStatus' name -> (error . showText) $ "Unknown QueueStatus: " <> original name

-- | Represents the bounds of /known/ $QueueStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded QueueStatus where
    minBound = Active
    maxBound = Paused

instance Hashable     QueueStatus
instance NFData       QueueStatus
instance ToByteString QueueStatus
instance ToQuery      QueueStatus
instance ToHeader     QueueStatus

instance ToJSON QueueStatus where
    toJSON = toJSONText

instance FromJSON QueueStatus where
    parseJSON = parseJSONText "QueueStatus"
