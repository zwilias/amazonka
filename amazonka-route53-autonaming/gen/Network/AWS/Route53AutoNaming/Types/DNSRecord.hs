{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.DNSRecord
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types.DNSRecord where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53AutoNaming.Types.RecordType

-- | A complex type that contains information about the records that you want Route 53 to create when you register an instance.
--
--
--
-- /See:/ 'dnsRecord' smart constructor.
data DNSRecord = DNSRecord'{_drType :: !RecordType,
                            _drTTL :: !Nat}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DNSRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drType' - The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries. Note the following:     * __A, AAAA, and SRV records: You can specify settings for a maximum of one A, one AAAA, and one SRV record. You can specify them in any combination.__      * __CNAME records:__ If you specify @CNAME@ for @Type@ , you can't define any other records. This is a limitation of DNS—you can't create a CNAME record and any other type of record that has the same name as a CNAME record.     * __Alias records:__ If you want Route 53 to create an alias record when you register an instance, specify @A@ or @AAAA@ for @Type@ .     * __All records:__ You specify settings other than @TTL@ and @Type@ when you register an instance. The following values are supported: __A__  Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44. __AAAA__  Route 53 returns the IP address of the resource in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345. __CNAME__  Route 53 returns the domain name of the resource, such as www.example.com. Note the following:     * You specify the domain name that you want to route traffic to when you register an instance. For more information, see 'RegisterInstanceRequest$Attributes' .     * You must specify @WEIGHTED@ for the value of @RoutingPolicy@ .     * You can't specify both @CNAME@ for @Type@ and settings for @HealthCheckConfig@ . If you do, the request will fail with an @InvalidInput@ error. __SRV__  Route 53 returns the value for an SRV record. The value for an SRV record uses the following values: @priority weight port service-hostname@  Note the following about the values:     * The values of @priority@ and @weight@ are both set to @1@ and can't be changed.      * The value of @port@ comes from the value that you specify for the @AWS_INSTANCE_PORT@ attribute when you submit a 'RegisterInstance' request.      * The value of @service-hostname@ is a concatenation of the following values:     * The value that you specify for @InstanceId@ when you register an instance.     * The name of the service.     * The name of the namespace.  For example, if the value of @InstanceId@ is @test@ , the name of the service is @backend@ , and the name of the namespace is @example.com@ , the value of @service-hostname@ is: @test.backend.example.com@  If you specify settings for an SRV record and if you specify values for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both in the @RegisterInstance@ request, Route 53 automatically creates @A@ and/or @AAAA@ records that have the same name as the value of @service-hostname@ in the SRV record. You can ignore these records.
--
-- * 'drTTL' - The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.
dnsRecord
    :: RecordType -- ^ 'drType'
    -> Natural -- ^ 'drTTL'
    -> DNSRecord
dnsRecord pType_ pTTL_
  = DNSRecord'{_drType = pType_, _drTTL = _Nat # pTTL_}

-- | The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries. Note the following:     * __A, AAAA, and SRV records: You can specify settings for a maximum of one A, one AAAA, and one SRV record. You can specify them in any combination.__      * __CNAME records:__ If you specify @CNAME@ for @Type@ , you can't define any other records. This is a limitation of DNS—you can't create a CNAME record and any other type of record that has the same name as a CNAME record.     * __Alias records:__ If you want Route 53 to create an alias record when you register an instance, specify @A@ or @AAAA@ for @Type@ .     * __All records:__ You specify settings other than @TTL@ and @Type@ when you register an instance. The following values are supported: __A__  Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44. __AAAA__  Route 53 returns the IP address of the resource in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345. __CNAME__  Route 53 returns the domain name of the resource, such as www.example.com. Note the following:     * You specify the domain name that you want to route traffic to when you register an instance. For more information, see 'RegisterInstanceRequest$Attributes' .     * You must specify @WEIGHTED@ for the value of @RoutingPolicy@ .     * You can't specify both @CNAME@ for @Type@ and settings for @HealthCheckConfig@ . If you do, the request will fail with an @InvalidInput@ error. __SRV__  Route 53 returns the value for an SRV record. The value for an SRV record uses the following values: @priority weight port service-hostname@  Note the following about the values:     * The values of @priority@ and @weight@ are both set to @1@ and can't be changed.      * The value of @port@ comes from the value that you specify for the @AWS_INSTANCE_PORT@ attribute when you submit a 'RegisterInstance' request.      * The value of @service-hostname@ is a concatenation of the following values:     * The value that you specify for @InstanceId@ when you register an instance.     * The name of the service.     * The name of the namespace.  For example, if the value of @InstanceId@ is @test@ , the name of the service is @backend@ , and the name of the namespace is @example.com@ , the value of @service-hostname@ is: @test.backend.example.com@  If you specify settings for an SRV record and if you specify values for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both in the @RegisterInstance@ request, Route 53 automatically creates @A@ and/or @AAAA@ records that have the same name as the value of @service-hostname@ in the SRV record. You can ignore these records.
drType :: Lens' DNSRecord RecordType
drType = lens _drType (\ s a -> s{_drType = a})

-- | The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.
drTTL :: Lens' DNSRecord Natural
drTTL = lens _drTTL (\ s a -> s{_drTTL = a}) . _Nat

instance FromJSON DNSRecord where
        parseJSON
          = withObject "DNSRecord"
              (\ x ->
                 DNSRecord' <$> (x .: "Type") <*> (x .: "TTL"))

instance Hashable DNSRecord where

instance NFData DNSRecord where

instance ToJSON DNSRecord where
        toJSON DNSRecord'{..}
          = object
              (catMaybes
                 [Just ("Type" .= _drType), Just ("TTL" .= _drTTL)])
