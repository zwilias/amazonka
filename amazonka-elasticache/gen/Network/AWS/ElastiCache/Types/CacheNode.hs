{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheNode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.CacheNode where

import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an individual cache node within a cluster. Each cache node runs its own instance of the cluster's protocol-compliant caching software - either Memcached or Redis.
--
--
-- The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.
--
--     * General purpose:
--
--     * Current generation: 
--
-- __T2 node types:__ @cache.t2.micro@ , @cache.t2.small@ , @cache.t2.medium@ 
--
-- __M3 node types:__ @cache.m3.medium@ , @cache.m3.large@ , @cache.m3.xlarge@ , @cache.m3.2xlarge@ 
--
-- __M4 node types:__ @cache.m4.large@ , @cache.m4.xlarge@ , @cache.m4.2xlarge@ , @cache.m4.4xlarge@ , @cache.m4.10xlarge@ 
--
--     * Previous generation: (not recommended)
--
-- __T1 node types:__ @cache.t1.micro@ 
--
-- __M1 node types:__ @cache.m1.small@ , @cache.m1.medium@ , @cache.m1.large@ , @cache.m1.xlarge@ 
--
--
--
--     * Compute optimized:
--
--     * Previous generation: (not recommended)
--
-- __C1 node types:__ @cache.c1.xlarge@ 
--
--
--
--     * Memory optimized:
--
--     * Current generation: 
--
-- __R3 node types:__ @cache.r3.large@ , @cache.r3.xlarge@ , @cache.r3.2xlarge@ , @cache.r3.4xlarge@ , @cache.r3.8xlarge@ 
--
--     * Previous generation: (not recommended)
--
-- __M2 node types:__ @cache.m2.xlarge@ , @cache.m2.2xlarge@ , @cache.m2.4xlarge@ 
--
--
--
--
--
-- __Notes:__ 
--
--     * All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).
--
--     * Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. 
--
--     * Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.
--
--     * Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.
--
--
--
-- For a complete listing of node types and specifications, see <http://aws.amazon.com/elasticache/details Amazon ElastiCache Product Features and Details> and either <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific Cache Node Type-Specific Parameters for Memcached> or <http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific Cache Node Type-Specific Parameters for Redis> .
--
--
-- /See:/ 'cacheNode' smart constructor.
data CacheNode = CacheNode'{_cnSourceCacheNodeId ::
                            !(Maybe Text),
                            _cnParameterGroupStatus :: !(Maybe Text),
                            _cnCacheNodeCreateTime :: !(Maybe ISO8601),
                            _cnCustomerAvailabilityZone :: !(Maybe Text),
                            _cnCacheNodeId :: !(Maybe Text),
                            _cnCacheNodeStatus :: !(Maybe Text),
                            _cnEndpoint :: !(Maybe Endpoint)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnSourceCacheNodeId' - The ID of the primary node to which this read replica node is synchronized. If this field is empty, this node is not associated with a primary cluster.
--
-- * 'cnParameterGroupStatus' - The status of the parameter group applied to this cache node.
--
-- * 'cnCacheNodeCreateTime' - The date and time when the cache node was created.
--
-- * 'cnCustomerAvailabilityZone' - The Availability Zone where this node was created and now resides.
--
-- * 'cnCacheNodeId' - The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The combination of cluster ID and node ID uniquely identifies every cache node used in a customer's AWS account.
--
-- * 'cnCacheNodeStatus' - The current state of this cache node.
--
-- * 'cnEndpoint' - The hostname for connecting to this cache node.
cacheNode
    :: CacheNode
cacheNode
  = CacheNode'{_cnSourceCacheNodeId = Nothing,
               _cnParameterGroupStatus = Nothing,
               _cnCacheNodeCreateTime = Nothing,
               _cnCustomerAvailabilityZone = Nothing,
               _cnCacheNodeId = Nothing,
               _cnCacheNodeStatus = Nothing, _cnEndpoint = Nothing}

-- | The ID of the primary node to which this read replica node is synchronized. If this field is empty, this node is not associated with a primary cluster.
cnSourceCacheNodeId :: Lens' CacheNode (Maybe Text)
cnSourceCacheNodeId = lens _cnSourceCacheNodeId (\ s a -> s{_cnSourceCacheNodeId = a})

-- | The status of the parameter group applied to this cache node.
cnParameterGroupStatus :: Lens' CacheNode (Maybe Text)
cnParameterGroupStatus = lens _cnParameterGroupStatus (\ s a -> s{_cnParameterGroupStatus = a})

-- | The date and time when the cache node was created.
cnCacheNodeCreateTime :: Lens' CacheNode (Maybe UTCTime)
cnCacheNodeCreateTime = lens _cnCacheNodeCreateTime (\ s a -> s{_cnCacheNodeCreateTime = a}) . mapping _Time

-- | The Availability Zone where this node was created and now resides.
cnCustomerAvailabilityZone :: Lens' CacheNode (Maybe Text)
cnCustomerAvailabilityZone = lens _cnCustomerAvailabilityZone (\ s a -> s{_cnCustomerAvailabilityZone = a})

-- | The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The combination of cluster ID and node ID uniquely identifies every cache node used in a customer's AWS account.
cnCacheNodeId :: Lens' CacheNode (Maybe Text)
cnCacheNodeId = lens _cnCacheNodeId (\ s a -> s{_cnCacheNodeId = a})

-- | The current state of this cache node.
cnCacheNodeStatus :: Lens' CacheNode (Maybe Text)
cnCacheNodeStatus = lens _cnCacheNodeStatus (\ s a -> s{_cnCacheNodeStatus = a})

-- | The hostname for connecting to this cache node.
cnEndpoint :: Lens' CacheNode (Maybe Endpoint)
cnEndpoint = lens _cnEndpoint (\ s a -> s{_cnEndpoint = a})

instance FromXML CacheNode where
        parseXML x
          = CacheNode' <$>
              (x .@? "SourceCacheNodeId") <*>
                (x .@? "ParameterGroupStatus")
                <*> (x .@? "CacheNodeCreateTime")
                <*> (x .@? "CustomerAvailabilityZone")
                <*> (x .@? "CacheNodeId")
                <*> (x .@? "CacheNodeStatus")
                <*> (x .@? "Endpoint")

instance Hashable CacheNode where

instance NFData CacheNode where
