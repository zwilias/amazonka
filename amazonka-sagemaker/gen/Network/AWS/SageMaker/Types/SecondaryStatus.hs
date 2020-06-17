{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SecondaryStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.SecondaryStatus (
  SecondaryStatus (
    ..
    , SSCompleted
    , SSDownloading
    , SSFailed
    , SSMaxRuntimeExceeded
    , SSStarting
    , SSStopped
    , SSStopping
    , SSTraining
    , SSUploading
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SecondaryStatus = SecondaryStatus' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern SSCompleted :: SecondaryStatus
pattern SSCompleted = SecondaryStatus' "Completed"

pattern SSDownloading :: SecondaryStatus
pattern SSDownloading = SecondaryStatus' "Downloading"

pattern SSFailed :: SecondaryStatus
pattern SSFailed = SecondaryStatus' "Failed"

pattern SSMaxRuntimeExceeded :: SecondaryStatus
pattern SSMaxRuntimeExceeded = SecondaryStatus' "MaxRuntimeExceeded"

pattern SSStarting :: SecondaryStatus
pattern SSStarting = SecondaryStatus' "Starting"

pattern SSStopped :: SecondaryStatus
pattern SSStopped = SecondaryStatus' "Stopped"

pattern SSStopping :: SecondaryStatus
pattern SSStopping = SecondaryStatus' "Stopping"

pattern SSTraining :: SecondaryStatus
pattern SSTraining = SecondaryStatus' "Training"

pattern SSUploading :: SecondaryStatus
pattern SSUploading = SecondaryStatus' "Uploading"

{-# COMPLETE
  SSCompleted,
  SSDownloading,
  SSFailed,
  SSMaxRuntimeExceeded,
  SSStarting,
  SSStopped,
  SSStopping,
  SSTraining,
  SSUploading,
  SecondaryStatus' #-}

instance FromText SecondaryStatus where
    parser = (SecondaryStatus' . mk) <$> takeText

instance ToText SecondaryStatus where
    toText (SecondaryStatus' ci) = original ci

-- | Represents an enum of /known/ $SecondaryStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum SecondaryStatus where
    toEnum i = case i of
        0 -> SSCompleted
        1 -> SSDownloading
        2 -> SSFailed
        3 -> SSMaxRuntimeExceeded
        4 -> SSStarting
        5 -> SSStopped
        6 -> SSStopping
        7 -> SSTraining
        8 -> SSUploading
        _ -> (error . showText) $ "Unknown index for SecondaryStatus: " <> toText i
    fromEnum x = case x of
        SSCompleted -> 0
        SSDownloading -> 1
        SSFailed -> 2
        SSMaxRuntimeExceeded -> 3
        SSStarting -> 4
        SSStopped -> 5
        SSStopping -> 6
        SSTraining -> 7
        SSUploading -> 8
        SecondaryStatus' name -> (error . showText) $ "Unknown SecondaryStatus: " <> original name

-- | Represents the bounds of /known/ $SecondaryStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded SecondaryStatus where
    minBound = SSCompleted
    maxBound = SSUploading

instance Hashable     SecondaryStatus
instance NFData       SecondaryStatus
instance ToByteString SecondaryStatus
instance ToQuery      SecondaryStatus
instance ToHeader     SecondaryStatus

instance FromJSON SecondaryStatus where
    parseJSON = parseJSONText "SecondaryStatus"
