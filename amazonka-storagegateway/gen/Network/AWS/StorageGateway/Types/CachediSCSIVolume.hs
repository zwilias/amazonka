{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.CachediSCSIVolume
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.CachediSCSIVolume where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types.VolumeiSCSIAttributes

-- | Describes an iSCSI cached volume.
--
--
--
-- /See:/ 'cachediSCSIVolume' smart constructor.
data CachediSCSIVolume = CachediSCSIVolume'{_cscsivVolumeiSCSIAttributes
                                            :: !(Maybe VolumeiSCSIAttributes),
                                            _cscsivVolumeStatus ::
                                            !(Maybe Text),
                                            _cscsivSourceSnapshotId ::
                                            !(Maybe Text),
                                            _cscsivVolumeARN :: !(Maybe Text),
                                            _cscsivVolumeProgress ::
                                            !(Maybe Double),
                                            _cscsivVolumeSizeInBytes ::
                                            !(Maybe Integer),
                                            _cscsivVolumeUsedInBytes ::
                                            !(Maybe Integer),
                                            _cscsivCreatedDate ::
                                            !(Maybe POSIX),
                                            _cscsivVolumeId :: !(Maybe Text),
                                            _cscsivVolumeType :: !(Maybe Text)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CachediSCSIVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscsivVolumeiSCSIAttributes' - An 'VolumeiSCSIAttributes' object that represents a collection of iSCSI attributes for one stored volume.
--
-- * 'cscsivVolumeStatus' - One of the VolumeStatus values that indicates the state of the storage volume.
--
-- * 'cscsivSourceSnapshotId' - If the cached volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.
--
-- * 'cscsivVolumeARN' - The Amazon Resource Name (ARN) of the storage volume.
--
-- * 'cscsivVolumeProgress' - Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the cached volume is not restoring or bootstrapping.
--
-- * 'cscsivVolumeSizeInBytes' - The size, in bytes, of the volume capacity.
--
-- * 'cscsivVolumeUsedInBytes' - The size of the data stored on the volume in bytes.
--
-- * 'cscsivCreatedDate' - The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.
--
-- * 'cscsivVolumeId' - The unique identifier of the volume, e.g. vol-AE4B946D.
--
-- * 'cscsivVolumeType' - One of the VolumeType enumeration values that describes the type of the volume.
cachediSCSIVolume
    :: CachediSCSIVolume
cachediSCSIVolume
  = CachediSCSIVolume'{_cscsivVolumeiSCSIAttributes =
                         Nothing,
                       _cscsivVolumeStatus = Nothing,
                       _cscsivSourceSnapshotId = Nothing,
                       _cscsivVolumeARN = Nothing,
                       _cscsivVolumeProgress = Nothing,
                       _cscsivVolumeSizeInBytes = Nothing,
                       _cscsivVolumeUsedInBytes = Nothing,
                       _cscsivCreatedDate = Nothing,
                       _cscsivVolumeId = Nothing,
                       _cscsivVolumeType = Nothing}

-- | An 'VolumeiSCSIAttributes' object that represents a collection of iSCSI attributes for one stored volume.
cscsivVolumeiSCSIAttributes :: Lens' CachediSCSIVolume (Maybe VolumeiSCSIAttributes)
cscsivVolumeiSCSIAttributes = lens _cscsivVolumeiSCSIAttributes (\ s a -> s{_cscsivVolumeiSCSIAttributes = a})

-- | One of the VolumeStatus values that indicates the state of the storage volume.
cscsivVolumeStatus :: Lens' CachediSCSIVolume (Maybe Text)
cscsivVolumeStatus = lens _cscsivVolumeStatus (\ s a -> s{_cscsivVolumeStatus = a})

-- | If the cached volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.
cscsivSourceSnapshotId :: Lens' CachediSCSIVolume (Maybe Text)
cscsivSourceSnapshotId = lens _cscsivSourceSnapshotId (\ s a -> s{_cscsivSourceSnapshotId = a})

-- | The Amazon Resource Name (ARN) of the storage volume.
cscsivVolumeARN :: Lens' CachediSCSIVolume (Maybe Text)
cscsivVolumeARN = lens _cscsivVolumeARN (\ s a -> s{_cscsivVolumeARN = a})

-- | Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the cached volume is not restoring or bootstrapping.
cscsivVolumeProgress :: Lens' CachediSCSIVolume (Maybe Double)
cscsivVolumeProgress = lens _cscsivVolumeProgress (\ s a -> s{_cscsivVolumeProgress = a})

-- | The size, in bytes, of the volume capacity.
cscsivVolumeSizeInBytes :: Lens' CachediSCSIVolume (Maybe Integer)
cscsivVolumeSizeInBytes = lens _cscsivVolumeSizeInBytes (\ s a -> s{_cscsivVolumeSizeInBytes = a})

-- | The size of the data stored on the volume in bytes.
cscsivVolumeUsedInBytes :: Lens' CachediSCSIVolume (Maybe Integer)
cscsivVolumeUsedInBytes = lens _cscsivVolumeUsedInBytes (\ s a -> s{_cscsivVolumeUsedInBytes = a})

-- | The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.
cscsivCreatedDate :: Lens' CachediSCSIVolume (Maybe UTCTime)
cscsivCreatedDate = lens _cscsivCreatedDate (\ s a -> s{_cscsivCreatedDate = a}) . mapping _Time

-- | The unique identifier of the volume, e.g. vol-AE4B946D.
cscsivVolumeId :: Lens' CachediSCSIVolume (Maybe Text)
cscsivVolumeId = lens _cscsivVolumeId (\ s a -> s{_cscsivVolumeId = a})

-- | One of the VolumeType enumeration values that describes the type of the volume.
cscsivVolumeType :: Lens' CachediSCSIVolume (Maybe Text)
cscsivVolumeType = lens _cscsivVolumeType (\ s a -> s{_cscsivVolumeType = a})

instance FromJSON CachediSCSIVolume where
        parseJSON
          = withObject "CachediSCSIVolume"
              (\ x ->
                 CachediSCSIVolume' <$>
                   (x .:? "VolumeiSCSIAttributes") <*>
                     (x .:? "VolumeStatus")
                     <*> (x .:? "SourceSnapshotId")
                     <*> (x .:? "VolumeARN")
                     <*> (x .:? "VolumeProgress")
                     <*> (x .:? "VolumeSizeInBytes")
                     <*> (x .:? "VolumeUsedInBytes")
                     <*> (x .:? "CreatedDate")
                     <*> (x .:? "VolumeId")
                     <*> (x .:? "VolumeType"))

instance Hashable CachediSCSIVolume where

instance NFData CachediSCSIVolume where
