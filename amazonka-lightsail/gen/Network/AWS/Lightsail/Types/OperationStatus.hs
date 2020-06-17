{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.OperationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.OperationStatus (
  OperationStatus (
    ..
    , Completed
    , Failed
    , NotStarted
    , Started
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationStatus = OperationStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Completed :: OperationStatus
pattern Completed = OperationStatus' "Completed"

pattern Failed :: OperationStatus
pattern Failed = OperationStatus' "Failed"

pattern NotStarted :: OperationStatus
pattern NotStarted = OperationStatus' "NotStarted"

pattern Started :: OperationStatus
pattern Started = OperationStatus' "Started"

pattern Succeeded :: OperationStatus
pattern Succeeded = OperationStatus' "Succeeded"

{-# COMPLETE
  Completed,
  Failed,
  NotStarted,
  Started,
  Succeeded,
  OperationStatus' #-}

instance FromText OperationStatus where
    parser = (OperationStatus' . mk) <$> takeText

instance ToText OperationStatus where
    toText (OperationStatus' ci) = original ci

-- | Represents an enum of /known/ $OperationStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum OperationStatus where
    toEnum i = case i of
        0 -> Completed
        1 -> Failed
        2 -> NotStarted
        3 -> Started
        4 -> Succeeded
        _ -> (error . showText) $ "Unknown index for OperationStatus: " <> toText i
    fromEnum x = case x of
        Completed -> 0
        Failed -> 1
        NotStarted -> 2
        Started -> 3
        Succeeded -> 4
        OperationStatus' name -> (error . showText) $ "Unknown OperationStatus: " <> original name

-- | Represents the bounds of /known/ $OperationStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded OperationStatus where
    minBound = Completed
    maxBound = Succeeded

instance Hashable     OperationStatus
instance NFData       OperationStatus
instance ToByteString OperationStatus
instance ToQuery      OperationStatus
instance ToHeader     OperationStatus

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"
