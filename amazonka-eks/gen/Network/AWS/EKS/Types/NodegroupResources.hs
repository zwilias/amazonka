{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.NodegroupResources
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.NodegroupResources where

import Network.AWS.EKS.Types.AutoScalingGroup
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the resources associated with the node group, such as Auto Scaling groups and security groups for remote access.
--
--
--
-- /See:/ 'nodegroupResources' smart constructor.
data NodegroupResources = NodegroupResources'{_nrRemoteAccessSecurityGroup
                                              :: !(Maybe Text),
                                              _nrAutoScalingGroups ::
                                              !(Maybe [AutoScalingGroup])}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodegroupResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrRemoteAccessSecurityGroup' - The remote access security group associated with the node group. This security group controls SSH access to the worker nodes.
--
-- * 'nrAutoScalingGroups' - The Auto Scaling groups associated with the node group.
nodegroupResources
    :: NodegroupResources
nodegroupResources
  = NodegroupResources'{_nrRemoteAccessSecurityGroup =
                          Nothing,
                        _nrAutoScalingGroups = Nothing}

-- | The remote access security group associated with the node group. This security group controls SSH access to the worker nodes.
nrRemoteAccessSecurityGroup :: Lens' NodegroupResources (Maybe Text)
nrRemoteAccessSecurityGroup = lens _nrRemoteAccessSecurityGroup (\ s a -> s{_nrRemoteAccessSecurityGroup = a})

-- | The Auto Scaling groups associated with the node group.
nrAutoScalingGroups :: Lens' NodegroupResources [AutoScalingGroup]
nrAutoScalingGroups = lens _nrAutoScalingGroups (\ s a -> s{_nrAutoScalingGroups = a}) . _Default . _Coerce

instance FromJSON NodegroupResources where
        parseJSON
          = withObject "NodegroupResources"
              (\ x ->
                 NodegroupResources' <$>
                   (x .:? "remoteAccessSecurityGroup") <*>
                     (x .:? "autoScalingGroups" .!= mempty))

instance Hashable NodegroupResources where

instance NFData NodegroupResources where
