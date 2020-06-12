{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerDefinition where

import Network.AWS.ECS.Types.HealthCheck
import Network.AWS.ECS.Types.HostEntry
import Network.AWS.ECS.Types.KeyValuePair
import Network.AWS.ECS.Types.LinuxParameters
import Network.AWS.ECS.Types.LogConfiguration
import Network.AWS.ECS.Types.MountPoint
import Network.AWS.ECS.Types.PortMapping
import Network.AWS.ECS.Types.Ulimit
import Network.AWS.ECS.Types.VolumeFrom
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Container definitions are used in task definitions to describe the different containers that are launched as part of a task.
--
--
--
-- /See:/ 'containerDefinition' smart constructor.
data ContainerDefinition = ContainerDefinition'{_cdImage
                                                :: !(Maybe Text),
                                                _cdCommand :: !(Maybe [Text]),
                                                _cdHostname :: !(Maybe Text),
                                                _cdDockerSecurityOptions ::
                                                !(Maybe [Text]),
                                                _cdHealthCheck ::
                                                !(Maybe HealthCheck),
                                                _cdDisableNetworking ::
                                                !(Maybe Bool),
                                                _cdVolumesFrom ::
                                                !(Maybe [VolumeFrom]),
                                                _cdEnvironment ::
                                                !(Maybe [KeyValuePair]),
                                                _cdEntryPoint ::
                                                !(Maybe [Text]),
                                                _cdWorkingDirectory ::
                                                !(Maybe Text),
                                                _cdUlimits :: !(Maybe [Ulimit]),
                                                _cdPrivileged :: !(Maybe Bool),
                                                _cdPortMappings ::
                                                !(Maybe [PortMapping]),
                                                _cdDockerLabels ::
                                                !(Maybe (Map Text Text)),
                                                _cdExtraHosts ::
                                                !(Maybe [HostEntry]),
                                                _cdMemory :: !(Maybe Int),
                                                _cdUser :: !(Maybe Text),
                                                _cdDnsSearchDomains ::
                                                !(Maybe [Text]),
                                                _cdLogConfiguration ::
                                                !(Maybe LogConfiguration),
                                                _cdLinuxParameters ::
                                                !(Maybe LinuxParameters),
                                                _cdName :: !(Maybe Text),
                                                _cdDnsServers ::
                                                !(Maybe [Text]),
                                                _cdMountPoints ::
                                                !(Maybe [MountPoint]),
                                                _cdLinks :: !(Maybe [Text]),
                                                _cdReadonlyRootFilesystem ::
                                                !(Maybe Bool),
                                                _cdEssential :: !(Maybe Bool),
                                                _cdCpu :: !(Maybe Int),
                                                _cdMemoryReservation ::
                                                !(Maybe Int)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdImage' - The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with either @/repository-url/ //image/ :/tag/ @ or @/repository-url/ //image/ @/digest/ @ . Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to @Image@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @IMAGE@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .     * When a new task starts, the Amazon ECS container agent pulls the latest version of the specified image and tag for the container to use. However, subsequent updates to a repository image are not propagated to already running tasks.     * Images in Amazon ECR repositories can be specified by either using the full @registry/repository:tag@ or @registry/repository@digest@ . For example, @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>:latest@ or @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE@ .      * Images in official repositories on Docker Hub use a single name (for example, @ubuntu@ or @mongo@ ).     * Images in other repositories on Docker Hub are qualified with an organization name (for example, @amazon/amazon-ecs-agent@ ).     * Images in other online repositories are qualified further by a domain name (for example, @quay.io/assemblyline/ubuntu@ ).
--
-- * 'cdCommand' - The command that is passed to the container. This parameter maps to @Cmd@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @COMMAND@ parameter to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#cmd https://docs.docker.com/engine/reference/builder/#cmd> .
--
-- * 'cdHostname' - The hostname to use for your container. This parameter maps to @Hostname@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--hostname@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdDockerSecurityOptions' - A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This field is not valid for containers in tasks using the Fargate launch type. This parameter maps to @SecurityOpt@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--security-opt@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdHealthCheck' - The health check command and associated configuration parameters for the container. This parameter maps to @HealthCheck@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @HEALTHCHECK@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdDisableNetworking' - When this parameter is true, networking is disabled within the container. This parameter maps to @NetworkDisabled@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> .
--
-- * 'cdVolumesFrom' - Data volumes to mount from another container. This parameter maps to @VolumesFrom@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--volumes-from@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdEnvironment' - The environment variables to pass to a container. This parameter maps to @Env@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--env@ option to <https://docs.docker.com/engine/reference/run/ docker run> . /Important:/ We do not recommend using plaintext environment variables for sensitive information, such as credential data.
--
-- * 'cdEntryPoint' - /Important:/ Early versions of the Amazon ECS container agent do not properly handle @entryPoint@ parameters. If you have problems using @entryPoint@ , update your container agent or enter your commands and arguments as @command@ array items instead. The entry point that is passed to the container. This parameter maps to @Entrypoint@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--entrypoint@ option to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#entrypoint https://docs.docker.com/engine/reference/builder/#entrypoint> .
--
-- * 'cdWorkingDirectory' - The working directory in which to run commands inside the container. This parameter maps to @WorkingDir@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--workdir@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdUlimits' - A list of @ulimits@ to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Valid naming values are displayed in the 'Ulimit' data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
--
-- * 'cdPrivileged' - When this parameter is true, the container is given elevated privileges on the host container instance (similar to the @root@ user). This parameter maps to @Privileged@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--privileged@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdPortMappings' - The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. For task definitions that use the @awsvpc@ network mode, you should only specify the @containerPort@ . The @hostPort@ can be left blank or it must be the same value as the @containerPort@ . Port mappings on Windows use the @NetNAT@ gateway address rather than @localhost@ . There is no loopback for port mappings on Windows, so you cannot access a container's mapped port from the host itself.  This parameter maps to @PortBindings@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--publish@ option to <https://docs.docker.com/engine/reference/run/ docker run> . If the network mode of a task definition is set to @none@ , then you can't specify port mappings. If the network mode of a task definition is set to @host@ , then host ports must either be undefined or they must match the container port in the port mapping.
--
-- * 'cdDockerLabels' - A key/value map of labels to add to the container. This parameter maps to @Labels@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--label@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
--
-- * 'cdExtraHosts' - A list of hostnames and IP address mappings to append to the @/etc/hosts@ file on the container. If using the Fargate launch type, this may be used to list non-Fargate hosts you want the container to talk to. This parameter maps to @ExtraHosts@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--add-host@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdMemory' - The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . If your containers are part of a task using the Fargate launch type, this field is optional and the only requirement is that the total amount of memory reserved for all containers within a task be lower than the task @memory@ value. For containers that are part of a task using the EC2 launch type, you must specify a non-zero integer for one or both of @memory@ or @memoryReservation@ in container definitions. If you specify both, @memory@ must be greater than @memoryReservation@ . If you specify @memoryReservation@ , then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of @memory@ is used. The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. 
--
-- * 'cdUser' - The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdDnsSearchDomains' - A list of DNS search domains that are presented to the container. This parameter maps to @DnsSearch@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--dns-search@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdLogConfiguration' - The log configuration specification for the container. If using the Fargate launch type, the only supported value is @awslogs@ . This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
--
-- * 'cdLinuxParameters' - Linux-specific modifications that are applied to the container, such as Linux 'KernelCapabilities' .
--
-- * 'cdName' - The name of a container. If you are linking multiple containers together in a task definition, the @name@ of one container can be entered in the @links@ of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This parameter maps to @name@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--name@ option to <https://docs.docker.com/engine/reference/run/ docker run> . 
--
-- * 'cdDnsServers' - A list of DNS servers that are presented to the container. This parameter maps to @Dns@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--dns@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdMountPoints' - The mount points for data volumes in your container. This parameter maps to @Volumes@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--volume@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Windows containers can mount whole directories on the same drive as @> env:ProgramData@ . Windows containers cannot mount directories on a different drive, and mount point cannot be across drives.
--
-- * 'cdLinks' - The @link@ parameter allows containers to communicate with each other without the need for port mappings. Only supported if the network mode of a task definition is set to @bridge@ . The @name:internalName@ construct is analogous to @name:alias@ in Docker links. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. For more information about linking Docker containers, go to <https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/ https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/> . This parameter maps to @Links@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--link@ option to <https://docs.docker.com/engine/reference/commandline/run/ @docker run@ > . /Important:/ Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.
--
-- * 'cdReadonlyRootFilesystem' - When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--read-only@ option to @docker run@ .
--
-- * 'cdEssential' - If the @essential@ parameter of a container is marked as @true@ , and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the @essential@ parameter of a container is marked as @false@ , then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential. All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html Application Architecture> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'cdCpu' - The number of @cpu@ units reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This field is optional for tasks using the Fargate launch type, and the only requirement is that the total amount of CPU reserved for all containers within a task be lower than the task-level @cpu@ value. For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units. Linux containers share unallocated CPU units with other containers on the container instance with the same ratio as their allocated amount. For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units. On Linux container instances, the Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <https://docs.docker.com/engine/reference/run/#cpu-share-constraint CPU share constraint> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2; however, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:     * __Agent versions less than or equal to 1.1.0:__ Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to 2 CPU shares.     * __Agent versions greater than or equal to 1.2.0:__ Null, zero, and CPU values of 1 are passed to Docker as 2. On Windows container instances, the CPU limit is enforced as an absolute limit, or a quota. Windows containers only have access to the specified amount of CPU that is described in the task definition.
--
-- * 'cdMemoryReservation' - The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit; however, your container can consume more memory when it needs to, up to either the hard limit specified with the @memory@ parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to @MemoryReservation@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--memory-reservation@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify a non-zero integer for one or both of @memory@ or @memoryReservation@ in container definitions. If you specify both, @memory@ must be greater than @memoryReservation@ . If you specify @memoryReservation@ , then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of @memory@ is used. For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a @memoryReservation@ of 128 MiB, and a @memory@ hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed. The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. 
containerDefinition
    :: ContainerDefinition
containerDefinition
  = ContainerDefinition'{_cdImage = Nothing,
                         _cdCommand = Nothing, _cdHostname = Nothing,
                         _cdDockerSecurityOptions = Nothing,
                         _cdHealthCheck = Nothing,
                         _cdDisableNetworking = Nothing,
                         _cdVolumesFrom = Nothing, _cdEnvironment = Nothing,
                         _cdEntryPoint = Nothing,
                         _cdWorkingDirectory = Nothing, _cdUlimits = Nothing,
                         _cdPrivileged = Nothing, _cdPortMappings = Nothing,
                         _cdDockerLabels = Nothing, _cdExtraHosts = Nothing,
                         _cdMemory = Nothing, _cdUser = Nothing,
                         _cdDnsSearchDomains = Nothing,
                         _cdLogConfiguration = Nothing,
                         _cdLinuxParameters = Nothing, _cdName = Nothing,
                         _cdDnsServers = Nothing, _cdMountPoints = Nothing,
                         _cdLinks = Nothing,
                         _cdReadonlyRootFilesystem = Nothing,
                         _cdEssential = Nothing, _cdCpu = Nothing,
                         _cdMemoryReservation = Nothing}

-- | The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with either @/repository-url/ //image/ :/tag/ @ or @/repository-url/ //image/ @/digest/ @ . Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to @Image@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @IMAGE@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .     * When a new task starts, the Amazon ECS container agent pulls the latest version of the specified image and tag for the container to use. However, subsequent updates to a repository image are not propagated to already running tasks.     * Images in Amazon ECR repositories can be specified by either using the full @registry/repository:tag@ or @registry/repository@digest@ . For example, @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>:latest@ or @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE@ .      * Images in official repositories on Docker Hub use a single name (for example, @ubuntu@ or @mongo@ ).     * Images in other repositories on Docker Hub are qualified with an organization name (for example, @amazon/amazon-ecs-agent@ ).     * Images in other online repositories are qualified further by a domain name (for example, @quay.io/assemblyline/ubuntu@ ).
cdImage :: Lens' ContainerDefinition (Maybe Text)
cdImage = lens _cdImage (\ s a -> s{_cdImage = a})

-- | The command that is passed to the container. This parameter maps to @Cmd@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @COMMAND@ parameter to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#cmd https://docs.docker.com/engine/reference/builder/#cmd> .
cdCommand :: Lens' ContainerDefinition [Text]
cdCommand = lens _cdCommand (\ s a -> s{_cdCommand = a}) . _Default . _Coerce

-- | The hostname to use for your container. This parameter maps to @Hostname@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--hostname@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdHostname :: Lens' ContainerDefinition (Maybe Text)
cdHostname = lens _cdHostname (\ s a -> s{_cdHostname = a})

-- | A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This field is not valid for containers in tasks using the Fargate launch type. This parameter maps to @SecurityOpt@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--security-opt@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdDockerSecurityOptions :: Lens' ContainerDefinition [Text]
cdDockerSecurityOptions = lens _cdDockerSecurityOptions (\ s a -> s{_cdDockerSecurityOptions = a}) . _Default . _Coerce

-- | The health check command and associated configuration parameters for the container. This parameter maps to @HealthCheck@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @HEALTHCHECK@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .
cdHealthCheck :: Lens' ContainerDefinition (Maybe HealthCheck)
cdHealthCheck = lens _cdHealthCheck (\ s a -> s{_cdHealthCheck = a})

-- | When this parameter is true, networking is disabled within the container. This parameter maps to @NetworkDisabled@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> .
cdDisableNetworking :: Lens' ContainerDefinition (Maybe Bool)
cdDisableNetworking = lens _cdDisableNetworking (\ s a -> s{_cdDisableNetworking = a})

-- | Data volumes to mount from another container. This parameter maps to @VolumesFrom@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--volumes-from@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdVolumesFrom :: Lens' ContainerDefinition [VolumeFrom]
cdVolumesFrom = lens _cdVolumesFrom (\ s a -> s{_cdVolumesFrom = a}) . _Default . _Coerce

-- | The environment variables to pass to a container. This parameter maps to @Env@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--env@ option to <https://docs.docker.com/engine/reference/run/ docker run> . /Important:/ We do not recommend using plaintext environment variables for sensitive information, such as credential data.
cdEnvironment :: Lens' ContainerDefinition [KeyValuePair]
cdEnvironment = lens _cdEnvironment (\ s a -> s{_cdEnvironment = a}) . _Default . _Coerce

-- | /Important:/ Early versions of the Amazon ECS container agent do not properly handle @entryPoint@ parameters. If you have problems using @entryPoint@ , update your container agent or enter your commands and arguments as @command@ array items instead. The entry point that is passed to the container. This parameter maps to @Entrypoint@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--entrypoint@ option to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#entrypoint https://docs.docker.com/engine/reference/builder/#entrypoint> .
cdEntryPoint :: Lens' ContainerDefinition [Text]
cdEntryPoint = lens _cdEntryPoint (\ s a -> s{_cdEntryPoint = a}) . _Default . _Coerce

-- | The working directory in which to run commands inside the container. This parameter maps to @WorkingDir@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--workdir@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdWorkingDirectory :: Lens' ContainerDefinition (Maybe Text)
cdWorkingDirectory = lens _cdWorkingDirectory (\ s a -> s{_cdWorkingDirectory = a})

-- | A list of @ulimits@ to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Valid naming values are displayed in the 'Ulimit' data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
cdUlimits :: Lens' ContainerDefinition [Ulimit]
cdUlimits = lens _cdUlimits (\ s a -> s{_cdUlimits = a}) . _Default . _Coerce

-- | When this parameter is true, the container is given elevated privileges on the host container instance (similar to the @root@ user). This parameter maps to @Privileged@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--privileged@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdPrivileged :: Lens' ContainerDefinition (Maybe Bool)
cdPrivileged = lens _cdPrivileged (\ s a -> s{_cdPrivileged = a})

-- | The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. For task definitions that use the @awsvpc@ network mode, you should only specify the @containerPort@ . The @hostPort@ can be left blank or it must be the same value as the @containerPort@ . Port mappings on Windows use the @NetNAT@ gateway address rather than @localhost@ . There is no loopback for port mappings on Windows, so you cannot access a container's mapped port from the host itself.  This parameter maps to @PortBindings@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--publish@ option to <https://docs.docker.com/engine/reference/run/ docker run> . If the network mode of a task definition is set to @none@ , then you can't specify port mappings. If the network mode of a task definition is set to @host@ , then host ports must either be undefined or they must match the container port in the port mapping.
cdPortMappings :: Lens' ContainerDefinition [PortMapping]
cdPortMappings = lens _cdPortMappings (\ s a -> s{_cdPortMappings = a}) . _Default . _Coerce

-- | A key/value map of labels to add to the container. This parameter maps to @Labels@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--label@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
cdDockerLabels :: Lens' ContainerDefinition (HashMap Text Text)
cdDockerLabels = lens _cdDockerLabels (\ s a -> s{_cdDockerLabels = a}) . _Default . _Map

-- | A list of hostnames and IP address mappings to append to the @/etc/hosts@ file on the container. If using the Fargate launch type, this may be used to list non-Fargate hosts you want the container to talk to. This parameter maps to @ExtraHosts@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--add-host@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdExtraHosts :: Lens' ContainerDefinition [HostEntry]
cdExtraHosts = lens _cdExtraHosts (\ s a -> s{_cdExtraHosts = a}) . _Default . _Coerce

-- | The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . If your containers are part of a task using the Fargate launch type, this field is optional and the only requirement is that the total amount of memory reserved for all containers within a task be lower than the task @memory@ value. For containers that are part of a task using the EC2 launch type, you must specify a non-zero integer for one or both of @memory@ or @memoryReservation@ in container definitions. If you specify both, @memory@ must be greater than @memoryReservation@ . If you specify @memoryReservation@ , then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of @memory@ is used. The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. 
cdMemory :: Lens' ContainerDefinition (Maybe Int)
cdMemory = lens _cdMemory (\ s a -> s{_cdMemory = a})

-- | The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdUser :: Lens' ContainerDefinition (Maybe Text)
cdUser = lens _cdUser (\ s a -> s{_cdUser = a})

-- | A list of DNS search domains that are presented to the container. This parameter maps to @DnsSearch@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--dns-search@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdDnsSearchDomains :: Lens' ContainerDefinition [Text]
cdDnsSearchDomains = lens _cdDnsSearchDomains (\ s a -> s{_cdDnsSearchDomains = a}) . _Default . _Coerce

-- | The log configuration specification for the container. If using the Fargate launch type, the only supported value is @awslogs@ . This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: @sudo docker version | grep "Server API version"@ 
cdLogConfiguration :: Lens' ContainerDefinition (Maybe LogConfiguration)
cdLogConfiguration = lens _cdLogConfiguration (\ s a -> s{_cdLogConfiguration = a})

-- | Linux-specific modifications that are applied to the container, such as Linux 'KernelCapabilities' .
cdLinuxParameters :: Lens' ContainerDefinition (Maybe LinuxParameters)
cdLinuxParameters = lens _cdLinuxParameters (\ s a -> s{_cdLinuxParameters = a})

-- | The name of a container. If you are linking multiple containers together in a task definition, the @name@ of one container can be entered in the @links@ of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This parameter maps to @name@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--name@ option to <https://docs.docker.com/engine/reference/run/ docker run> . 
cdName :: Lens' ContainerDefinition (Maybe Text)
cdName = lens _cdName (\ s a -> s{_cdName = a})

-- | A list of DNS servers that are presented to the container. This parameter maps to @Dns@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--dns@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdDnsServers :: Lens' ContainerDefinition [Text]
cdDnsServers = lens _cdDnsServers (\ s a -> s{_cdDnsServers = a}) . _Default . _Coerce

-- | The mount points for data volumes in your container. This parameter maps to @Volumes@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--volume@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Windows containers can mount whole directories on the same drive as @> env:ProgramData@ . Windows containers cannot mount directories on a different drive, and mount point cannot be across drives.
cdMountPoints :: Lens' ContainerDefinition [MountPoint]
cdMountPoints = lens _cdMountPoints (\ s a -> s{_cdMountPoints = a}) . _Default . _Coerce

-- | The @link@ parameter allows containers to communicate with each other without the need for port mappings. Only supported if the network mode of a task definition is set to @bridge@ . The @name:internalName@ construct is analogous to @name:alias@ in Docker links. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. For more information about linking Docker containers, go to <https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/ https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/> . This parameter maps to @Links@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--link@ option to <https://docs.docker.com/engine/reference/commandline/run/ @docker run@ > . /Important:/ Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.
cdLinks :: Lens' ContainerDefinition [Text]
cdLinks = lens _cdLinks (\ s a -> s{_cdLinks = a}) . _Default . _Coerce

-- | When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--read-only@ option to @docker run@ .
cdReadonlyRootFilesystem :: Lens' ContainerDefinition (Maybe Bool)
cdReadonlyRootFilesystem = lens _cdReadonlyRootFilesystem (\ s a -> s{_cdReadonlyRootFilesystem = a})

-- | If the @essential@ parameter of a container is marked as @true@ , and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the @essential@ parameter of a container is marked as @false@ , then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential. All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html Application Architecture> in the /Amazon Elastic Container Service Developer Guide/ .
cdEssential :: Lens' ContainerDefinition (Maybe Bool)
cdEssential = lens _cdEssential (\ s a -> s{_cdEssential = a})

-- | The number of @cpu@ units reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . This field is optional for tasks using the Fargate launch type, and the only requirement is that the total amount of CPU reserved for all containers within a task be lower than the task-level @cpu@ value. For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units. Linux containers share unallocated CPU units with other containers on the container instance with the same ratio as their allocated amount. For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units. On Linux container instances, the Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <https://docs.docker.com/engine/reference/run/#cpu-share-constraint CPU share constraint> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2; however, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:     * __Agent versions less than or equal to 1.1.0:__ Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to 2 CPU shares.     * __Agent versions greater than or equal to 1.2.0:__ Null, zero, and CPU values of 1 are passed to Docker as 2. On Windows container instances, the CPU limit is enforced as an absolute limit, or a quota. Windows containers only have access to the specified amount of CPU that is described in the task definition.
cdCpu :: Lens' ContainerDefinition (Maybe Int)
cdCpu = lens _cdCpu (\ s a -> s{_cdCpu = a})

-- | The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit; however, your container can consume more memory when it needs to, up to either the hard limit specified with the @memory@ parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to @MemoryReservation@ in the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/#create-a-container Create a container> section of the <https://docs.docker.com/engine/reference/api/docker_remote_api_v1.27/ Docker Remote API> and the @--memory-reservation@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify a non-zero integer for one or both of @memory@ or @memoryReservation@ in container definitions. If you specify both, @memory@ must be greater than @memoryReservation@ . If you specify @memoryReservation@ , then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of @memory@ is used. For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a @memoryReservation@ of 128 MiB, and a @memory@ hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed. The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. 
cdMemoryReservation :: Lens' ContainerDefinition (Maybe Int)
cdMemoryReservation = lens _cdMemoryReservation (\ s a -> s{_cdMemoryReservation = a})

instance FromJSON ContainerDefinition where
        parseJSON
          = withObject "ContainerDefinition"
              (\ x ->
                 ContainerDefinition' <$>
                   (x .:? "image") <*> (x .:? "command" .!= mempty) <*>
                     (x .:? "hostname")
                     <*> (x .:? "dockerSecurityOptions" .!= mempty)
                     <*> (x .:? "healthCheck")
                     <*> (x .:? "disableNetworking")
                     <*> (x .:? "volumesFrom" .!= mempty)
                     <*> (x .:? "environment" .!= mempty)
                     <*> (x .:? "entryPoint" .!= mempty)
                     <*> (x .:? "workingDirectory")
                     <*> (x .:? "ulimits" .!= mempty)
                     <*> (x .:? "privileged")
                     <*> (x .:? "portMappings" .!= mempty)
                     <*> (x .:? "dockerLabels" .!= mempty)
                     <*> (x .:? "extraHosts" .!= mempty)
                     <*> (x .:? "memory")
                     <*> (x .:? "user")
                     <*> (x .:? "dnsSearchDomains" .!= mempty)
                     <*> (x .:? "logConfiguration")
                     <*> (x .:? "linuxParameters")
                     <*> (x .:? "name")
                     <*> (x .:? "dnsServers" .!= mempty)
                     <*> (x .:? "mountPoints" .!= mempty)
                     <*> (x .:? "links" .!= mempty)
                     <*> (x .:? "readonlyRootFilesystem")
                     <*> (x .:? "essential")
                     <*> (x .:? "cpu")
                     <*> (x .:? "memoryReservation"))

instance Hashable ContainerDefinition where

instance NFData ContainerDefinition where

instance ToJSON ContainerDefinition where
        toJSON ContainerDefinition'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _cdImage,
                  ("command" .=) <$> _cdCommand,
                  ("hostname" .=) <$> _cdHostname,
                  ("dockerSecurityOptions" .=) <$>
                    _cdDockerSecurityOptions,
                  ("healthCheck" .=) <$> _cdHealthCheck,
                  ("disableNetworking" .=) <$> _cdDisableNetworking,
                  ("volumesFrom" .=) <$> _cdVolumesFrom,
                  ("environment" .=) <$> _cdEnvironment,
                  ("entryPoint" .=) <$> _cdEntryPoint,
                  ("workingDirectory" .=) <$> _cdWorkingDirectory,
                  ("ulimits" .=) <$> _cdUlimits,
                  ("privileged" .=) <$> _cdPrivileged,
                  ("portMappings" .=) <$> _cdPortMappings,
                  ("dockerLabels" .=) <$> _cdDockerLabels,
                  ("extraHosts" .=) <$> _cdExtraHosts,
                  ("memory" .=) <$> _cdMemory, ("user" .=) <$> _cdUser,
                  ("dnsSearchDomains" .=) <$> _cdDnsSearchDomains,
                  ("logConfiguration" .=) <$> _cdLogConfiguration,
                  ("linuxParameters" .=) <$> _cdLinuxParameters,
                  ("name" .=) <$> _cdName,
                  ("dnsServers" .=) <$> _cdDnsServers,
                  ("mountPoints" .=) <$> _cdMountPoints,
                  ("links" .=) <$> _cdLinks,
                  ("readonlyRootFilesystem" .=) <$>
                    _cdReadonlyRootFilesystem,
                  ("essential" .=) <$> _cdEssential,
                  ("cpu" .=) <$> _cdCpu,
                  ("memoryReservation" .=) <$> _cdMemoryReservation])
