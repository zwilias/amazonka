{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.LinuxParameters
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.LinuxParameters where

import Network.AWS.ECS.Types.Device
import Network.AWS.ECS.Types.KernelCapabilities
import Network.AWS.ECS.Types.Tmpfs
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Linux-specific options that are applied to the container, such as Linux 'KernelCapabilities' .
--
--
--
-- /See:/ 'linuxParameters' smart constructor.
data LinuxParameters = LinuxParameters'{_lpSharedMemorySize
                                        :: !(Maybe Int),
                                        _lpInitProcessEnabled :: !(Maybe Bool),
                                        _lpTmpfs :: !(Maybe [Tmpfs]),
                                        _lpDevices :: !(Maybe [Device]),
                                        _lpCapabilities ::
                                        !(Maybe KernelCapabilities)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LinuxParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpSharedMemorySize' - The value for the size of the @/dev/shm@ volume. This parameter maps to the @--shm-size@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'lpInitProcessEnabled' - Run an @init@ process inside the container that forwards signals and reaps processes. This parameter maps to the @--init@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
--
-- * 'lpTmpfs' - The container path, mount options, and size of the tmpfs mount. This parameter maps to the @--tmpfs@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'lpDevices' - Any host devices to expose to the container. This parameter maps to @Devices@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--device@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'lpCapabilities' - The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
linuxParameters
    :: LinuxParameters
linuxParameters
  = LinuxParameters'{_lpSharedMemorySize = Nothing,
                     _lpInitProcessEnabled = Nothing, _lpTmpfs = Nothing,
                     _lpDevices = Nothing, _lpCapabilities = Nothing}

-- | The value for the size of the @/dev/shm@ volume. This parameter maps to the @--shm-size@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
lpSharedMemorySize :: Lens' LinuxParameters (Maybe Int)
lpSharedMemorySize = lens _lpSharedMemorySize (\ s a -> s{_lpSharedMemorySize = a})

-- | Run an @init@ process inside the container that forwards signals and reaps processes. This parameter maps to the @--init@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
lpInitProcessEnabled :: Lens' LinuxParameters (Maybe Bool)
lpInitProcessEnabled = lens _lpInitProcessEnabled (\ s a -> s{_lpInitProcessEnabled = a})

-- | The container path, mount options, and size of the tmpfs mount. This parameter maps to the @--tmpfs@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
lpTmpfs :: Lens' LinuxParameters [Tmpfs]
lpTmpfs = lens _lpTmpfs (\ s a -> s{_lpTmpfs = a}) . _Default . _Coerce

-- | Any host devices to expose to the container. This parameter maps to @Devices@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--device@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
lpDevices :: Lens' LinuxParameters [Device]
lpDevices = lens _lpDevices (\ s a -> s{_lpDevices = a}) . _Default . _Coerce

-- | The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
lpCapabilities :: Lens' LinuxParameters (Maybe KernelCapabilities)
lpCapabilities = lens _lpCapabilities (\ s a -> s{_lpCapabilities = a})

instance FromJSON LinuxParameters where
        parseJSON
          = withObject "LinuxParameters"
              (\ x ->
                 LinuxParameters' <$>
                   (x .:? "sharedMemorySize") <*>
                     (x .:? "initProcessEnabled")
                     <*> (x .:? "tmpfs" .!= mempty)
                     <*> (x .:? "devices" .!= mempty)
                     <*> (x .:? "capabilities"))

instance Hashable LinuxParameters where

instance NFData LinuxParameters where

instance ToJSON LinuxParameters where
        toJSON LinuxParameters'{..}
          = object
              (catMaybes
                 [("sharedMemorySize" .=) <$> _lpSharedMemorySize,
                  ("initProcessEnabled" .=) <$> _lpInitProcessEnabled,
                  ("tmpfs" .=) <$> _lpTmpfs,
                  ("devices" .=) <$> _lpDevices,
                  ("capabilities" .=) <$> _lpCapabilities])
