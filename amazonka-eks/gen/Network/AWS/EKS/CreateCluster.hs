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
-- Module      : Network.AWS.EKS.CreateCluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon EKS control plane. 
--
--
-- The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, such as @etcd@ and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is single-tenant and unique and runs on its own set of Amazon EC2 instances.
--
-- The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support @kubectl exec@ , @logs@ , and @proxy@ data flows).
--
-- Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster.
--
-- You can use the @endpointPublicAccess@ and @endpointPrivateAccess@ parameters to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / . 
--
-- You can use the @logging@ parameter to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
--
-- Cluster creation typically takes between 10 and 15 minutes. After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html Managing Cluster Authentication> and <https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html Launching Amazon EKS Worker Nodes> in the /Amazon EKS User Guide/ .
--
module Network.AWS.EKS.CreateCluster
    (
    -- * Creating a Request
      createCluster
    , CreateCluster
    -- * Request Lenses
    , ccVersion
    , ccEncryptionConfig
    , ccClientRequestToken
    , ccLogging
    , ccTags
    , ccName
    , ccRoleARN
    , ccResourcesVPCConfig

    -- * Destructuring the Response
    , createClusterResponse
    , CreateClusterResponse
    -- * Response Lenses
    , ccrsCluster
    , ccrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCluster' smart constructor.
data CreateCluster = CreateCluster'{_ccVersion ::
                                    !(Maybe Text),
                                    _ccEncryptionConfig ::
                                    !(Maybe [EncryptionConfig]),
                                    _ccClientRequestToken :: !(Maybe Text),
                                    _ccLogging :: !(Maybe Logging),
                                    _ccTags :: !(Maybe (Map Text Text)),
                                    _ccName :: !Text, _ccRoleARN :: !Text,
                                    _ccResourcesVPCConfig :: !VPCConfigRequest}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccVersion' - The desired Kubernetes version for your cluster. If you don't specify a value here, the latest version available in Amazon EKS is used.
--
-- * 'ccEncryptionConfig' - The encryption configuration for the cluster.
--
-- * 'ccClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'ccLogging' - Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'ccTags' - The metadata to apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define.
--
-- * 'ccName' - The unique name to give to your cluster.
--
-- * 'ccRoleARN' - The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html Amazon EKS Service IAM Role> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'ccResourcesVPCConfig' - The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations> and <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations> in the /Amazon EKS User Guide/ . You must specify at least two subnets. You can specify up to five security groups, but we recommend that you use a dedicated security group for your cluster control plane.
createCluster
    :: Text -- ^ 'ccName'
    -> Text -- ^ 'ccRoleARN'
    -> VPCConfigRequest -- ^ 'ccResourcesVPCConfig'
    -> CreateCluster
createCluster pName_ pRoleARN_ pResourcesVPCConfig_
  = CreateCluster'{_ccVersion = Nothing,
                   _ccEncryptionConfig = Nothing,
                   _ccClientRequestToken = Nothing,
                   _ccLogging = Nothing, _ccTags = Nothing,
                   _ccName = pName_, _ccRoleARN = pRoleARN_,
                   _ccResourcesVPCConfig = pResourcesVPCConfig_}

-- | The desired Kubernetes version for your cluster. If you don't specify a value here, the latest version available in Amazon EKS is used.
ccVersion :: Lens' CreateCluster (Maybe Text)
ccVersion = lens _ccVersion (\ s a -> s{_ccVersion = a})

-- | The encryption configuration for the cluster.
ccEncryptionConfig :: Lens' CreateCluster [EncryptionConfig]
ccEncryptionConfig = lens _ccEncryptionConfig (\ s a -> s{_ccEncryptionConfig = a}) . _Default . _Coerce

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
ccClientRequestToken :: Lens' CreateCluster (Maybe Text)
ccClientRequestToken = lens _ccClientRequestToken (\ s a -> s{_ccClientRequestToken = a})

-- | Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
ccLogging :: Lens' CreateCluster (Maybe Logging)
ccLogging = lens _ccLogging (\ s a -> s{_ccLogging = a})

-- | The metadata to apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define.
ccTags :: Lens' CreateCluster (HashMap Text Text)
ccTags = lens _ccTags (\ s a -> s{_ccTags = a}) . _Default . _Map

-- | The unique name to give to your cluster.
ccName :: Lens' CreateCluster Text
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html Amazon EKS Service IAM Role> in the /\/Amazon EKS User Guide\/ / .
ccRoleARN :: Lens' CreateCluster Text
ccRoleARN = lens _ccRoleARN (\ s a -> s{_ccRoleARN = a})

-- | The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations> and <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations> in the /Amazon EKS User Guide/ . You must specify at least two subnets. You can specify up to five security groups, but we recommend that you use a dedicated security group for your cluster control plane.
ccResourcesVPCConfig :: Lens' CreateCluster VPCConfigRequest
ccResourcesVPCConfig = lens _ccResourcesVPCConfig (\ s a -> s{_ccResourcesVPCConfig = a})

instance AWSRequest CreateCluster where
        type Rs CreateCluster = CreateClusterResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 CreateClusterResponse' <$>
                   (x .?> "cluster") <*> (pure (fromEnum s)))

instance Hashable CreateCluster where

instance NFData CreateCluster where

instance ToHeaders CreateCluster where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateCluster where
        toJSON CreateCluster'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _ccVersion,
                  ("encryptionConfig" .=) <$> _ccEncryptionConfig,
                  ("clientRequestToken" .=) <$> _ccClientRequestToken,
                  ("logging" .=) <$> _ccLogging,
                  ("tags" .=) <$> _ccTags, Just ("name" .= _ccName),
                  Just ("roleArn" .= _ccRoleARN),
                  Just
                    ("resourcesVpcConfig" .= _ccResourcesVPCConfig)])

instance ToPath CreateCluster where
        toPath = const "/clusters"

instance ToQuery CreateCluster where
        toQuery = const mempty

-- | /See:/ 'createClusterResponse' smart constructor.
data CreateClusterResponse = CreateClusterResponse'{_ccrsCluster
                                                    :: !(Maybe Cluster),
                                                    _ccrsResponseStatus :: !Int}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'CreateClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrsCluster' - The full description of your new cluster.
--
-- * 'ccrsResponseStatus' - -- | The response status code.
createClusterResponse
    :: Int -- ^ 'ccrsResponseStatus'
    -> CreateClusterResponse
createClusterResponse pResponseStatus_
  = CreateClusterResponse'{_ccrsCluster = Nothing,
                           _ccrsResponseStatus = pResponseStatus_}

-- | The full description of your new cluster.
ccrsCluster :: Lens' CreateClusterResponse (Maybe Cluster)
ccrsCluster = lens _ccrsCluster (\ s a -> s{_ccrsCluster = a})

-- | -- | The response status code.
ccrsResponseStatus :: Lens' CreateClusterResponse Int
ccrsResponseStatus = lens _ccrsResponseStatus (\ s a -> s{_ccrsResponseStatus = a})

instance NFData CreateClusterResponse where
