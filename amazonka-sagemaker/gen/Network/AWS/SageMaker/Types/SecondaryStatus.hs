{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.SageMaker.Types.SecondaryStatus where

import Network.AWS.Prelude
  
data SecondaryStatus = SSCompleted
                     | SSDownloading
                     | SSFailed
                     | SSMaxRuntimeExceeded
                     | SSStarting
                     | SSStopped
                     | SSStopping
                     | SSTraining
                     | SSUploading
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText SecondaryStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure SSCompleted
        "downloading" -> pure SSDownloading
        "failed" -> pure SSFailed
        "maxruntimeexceeded" -> pure SSMaxRuntimeExceeded
        "starting" -> pure SSStarting
        "stopped" -> pure SSStopped
        "stopping" -> pure SSStopping
        "training" -> pure SSTraining
        "uploading" -> pure SSUploading
        e -> fromTextError $ "Failure parsing SecondaryStatus from value: '" <> e
           <> "'. Accepted values: completed, downloading, failed, maxruntimeexceeded, starting, stopped, stopping, training, uploading"

instance ToText SecondaryStatus where
    toText = \case
        SSCompleted -> "Completed"
        SSDownloading -> "Downloading"
        SSFailed -> "Failed"
        SSMaxRuntimeExceeded -> "MaxRuntimeExceeded"
        SSStarting -> "Starting"
        SSStopped -> "Stopped"
        SSStopping -> "Stopping"
        SSTraining -> "Training"
        SSUploading -> "Uploading"

instance Hashable     SecondaryStatus
instance NFData       SecondaryStatus
instance ToByteString SecondaryStatus
instance ToQuery      SecondaryStatus
instance ToHeader     SecondaryStatus

instance FromJSON SecondaryStatus where
    parseJSON = parseJSONText "SecondaryStatus"
