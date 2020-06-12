{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Container
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.Container where

import Network.AWS.ECS.Types.HealthStatus
import Network.AWS.ECS.Types.NetworkBinding
import Network.AWS.ECS.Types.NetworkInterface
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A Docker container that is part of a task.
--
--
--
-- /See:/ 'container' smart constructor.
data Container = Container'{_cNetworkBindings ::
                            !(Maybe [NetworkBinding]),
                            _cContainerARN :: !(Maybe Text),
                            _cNetworkInterfaces :: !(Maybe [NetworkInterface]),
                            _cTaskARN :: !(Maybe Text),
                            _cLastStatus :: !(Maybe Text),
                            _cReason :: !(Maybe Text), _cName :: !(Maybe Text),
                            _cExitCode :: !(Maybe Int),
                            _cHealthStatus :: !(Maybe HealthStatus)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Container' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cNetworkBindings' - The network bindings associated with the container.
--
-- * 'cContainerARN' - The Amazon Resource Name (ARN) of the container.
--
-- * 'cNetworkInterfaces' - The network interfaces associated with the container.
--
-- * 'cTaskARN' - The ARN of the task.
--
-- * 'cLastStatus' - The last known status of the container.
--
-- * 'cReason' - A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
--
-- * 'cName' - The name of the container.
--
-- * 'cExitCode' - The exit code returned from the container.
--
-- * 'cHealthStatus' - The health status of the container. If health checks are not configured for this container in its task definition, then it reports health status as @UNKNOWN@ .
container
    :: Container
container
  = Container'{_cNetworkBindings = Nothing,
               _cContainerARN = Nothing,
               _cNetworkInterfaces = Nothing, _cTaskARN = Nothing,
               _cLastStatus = Nothing, _cReason = Nothing,
               _cName = Nothing, _cExitCode = Nothing,
               _cHealthStatus = Nothing}

-- | The network bindings associated with the container.
cNetworkBindings :: Lens' Container [NetworkBinding]
cNetworkBindings = lens _cNetworkBindings (\ s a -> s{_cNetworkBindings = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the container.
cContainerARN :: Lens' Container (Maybe Text)
cContainerARN = lens _cContainerARN (\ s a -> s{_cContainerARN = a})

-- | The network interfaces associated with the container.
cNetworkInterfaces :: Lens' Container [NetworkInterface]
cNetworkInterfaces = lens _cNetworkInterfaces (\ s a -> s{_cNetworkInterfaces = a}) . _Default . _Coerce

-- | The ARN of the task.
cTaskARN :: Lens' Container (Maybe Text)
cTaskARN = lens _cTaskARN (\ s a -> s{_cTaskARN = a})

-- | The last known status of the container.
cLastStatus :: Lens' Container (Maybe Text)
cLastStatus = lens _cLastStatus (\ s a -> s{_cLastStatus = a})

-- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
cReason :: Lens' Container (Maybe Text)
cReason = lens _cReason (\ s a -> s{_cReason = a})

-- | The name of the container.
cName :: Lens' Container (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The exit code returned from the container.
cExitCode :: Lens' Container (Maybe Int)
cExitCode = lens _cExitCode (\ s a -> s{_cExitCode = a})

-- | The health status of the container. If health checks are not configured for this container in its task definition, then it reports health status as @UNKNOWN@ .
cHealthStatus :: Lens' Container (Maybe HealthStatus)
cHealthStatus = lens _cHealthStatus (\ s a -> s{_cHealthStatus = a})

instance FromJSON Container where
        parseJSON
          = withObject "Container"
              (\ x ->
                 Container' <$>
                   (x .:? "networkBindings" .!= mempty) <*>
                     (x .:? "containerArn")
                     <*> (x .:? "networkInterfaces" .!= mempty)
                     <*> (x .:? "taskArn")
                     <*> (x .:? "lastStatus")
                     <*> (x .:? "reason")
                     <*> (x .:? "name")
                     <*> (x .:? "exitCode")
                     <*> (x .:? "healthStatus"))

instance Hashable Container where

instance NFData Container where
