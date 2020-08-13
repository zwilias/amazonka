{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.CreateNodegroup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a managed worker node group for an Amazon EKS cluster. You can only create a node group for your cluster that is equal to the current Kubernetes version for the cluster. All node groups are created with the latest AMI release version for the respective minor Kubernetes version of the cluster.
--
--
-- An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and associated Amazon EC2 instances that are managed by AWS for an Amazon EKS cluster. Each node group uses a version of the Amazon EKS-optimized Amazon Linux 2 AMI. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html Managed Node Groups> in the /Amazon EKS User Guide/ . 
--
module Network.AWS.EKS.CreateNodegroup
    (
    -- * Creating a Request
      createNodegroup
    , CreateNodegroup
    -- * Request Lenses
    , cnInstanceTypes
    , cnRemoteAccess
    , cnDiskSize
    , cnReleaseVersion
    , cnScalingConfig
    , cnVersion
    , cnLabels
    , cnAmiType
    , cnClientRequestToken
    , cnTags
    , cnClusterName
    , cnNodegroupName
    , cnSubnets
    , cnNodeRole

    -- * Destructuring the Response
    , createNodegroupResponse
    , CreateNodegroupResponse
    -- * Response Lenses
    , cnrsNodegroup
    , cnrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createNodegroup' smart constructor.
data CreateNodegroup = CreateNodegroup'{_cnInstanceTypes
                                        :: !(Maybe [Text]),
                                        _cnRemoteAccess ::
                                        !(Maybe RemoteAccessConfig),
                                        _cnDiskSize :: !(Maybe Int),
                                        _cnReleaseVersion :: !(Maybe Text),
                                        _cnScalingConfig ::
                                        !(Maybe NodegroupScalingConfig),
                                        _cnVersion :: !(Maybe Text),
                                        _cnLabels :: !(Maybe (Map Text Text)),
                                        _cnAmiType :: !(Maybe AMITypes),
                                        _cnClientRequestToken :: !(Maybe Text),
                                        _cnTags :: !(Maybe (Map Text Text)),
                                        _cnClusterName :: !Text,
                                        _cnNodegroupName :: !Text,
                                        _cnSubnets :: ![Text],
                                        _cnNodeRole :: !Text}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateNodegroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnInstanceTypes' - The instance type to use for your node group. Currently, you can specify a single instance type for a node group. The default value for this parameter is @t3.medium@ . If you choose a GPU instance type, be sure to specify the @AL2_x86_64_GPU@ with the @amiType@ parameter.
--
-- * 'cnRemoteAccess' - The remote access (SSH) configuration to use with your node group.
--
-- * 'cnDiskSize' - The root device disk size (in GiB) for your node group instances. The default disk size is 20 GiB.
--
-- * 'cnReleaseVersion' - The AMI version of the Amazon EKS-optimized AMI to use with your node group. By default, the latest available AMI version for the node group's current Kubernetes version is used. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions> in the /Amazon EKS User Guide/ .
--
-- * 'cnScalingConfig' - The scaling configuration details for the Auto Scaling group that is created for your node group.
--
-- * 'cnVersion' - The Kubernetes version to use for your managed nodes. By default, the Kubernetes version of the cluster is used, and this is the only accepted specified value.
--
-- * 'cnLabels' - The Kubernetes labels to be applied to the nodes in the node group when they are created.
--
-- * 'cnAmiType' - The AMI type for your node group. GPU instance types should use the @AL2_x86_64_GPU@ AMI type, which uses the Amazon EKS-optimized Linux AMI with GPU support. Non-GPU instances should use the @AL2_x86_64@ AMI type, which uses the Amazon EKS-optimized Linux AMI.
--
-- * 'cnClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cnTags' - The metadata to apply to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets.
--
-- * 'cnClusterName' - The name of the cluster to create the node group in.
--
-- * 'cnNodegroupName' - The unique name to give your node group.
--
-- * 'cnSubnets' - The subnets to use for the Auto Scaling group that is created for your node group. These subnets must have the tag key @kubernetes.io/cluster/CLUSTER_NAME@ with a value of @shared@ , where @CLUSTER_NAME@ is replaced with the name of your cluster.
--
-- * 'cnNodeRole' - The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The Amazon EKS worker node @kubelet@ daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies. Before you can launch worker nodes and register them into a cluster, you must create an IAM role for those worker nodes to use when they are launched. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html Amazon EKS Worker Node IAM Role> in the /\/Amazon EKS User Guide\/ / .
createNodegroup
    :: Text -- ^ 'cnClusterName'
    -> Text -- ^ 'cnNodegroupName'
    -> Text -- ^ 'cnNodeRole'
    -> CreateNodegroup
createNodegroup pClusterName_ pNodegroupName_
  pNodeRole_
  = CreateNodegroup'{_cnInstanceTypes = Nothing,
                     _cnRemoteAccess = Nothing, _cnDiskSize = Nothing,
                     _cnReleaseVersion = Nothing,
                     _cnScalingConfig = Nothing, _cnVersion = Nothing,
                     _cnLabels = Nothing, _cnAmiType = Nothing,
                     _cnClientRequestToken = Nothing, _cnTags = Nothing,
                     _cnClusterName = pClusterName_,
                     _cnNodegroupName = pNodegroupName_,
                     _cnSubnets = mempty, _cnNodeRole = pNodeRole_}

-- | The instance type to use for your node group. Currently, you can specify a single instance type for a node group. The default value for this parameter is @t3.medium@ . If you choose a GPU instance type, be sure to specify the @AL2_x86_64_GPU@ with the @amiType@ parameter.
cnInstanceTypes :: Lens' CreateNodegroup [Text]
cnInstanceTypes = lens _cnInstanceTypes (\ s a -> s{_cnInstanceTypes = a}) . _Default . _Coerce

-- | The remote access (SSH) configuration to use with your node group.
cnRemoteAccess :: Lens' CreateNodegroup (Maybe RemoteAccessConfig)
cnRemoteAccess = lens _cnRemoteAccess (\ s a -> s{_cnRemoteAccess = a})

-- | The root device disk size (in GiB) for your node group instances. The default disk size is 20 GiB.
cnDiskSize :: Lens' CreateNodegroup (Maybe Int)
cnDiskSize = lens _cnDiskSize (\ s a -> s{_cnDiskSize = a})

-- | The AMI version of the Amazon EKS-optimized AMI to use with your node group. By default, the latest available AMI version for the node group's current Kubernetes version is used. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions> in the /Amazon EKS User Guide/ .
cnReleaseVersion :: Lens' CreateNodegroup (Maybe Text)
cnReleaseVersion = lens _cnReleaseVersion (\ s a -> s{_cnReleaseVersion = a})

-- | The scaling configuration details for the Auto Scaling group that is created for your node group.
cnScalingConfig :: Lens' CreateNodegroup (Maybe NodegroupScalingConfig)
cnScalingConfig = lens _cnScalingConfig (\ s a -> s{_cnScalingConfig = a})

-- | The Kubernetes version to use for your managed nodes. By default, the Kubernetes version of the cluster is used, and this is the only accepted specified value.
cnVersion :: Lens' CreateNodegroup (Maybe Text)
cnVersion = lens _cnVersion (\ s a -> s{_cnVersion = a})

-- | The Kubernetes labels to be applied to the nodes in the node group when they are created.
cnLabels :: Lens' CreateNodegroup (HashMap Text Text)
cnLabels = lens _cnLabels (\ s a -> s{_cnLabels = a}) . _Default . _Map

-- | The AMI type for your node group. GPU instance types should use the @AL2_x86_64_GPU@ AMI type, which uses the Amazon EKS-optimized Linux AMI with GPU support. Non-GPU instances should use the @AL2_x86_64@ AMI type, which uses the Amazon EKS-optimized Linux AMI.
cnAmiType :: Lens' CreateNodegroup (Maybe AMITypes)
cnAmiType = lens _cnAmiType (\ s a -> s{_cnAmiType = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cnClientRequestToken :: Lens' CreateNodegroup (Maybe Text)
cnClientRequestToken = lens _cnClientRequestToken (\ s a -> s{_cnClientRequestToken = a})

-- | The metadata to apply to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets.
cnTags :: Lens' CreateNodegroup (HashMap Text Text)
cnTags = lens _cnTags (\ s a -> s{_cnTags = a}) . _Default . _Map

-- | The name of the cluster to create the node group in.
cnClusterName :: Lens' CreateNodegroup Text
cnClusterName = lens _cnClusterName (\ s a -> s{_cnClusterName = a})

-- | The unique name to give your node group.
cnNodegroupName :: Lens' CreateNodegroup Text
cnNodegroupName = lens _cnNodegroupName (\ s a -> s{_cnNodegroupName = a})

-- | The subnets to use for the Auto Scaling group that is created for your node group. These subnets must have the tag key @kubernetes.io/cluster/CLUSTER_NAME@ with a value of @shared@ , where @CLUSTER_NAME@ is replaced with the name of your cluster.
cnSubnets :: Lens' CreateNodegroup [Text]
cnSubnets = lens _cnSubnets (\ s a -> s{_cnSubnets = a}) . _Coerce

-- | The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The Amazon EKS worker node @kubelet@ daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies. Before you can launch worker nodes and register them into a cluster, you must create an IAM role for those worker nodes to use when they are launched. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html Amazon EKS Worker Node IAM Role> in the /\/Amazon EKS User Guide\/ / .
cnNodeRole :: Lens' CreateNodegroup Text
cnNodeRole = lens _cnNodeRole (\ s a -> s{_cnNodeRole = a})

instance AWSRequest CreateNodegroup where
        type Rs CreateNodegroup = CreateNodegroupResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 CreateNodegroupResponse' <$>
                   (x .?> "nodegroup") <*> (pure (fromEnum s)))

instance Hashable CreateNodegroup where

instance NFData CreateNodegroup where

instance ToHeaders CreateNodegroup where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateNodegroup where
        toJSON CreateNodegroup'{..}
          = object
              (catMaybes
                 [("instanceTypes" .=) <$> _cnInstanceTypes,
                  ("remoteAccess" .=) <$> _cnRemoteAccess,
                  ("diskSize" .=) <$> _cnDiskSize,
                  ("releaseVersion" .=) <$> _cnReleaseVersion,
                  ("scalingConfig" .=) <$> _cnScalingConfig,
                  ("version" .=) <$> _cnVersion,
                  ("labels" .=) <$> _cnLabels,
                  ("amiType" .=) <$> _cnAmiType,
                  ("clientRequestToken" .=) <$> _cnClientRequestToken,
                  ("tags" .=) <$> _cnTags,
                  Just ("nodegroupName" .= _cnNodegroupName),
                  Just ("subnets" .= _cnSubnets),
                  Just ("nodeRole" .= _cnNodeRole)])

instance ToPath CreateNodegroup where
        toPath CreateNodegroup'{..}
          = mconcat
              ["/clusters/", toBS _cnClusterName, "/node-groups"]

instance ToQuery CreateNodegroup where
        toQuery = const mempty

-- | /See:/ 'createNodegroupResponse' smart constructor.
data CreateNodegroupResponse = CreateNodegroupResponse'{_cnrsNodegroup
                                                        :: !(Maybe Nodegroup),
                                                        _cnrsResponseStatus ::
                                                        !Int}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'CreateNodegroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnrsNodegroup' - The full description of your new node group.
--
-- * 'cnrsResponseStatus' - -- | The response status code.
createNodegroupResponse
    :: Int -- ^ 'cnrsResponseStatus'
    -> CreateNodegroupResponse
createNodegroupResponse pResponseStatus_
  = CreateNodegroupResponse'{_cnrsNodegroup = Nothing,
                             _cnrsResponseStatus = pResponseStatus_}

-- | The full description of your new node group.
cnrsNodegroup :: Lens' CreateNodegroupResponse (Maybe Nodegroup)
cnrsNodegroup = lens _cnrsNodegroup (\ s a -> s{_cnrsNodegroup = a})

-- | -- | The response status code.
cnrsResponseStatus :: Lens' CreateNodegroupResponse Int
cnrsResponseStatus = lens _cnrsResponseStatus (\ s a -> s{_cnrsResponseStatus = a})

instance NFData CreateNodegroupResponse where
