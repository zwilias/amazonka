{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.PolicySummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.PolicySummary where

import Network.AWS.FMS.Types.SecurityServiceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details of the AWS Firewall Manager policy. 
--
--
--
-- /See:/ 'policySummary' smart constructor.
data PolicySummary = PolicySummary'{_psPolicyName ::
                                    !(Maybe Text),
                                    _psRemediationEnabled :: !(Maybe Bool),
                                    _psResourceType :: !(Maybe Text),
                                    _psPolicyId :: !(Maybe Text),
                                    _psPolicyARN :: !(Maybe Text),
                                    _psSecurityServiceType ::
                                    !(Maybe SecurityServiceType)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicySummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psPolicyName' - The friendly name of the specified policy.
--
-- * 'psRemediationEnabled' - Indicates if the policy should be automatically applied to new resources.
--
-- * 'psResourceType' - The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> . Valid values are @AWS::ElasticLoadBalancingV2::LoadBalancer@ or @AWS::CloudFront::Distribution@ .
--
-- * 'psPolicyId' - The ID of the specified policy.
--
-- * 'psPolicyARN' - The Amazon Resource Name (ARN) of the specified policy.
--
-- * 'psSecurityServiceType' - The service that the policy is using to protect the resources. This value is @WAF@ .
policySummary
    :: PolicySummary
policySummary
  = PolicySummary'{_psPolicyName = Nothing,
                   _psRemediationEnabled = Nothing,
                   _psResourceType = Nothing, _psPolicyId = Nothing,
                   _psPolicyARN = Nothing,
                   _psSecurityServiceType = Nothing}

-- | The friendly name of the specified policy.
psPolicyName :: Lens' PolicySummary (Maybe Text)
psPolicyName = lens _psPolicyName (\ s a -> s{_psPolicyName = a})

-- | Indicates if the policy should be automatically applied to new resources.
psRemediationEnabled :: Lens' PolicySummary (Maybe Bool)
psRemediationEnabled = lens _psRemediationEnabled (\ s a -> s{_psRemediationEnabled = a})

-- | The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> . Valid values are @AWS::ElasticLoadBalancingV2::LoadBalancer@ or @AWS::CloudFront::Distribution@ .
psResourceType :: Lens' PolicySummary (Maybe Text)
psResourceType = lens _psResourceType (\ s a -> s{_psResourceType = a})

-- | The ID of the specified policy.
psPolicyId :: Lens' PolicySummary (Maybe Text)
psPolicyId = lens _psPolicyId (\ s a -> s{_psPolicyId = a})

-- | The Amazon Resource Name (ARN) of the specified policy.
psPolicyARN :: Lens' PolicySummary (Maybe Text)
psPolicyARN = lens _psPolicyARN (\ s a -> s{_psPolicyARN = a})

-- | The service that the policy is using to protect the resources. This value is @WAF@ .
psSecurityServiceType :: Lens' PolicySummary (Maybe SecurityServiceType)
psSecurityServiceType = lens _psSecurityServiceType (\ s a -> s{_psSecurityServiceType = a})

instance FromJSON PolicySummary where
        parseJSON
          = withObject "PolicySummary"
              (\ x ->
                 PolicySummary' <$>
                   (x .:? "PolicyName") <*> (x .:? "RemediationEnabled")
                     <*> (x .:? "ResourceType")
                     <*> (x .:? "PolicyId")
                     <*> (x .:? "PolicyArn")
                     <*> (x .:? "SecurityServiceType"))

instance Hashable PolicySummary where

instance NFData PolicySummary where
