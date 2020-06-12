{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.TaskDefinition where

import Network.AWS.ECS.Types.Attribute
import Network.AWS.ECS.Types.Compatibility
import Network.AWS.ECS.Types.ContainerDefinition
import Network.AWS.ECS.Types.NetworkMode
import Network.AWS.ECS.Types.TaskDefinitionPlacementConstraint
import Network.AWS.ECS.Types.TaskDefinitionStatus
import Network.AWS.ECS.Types.Volume
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details of a task definition.
--
--
--
-- /See:/ 'taskDefinition' smart constructor.
data TaskDefinition = TaskDefinition'{_tdStatus ::
                                      !(Maybe TaskDefinitionStatus),
                                      _tdExecutionRoleARN :: !(Maybe Text),
                                      _tdRequiresCompatibilities ::
                                      !(Maybe [Compatibility]),
                                      _tdFamily :: !(Maybe Text),
                                      _tdContainerDefinitions ::
                                      !(Maybe [ContainerDefinition]),
                                      _tdMemory :: !(Maybe Text),
                                      _tdTaskRoleARN :: !(Maybe Text),
                                      _tdPlacementConstraints ::
                                      !(Maybe
                                          [TaskDefinitionPlacementConstraint]),
                                      _tdNetworkMode :: !(Maybe NetworkMode),
                                      _tdTaskDefinitionARN :: !(Maybe Text),
                                      _tdCompatibilities ::
                                      !(Maybe [Compatibility]),
                                      _tdRevision :: !(Maybe Int),
                                      _tdVolumes :: !(Maybe [Volume]),
                                      _tdCpu :: !(Maybe Text),
                                      _tdRequiresAttributes ::
                                      !(Maybe [Attribute])}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdStatus' - The status of the task definition.
--
-- * 'tdExecutionRoleARN' - The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
--
-- * 'tdRequiresCompatibilities' - The launch type the task is using.
--
-- * 'tdFamily' - The family of your task definition, used as the definition name.
--
-- * 'tdContainerDefinitions' - A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Amazon ECS Task Definitions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'tdMemory' - The amount (in MiB) of memory used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the @cpu@ parameter:     * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256 (.25 vCPU)     * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@ values: 512 (.5 vCPU)     * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)     * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 2048 (2 vCPU)     * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 4096 (4 vCPU)
--
-- * 'tdTaskRoleARN' - The ARN of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. IAM roles for tasks on Windows require that the @-EnableTaskIAMRole@ option is set when you launch the Amazon ECS-optimized Windows AMI. Your containers must also run some configuration code in order to take advantage of the feature. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html Windows IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'tdPlacementConstraints' - An array of placement constraint objects to use for tasks. This field is not valid if using the Fargate launch type for your task.
--
-- * 'tdNetworkMode' - The Docker networking mode to use for the containers in the task. The valid values are @none@ , @bridge@ , @awsvpc@ , and @host@ . The default Docker network mode is @bridge@ . If using the Fargate launch type, the @awsvpc@ network mode is required. If using the EC2 launch type, any network mode can be used. If the network mode is set to @none@ , you can't specify port mappings in your container definitions, and the task's containers do not have external connectivity. The @host@ and @awsvpc@ network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the @bridge@ mode. With the @host@ and @awsvpc@ network modes, exposed container ports are mapped directly to the corresponding host port (for the @host@ network mode) or the attached elastic network interface port (for the @awsvpc@ network mode), so you cannot take advantage of dynamic host port mappings.  If the network mode is @awsvpc@ , the task is allocated an Elastic Network Interface, and you must specify a 'NetworkConfiguration' when you create a service or run a task with the task definition. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ . If the network mode is @host@ , you can't run multiple instantiations of the same task on a single container instance when port mappings are used. Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the @<default>@ network mode object.  For more information, see <https://docs.docker.com/engine/reference/run/#network-settings Network settings> in the /Docker run reference/ .
--
-- * 'tdTaskDefinitionARN' - The full Amazon Resource Name (ARN) of the task definition.
--
-- * 'tdCompatibilities' - The launch type to use with your task. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'tdRevision' - The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is @1@ ; each time you register a new revision of a task definition in the same family, the revision value always increases by one (even if you have deregistered previous revisions in this family).
--
-- * 'tdVolumes' - The list of volumes in a task. If you are using the Fargate launch type, the @host@ and @sourcePath@ parameters are not supported. For more information about volume definition parameters and defaults, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html Amazon ECS Task Definitions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'tdCpu' - The number of @cpu@ units used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the @memory@ parameter:     * 256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)     * 512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)     * 1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)     * 2048 (2 vCPU) - Available @memory@ values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)     * 4096 (4 vCPU) - Available @memory@ values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
--
-- * 'tdRequiresAttributes' - The container instance attributes required by your task. This field is not valid if using the Fargate launch type for your task.
taskDefinition
    :: TaskDefinition
taskDefinition
  = TaskDefinition'{_tdStatus = Nothing,
                    _tdExecutionRoleARN = Nothing,
                    _tdRequiresCompatibilities = Nothing,
                    _tdFamily = Nothing,
                    _tdContainerDefinitions = Nothing,
                    _tdMemory = Nothing, _tdTaskRoleARN = Nothing,
                    _tdPlacementConstraints = Nothing,
                    _tdNetworkMode = Nothing,
                    _tdTaskDefinitionARN = Nothing,
                    _tdCompatibilities = Nothing, _tdRevision = Nothing,
                    _tdVolumes = Nothing, _tdCpu = Nothing,
                    _tdRequiresAttributes = Nothing}

-- | The status of the task definition.
tdStatus :: Lens' TaskDefinition (Maybe TaskDefinitionStatus)
tdStatus = lens _tdStatus (\ s a -> s{_tdStatus = a})

-- | The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
tdExecutionRoleARN :: Lens' TaskDefinition (Maybe Text)
tdExecutionRoleARN = lens _tdExecutionRoleARN (\ s a -> s{_tdExecutionRoleARN = a})

-- | The launch type the task is using.
tdRequiresCompatibilities :: Lens' TaskDefinition [Compatibility]
tdRequiresCompatibilities = lens _tdRequiresCompatibilities (\ s a -> s{_tdRequiresCompatibilities = a}) . _Default . _Coerce

-- | The family of your task definition, used as the definition name.
tdFamily :: Lens' TaskDefinition (Maybe Text)
tdFamily = lens _tdFamily (\ s a -> s{_tdFamily = a})

-- | A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Amazon ECS Task Definitions> in the /Amazon Elastic Container Service Developer Guide/ .
tdContainerDefinitions :: Lens' TaskDefinition [ContainerDefinition]
tdContainerDefinitions = lens _tdContainerDefinitions (\ s a -> s{_tdContainerDefinitions = a}) . _Default . _Coerce

-- | The amount (in MiB) of memory used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the @cpu@ parameter:     * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256 (.25 vCPU)     * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@ values: 512 (.5 vCPU)     * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)     * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 2048 (2 vCPU)     * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available @cpu@ values: 4096 (4 vCPU)
tdMemory :: Lens' TaskDefinition (Maybe Text)
tdMemory = lens _tdMemory (\ s a -> s{_tdMemory = a})

-- | The ARN of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. IAM roles for tasks on Windows require that the @-EnableTaskIAMRole@ option is set when you launch the Amazon ECS-optimized Windows AMI. Your containers must also run some configuration code in order to take advantage of the feature. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html Windows IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
tdTaskRoleARN :: Lens' TaskDefinition (Maybe Text)
tdTaskRoleARN = lens _tdTaskRoleARN (\ s a -> s{_tdTaskRoleARN = a})

-- | An array of placement constraint objects to use for tasks. This field is not valid if using the Fargate launch type for your task.
tdPlacementConstraints :: Lens' TaskDefinition [TaskDefinitionPlacementConstraint]
tdPlacementConstraints = lens _tdPlacementConstraints (\ s a -> s{_tdPlacementConstraints = a}) . _Default . _Coerce

-- | The Docker networking mode to use for the containers in the task. The valid values are @none@ , @bridge@ , @awsvpc@ , and @host@ . The default Docker network mode is @bridge@ . If using the Fargate launch type, the @awsvpc@ network mode is required. If using the EC2 launch type, any network mode can be used. If the network mode is set to @none@ , you can't specify port mappings in your container definitions, and the task's containers do not have external connectivity. The @host@ and @awsvpc@ network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the @bridge@ mode. With the @host@ and @awsvpc@ network modes, exposed container ports are mapped directly to the corresponding host port (for the @host@ network mode) or the attached elastic network interface port (for the @awsvpc@ network mode), so you cannot take advantage of dynamic host port mappings.  If the network mode is @awsvpc@ , the task is allocated an Elastic Network Interface, and you must specify a 'NetworkConfiguration' when you create a service or run a task with the task definition. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ . If the network mode is @host@ , you can't run multiple instantiations of the same task on a single container instance when port mappings are used. Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the @<default>@ network mode object.  For more information, see <https://docs.docker.com/engine/reference/run/#network-settings Network settings> in the /Docker run reference/ .
tdNetworkMode :: Lens' TaskDefinition (Maybe NetworkMode)
tdNetworkMode = lens _tdNetworkMode (\ s a -> s{_tdNetworkMode = a})

-- | The full Amazon Resource Name (ARN) of the task definition.
tdTaskDefinitionARN :: Lens' TaskDefinition (Maybe Text)
tdTaskDefinitionARN = lens _tdTaskDefinitionARN (\ s a -> s{_tdTaskDefinitionARN = a})

-- | The launch type to use with your task. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
tdCompatibilities :: Lens' TaskDefinition [Compatibility]
tdCompatibilities = lens _tdCompatibilities (\ s a -> s{_tdCompatibilities = a}) . _Default . _Coerce

-- | The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is @1@ ; each time you register a new revision of a task definition in the same family, the revision value always increases by one (even if you have deregistered previous revisions in this family).
tdRevision :: Lens' TaskDefinition (Maybe Int)
tdRevision = lens _tdRevision (\ s a -> s{_tdRevision = a})

-- | The list of volumes in a task. If you are using the Fargate launch type, the @host@ and @sourcePath@ parameters are not supported. For more information about volume definition parameters and defaults, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html Amazon ECS Task Definitions> in the /Amazon Elastic Container Service Developer Guide/ .
tdVolumes :: Lens' TaskDefinition [Volume]
tdVolumes = lens _tdVolumes (\ s a -> s{_tdVolumes = a}) . _Default . _Coerce

-- | The number of @cpu@ units used by the task. If using the EC2 launch type, this field is optional and any value can be used. If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the @memory@ parameter:     * 256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)     * 512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)     * 1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)     * 2048 (2 vCPU) - Available @memory@ values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)     * 4096 (4 vCPU) - Available @memory@ values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
tdCpu :: Lens' TaskDefinition (Maybe Text)
tdCpu = lens _tdCpu (\ s a -> s{_tdCpu = a})

-- | The container instance attributes required by your task. This field is not valid if using the Fargate launch type for your task.
tdRequiresAttributes :: Lens' TaskDefinition [Attribute]
tdRequiresAttributes = lens _tdRequiresAttributes (\ s a -> s{_tdRequiresAttributes = a}) . _Default . _Coerce

instance FromJSON TaskDefinition where
        parseJSON
          = withObject "TaskDefinition"
              (\ x ->
                 TaskDefinition' <$>
                   (x .:? "status") <*> (x .:? "executionRoleArn") <*>
                     (x .:? "requiresCompatibilities" .!= mempty)
                     <*> (x .:? "family")
                     <*> (x .:? "containerDefinitions" .!= mempty)
                     <*> (x .:? "memory")
                     <*> (x .:? "taskRoleArn")
                     <*> (x .:? "placementConstraints" .!= mempty)
                     <*> (x .:? "networkMode")
                     <*> (x .:? "taskDefinitionArn")
                     <*> (x .:? "compatibilities" .!= mempty)
                     <*> (x .:? "revision")
                     <*> (x .:? "volumes" .!= mempty)
                     <*> (x .:? "cpu")
                     <*> (x .:? "requiresAttributes" .!= mempty))

instance Hashable TaskDefinition where

instance NFData TaskDefinition where
