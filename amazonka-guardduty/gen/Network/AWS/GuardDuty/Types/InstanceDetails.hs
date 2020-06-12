{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.InstanceDetails
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.InstanceDetails where

import Network.AWS.GuardDuty.Types.IAMInstanceProfile
import Network.AWS.GuardDuty.Types.NetworkInterface
import Network.AWS.GuardDuty.Types.ProductCode
import Network.AWS.GuardDuty.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.
--
-- /See:/ 'instanceDetails' smart constructor.
data InstanceDetails = InstanceDetails'{_idInstanceId
                                        :: !(Maybe Text),
                                        _idPlatform :: !(Maybe Text),
                                        _idLaunchTime :: !(Maybe Text),
                                        _idNetworkInterfaces ::
                                        !(Maybe [NetworkInterface]),
                                        _idInstanceType :: !(Maybe Text),
                                        _idAvailabilityZone :: !(Maybe Text),
                                        _idIAMInstanceProfile ::
                                        !(Maybe IAMInstanceProfile),
                                        _idImageId :: !(Maybe Text),
                                        _idProductCodes ::
                                        !(Maybe [ProductCode]),
                                        _idInstanceState :: !(Maybe Text),
                                        _idTags :: !(Maybe [Tag]),
                                        _idImageDescription :: !(Maybe Text)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idInstanceId' - The ID of the EC2 instance.
--
-- * 'idPlatform' - The platform of the EC2 instance.
--
-- * 'idLaunchTime' - The launch time of the EC2 instance.
--
-- * 'idNetworkInterfaces' - The network interface information of the EC2 instance.
--
-- * 'idInstanceType' - The type of the EC2 instance.
--
-- * 'idAvailabilityZone' - The availability zone of the EC2 instance.
--
-- * 'idIAMInstanceProfile' - Undocumented member.
--
-- * 'idImageId' - The image ID of the EC2 instance.
--
-- * 'idProductCodes' - The product code of the EC2 instance.
--
-- * 'idInstanceState' - The state of the EC2 instance.
--
-- * 'idTags' - The tags of the EC2 instance.
--
-- * 'idImageDescription' - The image description of the EC2 instance.
instanceDetails
    :: InstanceDetails
instanceDetails
  = InstanceDetails'{_idInstanceId = Nothing,
                     _idPlatform = Nothing, _idLaunchTime = Nothing,
                     _idNetworkInterfaces = Nothing,
                     _idInstanceType = Nothing,
                     _idAvailabilityZone = Nothing,
                     _idIAMInstanceProfile = Nothing,
                     _idImageId = Nothing, _idProductCodes = Nothing,
                     _idInstanceState = Nothing, _idTags = Nothing,
                     _idImageDescription = Nothing}

-- | The ID of the EC2 instance.
idInstanceId :: Lens' InstanceDetails (Maybe Text)
idInstanceId = lens _idInstanceId (\ s a -> s{_idInstanceId = a})

-- | The platform of the EC2 instance.
idPlatform :: Lens' InstanceDetails (Maybe Text)
idPlatform = lens _idPlatform (\ s a -> s{_idPlatform = a})

-- | The launch time of the EC2 instance.
idLaunchTime :: Lens' InstanceDetails (Maybe Text)
idLaunchTime = lens _idLaunchTime (\ s a -> s{_idLaunchTime = a})

-- | The network interface information of the EC2 instance.
idNetworkInterfaces :: Lens' InstanceDetails [NetworkInterface]
idNetworkInterfaces = lens _idNetworkInterfaces (\ s a -> s{_idNetworkInterfaces = a}) . _Default . _Coerce

-- | The type of the EC2 instance.
idInstanceType :: Lens' InstanceDetails (Maybe Text)
idInstanceType = lens _idInstanceType (\ s a -> s{_idInstanceType = a})

-- | The availability zone of the EC2 instance.
idAvailabilityZone :: Lens' InstanceDetails (Maybe Text)
idAvailabilityZone = lens _idAvailabilityZone (\ s a -> s{_idAvailabilityZone = a})

-- | Undocumented member.
idIAMInstanceProfile :: Lens' InstanceDetails (Maybe IAMInstanceProfile)
idIAMInstanceProfile = lens _idIAMInstanceProfile (\ s a -> s{_idIAMInstanceProfile = a})

-- | The image ID of the EC2 instance.
idImageId :: Lens' InstanceDetails (Maybe Text)
idImageId = lens _idImageId (\ s a -> s{_idImageId = a})

-- | The product code of the EC2 instance.
idProductCodes :: Lens' InstanceDetails [ProductCode]
idProductCodes = lens _idProductCodes (\ s a -> s{_idProductCodes = a}) . _Default . _Coerce

-- | The state of the EC2 instance.
idInstanceState :: Lens' InstanceDetails (Maybe Text)
idInstanceState = lens _idInstanceState (\ s a -> s{_idInstanceState = a})

-- | The tags of the EC2 instance.
idTags :: Lens' InstanceDetails [Tag]
idTags = lens _idTags (\ s a -> s{_idTags = a}) . _Default . _Coerce

-- | The image description of the EC2 instance.
idImageDescription :: Lens' InstanceDetails (Maybe Text)
idImageDescription = lens _idImageDescription (\ s a -> s{_idImageDescription = a})

instance FromJSON InstanceDetails where
        parseJSON
          = withObject "InstanceDetails"
              (\ x ->
                 InstanceDetails' <$>
                   (x .:? "instanceId") <*> (x .:? "platform") <*>
                     (x .:? "launchTime")
                     <*> (x .:? "networkInterfaces" .!= mempty)
                     <*> (x .:? "instanceType")
                     <*> (x .:? "availabilityZone")
                     <*> (x .:? "iamInstanceProfile")
                     <*> (x .:? "imageId")
                     <*> (x .:? "productCodes" .!= mempty)
                     <*> (x .:? "instanceState")
                     <*> (x .:? "tags" .!= mempty)
                     <*> (x .:? "imageDescription"))

instance Hashable InstanceDetails where

instance NFData InstanceDetails where
