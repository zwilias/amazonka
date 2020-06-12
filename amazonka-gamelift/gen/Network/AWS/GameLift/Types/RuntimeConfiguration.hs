{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.RuntimeConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.RuntimeConfiguration where

import Network.AWS.GameLift.Types.ServerProcess
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A collection of server process configurations that describe what processes to run on each instance in a fleet. All fleets must have a run-time configuration. Each instance in the fleet launches the server processes specified in the run-time configuration and launches new ones as existing processes end. Each instance regularly checks for an updated run-time configuration and follows the new instructions. 
--
--
-- The run-time configuration enables the instances in a fleet to run multiple processes simultaneously. Potential scenarios are as follows: (1) Run multiple processes of a single game server executable to maximize usage of your hosting resources. (2) Run one or more processes of different build executables, such as your game server executable and a related program, or two or more different versions of a game server. (3) Run multiple processes of a single game server but with different launch parameters, for example to run one process on each instance in debug mode.
--
-- A Amazon GameLift instance is limited to 50 processes running simultaneously. A run-time configuration must specify fewer than this limit. To calculate the total number of processes specified in a run-time configuration, add the values of the @ConcurrentExecutions@ parameter for each @'ServerProcess' @ object in the run-time configuration.
--
-- Fleet-related operations include:
--
--     * 'CreateFleet' 
--
--     * 'ListFleets' 
--
--     * 'DeleteFleet' 
--
--     * Describe fleets:
--
--     * 'DescribeFleetAttributes' 
--
--     * 'DescribeFleetCapacity' 
--
--     * 'DescribeFleetPortSettings' 
--
--     * 'DescribeFleetUtilization' 
--
--     * 'DescribeRuntimeConfiguration' 
--
--     * 'DescribeEC2InstanceLimits' 
--
--     * 'DescribeFleetEvents' 
--
--
--
--     * Update fleets:
--
--     * 'UpdateFleetAttributes' 
--
--     * 'UpdateFleetCapacity' 
--
--     * 'UpdateFleetPortSettings' 
--
--     * 'UpdateRuntimeConfiguration' 
--
--
--
--     * Manage fleet actions:
--
--     * 'StartFleetActions' 
--
--     * 'StopFleetActions' 
--
--
--
--
--
--
-- /See:/ 'runtimeConfiguration' smart constructor.
data RuntimeConfiguration = RuntimeConfiguration'{_rcGameSessionActivationTimeoutSeconds
                                                  :: !(Maybe Nat),
                                                  _rcServerProcesses ::
                                                  !(Maybe
                                                      (List1 ServerProcess)),
                                                  _rcMaxConcurrentGameSessionActivations
                                                  :: !(Maybe Nat)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RuntimeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcGameSessionActivationTimeoutSeconds' - Maximum amount of time (in seconds) that a game session can remain in status @ACTIVATING@ . If the game session is not active before the timeout, activation is terminated and the game session status is changed to @TERMINATED@ .
--
-- * 'rcServerProcesses' - Collection of server process configurations that describe which server processes to run on each instance in a fleet.
--
-- * 'rcMaxConcurrentGameSessionActivations' - Maximum number of game sessions with status @ACTIVATING@ to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.
runtimeConfiguration
    :: RuntimeConfiguration
runtimeConfiguration
  = RuntimeConfiguration'{_rcGameSessionActivationTimeoutSeconds
                            = Nothing,
                          _rcServerProcesses = Nothing,
                          _rcMaxConcurrentGameSessionActivations = Nothing}

-- | Maximum amount of time (in seconds) that a game session can remain in status @ACTIVATING@ . If the game session is not active before the timeout, activation is terminated and the game session status is changed to @TERMINATED@ .
rcGameSessionActivationTimeoutSeconds :: Lens' RuntimeConfiguration (Maybe Natural)
rcGameSessionActivationTimeoutSeconds = lens _rcGameSessionActivationTimeoutSeconds (\ s a -> s{_rcGameSessionActivationTimeoutSeconds = a}) . mapping _Nat

-- | Collection of server process configurations that describe which server processes to run on each instance in a fleet.
rcServerProcesses :: Lens' RuntimeConfiguration (Maybe (NonEmpty ServerProcess))
rcServerProcesses = lens _rcServerProcesses (\ s a -> s{_rcServerProcesses = a}) . mapping _List1

-- | Maximum number of game sessions with status @ACTIVATING@ to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.
rcMaxConcurrentGameSessionActivations :: Lens' RuntimeConfiguration (Maybe Natural)
rcMaxConcurrentGameSessionActivations = lens _rcMaxConcurrentGameSessionActivations (\ s a -> s{_rcMaxConcurrentGameSessionActivations = a}) . mapping _Nat

instance FromJSON RuntimeConfiguration where
        parseJSON
          = withObject "RuntimeConfiguration"
              (\ x ->
                 RuntimeConfiguration' <$>
                   (x .:? "GameSessionActivationTimeoutSeconds") <*>
                     (x .:? "ServerProcesses")
                     <*> (x .:? "MaxConcurrentGameSessionActivations"))

instance Hashable RuntimeConfiguration where

instance NFData RuntimeConfiguration where

instance ToJSON RuntimeConfiguration where
        toJSON RuntimeConfiguration'{..}
          = object
              (catMaybes
                 [("GameSessionActivationTimeoutSeconds" .=) <$>
                    _rcGameSessionActivationTimeoutSeconds,
                  ("ServerProcesses" .=) <$> _rcServerProcesses,
                  ("MaxConcurrentGameSessionActivations" .=) <$>
                    _rcMaxConcurrentGameSessionActivations])
