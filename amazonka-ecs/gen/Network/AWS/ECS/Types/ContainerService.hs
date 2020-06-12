{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerService
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerService where

import Network.AWS.ECS.Types.Deployment
import Network.AWS.ECS.Types.DeploymentConfiguration
import Network.AWS.ECS.Types.LaunchType
import Network.AWS.ECS.Types.LoadBalancer
import Network.AWS.ECS.Types.NetworkConfiguration
import Network.AWS.ECS.Types.PlacementConstraint
import Network.AWS.ECS.Types.PlacementStrategy
import Network.AWS.ECS.Types.ServiceEvent
import Network.AWS.ECS.Types.ServiceRegistry
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on a service within a cluster
--
--
--
-- /See:/ 'containerService' smart constructor.
data ContainerService = ContainerService'{_csRunningCount
                                          :: !(Maybe Int),
                                          _csStatus :: !(Maybe Text),
                                          _csClusterARN :: !(Maybe Text),
                                          _csCreatedAt :: !(Maybe POSIX),
                                          _csPlatformVersion :: !(Maybe Text),
                                          _csDesiredCount :: !(Maybe Int),
                                          _csLoadBalancers ::
                                          !(Maybe [LoadBalancer]),
                                          _csPendingCount :: !(Maybe Int),
                                          _csPlacementConstraints ::
                                          !(Maybe [PlacementConstraint]),
                                          _csEvents :: !(Maybe [ServiceEvent]),
                                          _csPlacementStrategy ::
                                          !(Maybe [PlacementStrategy]),
                                          _csDeployments ::
                                          !(Maybe [Deployment]),
                                          _csServiceName :: !(Maybe Text),
                                          _csLaunchType :: !(Maybe LaunchType),
                                          _csServiceARN :: !(Maybe Text),
                                          _csTaskDefinition :: !(Maybe Text),
                                          _csHealthCheckGracePeriodSeconds ::
                                          !(Maybe Int),
                                          _csNetworkConfiguration ::
                                          !(Maybe NetworkConfiguration),
                                          _csServiceRegistries ::
                                          !(Maybe [ServiceRegistry]),
                                          _csRoleARN :: !(Maybe Text),
                                          _csDeploymentConfiguration ::
                                          !(Maybe DeploymentConfiguration)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csRunningCount' - The number of tasks in the cluster that are in the @RUNNING@ state.
--
-- * 'csStatus' - The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
--
-- * 'csClusterARN' - The Amazon Resource Name (ARN) of the cluster that hosts the service.
--
-- * 'csCreatedAt' - The Unix time stamp for when the service was created.
--
-- * 'csPlatformVersion' - The platform version on which your task is running. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'csDesiredCount' - The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- * 'csLoadBalancers' - A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
--
-- * 'csPendingCount' - The number of tasks in the cluster that are in the @PENDING@ state.
--
-- * 'csPlacementConstraints' - The placement constraints for the tasks in the service.
--
-- * 'csEvents' - The event stream for your service. A maximum of 100 of the latest events are displayed.
--
-- * 'csPlacementStrategy' - The placement strategy that determines how tasks for the service are placed.
--
-- * 'csDeployments' - The current state of deployments for the service.
--
-- * 'csServiceName' - The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.
--
-- * 'csLaunchType' - The launch type on which your service is running.
--
-- * 'csServiceARN' - The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:/region/ :/012345678910/ :service//my-service/ @ .
--
-- * 'csTaskDefinition' - The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- * 'csHealthCheckGracePeriodSeconds' - The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
--
-- * 'csNetworkConfiguration' - The VPC subnet and security group configuration for tasks that receive their own Elastic Network Interface by using the @awsvpc@ networking mode.
--
-- * 'csServiceRegistries' - 
--
-- * 'csRoleARN' - The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
--
-- * 'csDeploymentConfiguration' - Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
containerService
    :: ContainerService
containerService
  = ContainerService'{_csRunningCount = Nothing,
                      _csStatus = Nothing, _csClusterARN = Nothing,
                      _csCreatedAt = Nothing, _csPlatformVersion = Nothing,
                      _csDesiredCount = Nothing,
                      _csLoadBalancers = Nothing,
                      _csPendingCount = Nothing,
                      _csPlacementConstraints = Nothing,
                      _csEvents = Nothing, _csPlacementStrategy = Nothing,
                      _csDeployments = Nothing, _csServiceName = Nothing,
                      _csLaunchType = Nothing, _csServiceARN = Nothing,
                      _csTaskDefinition = Nothing,
                      _csHealthCheckGracePeriodSeconds = Nothing,
                      _csNetworkConfiguration = Nothing,
                      _csServiceRegistries = Nothing, _csRoleARN = Nothing,
                      _csDeploymentConfiguration = Nothing}

-- | The number of tasks in the cluster that are in the @RUNNING@ state.
csRunningCount :: Lens' ContainerService (Maybe Int)
csRunningCount = lens _csRunningCount (\ s a -> s{_csRunningCount = a})

-- | The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
csStatus :: Lens' ContainerService (Maybe Text)
csStatus = lens _csStatus (\ s a -> s{_csStatus = a})

-- | The Amazon Resource Name (ARN) of the cluster that hosts the service.
csClusterARN :: Lens' ContainerService (Maybe Text)
csClusterARN = lens _csClusterARN (\ s a -> s{_csClusterARN = a})

-- | The Unix time stamp for when the service was created.
csCreatedAt :: Lens' ContainerService (Maybe UTCTime)
csCreatedAt = lens _csCreatedAt (\ s a -> s{_csCreatedAt = a}) . mapping _Time

-- | The platform version on which your task is running. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
csPlatformVersion :: Lens' ContainerService (Maybe Text)
csPlatformVersion = lens _csPlatformVersion (\ s a -> s{_csPlatformVersion = a})

-- | The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
csDesiredCount :: Lens' ContainerService (Maybe Int)
csDesiredCount = lens _csDesiredCount (\ s a -> s{_csDesiredCount = a})

-- | A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
csLoadBalancers :: Lens' ContainerService [LoadBalancer]
csLoadBalancers = lens _csLoadBalancers (\ s a -> s{_csLoadBalancers = a}) . _Default . _Coerce

-- | The number of tasks in the cluster that are in the @PENDING@ state.
csPendingCount :: Lens' ContainerService (Maybe Int)
csPendingCount = lens _csPendingCount (\ s a -> s{_csPendingCount = a})

-- | The placement constraints for the tasks in the service.
csPlacementConstraints :: Lens' ContainerService [PlacementConstraint]
csPlacementConstraints = lens _csPlacementConstraints (\ s a -> s{_csPlacementConstraints = a}) . _Default . _Coerce

-- | The event stream for your service. A maximum of 100 of the latest events are displayed.
csEvents :: Lens' ContainerService [ServiceEvent]
csEvents = lens _csEvents (\ s a -> s{_csEvents = a}) . _Default . _Coerce

-- | The placement strategy that determines how tasks for the service are placed.
csPlacementStrategy :: Lens' ContainerService [PlacementStrategy]
csPlacementStrategy = lens _csPlacementStrategy (\ s a -> s{_csPlacementStrategy = a}) . _Default . _Coerce

-- | The current state of deployments for the service.
csDeployments :: Lens' ContainerService [Deployment]
csDeployments = lens _csDeployments (\ s a -> s{_csDeployments = a}) . _Default . _Coerce

-- | The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.
csServiceName :: Lens' ContainerService (Maybe Text)
csServiceName = lens _csServiceName (\ s a -> s{_csServiceName = a})

-- | The launch type on which your service is running.
csLaunchType :: Lens' ContainerService (Maybe LaunchType)
csLaunchType = lens _csLaunchType (\ s a -> s{_csLaunchType = a})

-- | The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:/region/ :/012345678910/ :service//my-service/ @ .
csServiceARN :: Lens' ContainerService (Maybe Text)
csServiceARN = lens _csServiceARN (\ s a -> s{_csServiceARN = a})

-- | The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
csTaskDefinition :: Lens' ContainerService (Maybe Text)
csTaskDefinition = lens _csTaskDefinition (\ s a -> s{_csTaskDefinition = a})

-- | The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
csHealthCheckGracePeriodSeconds :: Lens' ContainerService (Maybe Int)
csHealthCheckGracePeriodSeconds = lens _csHealthCheckGracePeriodSeconds (\ s a -> s{_csHealthCheckGracePeriodSeconds = a})

-- | The VPC subnet and security group configuration for tasks that receive their own Elastic Network Interface by using the @awsvpc@ networking mode.
csNetworkConfiguration :: Lens' ContainerService (Maybe NetworkConfiguration)
csNetworkConfiguration = lens _csNetworkConfiguration (\ s a -> s{_csNetworkConfiguration = a})

-- | 
csServiceRegistries :: Lens' ContainerService [ServiceRegistry]
csServiceRegistries = lens _csServiceRegistries (\ s a -> s{_csServiceRegistries = a}) . _Default . _Coerce

-- | The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
csRoleARN :: Lens' ContainerService (Maybe Text)
csRoleARN = lens _csRoleARN (\ s a -> s{_csRoleARN = a})

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
csDeploymentConfiguration :: Lens' ContainerService (Maybe DeploymentConfiguration)
csDeploymentConfiguration = lens _csDeploymentConfiguration (\ s a -> s{_csDeploymentConfiguration = a})

instance FromJSON ContainerService where
        parseJSON
          = withObject "ContainerService"
              (\ x ->
                 ContainerService' <$>
                   (x .:? "runningCount") <*> (x .:? "status") <*>
                     (x .:? "clusterArn")
                     <*> (x .:? "createdAt")
                     <*> (x .:? "platformVersion")
                     <*> (x .:? "desiredCount")
                     <*> (x .:? "loadBalancers" .!= mempty)
                     <*> (x .:? "pendingCount")
                     <*> (x .:? "placementConstraints" .!= mempty)
                     <*> (x .:? "events" .!= mempty)
                     <*> (x .:? "placementStrategy" .!= mempty)
                     <*> (x .:? "deployments" .!= mempty)
                     <*> (x .:? "serviceName")
                     <*> (x .:? "launchType")
                     <*> (x .:? "serviceArn")
                     <*> (x .:? "taskDefinition")
                     <*> (x .:? "healthCheckGracePeriodSeconds")
                     <*> (x .:? "networkConfiguration")
                     <*> (x .:? "serviceRegistries" .!= mempty)
                     <*> (x .:? "roleArn")
                     <*> (x .:? "deploymentConfiguration"))

instance Hashable ContainerService where

instance NFData ContainerService where
