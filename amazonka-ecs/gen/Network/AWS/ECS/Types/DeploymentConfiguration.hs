{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeploymentConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.DeploymentConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
--
--
--
-- /See:/ 'deploymentConfiguration' smart constructor.
data DeploymentConfiguration = DeploymentConfiguration'{_dcMinimumHealthyPercent
                                                        :: !(Maybe Int),
                                                        _dcMaximumPercent ::
                                                        !(Maybe Int)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'DeploymentConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcMinimumHealthyPercent' - The lower limit (as a percentage of the service's @desiredCount@ ) of the number of running tasks that must remain in the @RUNNING@ state in a service during a deployment. The minimum number of healthy tasks during a deployment is the @desiredCount@ multiplied by @minimumHealthyPercent@ /100, rounded up to the nearest integer value.
--
-- * 'dcMaximumPercent' - The upper limit (as a percentage of the service's @desiredCount@ ) of the number of tasks that are allowed in the @RUNNING@ or @PENDING@ state in a service during a deployment. The maximum number of tasks during a deployment is the @desiredCount@ multiplied by @maximumPercent@ /100, rounded down to the nearest integer value.
deploymentConfiguration
    :: DeploymentConfiguration
deploymentConfiguration
  = DeploymentConfiguration'{_dcMinimumHealthyPercent =
                               Nothing,
                             _dcMaximumPercent = Nothing}

-- | The lower limit (as a percentage of the service's @desiredCount@ ) of the number of running tasks that must remain in the @RUNNING@ state in a service during a deployment. The minimum number of healthy tasks during a deployment is the @desiredCount@ multiplied by @minimumHealthyPercent@ /100, rounded up to the nearest integer value.
dcMinimumHealthyPercent :: Lens' DeploymentConfiguration (Maybe Int)
dcMinimumHealthyPercent = lens _dcMinimumHealthyPercent (\ s a -> s{_dcMinimumHealthyPercent = a})

-- | The upper limit (as a percentage of the service's @desiredCount@ ) of the number of tasks that are allowed in the @RUNNING@ or @PENDING@ state in a service during a deployment. The maximum number of tasks during a deployment is the @desiredCount@ multiplied by @maximumPercent@ /100, rounded down to the nearest integer value.
dcMaximumPercent :: Lens' DeploymentConfiguration (Maybe Int)
dcMaximumPercent = lens _dcMaximumPercent (\ s a -> s{_dcMaximumPercent = a})

instance FromJSON DeploymentConfiguration where
        parseJSON
          = withObject "DeploymentConfiguration"
              (\ x ->
                 DeploymentConfiguration' <$>
                   (x .:? "minimumHealthyPercent") <*>
                     (x .:? "maximumPercent"))

instance Hashable DeploymentConfiguration where

instance NFData DeploymentConfiguration where

instance ToJSON DeploymentConfiguration where
        toJSON DeploymentConfiguration'{..}
          = object
              (catMaybes
                 [("minimumHealthyPercent" .=) <$>
                    _dcMinimumHealthyPercent,
                  ("maximumPercent" .=) <$> _dcMaximumPercent])
