{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBCluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.RDS.Types.DBCluster where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.DBClusterMember
import Network.AWS.RDS.Types.DBClusterOptionGroupStatus
import Network.AWS.RDS.Types.DBClusterRole
import Network.AWS.RDS.Types.VPCSecurityGroupMembership

-- | Contains the details of an Amazon RDS DB cluster. 
--
--
-- This data type is used as a response element in the 'DescribeDBClusters' action. 
--
--
-- /See:/ 'dbCluster' smart constructor.
data DBCluster = DBCluster'{_dcBacktrackConsumedChangeRecords
                            :: !(Maybe Integer),
                            _dcEngineVersion :: !(Maybe Text),
                            _dcStatus :: !(Maybe Text),
                            _dcStorageEncrypted :: !(Maybe Bool),
                            _dcDBClusterIdentifier :: !(Maybe Text),
                            _dcDBClusterMembers :: !(Maybe [DBClusterMember]),
                            _dcReadReplicaIdentifiers :: !(Maybe [Text]),
                            _dcReplicationSourceIdentifier :: !(Maybe Text),
                            _dcHostedZoneId :: !(Maybe Text),
                            _dcDBClusterParameterGroup :: !(Maybe Text),
                            _dcMasterUsername :: !(Maybe Text),
                            _dcIAMDatabaseAuthenticationEnabled ::
                            !(Maybe Bool),
                            _dcEarliestBacktrackTime :: !(Maybe ISO8601),
                            _dcBacktrackWindow :: !(Maybe Integer),
                            _dcDBClusterResourceId :: !(Maybe Text),
                            _dcEarliestRestorableTime :: !(Maybe ISO8601),
                            _dcEngine :: !(Maybe Text),
                            _dcDBClusterARN :: !(Maybe Text),
                            _dcCloneGroupId :: !(Maybe Text),
                            _dcLatestRestorableTime :: !(Maybe ISO8601),
                            _dcPreferredMaintenanceWindow :: !(Maybe Text),
                            _dcAvailabilityZones :: !(Maybe [Text]),
                            _dcCharacterSetName :: !(Maybe Text),
                            _dcKMSKeyId :: !(Maybe Text),
                            _dcPreferredBackupWindow :: !(Maybe Text),
                            _dcAssociatedRoles :: !(Maybe [DBClusterRole]),
                            _dcVPCSecurityGroups ::
                            !(Maybe [VPCSecurityGroupMembership]),
                            _dcBackupRetentionPeriod :: !(Maybe Int),
                            _dcDBSubnetGroup :: !(Maybe Text),
                            _dcDatabaseName :: !(Maybe Text),
                            _dcMultiAZ :: !(Maybe Bool),
                            _dcAllocatedStorage :: !(Maybe Int),
                            _dcClusterCreateTime :: !(Maybe ISO8601),
                            _dcEndpoint :: !(Maybe Text),
                            _dcPercentProgress :: !(Maybe Text),
                            _dcReaderEndpoint :: !(Maybe Text),
                            _dcPort :: !(Maybe Int),
                            _dcDBClusterOptionGroupMemberships ::
                            !(Maybe [DBClusterOptionGroupStatus])}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcBacktrackConsumedChangeRecords' - The number of change records stored for Backtrack.
--
-- * 'dcEngineVersion' - Indicates the database engine version.
--
-- * 'dcStatus' - Specifies the current state of this DB cluster.
--
-- * 'dcStorageEncrypted' - Specifies whether the DB cluster is encrypted.
--
-- * 'dcDBClusterIdentifier' - Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
--
-- * 'dcDBClusterMembers' - Provides the list of instances that make up the DB cluster.
--
-- * 'dcReadReplicaIdentifiers' - Contains one or more identifiers of the Read Replicas associated with this DB cluster.
--
-- * 'dcReplicationSourceIdentifier' - Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.
--
-- * 'dcHostedZoneId' - Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
--
-- * 'dcDBClusterParameterGroup' - Specifies the name of the DB cluster parameter group for the DB cluster.
--
-- * 'dcMasterUsername' - Contains the master username for the DB cluster.
--
-- * 'dcIAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
--
-- * 'dcEarliestBacktrackTime' - The earliest time to which a DB cluster can be backtracked.
--
-- * 'dcBacktrackWindow' - The target backtrack window, in seconds. If this value is set to 0, backtracking is disabled for the DB cluster. Otherwise, backtracking is enabled.
--
-- * 'dcDBClusterResourceId' - The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
--
-- * 'dcEarliestRestorableTime' - The earliest time to which a database can be restored with point-in-time restore.
--
-- * 'dcEngine' - Provides the name of the database engine to be used for this DB cluster.
--
-- * 'dcDBClusterARN' - The Amazon Resource Name (ARN) for the DB cluster.
--
-- * 'dcCloneGroupId' - Identifies the clone group to which the DB cluster is associated.
--
-- * 'dcLatestRestorableTime' - Specifies the latest time to which a database can be restored with point-in-time restore.
--
-- * 'dcPreferredMaintenanceWindow' - Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
--
-- * 'dcAvailabilityZones' - Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.
--
-- * 'dcCharacterSetName' - If present, specifies the name of the character set that this cluster is associated with.
--
-- * 'dcKMSKeyId' - If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB cluster.
--
-- * 'dcPreferredBackupWindow' - Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ . 
--
-- * 'dcAssociatedRoles' - Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
--
-- * 'dcVPCSecurityGroups' - Provides a list of VPC security groups that the DB cluster belongs to.
--
-- * 'dcBackupRetentionPeriod' - Specifies the number of days for which automatic DB snapshots are retained.
--
-- * 'dcDBSubnetGroup' - Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.
--
-- * 'dcDatabaseName' - Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.
--
-- * 'dcMultiAZ' - Specifies whether the DB cluster has instances in multiple Availability Zones.
--
-- * 'dcAllocatedStorage' - For all database engines except Amazon Aurora, @AllocatedStorage@ specifies the allocated storage size in gibibytes (GiB). For Aurora, @AllocatedStorage@ always returns 1, because Aurora DB cluster storage size is not fixed, but instead automatically adjusts as needed.
--
-- * 'dcClusterCreateTime' - Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
--
-- * 'dcEndpoint' - Specifies the connection endpoint for the primary instance of the DB cluster.
--
-- * 'dcPercentProgress' - Specifies the progress of the operation as a percentage.
--
-- * 'dcReaderEndpoint' - The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster.  If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.
--
-- * 'dcPort' - Specifies the port that the database engine is listening on.
--
-- * 'dcDBClusterOptionGroupMemberships' - Provides the list of option group memberships for this DB cluster.
dbCluster
    :: DBCluster
dbCluster
  = DBCluster'{_dcBacktrackConsumedChangeRecords =
                 Nothing,
               _dcEngineVersion = Nothing, _dcStatus = Nothing,
               _dcStorageEncrypted = Nothing,
               _dcDBClusterIdentifier = Nothing,
               _dcDBClusterMembers = Nothing,
               _dcReadReplicaIdentifiers = Nothing,
               _dcReplicationSourceIdentifier = Nothing,
               _dcHostedZoneId = Nothing,
               _dcDBClusterParameterGroup = Nothing,
               _dcMasterUsername = Nothing,
               _dcIAMDatabaseAuthenticationEnabled = Nothing,
               _dcEarliestBacktrackTime = Nothing,
               _dcBacktrackWindow = Nothing,
               _dcDBClusterResourceId = Nothing,
               _dcEarliestRestorableTime = Nothing,
               _dcEngine = Nothing, _dcDBClusterARN = Nothing,
               _dcCloneGroupId = Nothing,
               _dcLatestRestorableTime = Nothing,
               _dcPreferredMaintenanceWindow = Nothing,
               _dcAvailabilityZones = Nothing,
               _dcCharacterSetName = Nothing, _dcKMSKeyId = Nothing,
               _dcPreferredBackupWindow = Nothing,
               _dcAssociatedRoles = Nothing,
               _dcVPCSecurityGroups = Nothing,
               _dcBackupRetentionPeriod = Nothing,
               _dcDBSubnetGroup = Nothing,
               _dcDatabaseName = Nothing, _dcMultiAZ = Nothing,
               _dcAllocatedStorage = Nothing,
               _dcClusterCreateTime = Nothing,
               _dcEndpoint = Nothing, _dcPercentProgress = Nothing,
               _dcReaderEndpoint = Nothing, _dcPort = Nothing,
               _dcDBClusterOptionGroupMemberships = Nothing}

-- | The number of change records stored for Backtrack.
dcBacktrackConsumedChangeRecords :: Lens' DBCluster (Maybe Integer)
dcBacktrackConsumedChangeRecords = lens _dcBacktrackConsumedChangeRecords (\ s a -> s{_dcBacktrackConsumedChangeRecords = a})

-- | Indicates the database engine version.
dcEngineVersion :: Lens' DBCluster (Maybe Text)
dcEngineVersion = lens _dcEngineVersion (\ s a -> s{_dcEngineVersion = a})

-- | Specifies the current state of this DB cluster.
dcStatus :: Lens' DBCluster (Maybe Text)
dcStatus = lens _dcStatus (\ s a -> s{_dcStatus = a})

-- | Specifies whether the DB cluster is encrypted.
dcStorageEncrypted :: Lens' DBCluster (Maybe Bool)
dcStorageEncrypted = lens _dcStorageEncrypted (\ s a -> s{_dcStorageEncrypted = a})

-- | Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
dcDBClusterIdentifier :: Lens' DBCluster (Maybe Text)
dcDBClusterIdentifier = lens _dcDBClusterIdentifier (\ s a -> s{_dcDBClusterIdentifier = a})

-- | Provides the list of instances that make up the DB cluster.
dcDBClusterMembers :: Lens' DBCluster [DBClusterMember]
dcDBClusterMembers = lens _dcDBClusterMembers (\ s a -> s{_dcDBClusterMembers = a}) . _Default . _Coerce

-- | Contains one or more identifiers of the Read Replicas associated with this DB cluster.
dcReadReplicaIdentifiers :: Lens' DBCluster [Text]
dcReadReplicaIdentifiers = lens _dcReadReplicaIdentifiers (\ s a -> s{_dcReadReplicaIdentifiers = a}) . _Default . _Coerce

-- | Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.
dcReplicationSourceIdentifier :: Lens' DBCluster (Maybe Text)
dcReplicationSourceIdentifier = lens _dcReplicationSourceIdentifier (\ s a -> s{_dcReplicationSourceIdentifier = a})

-- | Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
dcHostedZoneId :: Lens' DBCluster (Maybe Text)
dcHostedZoneId = lens _dcHostedZoneId (\ s a -> s{_dcHostedZoneId = a})

-- | Specifies the name of the DB cluster parameter group for the DB cluster.
dcDBClusterParameterGroup :: Lens' DBCluster (Maybe Text)
dcDBClusterParameterGroup = lens _dcDBClusterParameterGroup (\ s a -> s{_dcDBClusterParameterGroup = a})

-- | Contains the master username for the DB cluster.
dcMasterUsername :: Lens' DBCluster (Maybe Text)
dcMasterUsername = lens _dcMasterUsername (\ s a -> s{_dcMasterUsername = a})

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
dcIAMDatabaseAuthenticationEnabled :: Lens' DBCluster (Maybe Bool)
dcIAMDatabaseAuthenticationEnabled = lens _dcIAMDatabaseAuthenticationEnabled (\ s a -> s{_dcIAMDatabaseAuthenticationEnabled = a})

-- | The earliest time to which a DB cluster can be backtracked.
dcEarliestBacktrackTime :: Lens' DBCluster (Maybe UTCTime)
dcEarliestBacktrackTime = lens _dcEarliestBacktrackTime (\ s a -> s{_dcEarliestBacktrackTime = a}) . mapping _Time

-- | The target backtrack window, in seconds. If this value is set to 0, backtracking is disabled for the DB cluster. Otherwise, backtracking is enabled.
dcBacktrackWindow :: Lens' DBCluster (Maybe Integer)
dcBacktrackWindow = lens _dcBacktrackWindow (\ s a -> s{_dcBacktrackWindow = a})

-- | The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
dcDBClusterResourceId :: Lens' DBCluster (Maybe Text)
dcDBClusterResourceId = lens _dcDBClusterResourceId (\ s a -> s{_dcDBClusterResourceId = a})

-- | The earliest time to which a database can be restored with point-in-time restore.
dcEarliestRestorableTime :: Lens' DBCluster (Maybe UTCTime)
dcEarliestRestorableTime = lens _dcEarliestRestorableTime (\ s a -> s{_dcEarliestRestorableTime = a}) . mapping _Time

-- | Provides the name of the database engine to be used for this DB cluster.
dcEngine :: Lens' DBCluster (Maybe Text)
dcEngine = lens _dcEngine (\ s a -> s{_dcEngine = a})

-- | The Amazon Resource Name (ARN) for the DB cluster.
dcDBClusterARN :: Lens' DBCluster (Maybe Text)
dcDBClusterARN = lens _dcDBClusterARN (\ s a -> s{_dcDBClusterARN = a})

-- | Identifies the clone group to which the DB cluster is associated.
dcCloneGroupId :: Lens' DBCluster (Maybe Text)
dcCloneGroupId = lens _dcCloneGroupId (\ s a -> s{_dcCloneGroupId = a})

-- | Specifies the latest time to which a database can be restored with point-in-time restore.
dcLatestRestorableTime :: Lens' DBCluster (Maybe UTCTime)
dcLatestRestorableTime = lens _dcLatestRestorableTime (\ s a -> s{_dcLatestRestorableTime = a}) . mapping _Time

-- | Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
dcPreferredMaintenanceWindow :: Lens' DBCluster (Maybe Text)
dcPreferredMaintenanceWindow = lens _dcPreferredMaintenanceWindow (\ s a -> s{_dcPreferredMaintenanceWindow = a})

-- | Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.
dcAvailabilityZones :: Lens' DBCluster [Text]
dcAvailabilityZones = lens _dcAvailabilityZones (\ s a -> s{_dcAvailabilityZones = a}) . _Default . _Coerce

-- | If present, specifies the name of the character set that this cluster is associated with.
dcCharacterSetName :: Lens' DBCluster (Maybe Text)
dcCharacterSetName = lens _dcCharacterSetName (\ s a -> s{_dcCharacterSetName = a})

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB cluster.
dcKMSKeyId :: Lens' DBCluster (Maybe Text)
dcKMSKeyId = lens _dcKMSKeyId (\ s a -> s{_dcKMSKeyId = a})

-- | Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ . 
dcPreferredBackupWindow :: Lens' DBCluster (Maybe Text)
dcPreferredBackupWindow = lens _dcPreferredBackupWindow (\ s a -> s{_dcPreferredBackupWindow = a})

-- | Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
dcAssociatedRoles :: Lens' DBCluster [DBClusterRole]
dcAssociatedRoles = lens _dcAssociatedRoles (\ s a -> s{_dcAssociatedRoles = a}) . _Default . _Coerce

-- | Provides a list of VPC security groups that the DB cluster belongs to.
dcVPCSecurityGroups :: Lens' DBCluster [VPCSecurityGroupMembership]
dcVPCSecurityGroups = lens _dcVPCSecurityGroups (\ s a -> s{_dcVPCSecurityGroups = a}) . _Default . _Coerce

-- | Specifies the number of days for which automatic DB snapshots are retained.
dcBackupRetentionPeriod :: Lens' DBCluster (Maybe Int)
dcBackupRetentionPeriod = lens _dcBackupRetentionPeriod (\ s a -> s{_dcBackupRetentionPeriod = a})

-- | Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.
dcDBSubnetGroup :: Lens' DBCluster (Maybe Text)
dcDBSubnetGroup = lens _dcDBSubnetGroup (\ s a -> s{_dcDBSubnetGroup = a})

-- | Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.
dcDatabaseName :: Lens' DBCluster (Maybe Text)
dcDatabaseName = lens _dcDatabaseName (\ s a -> s{_dcDatabaseName = a})

-- | Specifies whether the DB cluster has instances in multiple Availability Zones.
dcMultiAZ :: Lens' DBCluster (Maybe Bool)
dcMultiAZ = lens _dcMultiAZ (\ s a -> s{_dcMultiAZ = a})

-- | For all database engines except Amazon Aurora, @AllocatedStorage@ specifies the allocated storage size in gibibytes (GiB). For Aurora, @AllocatedStorage@ always returns 1, because Aurora DB cluster storage size is not fixed, but instead automatically adjusts as needed.
dcAllocatedStorage :: Lens' DBCluster (Maybe Int)
dcAllocatedStorage = lens _dcAllocatedStorage (\ s a -> s{_dcAllocatedStorage = a})

-- | Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
dcClusterCreateTime :: Lens' DBCluster (Maybe UTCTime)
dcClusterCreateTime = lens _dcClusterCreateTime (\ s a -> s{_dcClusterCreateTime = a}) . mapping _Time

-- | Specifies the connection endpoint for the primary instance of the DB cluster.
dcEndpoint :: Lens' DBCluster (Maybe Text)
dcEndpoint = lens _dcEndpoint (\ s a -> s{_dcEndpoint = a})

-- | Specifies the progress of the operation as a percentage.
dcPercentProgress :: Lens' DBCluster (Maybe Text)
dcPercentProgress = lens _dcPercentProgress (\ s a -> s{_dcPercentProgress = a})

-- | The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster.  If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.
dcReaderEndpoint :: Lens' DBCluster (Maybe Text)
dcReaderEndpoint = lens _dcReaderEndpoint (\ s a -> s{_dcReaderEndpoint = a})

-- | Specifies the port that the database engine is listening on.
dcPort :: Lens' DBCluster (Maybe Int)
dcPort = lens _dcPort (\ s a -> s{_dcPort = a})

-- | Provides the list of option group memberships for this DB cluster.
dcDBClusterOptionGroupMemberships :: Lens' DBCluster [DBClusterOptionGroupStatus]
dcDBClusterOptionGroupMemberships = lens _dcDBClusterOptionGroupMemberships (\ s a -> s{_dcDBClusterOptionGroupMemberships = a}) . _Default . _Coerce

instance FromXML DBCluster where
        parseXML x
          = DBCluster' <$>
              (x .@? "BacktrackConsumedChangeRecords") <*>
                (x .@? "EngineVersion")
                <*> (x .@? "Status")
                <*> (x .@? "StorageEncrypted")
                <*> (x .@? "DBClusterIdentifier")
                <*>
                (x .@? "DBClusterMembers" .!@ mempty >>=
                   may (parseXMLList "DBClusterMember"))
                <*>
                (x .@? "ReadReplicaIdentifiers" .!@ mempty >>=
                   may (parseXMLList "ReadReplicaIdentifier"))
                <*> (x .@? "ReplicationSourceIdentifier")
                <*> (x .@? "HostedZoneId")
                <*> (x .@? "DBClusterParameterGroup")
                <*> (x .@? "MasterUsername")
                <*> (x .@? "IAMDatabaseAuthenticationEnabled")
                <*> (x .@? "EarliestBacktrackTime")
                <*> (x .@? "BacktrackWindow")
                <*> (x .@? "DbClusterResourceId")
                <*> (x .@? "EarliestRestorableTime")
                <*> (x .@? "Engine")
                <*> (x .@? "DBClusterArn")
                <*> (x .@? "CloneGroupId")
                <*> (x .@? "LatestRestorableTime")
                <*> (x .@? "PreferredMaintenanceWindow")
                <*>
                (x .@? "AvailabilityZones" .!@ mempty >>=
                   may (parseXMLList "AvailabilityZone"))
                <*> (x .@? "CharacterSetName")
                <*> (x .@? "KmsKeyId")
                <*> (x .@? "PreferredBackupWindow")
                <*>
                (x .@? "AssociatedRoles" .!@ mempty >>=
                   may (parseXMLList "DBClusterRole"))
                <*>
                (x .@? "VpcSecurityGroups" .!@ mempty >>=
                   may (parseXMLList "VpcSecurityGroupMembership"))
                <*> (x .@? "BackupRetentionPeriod")
                <*> (x .@? "DBSubnetGroup")
                <*> (x .@? "DatabaseName")
                <*> (x .@? "MultiAZ")
                <*> (x .@? "AllocatedStorage")
                <*> (x .@? "ClusterCreateTime")
                <*> (x .@? "Endpoint")
                <*> (x .@? "PercentProgress")
                <*> (x .@? "ReaderEndpoint")
                <*> (x .@? "Port")
                <*>
                (x .@? "DBClusterOptionGroupMemberships" .!@ mempty
                   >>= may (parseXMLList "DBClusterOptionGroup"))

instance Hashable DBCluster where

instance NFData DBCluster where
