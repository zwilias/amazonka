{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.PendingModifiedValues
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.PendingModifiedValues where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.
--
--
--
-- /See:/ 'pendingModifiedValues' smart constructor.
data PendingModifiedValues = PendingModifiedValues'{_pmvEnhancedVPCRouting
                                                    :: !(Maybe Bool),
                                                    _pmvMasterUserPassword ::
                                                    !(Maybe Text),
                                                    _pmvPubliclyAccessible ::
                                                    !(Maybe Bool),
                                                    _pmvAutomatedSnapshotRetentionPeriod
                                                    :: !(Maybe Int),
                                                    _pmvClusterIdentifier ::
                                                    !(Maybe Text),
                                                    _pmvNumberOfNodes ::
                                                    !(Maybe Int),
                                                    _pmvClusterType ::
                                                    !(Maybe Text),
                                                    _pmvClusterVersion ::
                                                    !(Maybe Text),
                                                    _pmvNodeType ::
                                                    !(Maybe Text)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'PendingModifiedValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvEnhancedVPCRouting' - An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
--
-- * 'pmvMasterUserPassword' - The pending or in-progress change of the master user password for the cluster.
--
-- * 'pmvPubliclyAccessible' - The pending or in-progress change of the ability to connect to the cluster from the public network.
--
-- * 'pmvAutomatedSnapshotRetentionPeriod' - The pending or in-progress change of the automated snapshot retention period.
--
-- * 'pmvClusterIdentifier' - The pending or in-progress change of the new identifier for the cluster.
--
-- * 'pmvNumberOfNodes' - The pending or in-progress change of the number of nodes in the cluster.
--
-- * 'pmvClusterType' - The pending or in-progress change of the cluster type.
--
-- * 'pmvClusterVersion' - The pending or in-progress change of the service version.
--
-- * 'pmvNodeType' - The pending or in-progress change of the cluster's node type.
pendingModifiedValues
    :: PendingModifiedValues
pendingModifiedValues
  = PendingModifiedValues'{_pmvEnhancedVPCRouting =
                             Nothing,
                           _pmvMasterUserPassword = Nothing,
                           _pmvPubliclyAccessible = Nothing,
                           _pmvAutomatedSnapshotRetentionPeriod = Nothing,
                           _pmvClusterIdentifier = Nothing,
                           _pmvNumberOfNodes = Nothing,
                           _pmvClusterType = Nothing,
                           _pmvClusterVersion = Nothing, _pmvNodeType = Nothing}

-- | An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
pmvEnhancedVPCRouting :: Lens' PendingModifiedValues (Maybe Bool)
pmvEnhancedVPCRouting = lens _pmvEnhancedVPCRouting (\ s a -> s{_pmvEnhancedVPCRouting = a})

-- | The pending or in-progress change of the master user password for the cluster.
pmvMasterUserPassword :: Lens' PendingModifiedValues (Maybe Text)
pmvMasterUserPassword = lens _pmvMasterUserPassword (\ s a -> s{_pmvMasterUserPassword = a})

-- | The pending or in-progress change of the ability to connect to the cluster from the public network.
pmvPubliclyAccessible :: Lens' PendingModifiedValues (Maybe Bool)
pmvPubliclyAccessible = lens _pmvPubliclyAccessible (\ s a -> s{_pmvPubliclyAccessible = a})

-- | The pending or in-progress change of the automated snapshot retention period.
pmvAutomatedSnapshotRetentionPeriod :: Lens' PendingModifiedValues (Maybe Int)
pmvAutomatedSnapshotRetentionPeriod = lens _pmvAutomatedSnapshotRetentionPeriod (\ s a -> s{_pmvAutomatedSnapshotRetentionPeriod = a})

-- | The pending or in-progress change of the new identifier for the cluster.
pmvClusterIdentifier :: Lens' PendingModifiedValues (Maybe Text)
pmvClusterIdentifier = lens _pmvClusterIdentifier (\ s a -> s{_pmvClusterIdentifier = a})

-- | The pending or in-progress change of the number of nodes in the cluster.
pmvNumberOfNodes :: Lens' PendingModifiedValues (Maybe Int)
pmvNumberOfNodes = lens _pmvNumberOfNodes (\ s a -> s{_pmvNumberOfNodes = a})

-- | The pending or in-progress change of the cluster type.
pmvClusterType :: Lens' PendingModifiedValues (Maybe Text)
pmvClusterType = lens _pmvClusterType (\ s a -> s{_pmvClusterType = a})

-- | The pending or in-progress change of the service version.
pmvClusterVersion :: Lens' PendingModifiedValues (Maybe Text)
pmvClusterVersion = lens _pmvClusterVersion (\ s a -> s{_pmvClusterVersion = a})

-- | The pending or in-progress change of the cluster's node type.
pmvNodeType :: Lens' PendingModifiedValues (Maybe Text)
pmvNodeType = lens _pmvNodeType (\ s a -> s{_pmvNodeType = a})

instance FromXML PendingModifiedValues where
        parseXML x
          = PendingModifiedValues' <$>
              (x .@? "EnhancedVpcRouting") <*>
                (x .@? "MasterUserPassword")
                <*> (x .@? "PubliclyAccessible")
                <*> (x .@? "AutomatedSnapshotRetentionPeriod")
                <*> (x .@? "ClusterIdentifier")
                <*> (x .@? "NumberOfNodes")
                <*> (x .@? "ClusterType")
                <*> (x .@? "ClusterVersion")
                <*> (x .@? "NodeType")

instance Hashable PendingModifiedValues where

instance NFData PendingModifiedValues where
