{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.LogConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.LogConfiguration where

import Network.AWS.ECS.Types.LogDriver
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Log configuration options to send to a custom log driver for the container.
--
--
--
-- /See:/ 'logConfiguration' smart constructor.
data LogConfiguration = LogConfiguration'{_lcOptions
                                          :: !(Maybe (Map Text Text)),
                                          _lcLogDriver :: !LogDriver}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcOptions' - The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
--
-- * 'lcLogDriver' - The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default. If using the Fargate launch type, the only supported value is @awslogs@ . For more information about using the @awslogs@ driver, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html Using the awslogs Log Driver> in the /Amazon Elastic Container Service Developer Guide/ . This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
logConfiguration
    :: LogDriver -- ^ 'lcLogDriver'
    -> LogConfiguration
logConfiguration pLogDriver_
  = LogConfiguration'{_lcOptions = Nothing,
                      _lcLogDriver = pLogDriver_}

-- | The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
lcOptions :: Lens' LogConfiguration (HashMap Text Text)
lcOptions = lens _lcOptions (\ s a -> s{_lcOptions = a}) . _Default . _Map

-- | The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default. If using the Fargate launch type, the only supported value is @awslogs@ . For more information about using the @awslogs@ driver, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html Using the awslogs Log Driver> in the /Amazon Elastic Container Service Developer Guide/ . This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
lcLogDriver :: Lens' LogConfiguration LogDriver
lcLogDriver = lens _lcLogDriver (\ s a -> s{_lcLogDriver = a})

instance FromJSON LogConfiguration where
        parseJSON
          = withObject "LogConfiguration"
              (\ x ->
                 LogConfiguration' <$>
                   (x .:? "options" .!= mempty) <*> (x .: "logDriver"))

instance Hashable LogConfiguration where

instance NFData LogConfiguration where

instance ToJSON LogConfiguration where
        toJSON LogConfiguration'{..}
          = object
              (catMaybes
                 [("options" .=) <$> _lcOptions,
                  Just ("logDriver" .= _lcLogDriver)])
