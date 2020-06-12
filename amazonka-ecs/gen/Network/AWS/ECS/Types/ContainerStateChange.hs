{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerStateChange
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerStateChange where

import Network.AWS.ECS.Types.NetworkBinding
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a change in state for a container.
--
--
--
-- /See:/ 'containerStateChange' smart constructor.
data ContainerStateChange = ContainerStateChange'{_cscNetworkBindings
                                                  :: !(Maybe [NetworkBinding]),
                                                  _cscStatus :: !(Maybe Text),
                                                  _cscContainerName ::
                                                  !(Maybe Text),
                                                  _cscReason :: !(Maybe Text),
                                                  _cscExitCode :: !(Maybe Int)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerStateChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscNetworkBindings' - Any network bindings associated with the container.
--
-- * 'cscStatus' - The status of the container.
--
-- * 'cscContainerName' - The name of the container.
--
-- * 'cscReason' - The reason for the state change.
--
-- * 'cscExitCode' - The exit code for the container, if the state change is a result of the container exiting.
containerStateChange
    :: ContainerStateChange
containerStateChange
  = ContainerStateChange'{_cscNetworkBindings =
                            Nothing,
                          _cscStatus = Nothing, _cscContainerName = Nothing,
                          _cscReason = Nothing, _cscExitCode = Nothing}

-- | Any network bindings associated with the container.
cscNetworkBindings :: Lens' ContainerStateChange [NetworkBinding]
cscNetworkBindings = lens _cscNetworkBindings (\ s a -> s{_cscNetworkBindings = a}) . _Default . _Coerce

-- | The status of the container.
cscStatus :: Lens' ContainerStateChange (Maybe Text)
cscStatus = lens _cscStatus (\ s a -> s{_cscStatus = a})

-- | The name of the container.
cscContainerName :: Lens' ContainerStateChange (Maybe Text)
cscContainerName = lens _cscContainerName (\ s a -> s{_cscContainerName = a})

-- | The reason for the state change.
cscReason :: Lens' ContainerStateChange (Maybe Text)
cscReason = lens _cscReason (\ s a -> s{_cscReason = a})

-- | The exit code for the container, if the state change is a result of the container exiting.
cscExitCode :: Lens' ContainerStateChange (Maybe Int)
cscExitCode = lens _cscExitCode (\ s a -> s{_cscExitCode = a})

instance Hashable ContainerStateChange where

instance NFData ContainerStateChange where

instance ToJSON ContainerStateChange where
        toJSON ContainerStateChange'{..}
          = object
              (catMaybes
                 [("networkBindings" .=) <$> _cscNetworkBindings,
                  ("status" .=) <$> _cscStatus,
                  ("containerName" .=) <$> _cscContainerName,
                  ("reason" .=) <$> _cscReason,
                  ("exitCode" .=) <$> _cscExitCode])
