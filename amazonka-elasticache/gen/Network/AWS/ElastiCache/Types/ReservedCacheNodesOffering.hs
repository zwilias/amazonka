{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ReservedCacheNodesOffering
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.ReservedCacheNodesOffering where

import Network.AWS.ElastiCache.Types.RecurringCharge
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes all of the attributes of a reserved cache node offering.
--
--
--
-- /See:/ 'reservedCacheNodesOffering' smart constructor.
data ReservedCacheNodesOffering = ReservedCacheNodesOffering'{_rcnoCacheNodeType
                                                              :: !(Maybe Text),
                                                              _rcnoProductDescription
                                                              :: !(Maybe Text),
                                                              _rcnoRecurringCharges
                                                              ::
                                                              !(Maybe
                                                                  [RecurringCharge]),
                                                              _rcnoOfferingType
                                                              :: !(Maybe Text),
                                                              _rcnoUsagePrice ::
                                                              !(Maybe Double),
                                                              _rcnoFixedPrice ::
                                                              !(Maybe Double),
                                                              _rcnoDuration ::
                                                              !(Maybe Int),
                                                              _rcnoReservedCacheNodesOfferingId
                                                              :: !(Maybe Text)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'ReservedCacheNodesOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcnoCacheNodeType' - The cache node type for the reserved cache node. The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.     * General purpose:     * Current generation:  __T2 node types:__ @cache.t2.micro@ , @cache.t2.small@ , @cache.t2.medium@  __M3 node types:__ @cache.m3.medium@ , @cache.m3.large@ , @cache.m3.xlarge@ , @cache.m3.2xlarge@  __M4 node types:__ @cache.m4.large@ , @cache.m4.xlarge@ , @cache.m4.2xlarge@ , @cache.m4.4xlarge@ , @cache.m4.10xlarge@      * Previous generation: (not recommended) __T1 node types:__ @cache.t1.micro@  __M1 node types:__ @cache.m1.small@ , @cache.m1.medium@ , @cache.m1.large@ , @cache.m1.xlarge@      * Compute optimized:     * Previous generation: (not recommended) __C1 node types:__ @cache.c1.xlarge@      * Memory optimized:     * Current generation:  __R3 node types:__ @cache.r3.large@ , @cache.r3.xlarge@ , @cache.r3.2xlarge@ , @cache.r3.4xlarge@ , @cache.r3.8xlarge@      * Previous generation: (not recommended) __M2 node types:__ @cache.m2.xlarge@ , @cache.m2.2xlarge@ , @cache.m2.4xlarge@  __Notes:__      * All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).     * Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.      * Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.     * Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances. For a complete listing of node types and specifications, see <http://aws.amazon.com/elasticache/details Amazon ElastiCache Product Features and Details> and either <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific Cache Node Type-Specific Parameters for Memcached> or <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific Cache Node Type-Specific Parameters for Redis> .
--
-- * 'rcnoProductDescription' - The cache engine used by the offering.
--
-- * 'rcnoRecurringCharges' - The recurring price charged to run this reserved cache node.
--
-- * 'rcnoOfferingType' - The offering type.
--
-- * 'rcnoUsagePrice' - The hourly price charged for this offering.
--
-- * 'rcnoFixedPrice' - The fixed price charged for this offering.
--
-- * 'rcnoDuration' - The duration of the offering. in seconds.
--
-- * 'rcnoReservedCacheNodesOfferingId' - A unique identifier for the reserved cache node offering.
reservedCacheNodesOffering
    :: ReservedCacheNodesOffering
reservedCacheNodesOffering
  = ReservedCacheNodesOffering'{_rcnoCacheNodeType =
                                  Nothing,
                                _rcnoProductDescription = Nothing,
                                _rcnoRecurringCharges = Nothing,
                                _rcnoOfferingType = Nothing,
                                _rcnoUsagePrice = Nothing,
                                _rcnoFixedPrice = Nothing,
                                _rcnoDuration = Nothing,
                                _rcnoReservedCacheNodesOfferingId = Nothing}

-- | The cache node type for the reserved cache node. The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.     * General purpose:     * Current generation:  __T2 node types:__ @cache.t2.micro@ , @cache.t2.small@ , @cache.t2.medium@  __M3 node types:__ @cache.m3.medium@ , @cache.m3.large@ , @cache.m3.xlarge@ , @cache.m3.2xlarge@  __M4 node types:__ @cache.m4.large@ , @cache.m4.xlarge@ , @cache.m4.2xlarge@ , @cache.m4.4xlarge@ , @cache.m4.10xlarge@      * Previous generation: (not recommended) __T1 node types:__ @cache.t1.micro@  __M1 node types:__ @cache.m1.small@ , @cache.m1.medium@ , @cache.m1.large@ , @cache.m1.xlarge@      * Compute optimized:     * Previous generation: (not recommended) __C1 node types:__ @cache.c1.xlarge@      * Memory optimized:     * Current generation:  __R3 node types:__ @cache.r3.large@ , @cache.r3.xlarge@ , @cache.r3.2xlarge@ , @cache.r3.4xlarge@ , @cache.r3.8xlarge@      * Previous generation: (not recommended) __M2 node types:__ @cache.m2.xlarge@ , @cache.m2.2xlarge@ , @cache.m2.4xlarge@  __Notes:__      * All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).     * Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.      * Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.     * Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances. For a complete listing of node types and specifications, see <http://aws.amazon.com/elasticache/details Amazon ElastiCache Product Features and Details> and either <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific Cache Node Type-Specific Parameters for Memcached> or <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific Cache Node Type-Specific Parameters for Redis> .
rcnoCacheNodeType :: Lens' ReservedCacheNodesOffering (Maybe Text)
rcnoCacheNodeType = lens _rcnoCacheNodeType (\ s a -> s{_rcnoCacheNodeType = a})

-- | The cache engine used by the offering.
rcnoProductDescription :: Lens' ReservedCacheNodesOffering (Maybe Text)
rcnoProductDescription = lens _rcnoProductDescription (\ s a -> s{_rcnoProductDescription = a})

-- | The recurring price charged to run this reserved cache node.
rcnoRecurringCharges :: Lens' ReservedCacheNodesOffering [RecurringCharge]
rcnoRecurringCharges = lens _rcnoRecurringCharges (\ s a -> s{_rcnoRecurringCharges = a}) . _Default . _Coerce

-- | The offering type.
rcnoOfferingType :: Lens' ReservedCacheNodesOffering (Maybe Text)
rcnoOfferingType = lens _rcnoOfferingType (\ s a -> s{_rcnoOfferingType = a})

-- | The hourly price charged for this offering.
rcnoUsagePrice :: Lens' ReservedCacheNodesOffering (Maybe Double)
rcnoUsagePrice = lens _rcnoUsagePrice (\ s a -> s{_rcnoUsagePrice = a})

-- | The fixed price charged for this offering.
rcnoFixedPrice :: Lens' ReservedCacheNodesOffering (Maybe Double)
rcnoFixedPrice = lens _rcnoFixedPrice (\ s a -> s{_rcnoFixedPrice = a})

-- | The duration of the offering. in seconds.
rcnoDuration :: Lens' ReservedCacheNodesOffering (Maybe Int)
rcnoDuration = lens _rcnoDuration (\ s a -> s{_rcnoDuration = a})

-- | A unique identifier for the reserved cache node offering.
rcnoReservedCacheNodesOfferingId :: Lens' ReservedCacheNodesOffering (Maybe Text)
rcnoReservedCacheNodesOfferingId = lens _rcnoReservedCacheNodesOfferingId (\ s a -> s{_rcnoReservedCacheNodesOfferingId = a})

instance FromXML ReservedCacheNodesOffering where
        parseXML x
          = ReservedCacheNodesOffering' <$>
              (x .@? "CacheNodeType") <*>
                (x .@? "ProductDescription")
                <*>
                (x .@? "RecurringCharges" .!@ mempty >>=
                   may (parseXMLList "RecurringCharge"))
                <*> (x .@? "OfferingType")
                <*> (x .@? "UsagePrice")
                <*> (x .@? "FixedPrice")
                <*> (x .@? "Duration")
                <*> (x .@? "ReservedCacheNodesOfferingId")

instance Hashable ReservedCacheNodesOffering where

instance NFData ReservedCacheNodesOffering where
