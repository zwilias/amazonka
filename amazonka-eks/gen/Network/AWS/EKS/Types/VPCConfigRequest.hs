{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.VPCConfigRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.VPCConfigRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the VPC configuration to use for an Amazon EKS cluster.
--
--
--
-- /See:/ 'vpcConfigRequest' smart constructor.
data VPCConfigRequest = VPCConfigRequest'{_vcrSecurityGroupIds
                                          :: !(Maybe [Text]),
                                          _vcrEndpointPrivateAccess ::
                                          !(Maybe Bool),
                                          _vcrPublicAccessCidrs ::
                                          !(Maybe [Text]),
                                          _vcrSubnetIds :: !(Maybe [Text]),
                                          _vcrEndpointPublicAccess ::
                                          !(Maybe Bool)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcrSecurityGroupIds' - Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. If you don't specify a security group, the default security group for your VPC is used.
--
-- * 'vcrEndpointPrivateAccess' - Set this value to @true@ to enable private access for your cluster's Kubernetes API server endpoint. If you enable private access, Kubernetes API requests from within your cluster's VPC use the private VPC endpoint. The default value for this parameter is @false@ , which disables private access for your Kubernetes API server. If you disable private access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that @publicAccessCidrs@ includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'vcrPublicAccessCidrs' - The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that you specify is denied. The default value is @0.0.0.0/0@ . If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that you specify the necessary CIDR blocks. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'vcrSubnetIds' - Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
--
-- * 'vcrEndpointPublicAccess' - Set this value to @false@ to disable public access to your cluster's Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes API server can only receive requests from within the cluster VPC. The default value for this parameter is @true@ , which enables public access for your Kubernetes API server. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vpcConfigRequest
    :: VPCConfigRequest
vpcConfigRequest
  = VPCConfigRequest'{_vcrSecurityGroupIds = Nothing,
                      _vcrEndpointPrivateAccess = Nothing,
                      _vcrPublicAccessCidrs = Nothing,
                      _vcrSubnetIds = Nothing,
                      _vcrEndpointPublicAccess = Nothing}

-- | Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. If you don't specify a security group, the default security group for your VPC is used.
vcrSecurityGroupIds :: Lens' VPCConfigRequest [Text]
vcrSecurityGroupIds = lens _vcrSecurityGroupIds (\ s a -> s{_vcrSecurityGroupIds = a}) . _Default . _Coerce

-- | Set this value to @true@ to enable private access for your cluster's Kubernetes API server endpoint. If you enable private access, Kubernetes API requests from within your cluster's VPC use the private VPC endpoint. The default value for this parameter is @false@ , which disables private access for your Kubernetes API server. If you disable private access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that @publicAccessCidrs@ includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vcrEndpointPrivateAccess :: Lens' VPCConfigRequest (Maybe Bool)
vcrEndpointPrivateAccess = lens _vcrEndpointPrivateAccess (\ s a -> s{_vcrEndpointPrivateAccess = a})

-- | The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that you specify is denied. The default value is @0.0.0.0/0@ . If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that you specify the necessary CIDR blocks. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vcrPublicAccessCidrs :: Lens' VPCConfigRequest [Text]
vcrPublicAccessCidrs = lens _vcrPublicAccessCidrs (\ s a -> s{_vcrPublicAccessCidrs = a}) . _Default . _Coerce

-- | Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
vcrSubnetIds :: Lens' VPCConfigRequest [Text]
vcrSubnetIds = lens _vcrSubnetIds (\ s a -> s{_vcrSubnetIds = a}) . _Default . _Coerce

-- | Set this value to @false@ to disable public access to your cluster's Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes API server can only receive requests from within the cluster VPC. The default value for this parameter is @true@ , which enables public access for your Kubernetes API server. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / .
vcrEndpointPublicAccess :: Lens' VPCConfigRequest (Maybe Bool)
vcrEndpointPublicAccess = lens _vcrEndpointPublicAccess (\ s a -> s{_vcrEndpointPublicAccess = a})

instance Hashable VPCConfigRequest where

instance NFData VPCConfigRequest where

instance ToJSON VPCConfigRequest where
        toJSON VPCConfigRequest'{..}
          = object
              (catMaybes
                 [("securityGroupIds" .=) <$> _vcrSecurityGroupIds,
                  ("endpointPrivateAccess" .=) <$>
                    _vcrEndpointPrivateAccess,
                  ("publicAccessCidrs" .=) <$> _vcrPublicAccessCidrs,
                  ("subnetIds" .=) <$> _vcrSubnetIds,
                  ("endpointPublicAccess" .=) <$>
                    _vcrEndpointPublicAccess])
