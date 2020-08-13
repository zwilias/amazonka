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
-- Module      : Network.AWS.EKS.CreateFargateProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Fargate profile for your Amazon EKS cluster. You must have at least one Fargate profile in a cluster to be able to run pods on Fargate.
--
--
-- The Fargate profile allows an administrator to declare which pods run on Fargate and specify which pods run on which Fargate profile. This declaration is done through the profile’s selectors. Each profile can have up to five selectors that contain a namespace and labels. A namespace is required for every selector. The label field consists of multiple optional key-value pairs. Pods that match the selectors are scheduled on Fargate. If a to-be-scheduled pod matches any of the selectors in the Fargate profile, then that pod is run on Fargate.
--
-- When you create a Fargate profile, you must specify a pod execution role to use with the pods that are scheduled with the profile. This role is added to the cluster's Kubernetes <https://kubernetes.io/docs/admin/authorization/rbac/ Role Based Access Control> (RBAC) for authorization so that the @kubelet@ that is running on the Fargate infrastructure can register with your Amazon EKS cluster so that it can appear in your cluster as a node. The pod execution role also provides IAM permissions to the Fargate infrastructure to allow read access to Amazon ECR image repositories. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html Pod Execution Role> in the /Amazon EKS User Guide/ .
--
-- Fargate profiles are immutable. However, you can create a new updated profile to replace an existing profile and then delete the original after the updated profile has finished creating.
--
-- If any Fargate profiles in a cluster are in the @DELETING@ status, you must wait for that Fargate profile to finish deleting before you can create any other profiles in that cluster.
--
-- For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html AWS Fargate Profile> in the /Amazon EKS User Guide/ .
--
module Network.AWS.EKS.CreateFargateProfile
    (
    -- * Creating a Request
      createFargateProfile
    , CreateFargateProfile
    -- * Request Lenses
    , cfpSubnets
    , cfpClientRequestToken
    , cfpSelectors
    , cfpTags
    , cfpFargateProfileName
    , cfpClusterName
    , cfpPodExecutionRoleARN

    -- * Destructuring the Response
    , createFargateProfileResponse
    , CreateFargateProfileResponse
    -- * Response Lenses
    , cfprsFargateProfile
    , cfprsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createFargateProfile' smart constructor.
data CreateFargateProfile = CreateFargateProfile'{_cfpSubnets
                                                  :: !(Maybe [Text]),
                                                  _cfpClientRequestToken ::
                                                  !(Maybe Text),
                                                  _cfpSelectors ::
                                                  !(Maybe
                                                      [FargateProfileSelector]),
                                                  _cfpTags ::
                                                  !(Maybe (Map Text Text)),
                                                  _cfpFargateProfileName ::
                                                  !Text,
                                                  _cfpClusterName :: !Text,
                                                  _cfpPodExecutionRoleARN ::
                                                  !Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFargateProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpSubnets' - The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with no direct route to an Internet Gateway) are accepted for this parameter.
--
-- * 'cfpClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cfpSelectors' - The selectors to match for pods to use this Fargate profile. Each selector must have an associated namespace. Optionally, you can also specify labels for a namespace. You may specify up to five selectors in a Fargate profile.
--
-- * 'cfpTags' - The metadata to apply to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.
--
-- * 'cfpFargateProfileName' - The name of the Fargate profile.
--
-- * 'cfpClusterName' - The name of the Amazon EKS cluster to apply the Fargate profile to.
--
-- * 'cfpPodExecutionRoleARN' - The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. The pod execution role allows Fargate infrastructure to register with your cluster as a node, and it provides read access to Amazon ECR image repositories. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html Pod Execution Role> in the /Amazon EKS User Guide/ .
createFargateProfile
    :: Text -- ^ 'cfpFargateProfileName'
    -> Text -- ^ 'cfpClusterName'
    -> Text -- ^ 'cfpPodExecutionRoleARN'
    -> CreateFargateProfile
createFargateProfile pFargateProfileName_
  pClusterName_ pPodExecutionRoleARN_
  = CreateFargateProfile'{_cfpSubnets = Nothing,
                          _cfpClientRequestToken = Nothing,
                          _cfpSelectors = Nothing, _cfpTags = Nothing,
                          _cfpFargateProfileName = pFargateProfileName_,
                          _cfpClusterName = pClusterName_,
                          _cfpPodExecutionRoleARN = pPodExecutionRoleARN_}

-- | The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with no direct route to an Internet Gateway) are accepted for this parameter.
cfpSubnets :: Lens' CreateFargateProfile [Text]
cfpSubnets = lens _cfpSubnets (\ s a -> s{_cfpSubnets = a}) . _Default . _Coerce

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cfpClientRequestToken :: Lens' CreateFargateProfile (Maybe Text)
cfpClientRequestToken = lens _cfpClientRequestToken (\ s a -> s{_cfpClientRequestToken = a})

-- | The selectors to match for pods to use this Fargate profile. Each selector must have an associated namespace. Optionally, you can also specify labels for a namespace. You may specify up to five selectors in a Fargate profile.
cfpSelectors :: Lens' CreateFargateProfile [FargateProfileSelector]
cfpSelectors = lens _cfpSelectors (\ s a -> s{_cfpSelectors = a}) . _Default . _Coerce

-- | The metadata to apply to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.
cfpTags :: Lens' CreateFargateProfile (HashMap Text Text)
cfpTags = lens _cfpTags (\ s a -> s{_cfpTags = a}) . _Default . _Map

-- | The name of the Fargate profile.
cfpFargateProfileName :: Lens' CreateFargateProfile Text
cfpFargateProfileName = lens _cfpFargateProfileName (\ s a -> s{_cfpFargateProfileName = a})

-- | The name of the Amazon EKS cluster to apply the Fargate profile to.
cfpClusterName :: Lens' CreateFargateProfile Text
cfpClusterName = lens _cfpClusterName (\ s a -> s{_cfpClusterName = a})

-- | The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. The pod execution role allows Fargate infrastructure to register with your cluster as a node, and it provides read access to Amazon ECR image repositories. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html Pod Execution Role> in the /Amazon EKS User Guide/ .
cfpPodExecutionRoleARN :: Lens' CreateFargateProfile Text
cfpPodExecutionRoleARN = lens _cfpPodExecutionRoleARN (\ s a -> s{_cfpPodExecutionRoleARN = a})

instance AWSRequest CreateFargateProfile where
        type Rs CreateFargateProfile =
             CreateFargateProfileResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 CreateFargateProfileResponse' <$>
                   (x .?> "fargateProfile") <*> (pure (fromEnum s)))

instance Hashable CreateFargateProfile where

instance NFData CreateFargateProfile where

instance ToHeaders CreateFargateProfile where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateFargateProfile where
        toJSON CreateFargateProfile'{..}
          = object
              (catMaybes
                 [("subnets" .=) <$> _cfpSubnets,
                  ("clientRequestToken" .=) <$> _cfpClientRequestToken,
                  ("selectors" .=) <$> _cfpSelectors,
                  ("tags" .=) <$> _cfpTags,
                  Just
                    ("fargateProfileName" .= _cfpFargateProfileName),
                  Just
                    ("podExecutionRoleArn" .= _cfpPodExecutionRoleARN)])

instance ToPath CreateFargateProfile where
        toPath CreateFargateProfile'{..}
          = mconcat
              ["/clusters/", toBS _cfpClusterName,
               "/fargate-profiles"]

instance ToQuery CreateFargateProfile where
        toQuery = const mempty

-- | /See:/ 'createFargateProfileResponse' smart constructor.
data CreateFargateProfileResponse = CreateFargateProfileResponse'{_cfprsFargateProfile
                                                                  ::
                                                                  !(Maybe
                                                                      FargateProfile),
                                                                  _cfprsResponseStatus
                                                                  :: !Int}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'CreateFargateProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfprsFargateProfile' - The full description of your new Fargate profile.
--
-- * 'cfprsResponseStatus' - -- | The response status code.
createFargateProfileResponse
    :: Int -- ^ 'cfprsResponseStatus'
    -> CreateFargateProfileResponse
createFargateProfileResponse pResponseStatus_
  = CreateFargateProfileResponse'{_cfprsFargateProfile
                                    = Nothing,
                                  _cfprsResponseStatus = pResponseStatus_}

-- | The full description of your new Fargate profile.
cfprsFargateProfile :: Lens' CreateFargateProfileResponse (Maybe FargateProfile)
cfprsFargateProfile = lens _cfprsFargateProfile (\ s a -> s{_cfprsFargateProfile = a})

-- | -- | The response status code.
cfprsResponseStatus :: Lens' CreateFargateProfileResponse Int
cfprsResponseStatus = lens _cfprsResponseStatus (\ s a -> s{_cfprsResponseStatus = a})

instance NFData CreateFargateProfileResponse where
