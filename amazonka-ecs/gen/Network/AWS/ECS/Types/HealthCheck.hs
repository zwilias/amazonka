{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.HealthCheck
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.HealthCheck where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a container health check. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile).
--
--
--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck = HealthCheck'{_hcStartPeriod ::
                                !(Maybe Int),
                                _hcRetries :: !(Maybe Int),
                                _hcInterval :: !(Maybe Int),
                                _hcTimeout :: !(Maybe Int),
                                _hcCommand :: ![Text]}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcStartPeriod' - The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You may specify between 0 and 300 seconds. The @startPeriod@ is disabled by default.
--
-- * 'hcRetries' - The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3 retries.
--
-- * 'hcInterval' - The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
--
-- * 'hcTimeout' - The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5 seconds.
--
-- * 'hcCommand' - A string array representing the command that the container runs to determine if it is healthy. The string array must start with @CMD@ to execute the command arguments directly, or @CMD-SHELL@ to run the command with the container's default shell. For example: @[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]@  An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see @HealthCheck@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> .
healthCheck
    :: HealthCheck
healthCheck
  = HealthCheck'{_hcStartPeriod = Nothing,
                 _hcRetries = Nothing, _hcInterval = Nothing,
                 _hcTimeout = Nothing, _hcCommand = mempty}

-- | The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You may specify between 0 and 300 seconds. The @startPeriod@ is disabled by default.
hcStartPeriod :: Lens' HealthCheck (Maybe Int)
hcStartPeriod = lens _hcStartPeriod (\ s a -> s{_hcStartPeriod = a})

-- | The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3 retries.
hcRetries :: Lens' HealthCheck (Maybe Int)
hcRetries = lens _hcRetries (\ s a -> s{_hcRetries = a})

-- | The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
hcInterval :: Lens' HealthCheck (Maybe Int)
hcInterval = lens _hcInterval (\ s a -> s{_hcInterval = a})

-- | The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5 seconds.
hcTimeout :: Lens' HealthCheck (Maybe Int)
hcTimeout = lens _hcTimeout (\ s a -> s{_hcTimeout = a})

-- | A string array representing the command that the container runs to determine if it is healthy. The string array must start with @CMD@ to execute the command arguments directly, or @CMD-SHELL@ to run the command with the container's default shell. For example: @[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]@  An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see @HealthCheck@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> .
hcCommand :: Lens' HealthCheck [Text]
hcCommand = lens _hcCommand (\ s a -> s{_hcCommand = a}) . _Coerce

instance FromJSON HealthCheck where
        parseJSON
          = withObject "HealthCheck"
              (\ x ->
                 HealthCheck' <$>
                   (x .:? "startPeriod") <*> (x .:? "retries") <*>
                     (x .:? "interval")
                     <*> (x .:? "timeout")
                     <*> (x .:? "command" .!= mempty))

instance Hashable HealthCheck where

instance NFData HealthCheck where

instance ToJSON HealthCheck where
        toJSON HealthCheck'{..}
          = object
              (catMaybes
                 [("startPeriod" .=) <$> _hcStartPeriod,
                  ("retries" .=) <$> _hcRetries,
                  ("interval" .=) <$> _hcInterval,
                  ("timeout" .=) <$> _hcTimeout,
                  Just ("command" .= _hcCommand)])
