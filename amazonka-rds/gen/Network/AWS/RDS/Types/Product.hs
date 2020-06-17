{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.RDS.Types.Product (
    module Network.AWS.RDS.Types.AccountQuota,
    module Network.AWS.RDS.Types.AvailabilityZone,
    module Network.AWS.RDS.Types.Certificate,
    module Network.AWS.RDS.Types.CharacterSet,
    module Network.AWS.RDS.Types.CloudwatchLogsExportConfiguration,
    module Network.AWS.RDS.Types.DBCluster,
    module Network.AWS.RDS.Types.DBClusterBacktrack,
    module Network.AWS.RDS.Types.DBClusterMember,
    module Network.AWS.RDS.Types.DBClusterOptionGroupStatus,
    module Network.AWS.RDS.Types.DBClusterParameterGroup,
    module Network.AWS.RDS.Types.DBClusterParameterGroupNameMessage,
    module Network.AWS.RDS.Types.DBClusterRole,
    module Network.AWS.RDS.Types.DBClusterSnapshot,
    module Network.AWS.RDS.Types.DBClusterSnapshotAttribute,
    module Network.AWS.RDS.Types.DBClusterSnapshotAttributesResult,
    module Network.AWS.RDS.Types.DBEngineVersion,
    module Network.AWS.RDS.Types.DBInstance,
    module Network.AWS.RDS.Types.DBInstanceStatusInfo,
    module Network.AWS.RDS.Types.DBParameterGroup,
    module Network.AWS.RDS.Types.DBParameterGroupNameMessage,
    module Network.AWS.RDS.Types.DBParameterGroupStatus,
    module Network.AWS.RDS.Types.DBSecurityGroup,
    module Network.AWS.RDS.Types.DBSecurityGroupMembership,
    module Network.AWS.RDS.Types.DBSnapshot,
    module Network.AWS.RDS.Types.DBSnapshotAttribute,
    module Network.AWS.RDS.Types.DBSnapshotAttributesResult,
    module Network.AWS.RDS.Types.DBSubnetGroup,
    module Network.AWS.RDS.Types.DescribeDBLogFilesDetails,
    module Network.AWS.RDS.Types.DomainMembership,
    module Network.AWS.RDS.Types.DoubleRange,
    module Network.AWS.RDS.Types.EC2SecurityGroup,
    module Network.AWS.RDS.Types.Endpoint,
    module Network.AWS.RDS.Types.EngineDefaults,
    module Network.AWS.RDS.Types.Event,
    module Network.AWS.RDS.Types.EventCategoriesMap,
    module Network.AWS.RDS.Types.EventSubscription,
    module Network.AWS.RDS.Types.Filter,
    module Network.AWS.RDS.Types.IPRange,
    module Network.AWS.RDS.Types.Option,
    module Network.AWS.RDS.Types.OptionConfiguration,
    module Network.AWS.RDS.Types.OptionGroup,
    module Network.AWS.RDS.Types.OptionGroupMembership,
    module Network.AWS.RDS.Types.OptionGroupOption,
    module Network.AWS.RDS.Types.OptionGroupOptionSetting,
    module Network.AWS.RDS.Types.OptionSetting,
    module Network.AWS.RDS.Types.OptionVersion,
    module Network.AWS.RDS.Types.OrderableDBInstanceOption,
    module Network.AWS.RDS.Types.Parameter,
    module Network.AWS.RDS.Types.PendingCloudwatchLogsExports,
    module Network.AWS.RDS.Types.PendingMaintenanceAction,
    module Network.AWS.RDS.Types.PendingModifiedValues,
    module Network.AWS.RDS.Types.Range,
    module Network.AWS.RDS.Types.RecurringCharge,
    module Network.AWS.RDS.Types.ReservedDBInstance,
    module Network.AWS.RDS.Types.ReservedDBInstancesOffering,
    module Network.AWS.RDS.Types.ResourcePendingMaintenanceActions,
    module Network.AWS.RDS.Types.SourceRegion,
    module Network.AWS.RDS.Types.Subnet,
    module Network.AWS.RDS.Types.Tag,
    module Network.AWS.RDS.Types.Timezone,
    module Network.AWS.RDS.Types.UpgradeTarget,
    module Network.AWS.RDS.Types.VPCSecurityGroupMembership,
    module Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage,
    module Network.AWS.RDS.Types.ValidStorageOptions
  ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.AccountQuota
import Network.AWS.RDS.Types.AvailabilityZone
import Network.AWS.RDS.Types.Certificate
import Network.AWS.RDS.Types.CharacterSet
import Network.AWS.RDS.Types.CloudwatchLogsExportConfiguration
import Network.AWS.RDS.Types.DBCluster
import Network.AWS.RDS.Types.DBClusterBacktrack
import Network.AWS.RDS.Types.DBClusterMember
import Network.AWS.RDS.Types.DBClusterOptionGroupStatus
import Network.AWS.RDS.Types.DBClusterParameterGroup
import Network.AWS.RDS.Types.DBClusterParameterGroupNameMessage
import Network.AWS.RDS.Types.DBClusterRole
import Network.AWS.RDS.Types.DBClusterSnapshot
import Network.AWS.RDS.Types.DBClusterSnapshotAttribute
import Network.AWS.RDS.Types.DBClusterSnapshotAttributesResult
import Network.AWS.RDS.Types.DBEngineVersion
import Network.AWS.RDS.Types.DBInstance
import Network.AWS.RDS.Types.DBInstanceStatusInfo
import Network.AWS.RDS.Types.DBParameterGroup
import Network.AWS.RDS.Types.DBParameterGroupNameMessage
import Network.AWS.RDS.Types.DBParameterGroupStatus
import Network.AWS.RDS.Types.DBSecurityGroup
import Network.AWS.RDS.Types.DBSecurityGroupMembership
import Network.AWS.RDS.Types.DBSnapshot
import Network.AWS.RDS.Types.DBSnapshotAttribute
import Network.AWS.RDS.Types.DBSnapshotAttributesResult
import Network.AWS.RDS.Types.DBSubnetGroup
import Network.AWS.RDS.Types.DescribeDBLogFilesDetails
import Network.AWS.RDS.Types.DomainMembership
import Network.AWS.RDS.Types.DoubleRange
import Network.AWS.RDS.Types.EC2SecurityGroup
import Network.AWS.RDS.Types.Endpoint
import Network.AWS.RDS.Types.EngineDefaults
import Network.AWS.RDS.Types.Event
import Network.AWS.RDS.Types.EventCategoriesMap
import Network.AWS.RDS.Types.EventSubscription
import Network.AWS.RDS.Types.Filter
import Network.AWS.RDS.Types.IPRange
import Network.AWS.RDS.Types.Option
import Network.AWS.RDS.Types.OptionConfiguration
import Network.AWS.RDS.Types.OptionGroup
import Network.AWS.RDS.Types.OptionGroupMembership
import Network.AWS.RDS.Types.OptionGroupOption
import Network.AWS.RDS.Types.OptionGroupOptionSetting
import Network.AWS.RDS.Types.OptionSetting
import Network.AWS.RDS.Types.OptionVersion
import Network.AWS.RDS.Types.OrderableDBInstanceOption
import Network.AWS.RDS.Types.Parameter
import Network.AWS.RDS.Types.PendingCloudwatchLogsExports
import Network.AWS.RDS.Types.PendingMaintenanceAction
import Network.AWS.RDS.Types.PendingModifiedValues
import Network.AWS.RDS.Types.Range
import Network.AWS.RDS.Types.RecurringCharge
import Network.AWS.RDS.Types.ReservedDBInstance
import Network.AWS.RDS.Types.ReservedDBInstancesOffering
import Network.AWS.RDS.Types.ResourcePendingMaintenanceActions
import Network.AWS.RDS.Types.SourceRegion
import Network.AWS.RDS.Types.Subnet
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.Timezone
import Network.AWS.RDS.Types.UpgradeTarget
import Network.AWS.RDS.Types.VPCSecurityGroupMembership
import Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage
import Network.AWS.RDS.Types.ValidStorageOptions
