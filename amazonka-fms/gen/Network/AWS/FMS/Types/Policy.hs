{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.Policy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.Policy where

import Network.AWS.FMS.Types.ResourceTag
import Network.AWS.FMS.Types.SecurityServicePolicyData
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An AWS Firewall Manager policy.
--
--
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'{_pPolicyId :: !(Maybe Text),
                      _pResourceTags :: !(Maybe [ResourceTag]),
                      _pPolicyUpdateToken :: !(Maybe Text),
                      _pPolicyName :: !Text,
                      _pSecurityServicePolicyData ::
                      !SecurityServicePolicyData,
                      _pResourceType :: !Text,
                      _pExcludeResourceTags :: !Bool,
                      _pRemediationEnabled :: !Bool}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPolicyId' - The ID of the AWS Firewall Manager policy.
--
-- * 'pResourceTags' - An array of @ResourceTag@ objects.
--
-- * 'pPolicyUpdateToken' - A unique identifier for each update to the policy. When issuing a @PutPolicy@ request, the @PolicyUpdateToken@ in the request must match the @PolicyUpdateToken@ of the current policy version. To get the @PolicyUpdateToken@ of the current policy version, use a @GetPolicy@ request.
--
-- * 'pPolicyName' - The friendly name of the AWS Firewall Manager policy.
--
-- * 'pSecurityServicePolicyData' - Details about the security service that is being used to protect the resources.
--
-- * 'pResourceType' - The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> . Valid values are @AWS::ElasticLoadBalancingV2::LoadBalancer@ or @AWS::CloudFront::Distribution@ .
--
-- * 'pExcludeResourceTags' - If set to @True@ , resources with the tags that are specified in the @ResourceTag@ array are not protected by the policy. If set to @False@ , and the @ResourceTag@ array is not null, only resources with the specified tags are associated with the policy.
--
-- * 'pRemediationEnabled' - Indicates if the policy should be automatically applied to new resources.
policy
    :: Text -- ^ 'pPolicyName'
    -> SecurityServicePolicyData -- ^ 'pSecurityServicePolicyData'
    -> Text -- ^ 'pResourceType'
    -> Bool -- ^ 'pExcludeResourceTags'
    -> Bool -- ^ 'pRemediationEnabled'
    -> Policy
policy pPolicyName_ pSecurityServicePolicyData_
  pResourceType_ pExcludeResourceTags_
  pRemediationEnabled_
  = Policy'{_pPolicyId = Nothing,
            _pResourceTags = Nothing,
            _pPolicyUpdateToken = Nothing,
            _pPolicyName = pPolicyName_,
            _pSecurityServicePolicyData =
              pSecurityServicePolicyData_,
            _pResourceType = pResourceType_,
            _pExcludeResourceTags = pExcludeResourceTags_,
            _pRemediationEnabled = pRemediationEnabled_}

-- | The ID of the AWS Firewall Manager policy.
pPolicyId :: Lens' Policy (Maybe Text)
pPolicyId = lens _pPolicyId (\ s a -> s{_pPolicyId = a})

-- | An array of @ResourceTag@ objects.
pResourceTags :: Lens' Policy [ResourceTag]
pResourceTags = lens _pResourceTags (\ s a -> s{_pResourceTags = a}) . _Default . _Coerce

-- | A unique identifier for each update to the policy. When issuing a @PutPolicy@ request, the @PolicyUpdateToken@ in the request must match the @PolicyUpdateToken@ of the current policy version. To get the @PolicyUpdateToken@ of the current policy version, use a @GetPolicy@ request.
pPolicyUpdateToken :: Lens' Policy (Maybe Text)
pPolicyUpdateToken = lens _pPolicyUpdateToken (\ s a -> s{_pPolicyUpdateToken = a})

-- | The friendly name of the AWS Firewall Manager policy.
pPolicyName :: Lens' Policy Text
pPolicyName = lens _pPolicyName (\ s a -> s{_pPolicyName = a})

-- | Details about the security service that is being used to protect the resources.
pSecurityServicePolicyData :: Lens' Policy SecurityServicePolicyData
pSecurityServicePolicyData = lens _pSecurityServicePolicyData (\ s a -> s{_pSecurityServicePolicyData = a})

-- | The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> . Valid values are @AWS::ElasticLoadBalancingV2::LoadBalancer@ or @AWS::CloudFront::Distribution@ .
pResourceType :: Lens' Policy Text
pResourceType = lens _pResourceType (\ s a -> s{_pResourceType = a})

-- | If set to @True@ , resources with the tags that are specified in the @ResourceTag@ array are not protected by the policy. If set to @False@ , and the @ResourceTag@ array is not null, only resources with the specified tags are associated with the policy.
pExcludeResourceTags :: Lens' Policy Bool
pExcludeResourceTags = lens _pExcludeResourceTags (\ s a -> s{_pExcludeResourceTags = a})

-- | Indicates if the policy should be automatically applied to new resources.
pRemediationEnabled :: Lens' Policy Bool
pRemediationEnabled = lens _pRemediationEnabled (\ s a -> s{_pRemediationEnabled = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ x ->
                 Policy' <$>
                   (x .:? "PolicyId") <*>
                     (x .:? "ResourceTags" .!= mempty)
                     <*> (x .:? "PolicyUpdateToken")
                     <*> (x .: "PolicyName")
                     <*> (x .: "SecurityServicePolicyData")
                     <*> (x .: "ResourceType")
                     <*> (x .: "ExcludeResourceTags")
                     <*> (x .: "RemediationEnabled"))

instance Hashable Policy where

instance NFData Policy where

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("PolicyId" .=) <$> _pPolicyId,
                  ("ResourceTags" .=) <$> _pResourceTags,
                  ("PolicyUpdateToken" .=) <$> _pPolicyUpdateToken,
                  Just ("PolicyName" .= _pPolicyName),
                  Just
                    ("SecurityServicePolicyData" .=
                       _pSecurityServicePolicyData),
                  Just ("ResourceType" .= _pResourceType),
                  Just
                    ("ExcludeResourceTags" .= _pExcludeResourceTags),
                  Just ("RemediationEnabled" .= _pRemediationEnabled)])
