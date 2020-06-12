{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Device
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.Device where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a device.
--
-- /See:/ 'device' smart constructor.
data Device = Device'{_dCertificateARN ::
                      !(Maybe Text),
                      _dThingARN :: !(Maybe Text),
                      _dSyncShadow :: !(Maybe Bool), _dId :: !(Maybe Text)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCertificateARN' - The ARN of the certificate associated with the device.
--
-- * 'dThingARN' - The thing ARN of the device.
--
-- * 'dSyncShadow' - If true, the device's local shadow will be automatically synced with the cloud.
--
-- * 'dId' - The ID of the device.
device
    :: Device
device
  = Device'{_dCertificateARN = Nothing,
            _dThingARN = Nothing, _dSyncShadow = Nothing,
            _dId = Nothing}

-- | The ARN of the certificate associated with the device.
dCertificateARN :: Lens' Device (Maybe Text)
dCertificateARN = lens _dCertificateARN (\ s a -> s{_dCertificateARN = a})

-- | The thing ARN of the device.
dThingARN :: Lens' Device (Maybe Text)
dThingARN = lens _dThingARN (\ s a -> s{_dThingARN = a})

-- | If true, the device's local shadow will be automatically synced with the cloud.
dSyncShadow :: Lens' Device (Maybe Bool)
dSyncShadow = lens _dSyncShadow (\ s a -> s{_dSyncShadow = a})

-- | The ID of the device.
dId :: Lens' Device (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ x ->
                 Device' <$>
                   (x .:? "CertificateArn") <*> (x .:? "ThingArn") <*>
                     (x .:? "SyncShadow")
                     <*> (x .:? "Id"))

instance Hashable Device where

instance NFData Device where

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [("CertificateArn" .=) <$> _dCertificateARN,
                  ("ThingArn" .=) <$> _dThingARN,
                  ("SyncShadow" .=) <$> _dSyncShadow,
                  ("Id" .=) <$> _dId])
