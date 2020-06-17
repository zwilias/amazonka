{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode (
  ExportTaskStatusCode (
    ..
    , Cancelled
    , Completed
    , Failed
    , Pending
    , PendingCancel
    , Running
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportTaskStatusCode = ExportTaskStatusCode' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern Cancelled :: ExportTaskStatusCode
pattern Cancelled = ExportTaskStatusCode' "CANCELLED"

pattern Completed :: ExportTaskStatusCode
pattern Completed = ExportTaskStatusCode' "COMPLETED"

pattern Failed :: ExportTaskStatusCode
pattern Failed = ExportTaskStatusCode' "FAILED"

pattern Pending :: ExportTaskStatusCode
pattern Pending = ExportTaskStatusCode' "PENDING"

pattern PendingCancel :: ExportTaskStatusCode
pattern PendingCancel = ExportTaskStatusCode' "PENDING_CANCEL"

pattern Running :: ExportTaskStatusCode
pattern Running = ExportTaskStatusCode' "RUNNING"

{-# COMPLETE
  Cancelled,
  Completed,
  Failed,
  Pending,
  PendingCancel,
  Running,
  ExportTaskStatusCode' #-}

instance FromText ExportTaskStatusCode where
    parser = (ExportTaskStatusCode' . mk) <$> takeText

instance ToText ExportTaskStatusCode where
    toText (ExportTaskStatusCode' ci) = original ci

-- | Represents an enum of /known/ $ExportTaskStatusCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ExportTaskStatusCode where
    toEnum i = case i of
        0 -> Cancelled
        1 -> Completed
        2 -> Failed
        3 -> Pending
        4 -> PendingCancel
        5 -> Running
        _ -> (error . showText) $ "Unknown index for ExportTaskStatusCode: " <> toText i
    fromEnum x = case x of
        Cancelled -> 0
        Completed -> 1
        Failed -> 2
        Pending -> 3
        PendingCancel -> 4
        Running -> 5
        ExportTaskStatusCode' name -> (error . showText) $ "Unknown ExportTaskStatusCode: " <> original name

-- | Represents the bounds of /known/ $ExportTaskStatusCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ExportTaskStatusCode where
    minBound = Cancelled
    maxBound = Running

instance Hashable     ExportTaskStatusCode
instance NFData       ExportTaskStatusCode
instance ToByteString ExportTaskStatusCode
instance ToQuery      ExportTaskStatusCode
instance ToHeader     ExportTaskStatusCode

instance ToJSON ExportTaskStatusCode where
    toJSON = toJSONText

instance FromJSON ExportTaskStatusCode where
    parseJSON = parseJSONText "ExportTaskStatusCode"
