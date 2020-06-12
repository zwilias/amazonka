{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.RestoreStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.RestoreStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.
--
--
--
-- /See:/ 'restoreStatus' smart constructor.
data RestoreStatus = RestoreStatus'{_rsStatus ::
                                    !(Maybe Text),
                                    _rsEstimatedTimeToCompletionInSeconds ::
                                    !(Maybe Integer),
                                    _rsCurrentRestoreRateInMegaBytesPerSecond ::
                                    !(Maybe Double),
                                    _rsProgressInMegaBytes :: !(Maybe Integer),
                                    _rsElapsedTimeInSeconds :: !(Maybe Integer),
                                    _rsSnapshotSizeInMegaBytes ::
                                    !(Maybe Integer)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RestoreStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsStatus' - The status of the restore action. Returns starting, restoring, completed, or failed.
--
-- * 'rsEstimatedTimeToCompletionInSeconds' - The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore.
--
-- * 'rsCurrentRestoreRateInMegaBytesPerSecond' - The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup.
--
-- * 'rsProgressInMegaBytes' - The number of megabytes that have been transferred from snapshot storage.
--
-- * 'rsElapsedTimeInSeconds' - The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish.
--
-- * 'rsSnapshotSizeInMegaBytes' - The size of the set of snapshot data used to restore the cluster.
restoreStatus
    :: RestoreStatus
restoreStatus
  = RestoreStatus'{_rsStatus = Nothing,
                   _rsEstimatedTimeToCompletionInSeconds = Nothing,
                   _rsCurrentRestoreRateInMegaBytesPerSecond = Nothing,
                   _rsProgressInMegaBytes = Nothing,
                   _rsElapsedTimeInSeconds = Nothing,
                   _rsSnapshotSizeInMegaBytes = Nothing}

-- | The status of the restore action. Returns starting, restoring, completed, or failed.
rsStatus :: Lens' RestoreStatus (Maybe Text)
rsStatus = lens _rsStatus (\ s a -> s{_rsStatus = a})

-- | The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore.
rsEstimatedTimeToCompletionInSeconds :: Lens' RestoreStatus (Maybe Integer)
rsEstimatedTimeToCompletionInSeconds = lens _rsEstimatedTimeToCompletionInSeconds (\ s a -> s{_rsEstimatedTimeToCompletionInSeconds = a})

-- | The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup.
rsCurrentRestoreRateInMegaBytesPerSecond :: Lens' RestoreStatus (Maybe Double)
rsCurrentRestoreRateInMegaBytesPerSecond = lens _rsCurrentRestoreRateInMegaBytesPerSecond (\ s a -> s{_rsCurrentRestoreRateInMegaBytesPerSecond = a})

-- | The number of megabytes that have been transferred from snapshot storage.
rsProgressInMegaBytes :: Lens' RestoreStatus (Maybe Integer)
rsProgressInMegaBytes = lens _rsProgressInMegaBytes (\ s a -> s{_rsProgressInMegaBytes = a})

-- | The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish.
rsElapsedTimeInSeconds :: Lens' RestoreStatus (Maybe Integer)
rsElapsedTimeInSeconds = lens _rsElapsedTimeInSeconds (\ s a -> s{_rsElapsedTimeInSeconds = a})

-- | The size of the set of snapshot data used to restore the cluster.
rsSnapshotSizeInMegaBytes :: Lens' RestoreStatus (Maybe Integer)
rsSnapshotSizeInMegaBytes = lens _rsSnapshotSizeInMegaBytes (\ s a -> s{_rsSnapshotSizeInMegaBytes = a})

instance FromXML RestoreStatus where
        parseXML x
          = RestoreStatus' <$>
              (x .@? "Status") <*>
                (x .@? "EstimatedTimeToCompletionInSeconds")
                <*> (x .@? "CurrentRestoreRateInMegaBytesPerSecond")
                <*> (x .@? "ProgressInMegaBytes")
                <*> (x .@? "ElapsedTimeInSeconds")
                <*> (x .@? "SnapshotSizeInMegaBytes")

instance Hashable RestoreStatus where

instance NFData RestoreStatus where
