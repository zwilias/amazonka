{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Core
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.Core where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a core.
--
-- /See:/ 'core' smart constructor.
data Core = Core'{_cCertificateARN :: !(Maybe Text),
                  _cThingARN :: !(Maybe Text),
                  _cSyncShadow :: !(Maybe Bool), _cId :: !(Maybe Text)}
              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Core' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCertificateARN' - The ARN of the certificate associated with the core.
--
-- * 'cThingARN' - The ARN of the thing which is the core.
--
-- * 'cSyncShadow' - If true, the core's local shadow is automatically synced with the cloud.
--
-- * 'cId' - The ID of the core.
core
    :: Core
core
  = Core'{_cCertificateARN = Nothing,
          _cThingARN = Nothing, _cSyncShadow = Nothing,
          _cId = Nothing}

-- | The ARN of the certificate associated with the core.
cCertificateARN :: Lens' Core (Maybe Text)
cCertificateARN = lens _cCertificateARN (\ s a -> s{_cCertificateARN = a})

-- | The ARN of the thing which is the core.
cThingARN :: Lens' Core (Maybe Text)
cThingARN = lens _cThingARN (\ s a -> s{_cThingARN = a})

-- | If true, the core's local shadow is automatically synced with the cloud.
cSyncShadow :: Lens' Core (Maybe Bool)
cSyncShadow = lens _cSyncShadow (\ s a -> s{_cSyncShadow = a})

-- | The ID of the core.
cId :: Lens' Core (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

instance FromJSON Core where
        parseJSON
          = withObject "Core"
              (\ x ->
                 Core' <$>
                   (x .:? "CertificateArn") <*> (x .:? "ThingArn") <*>
                     (x .:? "SyncShadow")
                     <*> (x .:? "Id"))

instance Hashable Core where

instance NFData Core where

instance ToJSON Core where
        toJSON Core'{..}
          = object
              (catMaybes
                 [("CertificateArn" .=) <$> _cCertificateARN,
                  ("ThingArn" .=) <$> _cThingARN,
                  ("SyncShadow" .=) <$> _cSyncShadow,
                  ("Id" .=) <$> _cId])
