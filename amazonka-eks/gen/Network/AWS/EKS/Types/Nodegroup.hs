{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Nodegroup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Nodegroup where

import Network.AWS.EKS.Types.AMITypes
import Network.AWS.EKS.Types.NodegroupHealth
import Network.AWS.EKS.Types.NodegroupResources
import Network.AWS.EKS.Types.NodegroupScalingConfig
import Network.AWS.EKS.Types.NodegroupStatus
import Network.AWS.EKS.Types.RemoteAccessConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon EKS managed node group.
--
--
--
-- /See:/ 'nodegroup' smart constructor.
data Nodegroup = Nodegroup'{_nModifiedAt ::
                            !(Maybe POSIX),
                            _nStatus :: !(Maybe NodegroupStatus),
                            _nInstanceTypes :: !(Maybe [Text]),
                            _nCreatedAt :: !(Maybe POSIX),
                            _nSubnets :: !(Maybe [Text]),
                            _nRemoteAccess :: !(Maybe RemoteAccessConfig),
                            _nDiskSize :: !(Maybe Int),
                            _nReleaseVersion :: !(Maybe Text),
                            _nResources :: !(Maybe NodegroupResources),
                            _nHealth :: !(Maybe NodegroupHealth),
                            _nNodeRole :: !(Maybe Text),
                            _nScalingConfig :: !(Maybe NodegroupScalingConfig),
                            _nVersion :: !(Maybe Text),
                            _nNodegroupARN :: !(Maybe Text),
                            _nClusterName :: !(Maybe Text),
                            _nLabels :: !(Maybe (Map Text Text)),
                            _nAmiType :: !(Maybe AMITypes),
                            _nNodegroupName :: !(Maybe Text),
                            _nTags :: !(Maybe (Map Text Text))}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Nodegroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nModifiedAt' - The Unix epoch timestamp in seconds for when the managed node group was last modified.
--
-- * 'nStatus' - The current status of the managed node group.
--
-- * 'nInstanceTypes' - The instance types associated with your node group.
--
-- * 'nCreatedAt' - The Unix epoch timestamp in seconds for when the managed node group was created.
--
-- * 'nSubnets' - The subnets allowed for the Auto Scaling group that is associated with your node group. These subnets must have the following tag: @kubernetes.io/cluster/CLUSTER_NAME@ , where @CLUSTER_NAME@ is replaced with the name of your cluster.
--
-- * 'nRemoteAccess' - The remote access (SSH) configuration that is associated with the node group.
--
-- * 'nDiskSize' - The root device disk size (in GiB) for your node group instances. The default disk size is 20 GiB.
--
-- * 'nReleaseVersion' - The AMI version of the managed node group. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions > in the /Amazon EKS User Guide/ .
--
-- * 'nResources' - The resources associated with the node group, such as Auto Scaling groups and security groups for remote access.
--
-- * 'nHealth' - The health status of the node group. If there are issues with your node group's health, they are listed here.
--
-- * 'nNodeRole' - The IAM role associated with your node group. The Amazon EKS worker node @kubelet@ daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies. Before you can launch worker nodes and register them into a cluster, you must create an IAM role for those worker nodes to use when they are launched. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html Amazon EKS Worker Node IAM Role> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'nScalingConfig' - The scaling configuration details for the Auto Scaling group that is associated with your node group.
--
-- * 'nVersion' - The Kubernetes version of the managed node group.
--
-- * 'nNodegroupARN' - The Amazon Resource Name (ARN) associated with the managed node group.
--
-- * 'nClusterName' - The name of the cluster that the managed node group resides in.
--
-- * 'nLabels' - The Kubernetes labels applied to the nodes in the node group.
--
-- * 'nAmiType' - The AMI type associated with your node group. GPU instance types should use the @AL2_x86_64_GPU@ AMI type, which uses the Amazon EKS-optimized Linux AMI with GPU support. Non-GPU instances should use the @AL2_x86_64@ AMI type, which uses the Amazon EKS-optimized Linux AMI.
--
-- * 'nNodegroupName' - The name associated with an Amazon EKS managed node group.
--
-- * 'nTags' - The metadata applied to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets. 
nodegroup
    :: Nodegroup
nodegroup
  = Nodegroup'{_nModifiedAt = Nothing,
               _nStatus = Nothing, _nInstanceTypes = Nothing,
               _nCreatedAt = Nothing, _nSubnets = Nothing,
               _nRemoteAccess = Nothing, _nDiskSize = Nothing,
               _nReleaseVersion = Nothing, _nResources = Nothing,
               _nHealth = Nothing, _nNodeRole = Nothing,
               _nScalingConfig = Nothing, _nVersion = Nothing,
               _nNodegroupARN = Nothing, _nClusterName = Nothing,
               _nLabels = Nothing, _nAmiType = Nothing,
               _nNodegroupName = Nothing, _nTags = Nothing}

-- | The Unix epoch timestamp in seconds for when the managed node group was last modified.
nModifiedAt :: Lens' Nodegroup (Maybe UTCTime)
nModifiedAt = lens _nModifiedAt (\ s a -> s{_nModifiedAt = a}) . mapping _Time

-- | The current status of the managed node group.
nStatus :: Lens' Nodegroup (Maybe NodegroupStatus)
nStatus = lens _nStatus (\ s a -> s{_nStatus = a})

-- | The instance types associated with your node group.
nInstanceTypes :: Lens' Nodegroup [Text]
nInstanceTypes = lens _nInstanceTypes (\ s a -> s{_nInstanceTypes = a}) . _Default . _Coerce

-- | The Unix epoch timestamp in seconds for when the managed node group was created.
nCreatedAt :: Lens' Nodegroup (Maybe UTCTime)
nCreatedAt = lens _nCreatedAt (\ s a -> s{_nCreatedAt = a}) . mapping _Time

-- | The subnets allowed for the Auto Scaling group that is associated with your node group. These subnets must have the following tag: @kubernetes.io/cluster/CLUSTER_NAME@ , where @CLUSTER_NAME@ is replaced with the name of your cluster.
nSubnets :: Lens' Nodegroup [Text]
nSubnets = lens _nSubnets (\ s a -> s{_nSubnets = a}) . _Default . _Coerce

-- | The remote access (SSH) configuration that is associated with the node group.
nRemoteAccess :: Lens' Nodegroup (Maybe RemoteAccessConfig)
nRemoteAccess = lens _nRemoteAccess (\ s a -> s{_nRemoteAccess = a})

-- | The root device disk size (in GiB) for your node group instances. The default disk size is 20 GiB.
nDiskSize :: Lens' Nodegroup (Maybe Int)
nDiskSize = lens _nDiskSize (\ s a -> s{_nDiskSize = a})

-- | The AMI version of the managed node group. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions > in the /Amazon EKS User Guide/ .
nReleaseVersion :: Lens' Nodegroup (Maybe Text)
nReleaseVersion = lens _nReleaseVersion (\ s a -> s{_nReleaseVersion = a})

-- | The resources associated with the node group, such as Auto Scaling groups and security groups for remote access.
nResources :: Lens' Nodegroup (Maybe NodegroupResources)
nResources = lens _nResources (\ s a -> s{_nResources = a})

-- | The health status of the node group. If there are issues with your node group's health, they are listed here.
nHealth :: Lens' Nodegroup (Maybe NodegroupHealth)
nHealth = lens _nHealth (\ s a -> s{_nHealth = a})

-- | The IAM role associated with your node group. The Amazon EKS worker node @kubelet@ daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies. Before you can launch worker nodes and register them into a cluster, you must create an IAM role for those worker nodes to use when they are launched. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html Amazon EKS Worker Node IAM Role> in the /\/Amazon EKS User Guide\/ / .
nNodeRole :: Lens' Nodegroup (Maybe Text)
nNodeRole = lens _nNodeRole (\ s a -> s{_nNodeRole = a})

-- | The scaling configuration details for the Auto Scaling group that is associated with your node group.
nScalingConfig :: Lens' Nodegroup (Maybe NodegroupScalingConfig)
nScalingConfig = lens _nScalingConfig (\ s a -> s{_nScalingConfig = a})

-- | The Kubernetes version of the managed node group.
nVersion :: Lens' Nodegroup (Maybe Text)
nVersion = lens _nVersion (\ s a -> s{_nVersion = a})

-- | The Amazon Resource Name (ARN) associated with the managed node group.
nNodegroupARN :: Lens' Nodegroup (Maybe Text)
nNodegroupARN = lens _nNodegroupARN (\ s a -> s{_nNodegroupARN = a})

-- | The name of the cluster that the managed node group resides in.
nClusterName :: Lens' Nodegroup (Maybe Text)
nClusterName = lens _nClusterName (\ s a -> s{_nClusterName = a})

-- | The Kubernetes labels applied to the nodes in the node group.
nLabels :: Lens' Nodegroup (HashMap Text Text)
nLabels = lens _nLabels (\ s a -> s{_nLabels = a}) . _Default . _Map

-- | The AMI type associated with your node group. GPU instance types should use the @AL2_x86_64_GPU@ AMI type, which uses the Amazon EKS-optimized Linux AMI with GPU support. Non-GPU instances should use the @AL2_x86_64@ AMI type, which uses the Amazon EKS-optimized Linux AMI.
nAmiType :: Lens' Nodegroup (Maybe AMITypes)
nAmiType = lens _nAmiType (\ s a -> s{_nAmiType = a})

-- | The name associated with an Amazon EKS managed node group.
nNodegroupName :: Lens' Nodegroup (Maybe Text)
nNodegroupName = lens _nNodegroupName (\ s a -> s{_nNodegroupName = a})

-- | The metadata applied to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets. 
nTags :: Lens' Nodegroup (HashMap Text Text)
nTags = lens _nTags (\ s a -> s{_nTags = a}) . _Default . _Map

instance FromJSON Nodegroup where
        parseJSON
          = withObject "Nodegroup"
              (\ x ->
                 Nodegroup' <$>
                   (x .:? "modifiedAt") <*> (x .:? "status") <*>
                     (x .:? "instanceTypes" .!= mempty)
                     <*> (x .:? "createdAt")
                     <*> (x .:? "subnets" .!= mempty)
                     <*> (x .:? "remoteAccess")
                     <*> (x .:? "diskSize")
                     <*> (x .:? "releaseVersion")
                     <*> (x .:? "resources")
                     <*> (x .:? "health")
                     <*> (x .:? "nodeRole")
                     <*> (x .:? "scalingConfig")
                     <*> (x .:? "version")
                     <*> (x .:? "nodegroupArn")
                     <*> (x .:? "clusterName")
                     <*> (x .:? "labels" .!= mempty)
                     <*> (x .:? "amiType")
                     <*> (x .:? "nodegroupName")
                     <*> (x .:? "tags" .!= mempty))

instance Hashable Nodegroup where

instance NFData Nodegroup where
