{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ServiceRegistry
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ServiceRegistry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details of the service registry.
--
--
--
-- /See:/ 'serviceRegistry' smart constructor.
data ServiceRegistry = ServiceRegistry'{_srRegistryARN
                                        :: !(Maybe Text),
                                        _srPort :: !(Maybe Int)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRegistryARN' - The Amazon Resource Name (ARN) of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service. For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html Service> .
--
-- * 'srPort' - The port value used if your Service Discovery service specified an SRV record.
serviceRegistry
    :: ServiceRegistry
serviceRegistry
  = ServiceRegistry'{_srRegistryARN = Nothing,
                     _srPort = Nothing}

-- | The Amazon Resource Name (ARN) of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service. For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html Service> .
srRegistryARN :: Lens' ServiceRegistry (Maybe Text)
srRegistryARN = lens _srRegistryARN (\ s a -> s{_srRegistryARN = a})

-- | The port value used if your Service Discovery service specified an SRV record.
srPort :: Lens' ServiceRegistry (Maybe Int)
srPort = lens _srPort (\ s a -> s{_srPort = a})

instance FromJSON ServiceRegistry where
        parseJSON
          = withObject "ServiceRegistry"
              (\ x ->
                 ServiceRegistry' <$>
                   (x .:? "registryArn") <*> (x .:? "port"))

instance Hashable ServiceRegistry where

instance NFData ServiceRegistry where

instance ToJSON ServiceRegistry where
        toJSON ServiceRegistry'{..}
          = object
              (catMaybes
                 [("registryArn" .=) <$> _srRegistryARN,
                  ("port" .=) <$> _srPort])
