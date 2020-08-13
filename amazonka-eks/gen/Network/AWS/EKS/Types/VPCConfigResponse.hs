{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.VPCConfigResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.VPCConfigResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon EKS cluster VPC configuration response.
--
--
--
-- /See:/ 'vpcConfigResponse' smart constructor.
data VPCConfigResponse = VPCConfigResponse'{_vcSecurityGroupIds
                                            :: !(Maybe [Text]),
                                            _vcEndpointPrivateAccess ::
                                            !(Maybe Bool),
                                            _vcPublicAccessCidrs ::
                                            !(Maybe [Text]),
                                            _vcSubnetIds :: !(Maybe [Text]),
                                            _vcVpcId :: !(Maybe Text),
                                            _vcClusterSecurityGroupId ::
                                            !(Maybe Text),
                                            _vcEndpointPublicAccess ::
                                            !(Maybe Bool)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcSecurityGroupIds' - The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.
--
-- * 'vcEndpointPrivateAccess' - This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have worker nodes or AWS Fargate pods in the cluster, then ensure that @publicAccessCidrs@ includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'vcPublicAccessCidrs' - The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the listed CIDR blocks is denied. The default value is @0.0.0.0/0@ . If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that the necessary CIDR blocks are listed. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'vcSubnetIds' - The subnets associated with your cluster.
--
-- * 'vcVpcId' - The VPC associated with your cluster.
--
-- * 'vcClusterSecurityGroupId' - The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
--
-- * 'vcEndpointPublicAccess' - This parameter indicates whether the Amazon EKS public API server endpoint is enabled. If the Amazon EKS public API server endpoint is disabled, your cluster's Kubernetes API server can only receive requests that originate from within the cluster VPC.
vpcConfigResponse
    :: VPCConfigResponse
vpcConfigResponse
  = VPCConfigResponse'{_vcSecurityGroupIds = Nothing,
                       _vcEndpointPrivateAccess = Nothing,
                       _vcPublicAccessCidrs = Nothing,
                       _vcSubnetIds = Nothing, _vcVpcId = Nothing,
                       _vcClusterSecurityGroupId = Nothing,
                       _vcEndpointPublicAccess = Nothing}

-- | The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.
vcSecurityGroupIds :: Lens' VPCConfigResponse [Text]
vcSecurityGroupIds = lens _vcSecurityGroupIds (\ s a -> s{_vcSecurityGroupIds = a}) . _Default . _Coerce

-- | This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have worker nodes or AWS Fargate pods in the cluster, then ensure that @publicAccessCidrs@ includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vcEndpointPrivateAccess :: Lens' VPCConfigResponse (Maybe Bool)
vcEndpointPrivateAccess = lens _vcEndpointPrivateAccess (\ s a -> s{_vcEndpointPrivateAccess = a})

-- | The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the listed CIDR blocks is denied. The default value is @0.0.0.0/0@ . If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that the necessary CIDR blocks are listed. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vcPublicAccessCidrs :: Lens' VPCConfigResponse [Text]
vcPublicAccessCidrs = lens _vcPublicAccessCidrs (\ s a -> s{_vcPublicAccessCidrs = a}) . _Default . _Coerce

-- | The subnets associated with your cluster.
vcSubnetIds :: Lens' VPCConfigResponse [Text]
vcSubnetIds = lens _vcSubnetIds (\ s a -> s{_vcSubnetIds = a}) . _Default . _Coerce

-- | The VPC associated with your cluster.
vcVpcId :: Lens' VPCConfigResponse (Maybe Text)
vcVpcId = lens _vcVpcId (\ s a -> s{_vcVpcId = a})

-- | The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
vcClusterSecurityGroupId :: Lens' VPCConfigResponse (Maybe Text)
vcClusterSecurityGroupId = lens _vcClusterSecurityGroupId (\ s a -> s{_vcClusterSecurityGroupId = a})

-- | This parameter indicates whether the Amazon EKS public API server endpoint is enabled. If the Amazon EKS public API server endpoint is disabled, your cluster's Kubernetes API server can only receive requests that originate from within the cluster VPC.
vcEndpointPublicAccess :: Lens' VPCConfigResponse (Maybe Bool)
vcEndpointPublicAccess = lens _vcEndpointPublicAccess (\ s a -> s{_vcEndpointPublicAccess = a})

instance FromJSON VPCConfigResponse where
        parseJSON
          = withObject "VPCConfigResponse"
              (\ x ->
                 VPCConfigResponse' <$>
                   (x .:? "securityGroupIds" .!= mempty) <*>
                     (x .:? "endpointPrivateAccess")
                     <*> (x .:? "publicAccessCidrs" .!= mempty)
                     <*> (x .:? "subnetIds" .!= mempty)
                     <*> (x .:? "vpcId")
                     <*> (x .:? "clusterSecurityGroupId")
                     <*> (x .:? "endpointPublicAccess"))

instance Hashable VPCConfigResponse where

instance NFData VPCConfigResponse where
