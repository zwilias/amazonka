{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ApplicationResourceLifecycleConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.ApplicationResourceLifecycleConfig where

import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionLifecycleConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.
--
--
--
-- /See:/ 'applicationResourceLifecycleConfig' smart constructor.
data ApplicationResourceLifecycleConfig = ApplicationResourceLifecycleConfig'{_arlcVersionLifecycleConfig
                                                                              ::
                                                                              !(Maybe
                                                                                  ApplicationVersionLifecycleConfig),
                                                                              _arlcServiceRole
                                                                              ::
                                                                              !(Maybe
                                                                                  Text)}
                                            deriving (Eq, Read, Show, Data,
                                                      Typeable, Generic)

-- | Creates a value of 'ApplicationResourceLifecycleConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arlcVersionLifecycleConfig' - The application version lifecycle configuration.
--
-- * 'arlcServiceRole' - The ARN of an IAM service role that Elastic Beanstalk has permission to assume.
applicationResourceLifecycleConfig
    :: ApplicationResourceLifecycleConfig
applicationResourceLifecycleConfig
  = ApplicationResourceLifecycleConfig'{_arlcVersionLifecycleConfig
                                          = Nothing,
                                        _arlcServiceRole = Nothing}

-- | The application version lifecycle configuration.
arlcVersionLifecycleConfig :: Lens' ApplicationResourceLifecycleConfig (Maybe ApplicationVersionLifecycleConfig)
arlcVersionLifecycleConfig = lens _arlcVersionLifecycleConfig (\ s a -> s{_arlcVersionLifecycleConfig = a})

-- | The ARN of an IAM service role that Elastic Beanstalk has permission to assume.
arlcServiceRole :: Lens' ApplicationResourceLifecycleConfig (Maybe Text)
arlcServiceRole = lens _arlcServiceRole (\ s a -> s{_arlcServiceRole = a})

instance FromXML ApplicationResourceLifecycleConfig
         where
        parseXML x
          = ApplicationResourceLifecycleConfig' <$>
              (x .@? "VersionLifecycleConfig") <*>
                (x .@? "ServiceRole")

instance Hashable ApplicationResourceLifecycleConfig
         where

instance NFData ApplicationResourceLifecycleConfig
         where

instance ToQuery ApplicationResourceLifecycleConfig
         where
        toQuery ApplicationResourceLifecycleConfig'{..}
          = mconcat
              ["VersionLifecycleConfig" =:
                 _arlcVersionLifecycleConfig,
               "ServiceRole" =: _arlcServiceRole]
