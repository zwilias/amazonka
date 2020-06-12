{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.SecurityServicePolicyData
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.SecurityServicePolicyData where

import Network.AWS.FMS.Types.SecurityServiceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the security service that is being used to protect the resources.
--
--
--
-- /See:/ 'securityServicePolicyData' smart constructor.
data SecurityServicePolicyData = SecurityServicePolicyData'{_sspdManagedServiceData
                                                            :: !(Maybe Text),
                                                            _sspdType ::
                                                            !SecurityServiceType}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'SecurityServicePolicyData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sspdManagedServiceData' - Details about the service. This contains @WAF@ data in JSON format, as shown in the following example: @ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\": \"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}@ 
--
-- * 'sspdType' - The service that the policy is using to protect the resources. This value is @WAF@ .
securityServicePolicyData
    :: SecurityServiceType -- ^ 'sspdType'
    -> SecurityServicePolicyData
securityServicePolicyData pType_
  = SecurityServicePolicyData'{_sspdManagedServiceData
                                 = Nothing,
                               _sspdType = pType_}

-- | Details about the service. This contains @WAF@ data in JSON format, as shown in the following example: @ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\": \"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}@ 
sspdManagedServiceData :: Lens' SecurityServicePolicyData (Maybe Text)
sspdManagedServiceData = lens _sspdManagedServiceData (\ s a -> s{_sspdManagedServiceData = a})

-- | The service that the policy is using to protect the resources. This value is @WAF@ .
sspdType :: Lens' SecurityServicePolicyData SecurityServiceType
sspdType = lens _sspdType (\ s a -> s{_sspdType = a})

instance FromJSON SecurityServicePolicyData where
        parseJSON
          = withObject "SecurityServicePolicyData"
              (\ x ->
                 SecurityServicePolicyData' <$>
                   (x .:? "ManagedServiceData") <*> (x .: "Type"))

instance Hashable SecurityServicePolicyData where

instance NFData SecurityServicePolicyData where

instance ToJSON SecurityServicePolicyData where
        toJSON SecurityServicePolicyData'{..}
          = object
              (catMaybes
                 [("ManagedServiceData" .=) <$>
                    _sspdManagedServiceData,
                  Just ("Type" .= _sspdType)])
