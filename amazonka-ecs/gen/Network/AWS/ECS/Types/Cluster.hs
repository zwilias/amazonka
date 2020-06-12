{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Cluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.Cluster where

import Network.AWS.ECS.Types.KeyValuePair
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.
--
--
--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster'{_cStatus :: !(Maybe Text),
                        _cClusterARN :: !(Maybe Text),
                        _cRunningTasksCount :: !(Maybe Int),
                        _cRegisteredContainerInstancesCount :: !(Maybe Int),
                        _cPendingTasksCount :: !(Maybe Int),
                        _cClusterName :: !(Maybe Text),
                        _cStatistics :: !(Maybe [KeyValuePair]),
                        _cActiveServicesCount :: !(Maybe Int)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus' - The status of the cluster. The valid values are @ACTIVE@ or @INACTIVE@ . @ACTIVE@ indicates that you can register container instances with the cluster and the associated instances can accept tasks.
--
-- * 'cClusterARN' - The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the @arn:aws:ecs@ namespace, followed by the region of the cluster, the AWS account ID of the cluster owner, the @cluster@ namespace, and then the cluster name. For example, @arn:aws:ecs:/region/ :/012345678910/ :cluster//test/ @ ..
--
-- * 'cRunningTasksCount' - The number of tasks in the cluster that are in the @RUNNING@ state.
--
-- * 'cRegisteredContainerInstancesCount' - The number of container instances registered into the cluster.
--
-- * 'cPendingTasksCount' - The number of tasks in the cluster that are in the @PENDING@ state.
--
-- * 'cClusterName' - A user-generated string that you use to identify your cluster.
--
-- * 'cStatistics' - Additional information about your clusters that are separated by launch type, including:     * runningEC2TasksCount     * RunningFargateTasksCount     * pendingEC2TasksCount     * pendingFargateTasksCount     * activeEC2ServiceCount     * activeFargateServiceCount     * drainingEC2ServiceCount     * drainingFargateServiceCount
--
-- * 'cActiveServicesCount' - The number of services that are running on the cluster in an @ACTIVE@ state. You can view these services with 'ListServices' .
cluster
    :: Cluster
cluster
  = Cluster'{_cStatus = Nothing,
             _cClusterARN = Nothing,
             _cRunningTasksCount = Nothing,
             _cRegisteredContainerInstancesCount = Nothing,
             _cPendingTasksCount = Nothing,
             _cClusterName = Nothing, _cStatistics = Nothing,
             _cActiveServicesCount = Nothing}

-- | The status of the cluster. The valid values are @ACTIVE@ or @INACTIVE@ . @ACTIVE@ indicates that you can register container instances with the cluster and the associated instances can accept tasks.
cStatus :: Lens' Cluster (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the @arn:aws:ecs@ namespace, followed by the region of the cluster, the AWS account ID of the cluster owner, the @cluster@ namespace, and then the cluster name. For example, @arn:aws:ecs:/region/ :/012345678910/ :cluster//test/ @ ..
cClusterARN :: Lens' Cluster (Maybe Text)
cClusterARN = lens _cClusterARN (\ s a -> s{_cClusterARN = a})

-- | The number of tasks in the cluster that are in the @RUNNING@ state.
cRunningTasksCount :: Lens' Cluster (Maybe Int)
cRunningTasksCount = lens _cRunningTasksCount (\ s a -> s{_cRunningTasksCount = a})

-- | The number of container instances registered into the cluster.
cRegisteredContainerInstancesCount :: Lens' Cluster (Maybe Int)
cRegisteredContainerInstancesCount = lens _cRegisteredContainerInstancesCount (\ s a -> s{_cRegisteredContainerInstancesCount = a})

-- | The number of tasks in the cluster that are in the @PENDING@ state.
cPendingTasksCount :: Lens' Cluster (Maybe Int)
cPendingTasksCount = lens _cPendingTasksCount (\ s a -> s{_cPendingTasksCount = a})

-- | A user-generated string that you use to identify your cluster.
cClusterName :: Lens' Cluster (Maybe Text)
cClusterName = lens _cClusterName (\ s a -> s{_cClusterName = a})

-- | Additional information about your clusters that are separated by launch type, including:     * runningEC2TasksCount     * RunningFargateTasksCount     * pendingEC2TasksCount     * pendingFargateTasksCount     * activeEC2ServiceCount     * activeFargateServiceCount     * drainingEC2ServiceCount     * drainingFargateServiceCount
cStatistics :: Lens' Cluster [KeyValuePair]
cStatistics = lens _cStatistics (\ s a -> s{_cStatistics = a}) . _Default . _Coerce

-- | The number of services that are running on the cluster in an @ACTIVE@ state. You can view these services with 'ListServices' .
cActiveServicesCount :: Lens' Cluster (Maybe Int)
cActiveServicesCount = lens _cActiveServicesCount (\ s a -> s{_cActiveServicesCount = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ x ->
                 Cluster' <$>
                   (x .:? "status") <*> (x .:? "clusterArn") <*>
                     (x .:? "runningTasksCount")
                     <*> (x .:? "registeredContainerInstancesCount")
                     <*> (x .:? "pendingTasksCount")
                     <*> (x .:? "clusterName")
                     <*> (x .:? "statistics" .!= mempty)
                     <*> (x .:? "activeServicesCount"))

instance Hashable Cluster where

instance NFData Cluster where
