{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.Sum where

import Network.AWS.Prelude

data AggregatedSourceStatusType
  = ASSTFailed
  | ASSTOutdated
  | ASSTSucceeded
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText AggregatedSourceStatusType where
    parser = takeLowerText >>= \case
        "failed" -> pure ASSTFailed
        "outdated" -> pure ASSTOutdated
        "succeeded" -> pure ASSTSucceeded
        e -> fromTextError $ "Failure parsing AggregatedSourceStatusType from value: '" <> e
           <> "'. Accepted values: failed, outdated, succeeded"

instance ToText AggregatedSourceStatusType where
    toText = \case
        ASSTFailed -> "FAILED"
        ASSTOutdated -> "OUTDATED"
        ASSTSucceeded -> "SUCCEEDED"

instance Hashable     AggregatedSourceStatusType
instance NFData       AggregatedSourceStatusType
instance ToByteString AggregatedSourceStatusType
instance ToQuery      AggregatedSourceStatusType
instance ToHeader     AggregatedSourceStatusType

instance ToJSON AggregatedSourceStatusType where
    toJSON = toJSONText

instance FromJSON AggregatedSourceStatusType where
    parseJSON = parseJSONText "AggregatedSourceStatusType"

data AggregatedSourceType
  = Account
  | Organization
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText AggregatedSourceType where
    parser = takeLowerText >>= \case
        "account" -> pure Account
        "organization" -> pure Organization
        e -> fromTextError $ "Failure parsing AggregatedSourceType from value: '" <> e
           <> "'. Accepted values: account, organization"

instance ToText AggregatedSourceType where
    toText = \case
        Account -> "ACCOUNT"
        Organization -> "ORGANIZATION"

instance Hashable     AggregatedSourceType
instance NFData       AggregatedSourceType
instance ToByteString AggregatedSourceType
instance ToQuery      AggregatedSourceType
instance ToHeader     AggregatedSourceType

instance FromJSON AggregatedSourceType where
    parseJSON = parseJSONText "AggregatedSourceType"

data ChronologicalOrder
  = Forward
  | Reverse
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ChronologicalOrder where
    parser = takeLowerText >>= \case
        "forward" -> pure Forward
        "reverse" -> pure Reverse
        e -> fromTextError $ "Failure parsing ChronologicalOrder from value: '" <> e
           <> "'. Accepted values: forward, reverse"

instance ToText ChronologicalOrder where
    toText = \case
        Forward -> "Forward"
        Reverse -> "Reverse"

instance Hashable     ChronologicalOrder
instance NFData       ChronologicalOrder
instance ToByteString ChronologicalOrder
instance ToQuery      ChronologicalOrder
instance ToHeader     ChronologicalOrder

instance ToJSON ChronologicalOrder where
    toJSON = toJSONText

data ComplianceType
  = Compliant
  | InsufficientData
  | NonCompliant
  | NotApplicable
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ComplianceType where
    parser = takeLowerText >>= \case
        "compliant" -> pure Compliant
        "insufficient_data" -> pure InsufficientData
        "non_compliant" -> pure NonCompliant
        "not_applicable" -> pure NotApplicable
        e -> fromTextError $ "Failure parsing ComplianceType from value: '" <> e
           <> "'. Accepted values: compliant, insufficient_data, non_compliant, not_applicable"

instance ToText ComplianceType where
    toText = \case
        Compliant -> "COMPLIANT"
        InsufficientData -> "INSUFFICIENT_DATA"
        NonCompliant -> "NON_COMPLIANT"
        NotApplicable -> "NOT_APPLICABLE"

instance Hashable     ComplianceType
instance NFData       ComplianceType
instance ToByteString ComplianceType
instance ToQuery      ComplianceType
instance ToHeader     ComplianceType

instance ToJSON ComplianceType where
    toJSON = toJSONText

instance FromJSON ComplianceType where
    parseJSON = parseJSONText "ComplianceType"

data ConfigRuleComplianceSummaryGroupKey
  = AWSRegion
  | AccountId
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConfigRuleComplianceSummaryGroupKey where
    parser = takeLowerText >>= \case
        "aws_region" -> pure AWSRegion
        "account_id" -> pure AccountId
        e -> fromTextError $ "Failure parsing ConfigRuleComplianceSummaryGroupKey from value: '" <> e
           <> "'. Accepted values: aws_region, account_id"

instance ToText ConfigRuleComplianceSummaryGroupKey where
    toText = \case
        AWSRegion -> "AWS_REGION"
        AccountId -> "ACCOUNT_ID"

instance Hashable     ConfigRuleComplianceSummaryGroupKey
instance NFData       ConfigRuleComplianceSummaryGroupKey
instance ToByteString ConfigRuleComplianceSummaryGroupKey
instance ToQuery      ConfigRuleComplianceSummaryGroupKey
instance ToHeader     ConfigRuleComplianceSummaryGroupKey

instance ToJSON ConfigRuleComplianceSummaryGroupKey where
    toJSON = toJSONText

data ConfigRuleState
  = Active
  | Deleting
  | DeletingResults
  | Evaluating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConfigRuleState where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "deleting" -> pure Deleting
        "deleting_results" -> pure DeletingResults
        "evaluating" -> pure Evaluating
        e -> fromTextError $ "Failure parsing ConfigRuleState from value: '" <> e
           <> "'. Accepted values: active, deleting, deleting_results, evaluating"

instance ToText ConfigRuleState where
    toText = \case
        Active -> "ACTIVE"
        Deleting -> "DELETING"
        DeletingResults -> "DELETING_RESULTS"
        Evaluating -> "EVALUATING"

instance Hashable     ConfigRuleState
instance NFData       ConfigRuleState
instance ToByteString ConfigRuleState
instance ToQuery      ConfigRuleState
instance ToHeader     ConfigRuleState

instance ToJSON ConfigRuleState where
    toJSON = toJSONText

instance FromJSON ConfigRuleState where
    parseJSON = parseJSONText "ConfigRuleState"

data ConfigurationItemStatus
  = OK
  | ResourceDeleted
  | ResourceDeletedNotRecorded
  | ResourceDiscovered
  | ResourceNotRecorded
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConfigurationItemStatus where
    parser = takeLowerText >>= \case
        "ok" -> pure OK
        "resourcedeleted" -> pure ResourceDeleted
        "resourcedeletednotrecorded" -> pure ResourceDeletedNotRecorded
        "resourcediscovered" -> pure ResourceDiscovered
        "resourcenotrecorded" -> pure ResourceNotRecorded
        e -> fromTextError $ "Failure parsing ConfigurationItemStatus from value: '" <> e
           <> "'. Accepted values: ok, resourcedeleted, resourcedeletednotrecorded, resourcediscovered, resourcenotrecorded"

instance ToText ConfigurationItemStatus where
    toText = \case
        OK -> "OK"
        ResourceDeleted -> "ResourceDeleted"
        ResourceDeletedNotRecorded -> "ResourceDeletedNotRecorded"
        ResourceDiscovered -> "ResourceDiscovered"
        ResourceNotRecorded -> "ResourceNotRecorded"

instance Hashable     ConfigurationItemStatus
instance NFData       ConfigurationItemStatus
instance ToByteString ConfigurationItemStatus
instance ToQuery      ConfigurationItemStatus
instance ToHeader     ConfigurationItemStatus

instance FromJSON ConfigurationItemStatus where
    parseJSON = parseJSONText "ConfigurationItemStatus"

data ConformancePackComplianceType
  = CPCTCompliant
  | CPCTNonCompliant
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConformancePackComplianceType where
    parser = takeLowerText >>= \case
        "compliant" -> pure CPCTCompliant
        "non_compliant" -> pure CPCTNonCompliant
        e -> fromTextError $ "Failure parsing ConformancePackComplianceType from value: '" <> e
           <> "'. Accepted values: compliant, non_compliant"

instance ToText ConformancePackComplianceType where
    toText = \case
        CPCTCompliant -> "COMPLIANT"
        CPCTNonCompliant -> "NON_COMPLIANT"

instance Hashable     ConformancePackComplianceType
instance NFData       ConformancePackComplianceType
instance ToByteString ConformancePackComplianceType
instance ToQuery      ConformancePackComplianceType
instance ToHeader     ConformancePackComplianceType

instance ToJSON ConformancePackComplianceType where
    toJSON = toJSONText

instance FromJSON ConformancePackComplianceType where
    parseJSON = parseJSONText "ConformancePackComplianceType"

data ConformancePackState
  = CPSCreateComplete
  | CPSCreateFailed
  | CPSCreateInProgress
  | CPSDeleteFailed
  | CPSDeleteInProgress
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConformancePackState where
    parser = takeLowerText >>= \case
        "create_complete" -> pure CPSCreateComplete
        "create_failed" -> pure CPSCreateFailed
        "create_in_progress" -> pure CPSCreateInProgress
        "delete_failed" -> pure CPSDeleteFailed
        "delete_in_progress" -> pure CPSDeleteInProgress
        e -> fromTextError $ "Failure parsing ConformancePackState from value: '" <> e
           <> "'. Accepted values: create_complete, create_failed, create_in_progress, delete_failed, delete_in_progress"

instance ToText ConformancePackState where
    toText = \case
        CPSCreateComplete -> "CREATE_COMPLETE"
        CPSCreateFailed -> "CREATE_FAILED"
        CPSCreateInProgress -> "CREATE_IN_PROGRESS"
        CPSDeleteFailed -> "DELETE_FAILED"
        CPSDeleteInProgress -> "DELETE_IN_PROGRESS"

instance Hashable     ConformancePackState
instance NFData       ConformancePackState
instance ToByteString ConformancePackState
instance ToQuery      ConformancePackState
instance ToHeader     ConformancePackState

instance FromJSON ConformancePackState where
    parseJSON = parseJSONText "ConformancePackState"

data DeliveryStatus
  = DSFailure
  | DSNotApplicable
  | DSSuccess
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText DeliveryStatus where
    parser = takeLowerText >>= \case
        "failure" -> pure DSFailure
        "not_applicable" -> pure DSNotApplicable
        "success" -> pure DSSuccess
        e -> fromTextError $ "Failure parsing DeliveryStatus from value: '" <> e
           <> "'. Accepted values: failure, not_applicable, success"

instance ToText DeliveryStatus where
    toText = \case
        DSFailure -> "Failure"
        DSNotApplicable -> "Not_Applicable"
        DSSuccess -> "Success"

instance Hashable     DeliveryStatus
instance NFData       DeliveryStatus
instance ToByteString DeliveryStatus
instance ToQuery      DeliveryStatus
instance ToHeader     DeliveryStatus

instance FromJSON DeliveryStatus where
    parseJSON = parseJSONText "DeliveryStatus"

data EventSource =
  AWS_Config
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText EventSource where
    parser = takeLowerText >>= \case
        "aws.config" -> pure AWS_Config
        e -> fromTextError $ "Failure parsing EventSource from value: '" <> e
           <> "'. Accepted values: aws.config"

instance ToText EventSource where
    toText = \case
        AWS_Config -> "aws.config"

instance Hashable     EventSource
instance NFData       EventSource
instance ToByteString EventSource
instance ToQuery      EventSource
instance ToHeader     EventSource

instance ToJSON EventSource where
    toJSON = toJSONText

instance FromJSON EventSource where
    parseJSON = parseJSONText "EventSource"

data MaximumExecutionFrequency
  = OneHour
  | SixHours
  | ThreeHours
  | TwelveHours
  | TwentyFourHours
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText MaximumExecutionFrequency where
    parser = takeLowerText >>= \case
        "one_hour" -> pure OneHour
        "six_hours" -> pure SixHours
        "three_hours" -> pure ThreeHours
        "twelve_hours" -> pure TwelveHours
        "twentyfour_hours" -> pure TwentyFourHours
        e -> fromTextError $ "Failure parsing MaximumExecutionFrequency from value: '" <> e
           <> "'. Accepted values: one_hour, six_hours, three_hours, twelve_hours, twentyfour_hours"

instance ToText MaximumExecutionFrequency where
    toText = \case
        OneHour -> "One_Hour"
        SixHours -> "Six_Hours"
        ThreeHours -> "Three_Hours"
        TwelveHours -> "Twelve_Hours"
        TwentyFourHours -> "TwentyFour_Hours"

instance Hashable     MaximumExecutionFrequency
instance NFData       MaximumExecutionFrequency
instance ToByteString MaximumExecutionFrequency
instance ToQuery      MaximumExecutionFrequency
instance ToHeader     MaximumExecutionFrequency

instance ToJSON MaximumExecutionFrequency where
    toJSON = toJSONText

instance FromJSON MaximumExecutionFrequency where
    parseJSON = parseJSONText "MaximumExecutionFrequency"

data MemberAccountRuleStatus
  = MARSCreateFailed
  | MARSCreateInProgress
  | MARSCreateSuccessful
  | MARSDeleteFailed
  | MARSDeleteInProgress
  | MARSDeleteSuccessful
  | MARSUpdateFailed
  | MARSUpdateInProgress
  | MARSUpdateSuccessful
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText MemberAccountRuleStatus where
    parser = takeLowerText >>= \case
        "create_failed" -> pure MARSCreateFailed
        "create_in_progress" -> pure MARSCreateInProgress
        "create_successful" -> pure MARSCreateSuccessful
        "delete_failed" -> pure MARSDeleteFailed
        "delete_in_progress" -> pure MARSDeleteInProgress
        "delete_successful" -> pure MARSDeleteSuccessful
        "update_failed" -> pure MARSUpdateFailed
        "update_in_progress" -> pure MARSUpdateInProgress
        "update_successful" -> pure MARSUpdateSuccessful
        e -> fromTextError $ "Failure parsing MemberAccountRuleStatus from value: '" <> e
           <> "'. Accepted values: create_failed, create_in_progress, create_successful, delete_failed, delete_in_progress, delete_successful, update_failed, update_in_progress, update_successful"

instance ToText MemberAccountRuleStatus where
    toText = \case
        MARSCreateFailed -> "CREATE_FAILED"
        MARSCreateInProgress -> "CREATE_IN_PROGRESS"
        MARSCreateSuccessful -> "CREATE_SUCCESSFUL"
        MARSDeleteFailed -> "DELETE_FAILED"
        MARSDeleteInProgress -> "DELETE_IN_PROGRESS"
        MARSDeleteSuccessful -> "DELETE_SUCCESSFUL"
        MARSUpdateFailed -> "UPDATE_FAILED"
        MARSUpdateInProgress -> "UPDATE_IN_PROGRESS"
        MARSUpdateSuccessful -> "UPDATE_SUCCESSFUL"

instance Hashable     MemberAccountRuleStatus
instance NFData       MemberAccountRuleStatus
instance ToByteString MemberAccountRuleStatus
instance ToQuery      MemberAccountRuleStatus
instance ToHeader     MemberAccountRuleStatus

instance ToJSON MemberAccountRuleStatus where
    toJSON = toJSONText

instance FromJSON MemberAccountRuleStatus where
    parseJSON = parseJSONText "MemberAccountRuleStatus"

data MessageType
  = ConfigurationItemChangeNotification
  | ConfigurationSnapshotDeliveryCompleted
  | OversizedConfigurationItemChangeNotification
  | ScheduledNotification
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText MessageType where
    parser = takeLowerText >>= \case
        "configurationitemchangenotification" -> pure ConfigurationItemChangeNotification
        "configurationsnapshotdeliverycompleted" -> pure ConfigurationSnapshotDeliveryCompleted
        "oversizedconfigurationitemchangenotification" -> pure OversizedConfigurationItemChangeNotification
        "schedulednotification" -> pure ScheduledNotification
        e -> fromTextError $ "Failure parsing MessageType from value: '" <> e
           <> "'. Accepted values: configurationitemchangenotification, configurationsnapshotdeliverycompleted, oversizedconfigurationitemchangenotification, schedulednotification"

instance ToText MessageType where
    toText = \case
        ConfigurationItemChangeNotification -> "ConfigurationItemChangeNotification"
        ConfigurationSnapshotDeliveryCompleted -> "ConfigurationSnapshotDeliveryCompleted"
        OversizedConfigurationItemChangeNotification -> "OversizedConfigurationItemChangeNotification"
        ScheduledNotification -> "ScheduledNotification"

instance Hashable     MessageType
instance NFData       MessageType
instance ToByteString MessageType
instance ToQuery      MessageType
instance ToHeader     MessageType

instance ToJSON MessageType where
    toJSON = toJSONText

instance FromJSON MessageType where
    parseJSON = parseJSONText "MessageType"

data OrganizationConfigRuleTriggerType
  = OCRTTConfigurationItemChangeNotification
  | OCRTTOversizedConfigurationItemChangeNotification
  | OCRTTScheduledNotification
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OrganizationConfigRuleTriggerType where
    parser = takeLowerText >>= \case
        "configurationitemchangenotification" -> pure OCRTTConfigurationItemChangeNotification
        "oversizedconfigurationitemchangenotification" -> pure OCRTTOversizedConfigurationItemChangeNotification
        "schedulednotification" -> pure OCRTTScheduledNotification
        e -> fromTextError $ "Failure parsing OrganizationConfigRuleTriggerType from value: '" <> e
           <> "'. Accepted values: configurationitemchangenotification, oversizedconfigurationitemchangenotification, schedulednotification"

instance ToText OrganizationConfigRuleTriggerType where
    toText = \case
        OCRTTConfigurationItemChangeNotification -> "ConfigurationItemChangeNotification"
        OCRTTOversizedConfigurationItemChangeNotification -> "OversizedConfigurationItemChangeNotification"
        OCRTTScheduledNotification -> "ScheduledNotification"

instance Hashable     OrganizationConfigRuleTriggerType
instance NFData       OrganizationConfigRuleTriggerType
instance ToByteString OrganizationConfigRuleTriggerType
instance ToQuery      OrganizationConfigRuleTriggerType
instance ToHeader     OrganizationConfigRuleTriggerType

instance ToJSON OrganizationConfigRuleTriggerType where
    toJSON = toJSONText

instance FromJSON OrganizationConfigRuleTriggerType where
    parseJSON = parseJSONText "OrganizationConfigRuleTriggerType"

data OrganizationResourceDetailedStatus
  = CreateFailed
  | CreateInProgress
  | CreateSuccessful
  | DeleteFailed
  | DeleteInProgress
  | DeleteSuccessful
  | UpdateFailed
  | UpdateInProgress
  | UpdateSuccessful
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OrganizationResourceDetailedStatus where
    parser = takeLowerText >>= \case
        "create_failed" -> pure CreateFailed
        "create_in_progress" -> pure CreateInProgress
        "create_successful" -> pure CreateSuccessful
        "delete_failed" -> pure DeleteFailed
        "delete_in_progress" -> pure DeleteInProgress
        "delete_successful" -> pure DeleteSuccessful
        "update_failed" -> pure UpdateFailed
        "update_in_progress" -> pure UpdateInProgress
        "update_successful" -> pure UpdateSuccessful
        e -> fromTextError $ "Failure parsing OrganizationResourceDetailedStatus from value: '" <> e
           <> "'. Accepted values: create_failed, create_in_progress, create_successful, delete_failed, delete_in_progress, delete_successful, update_failed, update_in_progress, update_successful"

instance ToText OrganizationResourceDetailedStatus where
    toText = \case
        CreateFailed -> "CREATE_FAILED"
        CreateInProgress -> "CREATE_IN_PROGRESS"
        CreateSuccessful -> "CREATE_SUCCESSFUL"
        DeleteFailed -> "DELETE_FAILED"
        DeleteInProgress -> "DELETE_IN_PROGRESS"
        DeleteSuccessful -> "DELETE_SUCCESSFUL"
        UpdateFailed -> "UPDATE_FAILED"
        UpdateInProgress -> "UPDATE_IN_PROGRESS"
        UpdateSuccessful -> "UPDATE_SUCCESSFUL"

instance Hashable     OrganizationResourceDetailedStatus
instance NFData       OrganizationResourceDetailedStatus
instance ToByteString OrganizationResourceDetailedStatus
instance ToQuery      OrganizationResourceDetailedStatus
instance ToHeader     OrganizationResourceDetailedStatus

instance ToJSON OrganizationResourceDetailedStatus where
    toJSON = toJSONText

instance FromJSON OrganizationResourceDetailedStatus where
    parseJSON = parseJSONText "OrganizationResourceDetailedStatus"

data OrganizationResourceStatus
  = ORSCreateFailed
  | ORSCreateInProgress
  | ORSCreateSuccessful
  | ORSDeleteFailed
  | ORSDeleteInProgress
  | ORSDeleteSuccessful
  | ORSUpdateFailed
  | ORSUpdateInProgress
  | ORSUpdateSuccessful
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OrganizationResourceStatus where
    parser = takeLowerText >>= \case
        "create_failed" -> pure ORSCreateFailed
        "create_in_progress" -> pure ORSCreateInProgress
        "create_successful" -> pure ORSCreateSuccessful
        "delete_failed" -> pure ORSDeleteFailed
        "delete_in_progress" -> pure ORSDeleteInProgress
        "delete_successful" -> pure ORSDeleteSuccessful
        "update_failed" -> pure ORSUpdateFailed
        "update_in_progress" -> pure ORSUpdateInProgress
        "update_successful" -> pure ORSUpdateSuccessful
        e -> fromTextError $ "Failure parsing OrganizationResourceStatus from value: '" <> e
           <> "'. Accepted values: create_failed, create_in_progress, create_successful, delete_failed, delete_in_progress, delete_successful, update_failed, update_in_progress, update_successful"

instance ToText OrganizationResourceStatus where
    toText = \case
        ORSCreateFailed -> "CREATE_FAILED"
        ORSCreateInProgress -> "CREATE_IN_PROGRESS"
        ORSCreateSuccessful -> "CREATE_SUCCESSFUL"
        ORSDeleteFailed -> "DELETE_FAILED"
        ORSDeleteInProgress -> "DELETE_IN_PROGRESS"
        ORSDeleteSuccessful -> "DELETE_SUCCESSFUL"
        ORSUpdateFailed -> "UPDATE_FAILED"
        ORSUpdateInProgress -> "UPDATE_IN_PROGRESS"
        ORSUpdateSuccessful -> "UPDATE_SUCCESSFUL"

instance Hashable     OrganizationResourceStatus
instance NFData       OrganizationResourceStatus
instance ToByteString OrganizationResourceStatus
instance ToQuery      OrganizationResourceStatus
instance ToHeader     OrganizationResourceStatus

instance FromJSON OrganizationResourceStatus where
    parseJSON = parseJSONText "OrganizationResourceStatus"

data OrganizationRuleStatus
  = OCreateFailed
  | OCreateInProgress
  | OCreateSuccessful
  | ODeleteFailed
  | ODeleteInProgress
  | ODeleteSuccessful
  | OUpdateFailed
  | OUpdateInProgress
  | OUpdateSuccessful
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OrganizationRuleStatus where
    parser = takeLowerText >>= \case
        "create_failed" -> pure OCreateFailed
        "create_in_progress" -> pure OCreateInProgress
        "create_successful" -> pure OCreateSuccessful
        "delete_failed" -> pure ODeleteFailed
        "delete_in_progress" -> pure ODeleteInProgress
        "delete_successful" -> pure ODeleteSuccessful
        "update_failed" -> pure OUpdateFailed
        "update_in_progress" -> pure OUpdateInProgress
        "update_successful" -> pure OUpdateSuccessful
        e -> fromTextError $ "Failure parsing OrganizationRuleStatus from value: '" <> e
           <> "'. Accepted values: create_failed, create_in_progress, create_successful, delete_failed, delete_in_progress, delete_successful, update_failed, update_in_progress, update_successful"

instance ToText OrganizationRuleStatus where
    toText = \case
        OCreateFailed -> "CREATE_FAILED"
        OCreateInProgress -> "CREATE_IN_PROGRESS"
        OCreateSuccessful -> "CREATE_SUCCESSFUL"
        ODeleteFailed -> "DELETE_FAILED"
        ODeleteInProgress -> "DELETE_IN_PROGRESS"
        ODeleteSuccessful -> "DELETE_SUCCESSFUL"
        OUpdateFailed -> "UPDATE_FAILED"
        OUpdateInProgress -> "UPDATE_IN_PROGRESS"
        OUpdateSuccessful -> "UPDATE_SUCCESSFUL"

instance Hashable     OrganizationRuleStatus
instance NFData       OrganizationRuleStatus
instance ToByteString OrganizationRuleStatus
instance ToQuery      OrganizationRuleStatus
instance ToHeader     OrganizationRuleStatus

instance FromJSON OrganizationRuleStatus where
    parseJSON = parseJSONText "OrganizationRuleStatus"

data Owner
  = AWS
  | CustomLambda
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Owner where
    parser = takeLowerText >>= \case
        "aws" -> pure AWS
        "custom_lambda" -> pure CustomLambda
        e -> fromTextError $ "Failure parsing Owner from value: '" <> e
           <> "'. Accepted values: aws, custom_lambda"

instance ToText Owner where
    toText = \case
        AWS -> "AWS"
        CustomLambda -> "CUSTOM_LAMBDA"

instance Hashable     Owner
instance NFData       Owner
instance ToByteString Owner
instance ToQuery      Owner
instance ToHeader     Owner

instance ToJSON Owner where
    toJSON = toJSONText

instance FromJSON Owner where
    parseJSON = parseJSONText "Owner"

data RecorderStatus
  = RSFailure
  | RSPending
  | RSSuccess
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RecorderStatus where
    parser = takeLowerText >>= \case
        "failure" -> pure RSFailure
        "pending" -> pure RSPending
        "success" -> pure RSSuccess
        e -> fromTextError $ "Failure parsing RecorderStatus from value: '" <> e
           <> "'. Accepted values: failure, pending, success"

instance ToText RecorderStatus where
    toText = \case
        RSFailure -> "Failure"
        RSPending -> "Pending"
        RSSuccess -> "Success"

instance Hashable     RecorderStatus
instance NFData       RecorderStatus
instance ToByteString RecorderStatus
instance ToQuery      RecorderStatus
instance ToHeader     RecorderStatus

instance FromJSON RecorderStatus where
    parseJSON = parseJSONText "RecorderStatus"

data RemediationExecutionState
  = RESFailed
  | RESInProgress
  | RESQueued
  | RESSucceeded
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RemediationExecutionState where
    parser = takeLowerText >>= \case
        "failed" -> pure RESFailed
        "in_progress" -> pure RESInProgress
        "queued" -> pure RESQueued
        "succeeded" -> pure RESSucceeded
        e -> fromTextError $ "Failure parsing RemediationExecutionState from value: '" <> e
           <> "'. Accepted values: failed, in_progress, queued, succeeded"

instance ToText RemediationExecutionState where
    toText = \case
        RESFailed -> "FAILED"
        RESInProgress -> "IN_PROGRESS"
        RESQueued -> "QUEUED"
        RESSucceeded -> "SUCCEEDED"

instance Hashable     RemediationExecutionState
instance NFData       RemediationExecutionState
instance ToByteString RemediationExecutionState
instance ToQuery      RemediationExecutionState
instance ToHeader     RemediationExecutionState

instance FromJSON RemediationExecutionState where
    parseJSON = parseJSONText "RemediationExecutionState"

data RemediationExecutionStepState
  = Failed
  | Pending
  | Succeeded
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RemediationExecutionStepState where
    parser = takeLowerText >>= \case
        "failed" -> pure Failed
        "pending" -> pure Pending
        "succeeded" -> pure Succeeded
        e -> fromTextError $ "Failure parsing RemediationExecutionStepState from value: '" <> e
           <> "'. Accepted values: failed, pending, succeeded"

instance ToText RemediationExecutionStepState where
    toText = \case
        Failed -> "FAILED"
        Pending -> "PENDING"
        Succeeded -> "SUCCEEDED"

instance Hashable     RemediationExecutionStepState
instance NFData       RemediationExecutionStepState
instance ToByteString RemediationExecutionStepState
instance ToQuery      RemediationExecutionStepState
instance ToHeader     RemediationExecutionStepState

instance FromJSON RemediationExecutionStepState where
    parseJSON = parseJSONText "RemediationExecutionStepState"

data RemediationTargetType =
  SsmDocument
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RemediationTargetType where
    parser = takeLowerText >>= \case
        "ssm_document" -> pure SsmDocument
        e -> fromTextError $ "Failure parsing RemediationTargetType from value: '" <> e
           <> "'. Accepted values: ssm_document"

instance ToText RemediationTargetType where
    toText = \case
        SsmDocument -> "SSM_DOCUMENT"

instance Hashable     RemediationTargetType
instance NFData       RemediationTargetType
instance ToByteString RemediationTargetType
instance ToQuery      RemediationTargetType
instance ToHeader     RemediationTargetType

instance ToJSON RemediationTargetType where
    toJSON = toJSONText

instance FromJSON RemediationTargetType where
    parseJSON = parseJSONText "RemediationTargetType"

data ResourceCountGroupKey
  = RCGKAWSRegion
  | RCGKAccountId
  | RCGKResourceType
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ResourceCountGroupKey where
    parser = takeLowerText >>= \case
        "aws_region" -> pure RCGKAWSRegion
        "account_id" -> pure RCGKAccountId
        "resource_type" -> pure RCGKResourceType
        e -> fromTextError $ "Failure parsing ResourceCountGroupKey from value: '" <> e
           <> "'. Accepted values: aws_region, account_id, resource_type"

instance ToText ResourceCountGroupKey where
    toText = \case
        RCGKAWSRegion -> "AWS_REGION"
        RCGKAccountId -> "ACCOUNT_ID"
        RCGKResourceType -> "RESOURCE_TYPE"

instance Hashable     ResourceCountGroupKey
instance NFData       ResourceCountGroupKey
instance ToByteString ResourceCountGroupKey
instance ToQuery      ResourceCountGroupKey
instance ToHeader     ResourceCountGroupKey

instance ToJSON ResourceCountGroupKey where
    toJSON = toJSONText

data ResourceType
  = AWSAPIGATEWAYV2API
  | AWSAPIGATEWAYV2Stage
  | AWSAPIGatewayRestAPI
  | AWSAPIGatewayStage
  | AWSAcmCertificate
  | AWSAutoScalingAutoScalingGroup
  | AWSAutoScalingLaunchConfiguration
  | AWSAutoScalingScalingPolicy
  | AWSAutoScalingScheduledAction
  | AWSCloudFormationStack
  | AWSCloudFrontDistribution
  | AWSCloudFrontStreamingDistribution
  | AWSCloudTrailTrail
  | AWSCloudWatchAlarm
  | AWSCodeBuildProject
  | AWSCodePipelinePipeline
  | AWSConfigResourceCompliance
  | AWSDynamoDBTable
  | AWSEC2CustomerGateway
  | AWSEC2EIP
  | AWSEC2EgressOnlyInternetGateway
  | AWSEC2FlowLog
  | AWSEC2Host
  | AWSEC2Instance
  | AWSEC2InternetGateway
  | AWSEC2NatGateway
  | AWSEC2NetworkACL
  | AWSEC2NetworkInterface
  | AWSEC2RegisteredHAInstance
  | AWSEC2RouteTable
  | AWSEC2SecurityGroup
  | AWSEC2Subnet
  | AWSEC2VPC
  | AWSEC2VPCEndpoint
  | AWSEC2VPCEndpointService
  | AWSEC2VPCPeeringConnection
  | AWSEC2VPNConnection
  | AWSEC2VPNGateway
  | AWSEC2Volume
  | AWSELASTICLOADBALANCINGV2LoadBalancer
  | AWSElasticBeanstalkApplication
  | AWSElasticBeanstalkApplicationVersion
  | AWSElasticBeanstalkEnvironment
  | AWSElasticLoadBalancingLoadBalancer
  | AWSElasticsearchDomain
  | AWSIAMGroup
  | AWSIAMPolicy
  | AWSIAMRole
  | AWSIAMUser
  | AWSKMSKey
  | AWSLambdaFunction
  | AWSQldbLedger
  | AWSRDSDBCluster
  | AWSRDSDBClusterSnapshot
  | AWSRDSDBInstance
  | AWSRDSDBSecurityGroup
  | AWSRDSDBSnapshot
  | AWSRDSDBSubnetGroup
  | AWSRDSEventSubscription
  | AWSRedshiftCluster
  | AWSRedshiftClusterParameterGroup
  | AWSRedshiftClusterSecurityGroup
  | AWSRedshiftClusterSnapshot
  | AWSRedshiftClusterSubnetGroup
  | AWSRedshiftEventSubscription
  | AWSS3AccountPublicAccessBlock
  | AWSS3Bucket
  | AWSServiceCatalogCloudFormationProduct
  | AWSServiceCatalogCloudFormationProvisionedProduct
  | AWSServiceCatalogPortfolio
  | AWSShieldProtection
  | AWSShieldRegionalProtection
  | AWSSqsQueue
  | AWSSsmAssociationCompliance
  | AWSSsmManagedInstanceInventory
  | AWSSsmPatchCompliance
  | AWSWAFRegionalRateBasedRule
  | AWSWAFRegionalRule
  | AWSWAFRegionalRuleGroup
  | AWSWAFRegionalWebACL
  | AWSWAFV2IPSet
  | AWSWAFV2ManagedRuleSet
  | AWSWAFV2RegexPatternSet
  | AWSWAFV2RuleGroup
  | AWSWAFV2WebACL
  | AWSWafRateBasedRule
  | AWSWafRule
  | AWSWafRuleGroup
  | AWSWafWebACL
  | AWSXRayEncryptionConfig
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ResourceType where
    parser = takeLowerText >>= \case
        "aws::apigatewayv2::api" -> pure AWSAPIGATEWAYV2API
        "aws::apigatewayv2::stage" -> pure AWSAPIGATEWAYV2Stage
        "aws::apigateway::restapi" -> pure AWSAPIGatewayRestAPI
        "aws::apigateway::stage" -> pure AWSAPIGatewayStage
        "aws::acm::certificate" -> pure AWSAcmCertificate
        "aws::autoscaling::autoscalinggroup" -> pure AWSAutoScalingAutoScalingGroup
        "aws::autoscaling::launchconfiguration" -> pure AWSAutoScalingLaunchConfiguration
        "aws::autoscaling::scalingpolicy" -> pure AWSAutoScalingScalingPolicy
        "aws::autoscaling::scheduledaction" -> pure AWSAutoScalingScheduledAction
        "aws::cloudformation::stack" -> pure AWSCloudFormationStack
        "aws::cloudfront::distribution" -> pure AWSCloudFrontDistribution
        "aws::cloudfront::streamingdistribution" -> pure AWSCloudFrontStreamingDistribution
        "aws::cloudtrail::trail" -> pure AWSCloudTrailTrail
        "aws::cloudwatch::alarm" -> pure AWSCloudWatchAlarm
        "aws::codebuild::project" -> pure AWSCodeBuildProject
        "aws::codepipeline::pipeline" -> pure AWSCodePipelinePipeline
        "aws::config::resourcecompliance" -> pure AWSConfigResourceCompliance
        "aws::dynamodb::table" -> pure AWSDynamoDBTable
        "aws::ec2::customergateway" -> pure AWSEC2CustomerGateway
        "aws::ec2::eip" -> pure AWSEC2EIP
        "aws::ec2::egressonlyinternetgateway" -> pure AWSEC2EgressOnlyInternetGateway
        "aws::ec2::flowlog" -> pure AWSEC2FlowLog
        "aws::ec2::host" -> pure AWSEC2Host
        "aws::ec2::instance" -> pure AWSEC2Instance
        "aws::ec2::internetgateway" -> pure AWSEC2InternetGateway
        "aws::ec2::natgateway" -> pure AWSEC2NatGateway
        "aws::ec2::networkacl" -> pure AWSEC2NetworkACL
        "aws::ec2::networkinterface" -> pure AWSEC2NetworkInterface
        "aws::ec2::registeredhainstance" -> pure AWSEC2RegisteredHAInstance
        "aws::ec2::routetable" -> pure AWSEC2RouteTable
        "aws::ec2::securitygroup" -> pure AWSEC2SecurityGroup
        "aws::ec2::subnet" -> pure AWSEC2Subnet
        "aws::ec2::vpc" -> pure AWSEC2VPC
        "aws::ec2::vpcendpoint" -> pure AWSEC2VPCEndpoint
        "aws::ec2::vpcendpointservice" -> pure AWSEC2VPCEndpointService
        "aws::ec2::vpcpeeringconnection" -> pure AWSEC2VPCPeeringConnection
        "aws::ec2::vpnconnection" -> pure AWSEC2VPNConnection
        "aws::ec2::vpngateway" -> pure AWSEC2VPNGateway
        "aws::ec2::volume" -> pure AWSEC2Volume
        "aws::elasticloadbalancingv2::loadbalancer" -> pure AWSELASTICLOADBALANCINGV2LoadBalancer
        "aws::elasticbeanstalk::application" -> pure AWSElasticBeanstalkApplication
        "aws::elasticbeanstalk::applicationversion" -> pure AWSElasticBeanstalkApplicationVersion
        "aws::elasticbeanstalk::environment" -> pure AWSElasticBeanstalkEnvironment
        "aws::elasticloadbalancing::loadbalancer" -> pure AWSElasticLoadBalancingLoadBalancer
        "aws::elasticsearch::domain" -> pure AWSElasticsearchDomain
        "aws::iam::group" -> pure AWSIAMGroup
        "aws::iam::policy" -> pure AWSIAMPolicy
        "aws::iam::role" -> pure AWSIAMRole
        "aws::iam::user" -> pure AWSIAMUser
        "aws::kms::key" -> pure AWSKMSKey
        "aws::lambda::function" -> pure AWSLambdaFunction
        "aws::qldb::ledger" -> pure AWSQldbLedger
        "aws::rds::dbcluster" -> pure AWSRDSDBCluster
        "aws::rds::dbclustersnapshot" -> pure AWSRDSDBClusterSnapshot
        "aws::rds::dbinstance" -> pure AWSRDSDBInstance
        "aws::rds::dbsecuritygroup" -> pure AWSRDSDBSecurityGroup
        "aws::rds::dbsnapshot" -> pure AWSRDSDBSnapshot
        "aws::rds::dbsubnetgroup" -> pure AWSRDSDBSubnetGroup
        "aws::rds::eventsubscription" -> pure AWSRDSEventSubscription
        "aws::redshift::cluster" -> pure AWSRedshiftCluster
        "aws::redshift::clusterparametergroup" -> pure AWSRedshiftClusterParameterGroup
        "aws::redshift::clustersecuritygroup" -> pure AWSRedshiftClusterSecurityGroup
        "aws::redshift::clustersnapshot" -> pure AWSRedshiftClusterSnapshot
        "aws::redshift::clustersubnetgroup" -> pure AWSRedshiftClusterSubnetGroup
        "aws::redshift::eventsubscription" -> pure AWSRedshiftEventSubscription
        "aws::s3::accountpublicaccessblock" -> pure AWSS3AccountPublicAccessBlock
        "aws::s3::bucket" -> pure AWSS3Bucket
        "aws::servicecatalog::cloudformationproduct" -> pure AWSServiceCatalogCloudFormationProduct
        "aws::servicecatalog::cloudformationprovisionedproduct" -> pure AWSServiceCatalogCloudFormationProvisionedProduct
        "aws::servicecatalog::portfolio" -> pure AWSServiceCatalogPortfolio
        "aws::shield::protection" -> pure AWSShieldProtection
        "aws::shieldregional::protection" -> pure AWSShieldRegionalProtection
        "aws::sqs::queue" -> pure AWSSqsQueue
        "aws::ssm::associationcompliance" -> pure AWSSsmAssociationCompliance
        "aws::ssm::managedinstanceinventory" -> pure AWSSsmManagedInstanceInventory
        "aws::ssm::patchcompliance" -> pure AWSSsmPatchCompliance
        "aws::wafregional::ratebasedrule" -> pure AWSWAFRegionalRateBasedRule
        "aws::wafregional::rule" -> pure AWSWAFRegionalRule
        "aws::wafregional::rulegroup" -> pure AWSWAFRegionalRuleGroup
        "aws::wafregional::webacl" -> pure AWSWAFRegionalWebACL
        "aws::wafv2::ipset" -> pure AWSWAFV2IPSet
        "aws::wafv2::managedruleset" -> pure AWSWAFV2ManagedRuleSet
        "aws::wafv2::regexpatternset" -> pure AWSWAFV2RegexPatternSet
        "aws::wafv2::rulegroup" -> pure AWSWAFV2RuleGroup
        "aws::wafv2::webacl" -> pure AWSWAFV2WebACL
        "aws::waf::ratebasedrule" -> pure AWSWafRateBasedRule
        "aws::waf::rule" -> pure AWSWafRule
        "aws::waf::rulegroup" -> pure AWSWafRuleGroup
        "aws::waf::webacl" -> pure AWSWafWebACL
        "aws::xray::encryptionconfig" -> pure AWSXRayEncryptionConfig
        e -> fromTextError $ "Failure parsing ResourceType from value: '" <> e
           <> "'. Accepted values: aws::apigatewayv2::api, aws::apigatewayv2::stage, aws::apigateway::restapi, aws::apigateway::stage, aws::acm::certificate, aws::autoscaling::autoscalinggroup, aws::autoscaling::launchconfiguration, aws::autoscaling::scalingpolicy, aws::autoscaling::scheduledaction, aws::cloudformation::stack, aws::cloudfront::distribution, aws::cloudfront::streamingdistribution, aws::cloudtrail::trail, aws::cloudwatch::alarm, aws::codebuild::project, aws::codepipeline::pipeline, aws::config::resourcecompliance, aws::dynamodb::table, aws::ec2::customergateway, aws::ec2::eip, aws::ec2::egressonlyinternetgateway, aws::ec2::flowlog, aws::ec2::host, aws::ec2::instance, aws::ec2::internetgateway, aws::ec2::natgateway, aws::ec2::networkacl, aws::ec2::networkinterface, aws::ec2::registeredhainstance, aws::ec2::routetable, aws::ec2::securitygroup, aws::ec2::subnet, aws::ec2::vpc, aws::ec2::vpcendpoint, aws::ec2::vpcendpointservice, aws::ec2::vpcpeeringconnection, aws::ec2::vpnconnection, aws::ec2::vpngateway, aws::ec2::volume, aws::elasticloadbalancingv2::loadbalancer, aws::elasticbeanstalk::application, aws::elasticbeanstalk::applicationversion, aws::elasticbeanstalk::environment, aws::elasticloadbalancing::loadbalancer, aws::elasticsearch::domain, aws::iam::group, aws::iam::policy, aws::iam::role, aws::iam::user, aws::kms::key, aws::lambda::function, aws::qldb::ledger, aws::rds::dbcluster, aws::rds::dbclustersnapshot, aws::rds::dbinstance, aws::rds::dbsecuritygroup, aws::rds::dbsnapshot, aws::rds::dbsubnetgroup, aws::rds::eventsubscription, aws::redshift::cluster, aws::redshift::clusterparametergroup, aws::redshift::clustersecuritygroup, aws::redshift::clustersnapshot, aws::redshift::clustersubnetgroup, aws::redshift::eventsubscription, aws::s3::accountpublicaccessblock, aws::s3::bucket, aws::servicecatalog::cloudformationproduct, aws::servicecatalog::cloudformationprovisionedproduct, aws::servicecatalog::portfolio, aws::shield::protection, aws::shieldregional::protection, aws::sqs::queue, aws::ssm::associationcompliance, aws::ssm::managedinstanceinventory, aws::ssm::patchcompliance, aws::wafregional::ratebasedrule, aws::wafregional::rule, aws::wafregional::rulegroup, aws::wafregional::webacl, aws::wafv2::ipset, aws::wafv2::managedruleset, aws::wafv2::regexpatternset, aws::wafv2::rulegroup, aws::wafv2::webacl, aws::waf::ratebasedrule, aws::waf::rule, aws::waf::rulegroup, aws::waf::webacl, aws::xray::encryptionconfig"

instance ToText ResourceType where
    toText = \case
        AWSAPIGATEWAYV2API -> "AWS::ApiGatewayV2::Api"
        AWSAPIGATEWAYV2Stage -> "AWS::ApiGatewayV2::Stage"
        AWSAPIGatewayRestAPI -> "AWS::ApiGateway::RestApi"
        AWSAPIGatewayStage -> "AWS::ApiGateway::Stage"
        AWSAcmCertificate -> "AWS::ACM::Certificate"
        AWSAutoScalingAutoScalingGroup -> "AWS::AutoScaling::AutoScalingGroup"
        AWSAutoScalingLaunchConfiguration -> "AWS::AutoScaling::LaunchConfiguration"
        AWSAutoScalingScalingPolicy -> "AWS::AutoScaling::ScalingPolicy"
        AWSAutoScalingScheduledAction -> "AWS::AutoScaling::ScheduledAction"
        AWSCloudFormationStack -> "AWS::CloudFormation::Stack"
        AWSCloudFrontDistribution -> "AWS::CloudFront::Distribution"
        AWSCloudFrontStreamingDistribution -> "AWS::CloudFront::StreamingDistribution"
        AWSCloudTrailTrail -> "AWS::CloudTrail::Trail"
        AWSCloudWatchAlarm -> "AWS::CloudWatch::Alarm"
        AWSCodeBuildProject -> "AWS::CodeBuild::Project"
        AWSCodePipelinePipeline -> "AWS::CodePipeline::Pipeline"
        AWSConfigResourceCompliance -> "AWS::Config::ResourceCompliance"
        AWSDynamoDBTable -> "AWS::DynamoDB::Table"
        AWSEC2CustomerGateway -> "AWS::EC2::CustomerGateway"
        AWSEC2EIP -> "AWS::EC2::EIP"
        AWSEC2EgressOnlyInternetGateway -> "AWS::EC2::EgressOnlyInternetGateway"
        AWSEC2FlowLog -> "AWS::EC2::FlowLog"
        AWSEC2Host -> "AWS::EC2::Host"
        AWSEC2Instance -> "AWS::EC2::Instance"
        AWSEC2InternetGateway -> "AWS::EC2::InternetGateway"
        AWSEC2NatGateway -> "AWS::EC2::NatGateway"
        AWSEC2NetworkACL -> "AWS::EC2::NetworkAcl"
        AWSEC2NetworkInterface -> "AWS::EC2::NetworkInterface"
        AWSEC2RegisteredHAInstance -> "AWS::EC2::RegisteredHAInstance"
        AWSEC2RouteTable -> "AWS::EC2::RouteTable"
        AWSEC2SecurityGroup -> "AWS::EC2::SecurityGroup"
        AWSEC2Subnet -> "AWS::EC2::Subnet"
        AWSEC2VPC -> "AWS::EC2::VPC"
        AWSEC2VPCEndpoint -> "AWS::EC2::VPCEndpoint"
        AWSEC2VPCEndpointService -> "AWS::EC2::VPCEndpointService"
        AWSEC2VPCPeeringConnection -> "AWS::EC2::VPCPeeringConnection"
        AWSEC2VPNConnection -> "AWS::EC2::VPNConnection"
        AWSEC2VPNGateway -> "AWS::EC2::VPNGateway"
        AWSEC2Volume -> "AWS::EC2::Volume"
        AWSELASTICLOADBALANCINGV2LoadBalancer -> "AWS::ElasticLoadBalancingV2::LoadBalancer"
        AWSElasticBeanstalkApplication -> "AWS::ElasticBeanstalk::Application"
        AWSElasticBeanstalkApplicationVersion -> "AWS::ElasticBeanstalk::ApplicationVersion"
        AWSElasticBeanstalkEnvironment -> "AWS::ElasticBeanstalk::Environment"
        AWSElasticLoadBalancingLoadBalancer -> "AWS::ElasticLoadBalancing::LoadBalancer"
        AWSElasticsearchDomain -> "AWS::Elasticsearch::Domain"
        AWSIAMGroup -> "AWS::IAM::Group"
        AWSIAMPolicy -> "AWS::IAM::Policy"
        AWSIAMRole -> "AWS::IAM::Role"
        AWSIAMUser -> "AWS::IAM::User"
        AWSKMSKey -> "AWS::KMS::Key"
        AWSLambdaFunction -> "AWS::Lambda::Function"
        AWSQldbLedger -> "AWS::QLDB::Ledger"
        AWSRDSDBCluster -> "AWS::RDS::DBCluster"
        AWSRDSDBClusterSnapshot -> "AWS::RDS::DBClusterSnapshot"
        AWSRDSDBInstance -> "AWS::RDS::DBInstance"
        AWSRDSDBSecurityGroup -> "AWS::RDS::DBSecurityGroup"
        AWSRDSDBSnapshot -> "AWS::RDS::DBSnapshot"
        AWSRDSDBSubnetGroup -> "AWS::RDS::DBSubnetGroup"
        AWSRDSEventSubscription -> "AWS::RDS::EventSubscription"
        AWSRedshiftCluster -> "AWS::Redshift::Cluster"
        AWSRedshiftClusterParameterGroup -> "AWS::Redshift::ClusterParameterGroup"
        AWSRedshiftClusterSecurityGroup -> "AWS::Redshift::ClusterSecurityGroup"
        AWSRedshiftClusterSnapshot -> "AWS::Redshift::ClusterSnapshot"
        AWSRedshiftClusterSubnetGroup -> "AWS::Redshift::ClusterSubnetGroup"
        AWSRedshiftEventSubscription -> "AWS::Redshift::EventSubscription"
        AWSS3AccountPublicAccessBlock -> "AWS::S3::AccountPublicAccessBlock"
        AWSS3Bucket -> "AWS::S3::Bucket"
        AWSServiceCatalogCloudFormationProduct -> "AWS::ServiceCatalog::CloudFormationProduct"
        AWSServiceCatalogCloudFormationProvisionedProduct -> "AWS::ServiceCatalog::CloudFormationProvisionedProduct"
        AWSServiceCatalogPortfolio -> "AWS::ServiceCatalog::Portfolio"
        AWSShieldProtection -> "AWS::Shield::Protection"
        AWSShieldRegionalProtection -> "AWS::ShieldRegional::Protection"
        AWSSqsQueue -> "AWS::SQS::Queue"
        AWSSsmAssociationCompliance -> "AWS::SSM::AssociationCompliance"
        AWSSsmManagedInstanceInventory -> "AWS::SSM::ManagedInstanceInventory"
        AWSSsmPatchCompliance -> "AWS::SSM::PatchCompliance"
        AWSWAFRegionalRateBasedRule -> "AWS::WAFRegional::RateBasedRule"
        AWSWAFRegionalRule -> "AWS::WAFRegional::Rule"
        AWSWAFRegionalRuleGroup -> "AWS::WAFRegional::RuleGroup"
        AWSWAFRegionalWebACL -> "AWS::WAFRegional::WebACL"
        AWSWAFV2IPSet -> "AWS::WAFv2::IPSet"
        AWSWAFV2ManagedRuleSet -> "AWS::WAFv2::ManagedRuleSet"
        AWSWAFV2RegexPatternSet -> "AWS::WAFv2::RegexPatternSet"
        AWSWAFV2RuleGroup -> "AWS::WAFv2::RuleGroup"
        AWSWAFV2WebACL -> "AWS::WAFv2::WebACL"
        AWSWafRateBasedRule -> "AWS::WAF::RateBasedRule"
        AWSWafRule -> "AWS::WAF::Rule"
        AWSWafRuleGroup -> "AWS::WAF::RuleGroup"
        AWSWafWebACL -> "AWS::WAF::WebACL"
        AWSXRayEncryptionConfig -> "AWS::XRay::EncryptionConfig"

instance Hashable     ResourceType
instance NFData       ResourceType
instance ToByteString ResourceType
instance ToQuery      ResourceType
instance ToHeader     ResourceType

instance ToJSON ResourceType where
    toJSON = toJSONText

instance FromJSON ResourceType where
    parseJSON = parseJSONText "ResourceType"

data ResourceValueType =
  ResourceId
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ResourceValueType where
    parser = takeLowerText >>= \case
        "resource_id" -> pure ResourceId
        e -> fromTextError $ "Failure parsing ResourceValueType from value: '" <> e
           <> "'. Accepted values: resource_id"

instance ToText ResourceValueType where
    toText = \case
        ResourceId -> "RESOURCE_ID"

instance Hashable     ResourceValueType
instance NFData       ResourceValueType
instance ToByteString ResourceValueType
instance ToQuery      ResourceValueType
instance ToHeader     ResourceValueType

instance ToJSON ResourceValueType where
    toJSON = toJSONText

instance FromJSON ResourceValueType where
    parseJSON = parseJSONText "ResourceValueType"
