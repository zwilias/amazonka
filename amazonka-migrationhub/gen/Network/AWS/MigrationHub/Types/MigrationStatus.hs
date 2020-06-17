{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.MigrationStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MigrationHub.Types.MigrationStatus (
  MigrationStatus (
    ..
    , Completed
    , Failed
    , InProgress
    , NotStarted
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MigrationStatus = MigrationStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern Completed :: MigrationStatus
pattern Completed = MigrationStatus' "COMPLETED"

pattern Failed :: MigrationStatus
pattern Failed = MigrationStatus' "FAILED"

pattern InProgress :: MigrationStatus
pattern InProgress = MigrationStatus' "IN_PROGRESS"

pattern NotStarted :: MigrationStatus
pattern NotStarted = MigrationStatus' "NOT_STARTED"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  NotStarted,
  MigrationStatus' #-}

instance FromText MigrationStatus where
    parser = (MigrationStatus' . mk) <$> takeText

instance ToText MigrationStatus where
    toText (MigrationStatus' ci) = original ci

-- | Represents an enum of /known/ $MigrationStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum MigrationStatus where
    toEnum i = case i of
        0 -> Completed
        1 -> Failed
        2 -> InProgress
        3 -> NotStarted
        _ -> (error . showText) $ "Unknown index for MigrationStatus: " <> toText i
    fromEnum x = case x of
        Completed -> 0
        Failed -> 1
        InProgress -> 2
        NotStarted -> 3
        MigrationStatus' name -> (error . showText) $ "Unknown MigrationStatus: " <> original name

-- | Represents the bounds of /known/ $MigrationStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded MigrationStatus where
    minBound = Completed
    maxBound = NotStarted

instance Hashable     MigrationStatus
instance NFData       MigrationStatus
instance ToByteString MigrationStatus
instance ToQuery      MigrationStatus
instance ToHeader     MigrationStatus

instance ToJSON MigrationStatus where
    toJSON = toJSONText

instance FromJSON MigrationStatus where
    parseJSON = parseJSONText "MigrationStatus"
