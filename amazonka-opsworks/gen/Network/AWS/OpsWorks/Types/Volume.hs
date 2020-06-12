{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Volume
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.Volume where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance's Amazon EBS volume.
--
--
--
-- /See:/ 'volume' smart constructor.
data Volume = Volume'{_vInstanceId :: !(Maybe Text),
                      _vStatus :: !(Maybe Text), _vSize :: !(Maybe Int),
                      _vIOPS :: !(Maybe Int), _vDevice :: !(Maybe Text),
                      _vEncrypted :: !(Maybe Bool),
                      _vAvailabilityZone :: !(Maybe Text),
                      _vName :: !(Maybe Text),
                      _vRAIdArrayId :: !(Maybe Text),
                      _vVolumeId :: !(Maybe Text),
                      _vRegion :: !(Maybe Text),
                      _vVolumeType :: !(Maybe Text),
                      _vEC2VolumeId :: !(Maybe Text),
                      _vMountPoint :: !(Maybe Text)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vInstanceId' - The instance ID.
--
-- * 'vStatus' - The value returned by <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html DescribeVolumes> .
--
-- * 'vSize' - The volume size.
--
-- * 'vIOPS' - For PIOPS volumes, the IOPS per disk.
--
-- * 'vDevice' - The device name.
--
-- * 'vEncrypted' - Undocumented member.
--
-- * 'vAvailabilityZone' - The volume Availability Zone. For more information, see <http://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'vName' - The volume name.
--
-- * 'vRAIdArrayId' - The RAID array ID.
--
-- * 'vVolumeId' - The volume ID.
--
-- * 'vRegion' - The AWS region. For more information about AWS regions, see <http://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'vVolumeType' - The volume type, standard or PIOPS.
--
-- * 'vEC2VolumeId' - The Amazon EC2 volume ID.
--
-- * 'vMountPoint' - The volume mount point. For example, "/mnt/disk1".
volume
    :: Volume
volume
  = Volume'{_vInstanceId = Nothing, _vStatus = Nothing,
            _vSize = Nothing, _vIOPS = Nothing,
            _vDevice = Nothing, _vEncrypted = Nothing,
            _vAvailabilityZone = Nothing, _vName = Nothing,
            _vRAIdArrayId = Nothing, _vVolumeId = Nothing,
            _vRegion = Nothing, _vVolumeType = Nothing,
            _vEC2VolumeId = Nothing, _vMountPoint = Nothing}

-- | The instance ID.
vInstanceId :: Lens' Volume (Maybe Text)
vInstanceId = lens _vInstanceId (\ s a -> s{_vInstanceId = a})

-- | The value returned by <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html DescribeVolumes> .
vStatus :: Lens' Volume (Maybe Text)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | The volume size.
vSize :: Lens' Volume (Maybe Int)
vSize = lens _vSize (\ s a -> s{_vSize = a})

-- | For PIOPS volumes, the IOPS per disk.
vIOPS :: Lens' Volume (Maybe Int)
vIOPS = lens _vIOPS (\ s a -> s{_vIOPS = a})

-- | The device name.
vDevice :: Lens' Volume (Maybe Text)
vDevice = lens _vDevice (\ s a -> s{_vDevice = a})

-- | Undocumented member.
vEncrypted :: Lens' Volume (Maybe Bool)
vEncrypted = lens _vEncrypted (\ s a -> s{_vEncrypted = a})

-- | The volume Availability Zone. For more information, see <http://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
vAvailabilityZone :: Lens' Volume (Maybe Text)
vAvailabilityZone = lens _vAvailabilityZone (\ s a -> s{_vAvailabilityZone = a})

-- | The volume name.
vName :: Lens' Volume (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | The RAID array ID.
vRAIdArrayId :: Lens' Volume (Maybe Text)
vRAIdArrayId = lens _vRAIdArrayId (\ s a -> s{_vRAIdArrayId = a})

-- | The volume ID.
vVolumeId :: Lens' Volume (Maybe Text)
vVolumeId = lens _vVolumeId (\ s a -> s{_vVolumeId = a})

-- | The AWS region. For more information about AWS regions, see <http://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
vRegion :: Lens' Volume (Maybe Text)
vRegion = lens _vRegion (\ s a -> s{_vRegion = a})

-- | The volume type, standard or PIOPS.
vVolumeType :: Lens' Volume (Maybe Text)
vVolumeType = lens _vVolumeType (\ s a -> s{_vVolumeType = a})

-- | The Amazon EC2 volume ID.
vEC2VolumeId :: Lens' Volume (Maybe Text)
vEC2VolumeId = lens _vEC2VolumeId (\ s a -> s{_vEC2VolumeId = a})

-- | The volume mount point. For example, "/mnt/disk1".
vMountPoint :: Lens' Volume (Maybe Text)
vMountPoint = lens _vMountPoint (\ s a -> s{_vMountPoint = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ x ->
                 Volume' <$>
                   (x .:? "InstanceId") <*> (x .:? "Status") <*>
                     (x .:? "Size")
                     <*> (x .:? "Iops")
                     <*> (x .:? "Device")
                     <*> (x .:? "Encrypted")
                     <*> (x .:? "AvailabilityZone")
                     <*> (x .:? "Name")
                     <*> (x .:? "RaidArrayId")
                     <*> (x .:? "VolumeId")
                     <*> (x .:? "Region")
                     <*> (x .:? "VolumeType")
                     <*> (x .:? "Ec2VolumeId")
                     <*> (x .:? "MountPoint"))

instance Hashable Volume where

instance NFData Volume where
