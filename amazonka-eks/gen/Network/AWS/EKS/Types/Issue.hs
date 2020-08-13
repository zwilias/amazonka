{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Issue
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Issue where

import Network.AWS.EKS.Types.NodegroupIssueCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an issue with an Amazon EKS resource.
--
--
--
-- /See:/ 'issue' smart constructor.
data Issue = Issue'{_iResourceIds :: !(Maybe [Text]),
                    _iCode :: !(Maybe NodegroupIssueCode),
                    _iMessage :: !(Maybe Text)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Issue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iResourceIds' - The AWS resources that are afflicted by this issue.
--
-- * 'iCode' - A brief description of the error.     * __AutoScalingGroupNotFound__ : We couldn't find the Auto Scaling group associated with the managed node group. You may be able to recreate an Auto Scaling group with the same settings to recover.     * __Ec2SecurityGroupNotFound__ : We couldn't find the cluster security group for the cluster. You must recreate your cluster.     * __Ec2SecurityGroupDeletionFailure__ : We could not delete the remote access security group for your managed node group. Remove any dependencies from the security group.     * __Ec2LaunchTemplateNotFound__ : We couldn't find the Amazon EC2 launch template for your managed node group. You may be able to recreate a launch template with the same settings to recover.     * __Ec2LaunchTemplateVersionMismatch__ : The Amazon EC2 launch template version for your managed node group does not match the version that Amazon EKS created. You may be able to revert to the version that Amazon EKS created to recover.     * __IamInstanceProfileNotFound__ : We couldn't find the IAM instance profile for your managed node group. You may be able to recreate an instance profile with the same settings to recover.     * __IamNodeRoleNotFound__ : We couldn't find the IAM role for your managed node group. You may be able to recreate an IAM role with the same settings to recover.     * __AsgInstanceLaunchFailures__ : Your Auto Scaling group is experiencing failures while attempting to launch instances.     * __NodeCreationFailure__ : Your launched instances are unable to register with your Amazon EKS cluster. Common causes of this failure are insufficient <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html worker node IAM role> permissions or lack of outbound internet access for the nodes.      * __InstanceLimitExceeded__ : Your AWS account is unable to launch any more instances of the specified instance type. You may be able to request an Amazon EC2 instance limit increase to recover.     * __InsufficientFreeAddresses__ : One or more of the subnets associated with your managed node group does not have enough available IP addresses for new nodes.     * __AccessDenied__ : Amazon EKS or one or more of your managed nodes is unable to communicate with your cluster API server.     * __InternalFailure__ : These errors are usually caused by an Amazon EKS server-side issue.
--
-- * 'iMessage' - The error message associated with the issue.
issue
    :: Issue
issue
  = Issue'{_iResourceIds = Nothing, _iCode = Nothing,
           _iMessage = Nothing}

-- | The AWS resources that are afflicted by this issue.
iResourceIds :: Lens' Issue [Text]
iResourceIds = lens _iResourceIds (\ s a -> s{_iResourceIds = a}) . _Default . _Coerce

-- | A brief description of the error.     * __AutoScalingGroupNotFound__ : We couldn't find the Auto Scaling group associated with the managed node group. You may be able to recreate an Auto Scaling group with the same settings to recover.     * __Ec2SecurityGroupNotFound__ : We couldn't find the cluster security group for the cluster. You must recreate your cluster.     * __Ec2SecurityGroupDeletionFailure__ : We could not delete the remote access security group for your managed node group. Remove any dependencies from the security group.     * __Ec2LaunchTemplateNotFound__ : We couldn't find the Amazon EC2 launch template for your managed node group. You may be able to recreate a launch template with the same settings to recover.     * __Ec2LaunchTemplateVersionMismatch__ : The Amazon EC2 launch template version for your managed node group does not match the version that Amazon EKS created. You may be able to revert to the version that Amazon EKS created to recover.     * __IamInstanceProfileNotFound__ : We couldn't find the IAM instance profile for your managed node group. You may be able to recreate an instance profile with the same settings to recover.     * __IamNodeRoleNotFound__ : We couldn't find the IAM role for your managed node group. You may be able to recreate an IAM role with the same settings to recover.     * __AsgInstanceLaunchFailures__ : Your Auto Scaling group is experiencing failures while attempting to launch instances.     * __NodeCreationFailure__ : Your launched instances are unable to register with your Amazon EKS cluster. Common causes of this failure are insufficient <https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html worker node IAM role> permissions or lack of outbound internet access for the nodes.      * __InstanceLimitExceeded__ : Your AWS account is unable to launch any more instances of the specified instance type. You may be able to request an Amazon EC2 instance limit increase to recover.     * __InsufficientFreeAddresses__ : One or more of the subnets associated with your managed node group does not have enough available IP addresses for new nodes.     * __AccessDenied__ : Amazon EKS or one or more of your managed nodes is unable to communicate with your cluster API server.     * __InternalFailure__ : These errors are usually caused by an Amazon EKS server-side issue.
iCode :: Lens' Issue (Maybe NodegroupIssueCode)
iCode = lens _iCode (\ s a -> s{_iCode = a})

-- | The error message associated with the issue.
iMessage :: Lens' Issue (Maybe Text)
iMessage = lens _iMessage (\ s a -> s{_iMessage = a})

instance FromJSON Issue where
        parseJSON
          = withObject "Issue"
              (\ x ->
                 Issue' <$>
                   (x .:? "resourceIds" .!= mempty) <*> (x .:? "code")
                     <*> (x .:? "message"))

instance Hashable Issue where

instance NFData Issue where
