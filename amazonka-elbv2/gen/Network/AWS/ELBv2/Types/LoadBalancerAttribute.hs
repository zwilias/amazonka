{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerAttribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.LoadBalancerAttribute where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a load balancer attribute.
--
--
--
-- /See:/ 'loadBalancerAttribute' smart constructor.
data LoadBalancerAttribute = LoadBalancerAttribute'{_lbaValue
                                                    :: !(Maybe Text),
                                                    _lbaKey :: !(Maybe Text)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'LoadBalancerAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbaValue' - The value of the attribute.
--
-- * 'lbaKey' - The name of the attribute.     * @access_logs.s3.enabled@ - [Application Load Balancers] Indicates whether access logs stored in Amazon S3 are enabled. The value is @true@ or @false@ .     * @access_logs.s3.bucket@ - [Application Load Balancers] The name of the S3 bucket for the access logs. This attribute is required if access logs in Amazon S3 are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.     * @access_logs.s3.prefix@ - [Application Load Balancers] The prefix for the location in the S3 bucket. If you don't specify a prefix, the access logs are stored in the root of the bucket.     * @deletion_protection.enabled@ - Indicates whether deletion protection is enabled. The value is @true@ or @false@ .     * @idle_timeout.timeout_seconds@ - [Application Load Balancers] The idle timeout value, in seconds. The valid range is 1-4000. The default is 60 seconds.     * @load_balancing.cross_zone.enabled@ - [Network Load Balancers] Indicates whether cross-zone load balancing is enabled. The value is @true@ or @false@ . The default is @false@ .     * @routing.http2.enabled@ - [Application Load Balancers] Indicates whether HTTP/2 is enabled. The value is @true@ or @false@ . The default is @true@ .
loadBalancerAttribute
    :: LoadBalancerAttribute
loadBalancerAttribute
  = LoadBalancerAttribute'{_lbaValue = Nothing,
                           _lbaKey = Nothing}

-- | The value of the attribute.
lbaValue :: Lens' LoadBalancerAttribute (Maybe Text)
lbaValue = lens _lbaValue (\ s a -> s{_lbaValue = a})

-- | The name of the attribute.     * @access_logs.s3.enabled@ - [Application Load Balancers] Indicates whether access logs stored in Amazon S3 are enabled. The value is @true@ or @false@ .     * @access_logs.s3.bucket@ - [Application Load Balancers] The name of the S3 bucket for the access logs. This attribute is required if access logs in Amazon S3 are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.     * @access_logs.s3.prefix@ - [Application Load Balancers] The prefix for the location in the S3 bucket. If you don't specify a prefix, the access logs are stored in the root of the bucket.     * @deletion_protection.enabled@ - Indicates whether deletion protection is enabled. The value is @true@ or @false@ .     * @idle_timeout.timeout_seconds@ - [Application Load Balancers] The idle timeout value, in seconds. The valid range is 1-4000. The default is 60 seconds.     * @load_balancing.cross_zone.enabled@ - [Network Load Balancers] Indicates whether cross-zone load balancing is enabled. The value is @true@ or @false@ . The default is @false@ .     * @routing.http2.enabled@ - [Application Load Balancers] Indicates whether HTTP/2 is enabled. The value is @true@ or @false@ . The default is @true@ .
lbaKey :: Lens' LoadBalancerAttribute (Maybe Text)
lbaKey = lens _lbaKey (\ s a -> s{_lbaKey = a})

instance FromXML LoadBalancerAttribute where
        parseXML x
          = LoadBalancerAttribute' <$>
              (x .@? "Value") <*> (x .@? "Key")

instance Hashable LoadBalancerAttribute where

instance NFData LoadBalancerAttribute where

instance ToQuery LoadBalancerAttribute where
        toQuery LoadBalancerAttribute'{..}
          = mconcat ["Value" =: _lbaValue, "Key" =: _lbaKey]
