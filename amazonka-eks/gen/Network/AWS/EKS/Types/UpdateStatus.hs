{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.UpdateStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.UpdateStatus (
  UpdateStatus (
    ..
    , USCancelled
    , USFailed
    , USInProgress
    , USSuccessful
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateStatus = UpdateStatus' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern USCancelled :: UpdateStatus
pattern USCancelled = UpdateStatus' "Cancelled"

pattern USFailed :: UpdateStatus
pattern USFailed = UpdateStatus' "Failed"

pattern USInProgress :: UpdateStatus
pattern USInProgress = UpdateStatus' "InProgress"

pattern USSuccessful :: UpdateStatus
pattern USSuccessful = UpdateStatus' "Successful"

{-# COMPLETE
  USCancelled,
  USFailed,
  USInProgress,
  USSuccessful,
  UpdateStatus' #-}

instance FromText UpdateStatus where
    parser = (UpdateStatus' . mk) <$> takeText

instance ToText UpdateStatus where
    toText (UpdateStatus' ci) = original ci

-- | Represents an enum of /known/ $UpdateStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum UpdateStatus where
    toEnum i = case i of
        0 -> USCancelled
        1 -> USFailed
        2 -> USInProgress
        3 -> USSuccessful
        _ -> (error . showText) $ "Unknown index for UpdateStatus: " <> toText i
    fromEnum x = case x of
        USCancelled -> 0
        USFailed -> 1
        USInProgress -> 2
        USSuccessful -> 3
        UpdateStatus' name -> (error . showText) $ "Unknown UpdateStatus: " <> original name

-- | Represents the bounds of /known/ $UpdateStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded UpdateStatus where
    minBound = USCancelled
    maxBound = USSuccessful

instance Hashable     UpdateStatus
instance NFData       UpdateStatus
instance ToByteString UpdateStatus
instance ToQuery      UpdateStatus
instance ToHeader     UpdateStatus

instance FromJSON UpdateStatus where
    parseJSON = parseJSONText "UpdateStatus"
