{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.Product where

import Network.AWS.Config.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A collection of accounts and regions.
--
--
--
-- /See:/ 'accountAggregationSource' smart constructor.
data AccountAggregationSource =
  AccountAggregationSource'
    { _aasAWSRegions    :: !(Maybe (List1 Text))
    , _aasAllAWSRegions :: !(Maybe Bool)
    , _aasAccountIds    :: !(List1 Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountAggregationSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aasAWSRegions' - The source regions being aggregated.
--
-- * 'aasAllAWSRegions' - If true, aggregate existing AWS Config regions and future regions.
--
-- * 'aasAccountIds' - The 12-digit account ID of the account being aggregated.
accountAggregationSource
    :: NonEmpty Text -- ^ 'aasAccountIds'
    -> AccountAggregationSource
accountAggregationSource pAccountIds_ =
  AccountAggregationSource'
    { _aasAWSRegions = Nothing
    , _aasAllAWSRegions = Nothing
    , _aasAccountIds = _List1 # pAccountIds_
    }


-- | The source regions being aggregated.
aasAWSRegions :: Lens' AccountAggregationSource (Maybe (NonEmpty Text))
aasAWSRegions = lens _aasAWSRegions (\ s a -> s{_aasAWSRegions = a}) . mapping _List1

-- | If true, aggregate existing AWS Config regions and future regions.
aasAllAWSRegions :: Lens' AccountAggregationSource (Maybe Bool)
aasAllAWSRegions = lens _aasAllAWSRegions (\ s a -> s{_aasAllAWSRegions = a})

-- | The 12-digit account ID of the account being aggregated.
aasAccountIds :: Lens' AccountAggregationSource (NonEmpty Text)
aasAccountIds = lens _aasAccountIds (\ s a -> s{_aasAccountIds = a}) . _List1

instance FromJSON AccountAggregationSource where
        parseJSON
          = withObject "AccountAggregationSource"
              (\ x ->
                 AccountAggregationSource' <$>
                   (x .:? "AwsRegions") <*> (x .:? "AllAwsRegions") <*>
                     (x .: "AccountIds"))

instance Hashable AccountAggregationSource where

instance NFData AccountAggregationSource where

instance ToJSON AccountAggregationSource where
        toJSON AccountAggregationSource'{..}
          = object
              (catMaybes
                 [("AwsRegions" .=) <$> _aasAWSRegions,
                  ("AllAwsRegions" .=) <$> _aasAllAWSRegions,
                  Just ("AccountIds" .= _aasAccountIds)])

-- | Indicates whether an AWS Config rule is compliant based on account ID, region, compliance, and rule name.
--
--
-- A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.
--
--
-- /See:/ 'aggregateComplianceByConfigRule' smart constructor.
data AggregateComplianceByConfigRule =
  AggregateComplianceByConfigRule'
    { _acbcrCompliance     :: !(Maybe Compliance)
    , _acbcrConfigRuleName :: !(Maybe Text)
    , _acbcrAccountId      :: !(Maybe Text)
    , _acbcrAWSRegion      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateComplianceByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbcrCompliance' - Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.
--
-- * 'acbcrConfigRuleName' - The name of the AWS Config rule.
--
-- * 'acbcrAccountId' - The 12-digit account ID of the source account.
--
-- * 'acbcrAWSRegion' - The source region from where the data is aggregated.
aggregateComplianceByConfigRule
    :: AggregateComplianceByConfigRule
aggregateComplianceByConfigRule =
  AggregateComplianceByConfigRule'
    { _acbcrCompliance = Nothing
    , _acbcrConfigRuleName = Nothing
    , _acbcrAccountId = Nothing
    , _acbcrAWSRegion = Nothing
    }


-- | Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.
acbcrCompliance :: Lens' AggregateComplianceByConfigRule (Maybe Compliance)
acbcrCompliance = lens _acbcrCompliance (\ s a -> s{_acbcrCompliance = a})

-- | The name of the AWS Config rule.
acbcrConfigRuleName :: Lens' AggregateComplianceByConfigRule (Maybe Text)
acbcrConfigRuleName = lens _acbcrConfigRuleName (\ s a -> s{_acbcrConfigRuleName = a})

-- | The 12-digit account ID of the source account.
acbcrAccountId :: Lens' AggregateComplianceByConfigRule (Maybe Text)
acbcrAccountId = lens _acbcrAccountId (\ s a -> s{_acbcrAccountId = a})

-- | The source region from where the data is aggregated.
acbcrAWSRegion :: Lens' AggregateComplianceByConfigRule (Maybe Text)
acbcrAWSRegion = lens _acbcrAWSRegion (\ s a -> s{_acbcrAWSRegion = a})

instance FromJSON AggregateComplianceByConfigRule
         where
        parseJSON
          = withObject "AggregateComplianceByConfigRule"
              (\ x ->
                 AggregateComplianceByConfigRule' <$>
                   (x .:? "Compliance") <*> (x .:? "ConfigRuleName") <*>
                     (x .:? "AccountId")
                     <*> (x .:? "AwsRegion"))

instance Hashable AggregateComplianceByConfigRule
         where

instance NFData AggregateComplianceByConfigRule where

-- | Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
--
--
--
-- /See:/ 'aggregateComplianceCount' smart constructor.
data AggregateComplianceCount =
  AggregateComplianceCount'
    { _accGroupName         :: !(Maybe Text)
    , _accComplianceSummary :: !(Maybe ComplianceSummary)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateComplianceCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accGroupName' - The 12-digit account ID or region based on the GroupByKey value.
--
-- * 'accComplianceSummary' - The number of compliant and noncompliant AWS Config rules.
aggregateComplianceCount
    :: AggregateComplianceCount
aggregateComplianceCount =
  AggregateComplianceCount'
    {_accGroupName = Nothing, _accComplianceSummary = Nothing}


-- | The 12-digit account ID or region based on the GroupByKey value.
accGroupName :: Lens' AggregateComplianceCount (Maybe Text)
accGroupName = lens _accGroupName (\ s a -> s{_accGroupName = a})

-- | The number of compliant and noncompliant AWS Config rules.
accComplianceSummary :: Lens' AggregateComplianceCount (Maybe ComplianceSummary)
accComplianceSummary = lens _accComplianceSummary (\ s a -> s{_accComplianceSummary = a})

instance FromJSON AggregateComplianceCount where
        parseJSON
          = withObject "AggregateComplianceCount"
              (\ x ->
                 AggregateComplianceCount' <$>
                   (x .:? "GroupName") <*> (x .:? "ComplianceSummary"))

instance Hashable AggregateComplianceCount where

instance NFData AggregateComplianceCount where

-- | The details of an AWS Config evaluation for an account ID and region in an aggregator. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
--
--
--
-- /See:/ 'aggregateEvaluationResult' smart constructor.
data AggregateEvaluationResult =
  AggregateEvaluationResult'
    { _aerEvaluationResultIdentifier :: !(Maybe EvaluationResultIdentifier)
    , _aerAnnotation                 :: !(Maybe Text)
    , _aerConfigRuleInvokedTime      :: !(Maybe POSIX)
    , _aerResultRecordedTime         :: !(Maybe POSIX)
    , _aerAccountId                  :: !(Maybe Text)
    , _aerComplianceType             :: !(Maybe ComplianceType)
    , _aerAWSRegion                  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateEvaluationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerEvaluationResultIdentifier' - Uniquely identifies the evaluation result.
--
-- * 'aerAnnotation' - Supplementary information about how the agrregate evaluation determined the compliance.
--
-- * 'aerConfigRuleInvokedTime' - The time when the AWS Config rule evaluated the AWS resource.
--
-- * 'aerResultRecordedTime' - The time when AWS Config recorded the aggregate evaluation result.
--
-- * 'aerAccountId' - The 12-digit account ID of the source account.
--
-- * 'aerComplianceType' - The resource compliance status. For the @AggregationEvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
--
-- * 'aerAWSRegion' - The source region from where the data is aggregated.
aggregateEvaluationResult
    :: AggregateEvaluationResult
aggregateEvaluationResult =
  AggregateEvaluationResult'
    { _aerEvaluationResultIdentifier = Nothing
    , _aerAnnotation = Nothing
    , _aerConfigRuleInvokedTime = Nothing
    , _aerResultRecordedTime = Nothing
    , _aerAccountId = Nothing
    , _aerComplianceType = Nothing
    , _aerAWSRegion = Nothing
    }


-- | Uniquely identifies the evaluation result.
aerEvaluationResultIdentifier :: Lens' AggregateEvaluationResult (Maybe EvaluationResultIdentifier)
aerEvaluationResultIdentifier = lens _aerEvaluationResultIdentifier (\ s a -> s{_aerEvaluationResultIdentifier = a})

-- | Supplementary information about how the agrregate evaluation determined the compliance.
aerAnnotation :: Lens' AggregateEvaluationResult (Maybe Text)
aerAnnotation = lens _aerAnnotation (\ s a -> s{_aerAnnotation = a})

-- | The time when the AWS Config rule evaluated the AWS resource.
aerConfigRuleInvokedTime :: Lens' AggregateEvaluationResult (Maybe UTCTime)
aerConfigRuleInvokedTime = lens _aerConfigRuleInvokedTime (\ s a -> s{_aerConfigRuleInvokedTime = a}) . mapping _Time

-- | The time when AWS Config recorded the aggregate evaluation result.
aerResultRecordedTime :: Lens' AggregateEvaluationResult (Maybe UTCTime)
aerResultRecordedTime = lens _aerResultRecordedTime (\ s a -> s{_aerResultRecordedTime = a}) . mapping _Time

-- | The 12-digit account ID of the source account.
aerAccountId :: Lens' AggregateEvaluationResult (Maybe Text)
aerAccountId = lens _aerAccountId (\ s a -> s{_aerAccountId = a})

-- | The resource compliance status. For the @AggregationEvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
aerComplianceType :: Lens' AggregateEvaluationResult (Maybe ComplianceType)
aerComplianceType = lens _aerComplianceType (\ s a -> s{_aerComplianceType = a})

-- | The source region from where the data is aggregated.
aerAWSRegion :: Lens' AggregateEvaluationResult (Maybe Text)
aerAWSRegion = lens _aerAWSRegion (\ s a -> s{_aerAWSRegion = a})

instance FromJSON AggregateEvaluationResult where
        parseJSON
          = withObject "AggregateEvaluationResult"
              (\ x ->
                 AggregateEvaluationResult' <$>
                   (x .:? "EvaluationResultIdentifier") <*>
                     (x .:? "Annotation")
                     <*> (x .:? "ConfigRuleInvokedTime")
                     <*> (x .:? "ResultRecordedTime")
                     <*> (x .:? "AccountId")
                     <*> (x .:? "ComplianceType")
                     <*> (x .:? "AwsRegion"))

instance Hashable AggregateEvaluationResult where

instance NFData AggregateEvaluationResult where

-- | The details that identify a resource that is collected by AWS Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.
--
--
--
-- /See:/ 'aggregateResourceIdentifier' smart constructor.
data AggregateResourceIdentifier =
  AggregateResourceIdentifier'
    { _ariResourceName    :: !(Maybe Text)
    , _ariSourceAccountId :: !Text
    , _ariSourceRegion    :: !Text
    , _ariResourceId      :: !Text
    , _ariResourceType    :: !ResourceType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateResourceIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ariResourceName' - The name of the AWS resource.
--
-- * 'ariSourceAccountId' - The 12-digit account ID of the source account.
--
-- * 'ariSourceRegion' - The source region where data is aggregated.
--
-- * 'ariResourceId' - The ID of the AWS resource.
--
-- * 'ariResourceType' - The type of the AWS resource.
aggregateResourceIdentifier
    :: Text -- ^ 'ariSourceAccountId'
    -> Text -- ^ 'ariSourceRegion'
    -> Text -- ^ 'ariResourceId'
    -> ResourceType -- ^ 'ariResourceType'
    -> AggregateResourceIdentifier
aggregateResourceIdentifier pSourceAccountId_ pSourceRegion_ pResourceId_ pResourceType_ =
  AggregateResourceIdentifier'
    { _ariResourceName = Nothing
    , _ariSourceAccountId = pSourceAccountId_
    , _ariSourceRegion = pSourceRegion_
    , _ariResourceId = pResourceId_
    , _ariResourceType = pResourceType_
    }


-- | The name of the AWS resource.
ariResourceName :: Lens' AggregateResourceIdentifier (Maybe Text)
ariResourceName = lens _ariResourceName (\ s a -> s{_ariResourceName = a})

-- | The 12-digit account ID of the source account.
ariSourceAccountId :: Lens' AggregateResourceIdentifier Text
ariSourceAccountId = lens _ariSourceAccountId (\ s a -> s{_ariSourceAccountId = a})

-- | The source region where data is aggregated.
ariSourceRegion :: Lens' AggregateResourceIdentifier Text
ariSourceRegion = lens _ariSourceRegion (\ s a -> s{_ariSourceRegion = a})

-- | The ID of the AWS resource.
ariResourceId :: Lens' AggregateResourceIdentifier Text
ariResourceId = lens _ariResourceId (\ s a -> s{_ariResourceId = a})

-- | The type of the AWS resource.
ariResourceType :: Lens' AggregateResourceIdentifier ResourceType
ariResourceType = lens _ariResourceType (\ s a -> s{_ariResourceType = a})

instance FromJSON AggregateResourceIdentifier where
        parseJSON
          = withObject "AggregateResourceIdentifier"
              (\ x ->
                 AggregateResourceIdentifier' <$>
                   (x .:? "ResourceName") <*> (x .: "SourceAccountId")
                     <*> (x .: "SourceRegion")
                     <*> (x .: "ResourceId")
                     <*> (x .: "ResourceType"))

instance Hashable AggregateResourceIdentifier where

instance NFData AggregateResourceIdentifier where

instance ToJSON AggregateResourceIdentifier where
        toJSON AggregateResourceIdentifier'{..}
          = object
              (catMaybes
                 [("ResourceName" .=) <$> _ariResourceName,
                  Just ("SourceAccountId" .= _ariSourceAccountId),
                  Just ("SourceRegion" .= _ariSourceRegion),
                  Just ("ResourceId" .= _ariResourceId),
                  Just ("ResourceType" .= _ariResourceType)])

-- | The current sync status between the source and the aggregator account.
--
--
--
-- /See:/ 'aggregatedSourceStatus' smart constructor.
data AggregatedSourceStatus =
  AggregatedSourceStatus'
    { _assLastErrorCode    :: !(Maybe Text)
    , _assLastUpdateStatus :: !(Maybe AggregatedSourceStatusType)
    , _assSourceType       :: !(Maybe AggregatedSourceType)
    , _assSourceId         :: !(Maybe Text)
    , _assLastErrorMessage :: !(Maybe Text)
    , _assAWSRegion        :: !(Maybe Text)
    , _assLastUpdateTime   :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregatedSourceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assLastErrorCode' - The error code that AWS Config returned when the source account aggregation last failed.
--
-- * 'assLastUpdateStatus' - Filters the last updated status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
--
-- * 'assSourceType' - The source account or an organization.
--
-- * 'assSourceId' - The source account ID or an organization.
--
-- * 'assLastErrorMessage' - The message indicating that the source account aggregation failed due to an error.
--
-- * 'assAWSRegion' - The region authorized to collect aggregated data.
--
-- * 'assLastUpdateTime' - The time of the last update.
aggregatedSourceStatus
    :: AggregatedSourceStatus
aggregatedSourceStatus =
  AggregatedSourceStatus'
    { _assLastErrorCode = Nothing
    , _assLastUpdateStatus = Nothing
    , _assSourceType = Nothing
    , _assSourceId = Nothing
    , _assLastErrorMessage = Nothing
    , _assAWSRegion = Nothing
    , _assLastUpdateTime = Nothing
    }


-- | The error code that AWS Config returned when the source account aggregation last failed.
assLastErrorCode :: Lens' AggregatedSourceStatus (Maybe Text)
assLastErrorCode = lens _assLastErrorCode (\ s a -> s{_assLastErrorCode = a})

-- | Filters the last updated status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
assLastUpdateStatus :: Lens' AggregatedSourceStatus (Maybe AggregatedSourceStatusType)
assLastUpdateStatus = lens _assLastUpdateStatus (\ s a -> s{_assLastUpdateStatus = a})

-- | The source account or an organization.
assSourceType :: Lens' AggregatedSourceStatus (Maybe AggregatedSourceType)
assSourceType = lens _assSourceType (\ s a -> s{_assSourceType = a})

-- | The source account ID or an organization.
assSourceId :: Lens' AggregatedSourceStatus (Maybe Text)
assSourceId = lens _assSourceId (\ s a -> s{_assSourceId = a})

-- | The message indicating that the source account aggregation failed due to an error.
assLastErrorMessage :: Lens' AggregatedSourceStatus (Maybe Text)
assLastErrorMessage = lens _assLastErrorMessage (\ s a -> s{_assLastErrorMessage = a})

-- | The region authorized to collect aggregated data.
assAWSRegion :: Lens' AggregatedSourceStatus (Maybe Text)
assAWSRegion = lens _assAWSRegion (\ s a -> s{_assAWSRegion = a})

-- | The time of the last update.
assLastUpdateTime :: Lens' AggregatedSourceStatus (Maybe UTCTime)
assLastUpdateTime = lens _assLastUpdateTime (\ s a -> s{_assLastUpdateTime = a}) . mapping _Time

instance FromJSON AggregatedSourceStatus where
        parseJSON
          = withObject "AggregatedSourceStatus"
              (\ x ->
                 AggregatedSourceStatus' <$>
                   (x .:? "LastErrorCode") <*>
                     (x .:? "LastUpdateStatus")
                     <*> (x .:? "SourceType")
                     <*> (x .:? "SourceId")
                     <*> (x .:? "LastErrorMessage")
                     <*> (x .:? "AwsRegion")
                     <*> (x .:? "LastUpdateTime"))

instance Hashable AggregatedSourceStatus where

instance NFData AggregatedSourceStatus where

-- | An object that represents the authorizations granted to aggregator accounts and regions.
--
--
--
-- /See:/ 'aggregationAuthorization' smart constructor.
data AggregationAuthorization =
  AggregationAuthorization'
    { _aaCreationTime                :: !(Maybe POSIX)
    , _aaAuthorizedAWSRegion         :: !(Maybe Text)
    , _aaAggregationAuthorizationARN :: !(Maybe Text)
    , _aaAuthorizedAccountId         :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregationAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaCreationTime' - The time stamp when the aggregation authorization was created.
--
-- * 'aaAuthorizedAWSRegion' - The region authorized to collect aggregated data.
--
-- * 'aaAggregationAuthorizationARN' - The Amazon Resource Name (ARN) of the aggregation object.
--
-- * 'aaAuthorizedAccountId' - The 12-digit account ID of the account authorized to aggregate data.
aggregationAuthorization
    :: AggregationAuthorization
aggregationAuthorization =
  AggregationAuthorization'
    { _aaCreationTime = Nothing
    , _aaAuthorizedAWSRegion = Nothing
    , _aaAggregationAuthorizationARN = Nothing
    , _aaAuthorizedAccountId = Nothing
    }


-- | The time stamp when the aggregation authorization was created.
aaCreationTime :: Lens' AggregationAuthorization (Maybe UTCTime)
aaCreationTime = lens _aaCreationTime (\ s a -> s{_aaCreationTime = a}) . mapping _Time

-- | The region authorized to collect aggregated data.
aaAuthorizedAWSRegion :: Lens' AggregationAuthorization (Maybe Text)
aaAuthorizedAWSRegion = lens _aaAuthorizedAWSRegion (\ s a -> s{_aaAuthorizedAWSRegion = a})

-- | The Amazon Resource Name (ARN) of the aggregation object.
aaAggregationAuthorizationARN :: Lens' AggregationAuthorization (Maybe Text)
aaAggregationAuthorizationARN = lens _aaAggregationAuthorizationARN (\ s a -> s{_aaAggregationAuthorizationARN = a})

-- | The 12-digit account ID of the account authorized to aggregate data.
aaAuthorizedAccountId :: Lens' AggregationAuthorization (Maybe Text)
aaAuthorizedAccountId = lens _aaAuthorizedAccountId (\ s a -> s{_aaAuthorizedAccountId = a})

instance FromJSON AggregationAuthorization where
        parseJSON
          = withObject "AggregationAuthorization"
              (\ x ->
                 AggregationAuthorization' <$>
                   (x .:? "CreationTime") <*>
                     (x .:? "AuthorizedAwsRegion")
                     <*> (x .:? "AggregationAuthorizationArn")
                     <*> (x .:? "AuthorizedAccountId"))

instance Hashable AggregationAuthorization where

instance NFData AggregationAuthorization where

-- | The detailed configuration of a specified resource.
--
--
--
-- /See:/ 'baseConfigurationItem' smart constructor.
data BaseConfigurationItem =
  BaseConfigurationItem'
    { _bciResourceId                   :: !(Maybe Text)
    , _bciResourceType                 :: !(Maybe ResourceType)
    , _bciConfigurationStateId         :: !(Maybe Text)
    , _bciArn                          :: !(Maybe Text)
    , _bciResourceName                 :: !(Maybe Text)
    , _bciResourceCreationTime         :: !(Maybe POSIX)
    , _bciConfigurationItemStatus      :: !(Maybe ConfigurationItemStatus)
    , _bciConfigurationItemCaptureTime :: !(Maybe POSIX)
    , _bciAccountId                    :: !(Maybe Text)
    , _bciSupplementaryConfiguration   :: !(Maybe (Map Text Text))
    , _bciAvailabilityZone             :: !(Maybe Text)
    , _bciVersion                      :: !(Maybe Text)
    , _bciAwsRegion                    :: !(Maybe Text)
    , _bciConfiguration                :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BaseConfigurationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bciResourceId' - The ID of the resource (for example., sg-xxxxxx).
--
-- * 'bciResourceType' - The type of AWS resource.
--
-- * 'bciConfigurationStateId' - An identifier that indicates the ordering of the configuration items of a resource.
--
-- * 'bciArn' - The Amazon Resource Name (ARN) of the resource.
--
-- * 'bciResourceName' - The custom name of the resource, if available.
--
-- * 'bciResourceCreationTime' - The time stamp when the resource was created.
--
-- * 'bciConfigurationItemStatus' - The configuration item status.
--
-- * 'bciConfigurationItemCaptureTime' - The time when the configuration recording was initiated.
--
-- * 'bciAccountId' - The 12-digit AWS account ID associated with the resource.
--
-- * 'bciSupplementaryConfiguration' - Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.
--
-- * 'bciAvailabilityZone' - The Availability Zone associated with the resource.
--
-- * 'bciVersion' - The version number of the resource configuration.
--
-- * 'bciAwsRegion' - The region where the resource resides.
--
-- * 'bciConfiguration' - The description of the resource configuration.
baseConfigurationItem
    :: BaseConfigurationItem
baseConfigurationItem =
  BaseConfigurationItem'
    { _bciResourceId = Nothing
    , _bciResourceType = Nothing
    , _bciConfigurationStateId = Nothing
    , _bciArn = Nothing
    , _bciResourceName = Nothing
    , _bciResourceCreationTime = Nothing
    , _bciConfigurationItemStatus = Nothing
    , _bciConfigurationItemCaptureTime = Nothing
    , _bciAccountId = Nothing
    , _bciSupplementaryConfiguration = Nothing
    , _bciAvailabilityZone = Nothing
    , _bciVersion = Nothing
    , _bciAwsRegion = Nothing
    , _bciConfiguration = Nothing
    }


-- | The ID of the resource (for example., sg-xxxxxx).
bciResourceId :: Lens' BaseConfigurationItem (Maybe Text)
bciResourceId = lens _bciResourceId (\ s a -> s{_bciResourceId = a})

-- | The type of AWS resource.
bciResourceType :: Lens' BaseConfigurationItem (Maybe ResourceType)
bciResourceType = lens _bciResourceType (\ s a -> s{_bciResourceType = a})

-- | An identifier that indicates the ordering of the configuration items of a resource.
bciConfigurationStateId :: Lens' BaseConfigurationItem (Maybe Text)
bciConfigurationStateId = lens _bciConfigurationStateId (\ s a -> s{_bciConfigurationStateId = a})

-- | The Amazon Resource Name (ARN) of the resource.
bciArn :: Lens' BaseConfigurationItem (Maybe Text)
bciArn = lens _bciArn (\ s a -> s{_bciArn = a})

-- | The custom name of the resource, if available.
bciResourceName :: Lens' BaseConfigurationItem (Maybe Text)
bciResourceName = lens _bciResourceName (\ s a -> s{_bciResourceName = a})

-- | The time stamp when the resource was created.
bciResourceCreationTime :: Lens' BaseConfigurationItem (Maybe UTCTime)
bciResourceCreationTime = lens _bciResourceCreationTime (\ s a -> s{_bciResourceCreationTime = a}) . mapping _Time

-- | The configuration item status.
bciConfigurationItemStatus :: Lens' BaseConfigurationItem (Maybe ConfigurationItemStatus)
bciConfigurationItemStatus = lens _bciConfigurationItemStatus (\ s a -> s{_bciConfigurationItemStatus = a})

-- | The time when the configuration recording was initiated.
bciConfigurationItemCaptureTime :: Lens' BaseConfigurationItem (Maybe UTCTime)
bciConfigurationItemCaptureTime = lens _bciConfigurationItemCaptureTime (\ s a -> s{_bciConfigurationItemCaptureTime = a}) . mapping _Time

-- | The 12-digit AWS account ID associated with the resource.
bciAccountId :: Lens' BaseConfigurationItem (Maybe Text)
bciAccountId = lens _bciAccountId (\ s a -> s{_bciAccountId = a})

-- | Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.
bciSupplementaryConfiguration :: Lens' BaseConfigurationItem (HashMap Text Text)
bciSupplementaryConfiguration = lens _bciSupplementaryConfiguration (\ s a -> s{_bciSupplementaryConfiguration = a}) . _Default . _Map

-- | The Availability Zone associated with the resource.
bciAvailabilityZone :: Lens' BaseConfigurationItem (Maybe Text)
bciAvailabilityZone = lens _bciAvailabilityZone (\ s a -> s{_bciAvailabilityZone = a})

-- | The version number of the resource configuration.
bciVersion :: Lens' BaseConfigurationItem (Maybe Text)
bciVersion = lens _bciVersion (\ s a -> s{_bciVersion = a})

-- | The region where the resource resides.
bciAwsRegion :: Lens' BaseConfigurationItem (Maybe Text)
bciAwsRegion = lens _bciAwsRegion (\ s a -> s{_bciAwsRegion = a})

-- | The description of the resource configuration.
bciConfiguration :: Lens' BaseConfigurationItem (Maybe Text)
bciConfiguration = lens _bciConfiguration (\ s a -> s{_bciConfiguration = a})

instance FromJSON BaseConfigurationItem where
        parseJSON
          = withObject "BaseConfigurationItem"
              (\ x ->
                 BaseConfigurationItem' <$>
                   (x .:? "resourceId") <*> (x .:? "resourceType") <*>
                     (x .:? "configurationStateId")
                     <*> (x .:? "arn")
                     <*> (x .:? "resourceName")
                     <*> (x .:? "resourceCreationTime")
                     <*> (x .:? "configurationItemStatus")
                     <*> (x .:? "configurationItemCaptureTime")
                     <*> (x .:? "accountId")
                     <*> (x .:? "supplementaryConfiguration" .!= mempty)
                     <*> (x .:? "availabilityZone")
                     <*> (x .:? "version")
                     <*> (x .:? "awsRegion")
                     <*> (x .:? "configuration"))

instance Hashable BaseConfigurationItem where

instance NFData BaseConfigurationItem where

-- | Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.
--
--
--
-- /See:/ 'compliance' smart constructor.
data Compliance =
  Compliance'
    { _cComplianceContributorCount :: !(Maybe ComplianceContributorCount)
    , _cComplianceType             :: !(Maybe ComplianceType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Compliance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cComplianceContributorCount' - The number of AWS resources or AWS Config rules that cause a result of @NON_COMPLIANT@ , up to a maximum number.
--
-- * 'cComplianceType' - Indicates whether an AWS resource or AWS Config rule is compliant. A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules. A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply. AWS Config returns the @INSUFFICIENT_DATA@ value when no evaluation results are available for the AWS resource or AWS Config rule. For the @Compliance@ data type, AWS Config supports only @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ values. AWS Config does not support the @NOT_APPLICABLE@ value for the @Compliance@ data type.
compliance
    :: Compliance
compliance =
  Compliance'
    {_cComplianceContributorCount = Nothing, _cComplianceType = Nothing}


-- | The number of AWS resources or AWS Config rules that cause a result of @NON_COMPLIANT@ , up to a maximum number.
cComplianceContributorCount :: Lens' Compliance (Maybe ComplianceContributorCount)
cComplianceContributorCount = lens _cComplianceContributorCount (\ s a -> s{_cComplianceContributorCount = a})

-- | Indicates whether an AWS resource or AWS Config rule is compliant. A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules. A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply. AWS Config returns the @INSUFFICIENT_DATA@ value when no evaluation results are available for the AWS resource or AWS Config rule. For the @Compliance@ data type, AWS Config supports only @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ values. AWS Config does not support the @NOT_APPLICABLE@ value for the @Compliance@ data type.
cComplianceType :: Lens' Compliance (Maybe ComplianceType)
cComplianceType = lens _cComplianceType (\ s a -> s{_cComplianceType = a})

instance FromJSON Compliance where
        parseJSON
          = withObject "Compliance"
              (\ x ->
                 Compliance' <$>
                   (x .:? "ComplianceContributorCount") <*>
                     (x .:? "ComplianceType"))

instance Hashable Compliance where

instance NFData Compliance where

-- | Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
--
--
--
-- /See:/ 'complianceByConfigRule' smart constructor.
data ComplianceByConfigRule =
  ComplianceByConfigRule'
    { _cbcrCompliance     :: !(Maybe Compliance)
    , _cbcrConfigRuleName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComplianceByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbcrCompliance' - Indicates whether the AWS Config rule is compliant.
--
-- * 'cbcrConfigRuleName' - The name of the AWS Config rule.
complianceByConfigRule
    :: ComplianceByConfigRule
complianceByConfigRule =
  ComplianceByConfigRule'
    {_cbcrCompliance = Nothing, _cbcrConfigRuleName = Nothing}


-- | Indicates whether the AWS Config rule is compliant.
cbcrCompliance :: Lens' ComplianceByConfigRule (Maybe Compliance)
cbcrCompliance = lens _cbcrCompliance (\ s a -> s{_cbcrCompliance = a})

-- | The name of the AWS Config rule.
cbcrConfigRuleName :: Lens' ComplianceByConfigRule (Maybe Text)
cbcrConfigRuleName = lens _cbcrConfigRuleName (\ s a -> s{_cbcrConfigRuleName = a})

instance FromJSON ComplianceByConfigRule where
        parseJSON
          = withObject "ComplianceByConfigRule"
              (\ x ->
                 ComplianceByConfigRule' <$>
                   (x .:? "Compliance") <*> (x .:? "ConfigRuleName"))

instance Hashable ComplianceByConfigRule where

instance NFData ComplianceByConfigRule where

-- | Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
--
--
--
-- /See:/ 'complianceByResource' smart constructor.
data ComplianceByResource =
  ComplianceByResource'
    { _cbrResourceId   :: !(Maybe Text)
    , _cbrResourceType :: !(Maybe Text)
    , _cbrCompliance   :: !(Maybe Compliance)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComplianceByResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrResourceId' - The ID of the AWS resource that was evaluated.
--
-- * 'cbrResourceType' - The type of the AWS resource that was evaluated.
--
-- * 'cbrCompliance' - Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.
complianceByResource
    :: ComplianceByResource
complianceByResource =
  ComplianceByResource'
    { _cbrResourceId = Nothing
    , _cbrResourceType = Nothing
    , _cbrCompliance = Nothing
    }


-- | The ID of the AWS resource that was evaluated.
cbrResourceId :: Lens' ComplianceByResource (Maybe Text)
cbrResourceId = lens _cbrResourceId (\ s a -> s{_cbrResourceId = a})

-- | The type of the AWS resource that was evaluated.
cbrResourceType :: Lens' ComplianceByResource (Maybe Text)
cbrResourceType = lens _cbrResourceType (\ s a -> s{_cbrResourceType = a})

-- | Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.
cbrCompliance :: Lens' ComplianceByResource (Maybe Compliance)
cbrCompliance = lens _cbrCompliance (\ s a -> s{_cbrCompliance = a})

instance FromJSON ComplianceByResource where
        parseJSON
          = withObject "ComplianceByResource"
              (\ x ->
                 ComplianceByResource' <$>
                   (x .:? "ResourceId") <*> (x .:? "ResourceType") <*>
                     (x .:? "Compliance"))

instance Hashable ComplianceByResource where

instance NFData ComplianceByResource where

-- | The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.
--
--
--
-- /See:/ 'complianceContributorCount' smart constructor.
data ComplianceContributorCount =
  ComplianceContributorCount'
    { _cccCappedCount :: !(Maybe Int)
    , _cccCapExceeded :: !(Maybe Bool)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComplianceContributorCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccCappedCount' - The number of AWS resources or AWS Config rules responsible for the current compliance of the item.
--
-- * 'cccCapExceeded' - Indicates whether the maximum count is reached.
complianceContributorCount
    :: ComplianceContributorCount
complianceContributorCount =
  ComplianceContributorCount'
    {_cccCappedCount = Nothing, _cccCapExceeded = Nothing}


-- | The number of AWS resources or AWS Config rules responsible for the current compliance of the item.
cccCappedCount :: Lens' ComplianceContributorCount (Maybe Int)
cccCappedCount = lens _cccCappedCount (\ s a -> s{_cccCappedCount = a})

-- | Indicates whether the maximum count is reached.
cccCapExceeded :: Lens' ComplianceContributorCount (Maybe Bool)
cccCapExceeded = lens _cccCapExceeded (\ s a -> s{_cccCapExceeded = a})

instance FromJSON ComplianceContributorCount where
        parseJSON
          = withObject "ComplianceContributorCount"
              (\ x ->
                 ComplianceContributorCount' <$>
                   (x .:? "CappedCount") <*> (x .:? "CapExceeded"))

instance Hashable ComplianceContributorCount where

instance NFData ComplianceContributorCount where

-- | The number of AWS Config rules or AWS resources that are compliant and noncompliant.
--
--
--
-- /See:/ 'complianceSummary' smart constructor.
data ComplianceSummary =
  ComplianceSummary'
    { _csComplianceSummaryTimestamp :: !(Maybe POSIX)
    , _csCompliantResourceCount     :: !(Maybe ComplianceContributorCount)
    , _csNonCompliantResourceCount  :: !(Maybe ComplianceContributorCount)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComplianceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csComplianceSummaryTimestamp' - The time that AWS Config created the compliance summary.
--
-- * 'csCompliantResourceCount' - The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.
--
-- * 'csNonCompliantResourceCount' - The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.
complianceSummary
    :: ComplianceSummary
complianceSummary =
  ComplianceSummary'
    { _csComplianceSummaryTimestamp = Nothing
    , _csCompliantResourceCount = Nothing
    , _csNonCompliantResourceCount = Nothing
    }


-- | The time that AWS Config created the compliance summary.
csComplianceSummaryTimestamp :: Lens' ComplianceSummary (Maybe UTCTime)
csComplianceSummaryTimestamp = lens _csComplianceSummaryTimestamp (\ s a -> s{_csComplianceSummaryTimestamp = a}) . mapping _Time

-- | The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.
csCompliantResourceCount :: Lens' ComplianceSummary (Maybe ComplianceContributorCount)
csCompliantResourceCount = lens _csCompliantResourceCount (\ s a -> s{_csCompliantResourceCount = a})

-- | The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.
csNonCompliantResourceCount :: Lens' ComplianceSummary (Maybe ComplianceContributorCount)
csNonCompliantResourceCount = lens _csNonCompliantResourceCount (\ s a -> s{_csNonCompliantResourceCount = a})

instance FromJSON ComplianceSummary where
        parseJSON
          = withObject "ComplianceSummary"
              (\ x ->
                 ComplianceSummary' <$>
                   (x .:? "ComplianceSummaryTimestamp") <*>
                     (x .:? "CompliantResourceCount")
                     <*> (x .:? "NonCompliantResourceCount"))

instance Hashable ComplianceSummary where

instance NFData ComplianceSummary where

-- | The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.
--
--
--
-- /See:/ 'complianceSummaryByResourceType' smart constructor.
data ComplianceSummaryByResourceType =
  ComplianceSummaryByResourceType'
    { _csbrtResourceType      :: !(Maybe Text)
    , _csbrtComplianceSummary :: !(Maybe ComplianceSummary)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComplianceSummaryByResourceType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csbrtResourceType' - The type of AWS resource.
--
-- * 'csbrtComplianceSummary' - The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each.
complianceSummaryByResourceType
    :: ComplianceSummaryByResourceType
complianceSummaryByResourceType =
  ComplianceSummaryByResourceType'
    {_csbrtResourceType = Nothing, _csbrtComplianceSummary = Nothing}


-- | The type of AWS resource.
csbrtResourceType :: Lens' ComplianceSummaryByResourceType (Maybe Text)
csbrtResourceType = lens _csbrtResourceType (\ s a -> s{_csbrtResourceType = a})

-- | The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each.
csbrtComplianceSummary :: Lens' ComplianceSummaryByResourceType (Maybe ComplianceSummary)
csbrtComplianceSummary = lens _csbrtComplianceSummary (\ s a -> s{_csbrtComplianceSummary = a})

instance FromJSON ComplianceSummaryByResourceType
         where
        parseJSON
          = withObject "ComplianceSummaryByResourceType"
              (\ x ->
                 ComplianceSummaryByResourceType' <$>
                   (x .:? "ResourceType") <*>
                     (x .:? "ComplianceSummary"))

instance Hashable ComplianceSummaryByResourceType
         where

instance NFData ComplianceSummaryByResourceType where

-- | Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
--
--
--
-- /See:/ 'configExportDeliveryInfo' smart constructor.
data ConfigExportDeliveryInfo =
  ConfigExportDeliveryInfo'
    { _cediLastErrorCode      :: !(Maybe Text)
    , _cediLastAttemptTime    :: !(Maybe POSIX)
    , _cediLastSuccessfulTime :: !(Maybe POSIX)
    , _cediLastStatus         :: !(Maybe DeliveryStatus)
    , _cediLastErrorMessage   :: !(Maybe Text)
    , _cediNextDeliveryTime   :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigExportDeliveryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cediLastErrorCode' - The error code from the last attempted delivery.
--
-- * 'cediLastAttemptTime' - The time of the last attempted delivery.
--
-- * 'cediLastSuccessfulTime' - The time of the last successful delivery.
--
-- * 'cediLastStatus' - Status of the last attempted delivery.
--
-- * 'cediLastErrorMessage' - The error message from the last attempted delivery.
--
-- * 'cediNextDeliveryTime' - The time that the next delivery occurs.
configExportDeliveryInfo
    :: ConfigExportDeliveryInfo
configExportDeliveryInfo =
  ConfigExportDeliveryInfo'
    { _cediLastErrorCode = Nothing
    , _cediLastAttemptTime = Nothing
    , _cediLastSuccessfulTime = Nothing
    , _cediLastStatus = Nothing
    , _cediLastErrorMessage = Nothing
    , _cediNextDeliveryTime = Nothing
    }


-- | The error code from the last attempted delivery.
cediLastErrorCode :: Lens' ConfigExportDeliveryInfo (Maybe Text)
cediLastErrorCode = lens _cediLastErrorCode (\ s a -> s{_cediLastErrorCode = a})

-- | The time of the last attempted delivery.
cediLastAttemptTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediLastAttemptTime = lens _cediLastAttemptTime (\ s a -> s{_cediLastAttemptTime = a}) . mapping _Time

-- | The time of the last successful delivery.
cediLastSuccessfulTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediLastSuccessfulTime = lens _cediLastSuccessfulTime (\ s a -> s{_cediLastSuccessfulTime = a}) . mapping _Time

-- | Status of the last attempted delivery.
cediLastStatus :: Lens' ConfigExportDeliveryInfo (Maybe DeliveryStatus)
cediLastStatus = lens _cediLastStatus (\ s a -> s{_cediLastStatus = a})

-- | The error message from the last attempted delivery.
cediLastErrorMessage :: Lens' ConfigExportDeliveryInfo (Maybe Text)
cediLastErrorMessage = lens _cediLastErrorMessage (\ s a -> s{_cediLastErrorMessage = a})

-- | The time that the next delivery occurs.
cediNextDeliveryTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediNextDeliveryTime = lens _cediNextDeliveryTime (\ s a -> s{_cediNextDeliveryTime = a}) . mapping _Time

instance FromJSON ConfigExportDeliveryInfo where
        parseJSON
          = withObject "ConfigExportDeliveryInfo"
              (\ x ->
                 ConfigExportDeliveryInfo' <$>
                   (x .:? "lastErrorCode") <*> (x .:? "lastAttemptTime")
                     <*> (x .:? "lastSuccessfulTime")
                     <*> (x .:? "lastStatus")
                     <*> (x .:? "lastErrorMessage")
                     <*> (x .:? "nextDeliveryTime"))

instance Hashable ConfigExportDeliveryInfo where

instance NFData ConfigExportDeliveryInfo where

-- | An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).
--
--
-- For more information about developing and using AWS Config rules, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html Evaluating AWS Resource Configurations with AWS Config> in the /AWS Config Developer Guide/ .
--
--
-- /See:/ 'configRule' smart constructor.
data ConfigRule =
  ConfigRule'
    { _crInputParameters           :: !(Maybe Text)
    , _crConfigRuleName            :: !(Maybe Text)
    , _crCreatedBy                 :: !(Maybe Text)
    , _crMaximumExecutionFrequency :: !(Maybe MaximumExecutionFrequency)
    , _crConfigRuleId              :: !(Maybe Text)
    , _crScope                     :: !(Maybe Scope)
    , _crConfigRuleState           :: !(Maybe ConfigRuleState)
    , _crDescription               :: !(Maybe Text)
    , _crConfigRuleARN             :: !(Maybe Text)
    , _crSource                    :: !Source
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crInputParameters' - A string, in JSON format, that is passed to the AWS Config rule Lambda function.
--
-- * 'crConfigRuleName' - The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.
--
-- * 'crCreatedBy' - Service principal name of the service that created the rule.
--
-- * 'crMaximumExecutionFrequency' - The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for @MaximumExecutionFrequency@ when:     * You are using an AWS managed rule that is triggered at a periodic frequency.     * Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
--
-- * 'crConfigRuleId' - The ID of the AWS Config rule.
--
-- * 'crScope' - Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.
--
-- * 'crConfigRuleState' - Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the AWS Config rule. AWS Config sets the state of the rule to @EVALUATING@ temporarily after you use the @StartConfigRulesEvaluation@ request to evaluate your resources against the AWS Config rule. AWS Config sets the state of the rule to @DELETING_RESULTS@ temporarily after you use the @DeleteEvaluationResults@ request to delete the current evaluation results for the AWS Config rule. AWS Config temporarily sets the state of a rule to @DELETING@ after you use the @DeleteConfigRule@ request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.
--
-- * 'crDescription' - The description that you provide for the AWS Config rule.
--
-- * 'crConfigRuleARN' - The Amazon Resource Name (ARN) of the AWS Config rule.
--
-- * 'crSource' - Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.
configRule
    :: Source -- ^ 'crSource'
    -> ConfigRule
configRule pSource_ =
  ConfigRule'
    { _crInputParameters = Nothing
    , _crConfigRuleName = Nothing
    , _crCreatedBy = Nothing
    , _crMaximumExecutionFrequency = Nothing
    , _crConfigRuleId = Nothing
    , _crScope = Nothing
    , _crConfigRuleState = Nothing
    , _crDescription = Nothing
    , _crConfigRuleARN = Nothing
    , _crSource = pSource_
    }


-- | A string, in JSON format, that is passed to the AWS Config rule Lambda function.
crInputParameters :: Lens' ConfigRule (Maybe Text)
crInputParameters = lens _crInputParameters (\ s a -> s{_crInputParameters = a})

-- | The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.
crConfigRuleName :: Lens' ConfigRule (Maybe Text)
crConfigRuleName = lens _crConfigRuleName (\ s a -> s{_crConfigRuleName = a})

-- | Service principal name of the service that created the rule.
crCreatedBy :: Lens' ConfigRule (Maybe Text)
crCreatedBy = lens _crCreatedBy (\ s a -> s{_crCreatedBy = a})

-- | The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for @MaximumExecutionFrequency@ when:     * You are using an AWS managed rule that is triggered at a periodic frequency.     * Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
crMaximumExecutionFrequency :: Lens' ConfigRule (Maybe MaximumExecutionFrequency)
crMaximumExecutionFrequency = lens _crMaximumExecutionFrequency (\ s a -> s{_crMaximumExecutionFrequency = a})

-- | The ID of the AWS Config rule.
crConfigRuleId :: Lens' ConfigRule (Maybe Text)
crConfigRuleId = lens _crConfigRuleId (\ s a -> s{_crConfigRuleId = a})

-- | Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.
crScope :: Lens' ConfigRule (Maybe Scope)
crScope = lens _crScope (\ s a -> s{_crScope = a})

-- | Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the AWS Config rule. AWS Config sets the state of the rule to @EVALUATING@ temporarily after you use the @StartConfigRulesEvaluation@ request to evaluate your resources against the AWS Config rule. AWS Config sets the state of the rule to @DELETING_RESULTS@ temporarily after you use the @DeleteEvaluationResults@ request to delete the current evaluation results for the AWS Config rule. AWS Config temporarily sets the state of a rule to @DELETING@ after you use the @DeleteConfigRule@ request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.
crConfigRuleState :: Lens' ConfigRule (Maybe ConfigRuleState)
crConfigRuleState = lens _crConfigRuleState (\ s a -> s{_crConfigRuleState = a})

-- | The description that you provide for the AWS Config rule.
crDescription :: Lens' ConfigRule (Maybe Text)
crDescription = lens _crDescription (\ s a -> s{_crDescription = a})

-- | The Amazon Resource Name (ARN) of the AWS Config rule.
crConfigRuleARN :: Lens' ConfigRule (Maybe Text)
crConfigRuleARN = lens _crConfigRuleARN (\ s a -> s{_crConfigRuleARN = a})

-- | Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.
crSource :: Lens' ConfigRule Source
crSource = lens _crSource (\ s a -> s{_crSource = a})

instance FromJSON ConfigRule where
        parseJSON
          = withObject "ConfigRule"
              (\ x ->
                 ConfigRule' <$>
                   (x .:? "InputParameters") <*>
                     (x .:? "ConfigRuleName")
                     <*> (x .:? "CreatedBy")
                     <*> (x .:? "MaximumExecutionFrequency")
                     <*> (x .:? "ConfigRuleId")
                     <*> (x .:? "Scope")
                     <*> (x .:? "ConfigRuleState")
                     <*> (x .:? "Description")
                     <*> (x .:? "ConfigRuleArn")
                     <*> (x .: "Source"))

instance Hashable ConfigRule where

instance NFData ConfigRule where

instance ToJSON ConfigRule where
        toJSON ConfigRule'{..}
          = object
              (catMaybes
                 [("InputParameters" .=) <$> _crInputParameters,
                  ("ConfigRuleName" .=) <$> _crConfigRuleName,
                  ("CreatedBy" .=) <$> _crCreatedBy,
                  ("MaximumExecutionFrequency" .=) <$>
                    _crMaximumExecutionFrequency,
                  ("ConfigRuleId" .=) <$> _crConfigRuleId,
                  ("Scope" .=) <$> _crScope,
                  ("ConfigRuleState" .=) <$> _crConfigRuleState,
                  ("Description" .=) <$> _crDescription,
                  ("ConfigRuleArn" .=) <$> _crConfigRuleARN,
                  Just ("Source" .= _crSource)])

-- | Filters the compliance results based on account ID, region, compliance type, and rule name.
--
--
--
-- /See:/ 'configRuleComplianceFilters' smart constructor.
data ConfigRuleComplianceFilters =
  ConfigRuleComplianceFilters'
    { _crcfConfigRuleName :: !(Maybe Text)
    , _crcfAccountId      :: !(Maybe Text)
    , _crcfComplianceType :: !(Maybe ComplianceType)
    , _crcfAWSRegion      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigRuleComplianceFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcfConfigRuleName' - The name of the AWS Config rule.
--
-- * 'crcfAccountId' - The 12-digit account ID of the source account.
--
-- * 'crcfComplianceType' - The rule compliance status. For the @ConfigRuleComplianceFilters@ data type, AWS Config supports only @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and the @INSUFFICIENT_DATA@ values.
--
-- * 'crcfAWSRegion' - The source region where the data is aggregated.
configRuleComplianceFilters
    :: ConfigRuleComplianceFilters
configRuleComplianceFilters =
  ConfigRuleComplianceFilters'
    { _crcfConfigRuleName = Nothing
    , _crcfAccountId = Nothing
    , _crcfComplianceType = Nothing
    , _crcfAWSRegion = Nothing
    }


-- | The name of the AWS Config rule.
crcfConfigRuleName :: Lens' ConfigRuleComplianceFilters (Maybe Text)
crcfConfigRuleName = lens _crcfConfigRuleName (\ s a -> s{_crcfConfigRuleName = a})

-- | The 12-digit account ID of the source account.
crcfAccountId :: Lens' ConfigRuleComplianceFilters (Maybe Text)
crcfAccountId = lens _crcfAccountId (\ s a -> s{_crcfAccountId = a})

-- | The rule compliance status. For the @ConfigRuleComplianceFilters@ data type, AWS Config supports only @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and the @INSUFFICIENT_DATA@ values.
crcfComplianceType :: Lens' ConfigRuleComplianceFilters (Maybe ComplianceType)
crcfComplianceType = lens _crcfComplianceType (\ s a -> s{_crcfComplianceType = a})

-- | The source region where the data is aggregated.
crcfAWSRegion :: Lens' ConfigRuleComplianceFilters (Maybe Text)
crcfAWSRegion = lens _crcfAWSRegion (\ s a -> s{_crcfAWSRegion = a})

instance Hashable ConfigRuleComplianceFilters where

instance NFData ConfigRuleComplianceFilters where

instance ToJSON ConfigRuleComplianceFilters where
        toJSON ConfigRuleComplianceFilters'{..}
          = object
              (catMaybes
                 [("ConfigRuleName" .=) <$> _crcfConfigRuleName,
                  ("AccountId" .=) <$> _crcfAccountId,
                  ("ComplianceType" .=) <$> _crcfComplianceType,
                  ("AwsRegion" .=) <$> _crcfAWSRegion])

-- | Filters the results based on the account IDs and regions.
--
--
--
-- /See:/ 'configRuleComplianceSummaryFilters' smart constructor.
data ConfigRuleComplianceSummaryFilters =
  ConfigRuleComplianceSummaryFilters'
    { _crcsfAccountId :: !(Maybe Text)
    , _crcsfAWSRegion :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigRuleComplianceSummaryFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcsfAccountId' - The 12-digit account ID of the source account.
--
-- * 'crcsfAWSRegion' - The source region where the data is aggregated.
configRuleComplianceSummaryFilters
    :: ConfigRuleComplianceSummaryFilters
configRuleComplianceSummaryFilters =
  ConfigRuleComplianceSummaryFilters'
    {_crcsfAccountId = Nothing, _crcsfAWSRegion = Nothing}


-- | The 12-digit account ID of the source account.
crcsfAccountId :: Lens' ConfigRuleComplianceSummaryFilters (Maybe Text)
crcsfAccountId = lens _crcsfAccountId (\ s a -> s{_crcsfAccountId = a})

-- | The source region where the data is aggregated.
crcsfAWSRegion :: Lens' ConfigRuleComplianceSummaryFilters (Maybe Text)
crcsfAWSRegion = lens _crcsfAWSRegion (\ s a -> s{_crcsfAWSRegion = a})

instance Hashable ConfigRuleComplianceSummaryFilters
         where

instance NFData ConfigRuleComplianceSummaryFilters
         where

instance ToJSON ConfigRuleComplianceSummaryFilters
         where
        toJSON ConfigRuleComplianceSummaryFilters'{..}
          = object
              (catMaybes
                 [("AccountId" .=) <$> _crcsfAccountId,
                  ("AwsRegion" .=) <$> _crcsfAWSRegion])

-- | Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.
--
--
-- This action does not return status information about custom AWS Config rules.
--
--
-- /See:/ 'configRuleEvaluationStatus' smart constructor.
data ConfigRuleEvaluationStatus =
  ConfigRuleEvaluationStatus'
    { _cresLastErrorCode                :: !(Maybe Text)
    , _cresLastFailedEvaluationTime     :: !(Maybe POSIX)
    , _cresFirstActivatedTime           :: !(Maybe POSIX)
    , _cresLastSuccessfulEvaluationTime :: !(Maybe POSIX)
    , _cresLastDeactivatedTime          :: !(Maybe POSIX)
    , _cresConfigRuleName               :: !(Maybe Text)
    , _cresLastErrorMessage             :: !(Maybe Text)
    , _cresConfigRuleId                 :: !(Maybe Text)
    , _cresLastFailedInvocationTime     :: !(Maybe POSIX)
    , _cresFirstEvaluationStarted       :: !(Maybe Bool)
    , _cresLastSuccessfulInvocationTime :: !(Maybe POSIX)
    , _cresConfigRuleARN                :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigRuleEvaluationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cresLastErrorCode' - The error code that AWS Config returned when the rule last failed.
--
-- * 'cresLastFailedEvaluationTime' - The time that AWS Config last failed to evaluate your AWS resources against the rule.
--
-- * 'cresFirstActivatedTime' - The time that you first activated the AWS Config rule.
--
-- * 'cresLastSuccessfulEvaluationTime' - The time that AWS Config last successfully evaluated your AWS resources against the rule.
--
-- * 'cresLastDeactivatedTime' - Undocumented member.
--
-- * 'cresConfigRuleName' - The name of the AWS Config rule.
--
-- * 'cresLastErrorMessage' - The error message that AWS Config returned when the rule last failed.
--
-- * 'cresConfigRuleId' - The ID of the AWS Config rule.
--
-- * 'cresLastFailedInvocationTime' - The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.
--
-- * 'cresFirstEvaluationStarted' - Indicates whether AWS Config has evaluated your resources against the rule at least once.     * @true@ - AWS Config has evaluated your AWS resources against the rule at least once.     * @false@ - AWS Config has not once finished evaluating your AWS resources against the rule.
--
-- * 'cresLastSuccessfulInvocationTime' - The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.
--
-- * 'cresConfigRuleARN' - The Amazon Resource Name (ARN) of the AWS Config rule.
configRuleEvaluationStatus
    :: ConfigRuleEvaluationStatus
configRuleEvaluationStatus =
  ConfigRuleEvaluationStatus'
    { _cresLastErrorCode = Nothing
    , _cresLastFailedEvaluationTime = Nothing
    , _cresFirstActivatedTime = Nothing
    , _cresLastSuccessfulEvaluationTime = Nothing
    , _cresLastDeactivatedTime = Nothing
    , _cresConfigRuleName = Nothing
    , _cresLastErrorMessage = Nothing
    , _cresConfigRuleId = Nothing
    , _cresLastFailedInvocationTime = Nothing
    , _cresFirstEvaluationStarted = Nothing
    , _cresLastSuccessfulInvocationTime = Nothing
    , _cresConfigRuleARN = Nothing
    }


-- | The error code that AWS Config returned when the rule last failed.
cresLastErrorCode :: Lens' ConfigRuleEvaluationStatus (Maybe Text)
cresLastErrorCode = lens _cresLastErrorCode (\ s a -> s{_cresLastErrorCode = a})

-- | The time that AWS Config last failed to evaluate your AWS resources against the rule.
cresLastFailedEvaluationTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresLastFailedEvaluationTime = lens _cresLastFailedEvaluationTime (\ s a -> s{_cresLastFailedEvaluationTime = a}) . mapping _Time

-- | The time that you first activated the AWS Config rule.
cresFirstActivatedTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresFirstActivatedTime = lens _cresFirstActivatedTime (\ s a -> s{_cresFirstActivatedTime = a}) . mapping _Time

-- | The time that AWS Config last successfully evaluated your AWS resources against the rule.
cresLastSuccessfulEvaluationTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresLastSuccessfulEvaluationTime = lens _cresLastSuccessfulEvaluationTime (\ s a -> s{_cresLastSuccessfulEvaluationTime = a}) . mapping _Time

-- | Undocumented member.
cresLastDeactivatedTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresLastDeactivatedTime = lens _cresLastDeactivatedTime (\ s a -> s{_cresLastDeactivatedTime = a}) . mapping _Time

-- | The name of the AWS Config rule.
cresConfigRuleName :: Lens' ConfigRuleEvaluationStatus (Maybe Text)
cresConfigRuleName = lens _cresConfigRuleName (\ s a -> s{_cresConfigRuleName = a})

-- | The error message that AWS Config returned when the rule last failed.
cresLastErrorMessage :: Lens' ConfigRuleEvaluationStatus (Maybe Text)
cresLastErrorMessage = lens _cresLastErrorMessage (\ s a -> s{_cresLastErrorMessage = a})

-- | The ID of the AWS Config rule.
cresConfigRuleId :: Lens' ConfigRuleEvaluationStatus (Maybe Text)
cresConfigRuleId = lens _cresConfigRuleId (\ s a -> s{_cresConfigRuleId = a})

-- | The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.
cresLastFailedInvocationTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresLastFailedInvocationTime = lens _cresLastFailedInvocationTime (\ s a -> s{_cresLastFailedInvocationTime = a}) . mapping _Time

-- | Indicates whether AWS Config has evaluated your resources against the rule at least once.     * @true@ - AWS Config has evaluated your AWS resources against the rule at least once.     * @false@ - AWS Config has not once finished evaluating your AWS resources against the rule.
cresFirstEvaluationStarted :: Lens' ConfigRuleEvaluationStatus (Maybe Bool)
cresFirstEvaluationStarted = lens _cresFirstEvaluationStarted (\ s a -> s{_cresFirstEvaluationStarted = a})

-- | The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.
cresLastSuccessfulInvocationTime :: Lens' ConfigRuleEvaluationStatus (Maybe UTCTime)
cresLastSuccessfulInvocationTime = lens _cresLastSuccessfulInvocationTime (\ s a -> s{_cresLastSuccessfulInvocationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AWS Config rule.
cresConfigRuleARN :: Lens' ConfigRuleEvaluationStatus (Maybe Text)
cresConfigRuleARN = lens _cresConfigRuleARN (\ s a -> s{_cresConfigRuleARN = a})

instance FromJSON ConfigRuleEvaluationStatus where
        parseJSON
          = withObject "ConfigRuleEvaluationStatus"
              (\ x ->
                 ConfigRuleEvaluationStatus' <$>
                   (x .:? "LastErrorCode") <*>
                     (x .:? "LastFailedEvaluationTime")
                     <*> (x .:? "FirstActivatedTime")
                     <*> (x .:? "LastSuccessfulEvaluationTime")
                     <*> (x .:? "LastDeactivatedTime")
                     <*> (x .:? "ConfigRuleName")
                     <*> (x .:? "LastErrorMessage")
                     <*> (x .:? "ConfigRuleId")
                     <*> (x .:? "LastFailedInvocationTime")
                     <*> (x .:? "FirstEvaluationStarted")
                     <*> (x .:? "LastSuccessfulInvocationTime")
                     <*> (x .:? "ConfigRuleArn"))

instance Hashable ConfigRuleEvaluationStatus where

instance NFData ConfigRuleEvaluationStatus where

-- | Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.
--
--
-- The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:
--
--     * The value for the @deliveryFrequency@ parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for AWS Config rules.
--
--     * The value for the @MaximumExecutionFrequency@ parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see 'ConfigRule' .
--
--
--
-- If the @deliveryFrequency@ value is less frequent than the @MaximumExecutionFrequency@ value for a rule, AWS Config invokes the rule only as often as the @deliveryFrequency@ value.
--
--     * For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.
--
--     * You specify the @MaximumExecutionFrequency@ value for @Six_Hours@ .
--
--     * You then specify the delivery channel @deliveryFrequency@ value for @TwentyFour_Hours@ .
--
--     * Because the value for @deliveryFrequency@ is less frequent than @MaximumExecutionFrequency@ , AWS Config invokes evaluations for the rule every 24 hours.
--
--
--
-- You should set the @MaximumExecutionFrequency@ value to be at least as frequent as the @deliveryFrequency@ value. You can view the @deliveryFrequency@ value by using the @DescribeDeliveryChannnels@ action.
--
-- To update the @deliveryFrequency@ with which AWS Config delivers your configuration snapshots, use the @PutDeliveryChannel@ action.
--
--
-- /See:/ 'configSnapshotDeliveryProperties' smart constructor.
newtype ConfigSnapshotDeliveryProperties =
  ConfigSnapshotDeliveryProperties'
    { _csdpDeliveryFrequency :: Maybe MaximumExecutionFrequency
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigSnapshotDeliveryProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdpDeliveryFrequency' - The frequency with which AWS Config delivers configuration snapshots.
configSnapshotDeliveryProperties
    :: ConfigSnapshotDeliveryProperties
configSnapshotDeliveryProperties =
  ConfigSnapshotDeliveryProperties' {_csdpDeliveryFrequency = Nothing}


-- | The frequency with which AWS Config delivers configuration snapshots.
csdpDeliveryFrequency :: Lens' ConfigSnapshotDeliveryProperties (Maybe MaximumExecutionFrequency)
csdpDeliveryFrequency = lens _csdpDeliveryFrequency (\ s a -> s{_csdpDeliveryFrequency = a})

instance FromJSON ConfigSnapshotDeliveryProperties
         where
        parseJSON
          = withObject "ConfigSnapshotDeliveryProperties"
              (\ x ->
                 ConfigSnapshotDeliveryProperties' <$>
                   (x .:? "deliveryFrequency"))

instance Hashable ConfigSnapshotDeliveryProperties
         where

instance NFData ConfigSnapshotDeliveryProperties
         where

instance ToJSON ConfigSnapshotDeliveryProperties
         where
        toJSON ConfigSnapshotDeliveryProperties'{..}
          = object
              (catMaybes
                 [("deliveryFrequency" .=) <$>
                    _csdpDeliveryFrequency])

-- | A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
--
--
--
-- /See:/ 'configStreamDeliveryInfo' smart constructor.
data ConfigStreamDeliveryInfo =
  ConfigStreamDeliveryInfo'
    { _csdiLastErrorCode        :: !(Maybe Text)
    , _csdiLastStatusChangeTime :: !(Maybe POSIX)
    , _csdiLastStatus           :: !(Maybe DeliveryStatus)
    , _csdiLastErrorMessage     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigStreamDeliveryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdiLastErrorCode' - The error code from the last attempted delivery.
--
-- * 'csdiLastStatusChangeTime' - The time from the last status change.
--
-- * 'csdiLastStatus' - Status of the last attempted delivery. __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
--
-- * 'csdiLastErrorMessage' - The error message from the last attempted delivery.
configStreamDeliveryInfo
    :: ConfigStreamDeliveryInfo
configStreamDeliveryInfo =
  ConfigStreamDeliveryInfo'
    { _csdiLastErrorCode = Nothing
    , _csdiLastStatusChangeTime = Nothing
    , _csdiLastStatus = Nothing
    , _csdiLastErrorMessage = Nothing
    }


-- | The error code from the last attempted delivery.
csdiLastErrorCode :: Lens' ConfigStreamDeliveryInfo (Maybe Text)
csdiLastErrorCode = lens _csdiLastErrorCode (\ s a -> s{_csdiLastErrorCode = a})

-- | The time from the last status change.
csdiLastStatusChangeTime :: Lens' ConfigStreamDeliveryInfo (Maybe UTCTime)
csdiLastStatusChangeTime = lens _csdiLastStatusChangeTime (\ s a -> s{_csdiLastStatusChangeTime = a}) . mapping _Time

-- | Status of the last attempted delivery. __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
csdiLastStatus :: Lens' ConfigStreamDeliveryInfo (Maybe DeliveryStatus)
csdiLastStatus = lens _csdiLastStatus (\ s a -> s{_csdiLastStatus = a})

-- | The error message from the last attempted delivery.
csdiLastErrorMessage :: Lens' ConfigStreamDeliveryInfo (Maybe Text)
csdiLastErrorMessage = lens _csdiLastErrorMessage (\ s a -> s{_csdiLastErrorMessage = a})

instance FromJSON ConfigStreamDeliveryInfo where
        parseJSON
          = withObject "ConfigStreamDeliveryInfo"
              (\ x ->
                 ConfigStreamDeliveryInfo' <$>
                   (x .:? "lastErrorCode") <*>
                     (x .:? "lastStatusChangeTime")
                     <*> (x .:? "lastStatus")
                     <*> (x .:? "lastErrorMessage"))

instance Hashable ConfigStreamDeliveryInfo where

instance NFData ConfigStreamDeliveryInfo where

-- | The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator.
--
--
--
-- /See:/ 'configurationAggregator' smart constructor.
data ConfigurationAggregator =
  ConfigurationAggregator'
    { _caConfigurationAggregatorARN    :: !(Maybe Text)
    , _caCreationTime                  :: !(Maybe POSIX)
    , _caOrganizationAggregationSource :: !(Maybe OrganizationAggregationSource)
    , _caLastUpdatedTime               :: !(Maybe POSIX)
    , _caAccountAggregationSources     :: !(Maybe [AccountAggregationSource])
    , _caConfigurationAggregatorName   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationAggregator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caConfigurationAggregatorARN' - The Amazon Resource Name (ARN) of the aggregator.
--
-- * 'caCreationTime' - The time stamp when the configuration aggregator was created.
--
-- * 'caOrganizationAggregationSource' - Provides an organization and list of regions to be aggregated.
--
-- * 'caLastUpdatedTime' - The time of the last update.
--
-- * 'caAccountAggregationSources' - Provides a list of source accounts and regions to be aggregated.
--
-- * 'caConfigurationAggregatorName' - The name of the aggregator.
configurationAggregator
    :: ConfigurationAggregator
configurationAggregator =
  ConfigurationAggregator'
    { _caConfigurationAggregatorARN = Nothing
    , _caCreationTime = Nothing
    , _caOrganizationAggregationSource = Nothing
    , _caLastUpdatedTime = Nothing
    , _caAccountAggregationSources = Nothing
    , _caConfigurationAggregatorName = Nothing
    }


-- | The Amazon Resource Name (ARN) of the aggregator.
caConfigurationAggregatorARN :: Lens' ConfigurationAggregator (Maybe Text)
caConfigurationAggregatorARN = lens _caConfigurationAggregatorARN (\ s a -> s{_caConfigurationAggregatorARN = a})

-- | The time stamp when the configuration aggregator was created.
caCreationTime :: Lens' ConfigurationAggregator (Maybe UTCTime)
caCreationTime = lens _caCreationTime (\ s a -> s{_caCreationTime = a}) . mapping _Time

-- | Provides an organization and list of regions to be aggregated.
caOrganizationAggregationSource :: Lens' ConfigurationAggregator (Maybe OrganizationAggregationSource)
caOrganizationAggregationSource = lens _caOrganizationAggregationSource (\ s a -> s{_caOrganizationAggregationSource = a})

-- | The time of the last update.
caLastUpdatedTime :: Lens' ConfigurationAggregator (Maybe UTCTime)
caLastUpdatedTime = lens _caLastUpdatedTime (\ s a -> s{_caLastUpdatedTime = a}) . mapping _Time

-- | Provides a list of source accounts and regions to be aggregated.
caAccountAggregationSources :: Lens' ConfigurationAggregator [AccountAggregationSource]
caAccountAggregationSources = lens _caAccountAggregationSources (\ s a -> s{_caAccountAggregationSources = a}) . _Default . _Coerce

-- | The name of the aggregator.
caConfigurationAggregatorName :: Lens' ConfigurationAggregator (Maybe Text)
caConfigurationAggregatorName = lens _caConfigurationAggregatorName (\ s a -> s{_caConfigurationAggregatorName = a})

instance FromJSON ConfigurationAggregator where
        parseJSON
          = withObject "ConfigurationAggregator"
              (\ x ->
                 ConfigurationAggregator' <$>
                   (x .:? "ConfigurationAggregatorArn") <*>
                     (x .:? "CreationTime")
                     <*> (x .:? "OrganizationAggregationSource")
                     <*> (x .:? "LastUpdatedTime")
                     <*> (x .:? "AccountAggregationSources" .!= mempty)
                     <*> (x .:? "ConfigurationAggregatorName"))

instance Hashable ConfigurationAggregator where

instance NFData ConfigurationAggregator where

-- | A list that contains detailed configurations of a specified resource.
--
--
--
-- /See:/ 'configurationItem' smart constructor.
data ConfigurationItem =
  ConfigurationItem'
    { _ciResourceId                   :: !(Maybe Text)
    , _ciResourceType                 :: !(Maybe ResourceType)
    , _ciConfigurationStateId         :: !(Maybe Text)
    , _ciArn                          :: !(Maybe Text)
    , _ciResourceName                 :: !(Maybe Text)
    , _ciResourceCreationTime         :: !(Maybe POSIX)
    , _ciConfigurationItemStatus      :: !(Maybe ConfigurationItemStatus)
    , _ciConfigurationItemCaptureTime :: !(Maybe POSIX)
    , _ciAccountId                    :: !(Maybe Text)
    , _ciSupplementaryConfiguration   :: !(Maybe (Map Text Text))
    , _ciAvailabilityZone             :: !(Maybe Text)
    , _ciRelationships                :: !(Maybe [Relationship])
    , _ciVersion                      :: !(Maybe Text)
    , _ciAwsRegion                    :: !(Maybe Text)
    , _ciRelatedEvents                :: !(Maybe [Text])
    , _ciConfiguration                :: !(Maybe Text)
    , _ciConfigurationItemMD5Hash     :: !(Maybe Text)
    , _ciTags                         :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciResourceId' - The ID of the resource (for example, @sg-xxxxxx@ ).
--
-- * 'ciResourceType' - The type of AWS resource.
--
-- * 'ciConfigurationStateId' - An identifier that indicates the ordering of the configuration items of a resource.
--
-- * 'ciArn' - accoun
--
-- * 'ciResourceName' - The custom name of the resource, if available.
--
-- * 'ciResourceCreationTime' - The time stamp when the resource was created.
--
-- * 'ciConfigurationItemStatus' - The configuration item status.
--
-- * 'ciConfigurationItemCaptureTime' - The time when the configuration recording was initiated.
--
-- * 'ciAccountId' - The 12-digit AWS account ID associated with the resource.
--
-- * 'ciSupplementaryConfiguration' - Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the @configuration@ parameter.
--
-- * 'ciAvailabilityZone' - The Availability Zone associated with the resource.
--
-- * 'ciRelationships' - A list of related AWS resources.
--
-- * 'ciVersion' - The version number of the resource configuration.
--
-- * 'ciAwsRegion' - The region where the resource resides.
--
-- * 'ciRelatedEvents' - A list of CloudTrail event IDs. A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html What Is AWS CloudTrail> . An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the <https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html LookupEvents API> in the /AWS CloudTrail API Reference/ to retrieve the events for the resource.
--
-- * 'ciConfiguration' - The description of the resource configuration.
--
-- * 'ciConfigurationItemMD5Hash' - Unique MD5 hash that represents the configuration item's state. You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
--
-- * 'ciTags' - A mapping of key value tags associated with the resource.
configurationItem
    :: ConfigurationItem
configurationItem =
  ConfigurationItem'
    { _ciResourceId = Nothing
    , _ciResourceType = Nothing
    , _ciConfigurationStateId = Nothing
    , _ciArn = Nothing
    , _ciResourceName = Nothing
    , _ciResourceCreationTime = Nothing
    , _ciConfigurationItemStatus = Nothing
    , _ciConfigurationItemCaptureTime = Nothing
    , _ciAccountId = Nothing
    , _ciSupplementaryConfiguration = Nothing
    , _ciAvailabilityZone = Nothing
    , _ciRelationships = Nothing
    , _ciVersion = Nothing
    , _ciAwsRegion = Nothing
    , _ciRelatedEvents = Nothing
    , _ciConfiguration = Nothing
    , _ciConfigurationItemMD5Hash = Nothing
    , _ciTags = Nothing
    }


-- | The ID of the resource (for example, @sg-xxxxxx@ ).
ciResourceId :: Lens' ConfigurationItem (Maybe Text)
ciResourceId = lens _ciResourceId (\ s a -> s{_ciResourceId = a})

-- | The type of AWS resource.
ciResourceType :: Lens' ConfigurationItem (Maybe ResourceType)
ciResourceType = lens _ciResourceType (\ s a -> s{_ciResourceType = a})

-- | An identifier that indicates the ordering of the configuration items of a resource.
ciConfigurationStateId :: Lens' ConfigurationItem (Maybe Text)
ciConfigurationStateId = lens _ciConfigurationStateId (\ s a -> s{_ciConfigurationStateId = a})

-- | accoun
ciArn :: Lens' ConfigurationItem (Maybe Text)
ciArn = lens _ciArn (\ s a -> s{_ciArn = a})

-- | The custom name of the resource, if available.
ciResourceName :: Lens' ConfigurationItem (Maybe Text)
ciResourceName = lens _ciResourceName (\ s a -> s{_ciResourceName = a})

-- | The time stamp when the resource was created.
ciResourceCreationTime :: Lens' ConfigurationItem (Maybe UTCTime)
ciResourceCreationTime = lens _ciResourceCreationTime (\ s a -> s{_ciResourceCreationTime = a}) . mapping _Time

-- | The configuration item status.
ciConfigurationItemStatus :: Lens' ConfigurationItem (Maybe ConfigurationItemStatus)
ciConfigurationItemStatus = lens _ciConfigurationItemStatus (\ s a -> s{_ciConfigurationItemStatus = a})

-- | The time when the configuration recording was initiated.
ciConfigurationItemCaptureTime :: Lens' ConfigurationItem (Maybe UTCTime)
ciConfigurationItemCaptureTime = lens _ciConfigurationItemCaptureTime (\ s a -> s{_ciConfigurationItemCaptureTime = a}) . mapping _Time

-- | The 12-digit AWS account ID associated with the resource.
ciAccountId :: Lens' ConfigurationItem (Maybe Text)
ciAccountId = lens _ciAccountId (\ s a -> s{_ciAccountId = a})

-- | Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the @configuration@ parameter.
ciSupplementaryConfiguration :: Lens' ConfigurationItem (HashMap Text Text)
ciSupplementaryConfiguration = lens _ciSupplementaryConfiguration (\ s a -> s{_ciSupplementaryConfiguration = a}) . _Default . _Map

-- | The Availability Zone associated with the resource.
ciAvailabilityZone :: Lens' ConfigurationItem (Maybe Text)
ciAvailabilityZone = lens _ciAvailabilityZone (\ s a -> s{_ciAvailabilityZone = a})

-- | A list of related AWS resources.
ciRelationships :: Lens' ConfigurationItem [Relationship]
ciRelationships = lens _ciRelationships (\ s a -> s{_ciRelationships = a}) . _Default . _Coerce

-- | The version number of the resource configuration.
ciVersion :: Lens' ConfigurationItem (Maybe Text)
ciVersion = lens _ciVersion (\ s a -> s{_ciVersion = a})

-- | The region where the resource resides.
ciAwsRegion :: Lens' ConfigurationItem (Maybe Text)
ciAwsRegion = lens _ciAwsRegion (\ s a -> s{_ciAwsRegion = a})

-- | A list of CloudTrail event IDs. A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html What Is AWS CloudTrail> . An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the <https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html LookupEvents API> in the /AWS CloudTrail API Reference/ to retrieve the events for the resource.
ciRelatedEvents :: Lens' ConfigurationItem [Text]
ciRelatedEvents = lens _ciRelatedEvents (\ s a -> s{_ciRelatedEvents = a}) . _Default . _Coerce

-- | The description of the resource configuration.
ciConfiguration :: Lens' ConfigurationItem (Maybe Text)
ciConfiguration = lens _ciConfiguration (\ s a -> s{_ciConfiguration = a})

-- | Unique MD5 hash that represents the configuration item's state. You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
ciConfigurationItemMD5Hash :: Lens' ConfigurationItem (Maybe Text)
ciConfigurationItemMD5Hash = lens _ciConfigurationItemMD5Hash (\ s a -> s{_ciConfigurationItemMD5Hash = a})

-- | A mapping of key value tags associated with the resource.
ciTags :: Lens' ConfigurationItem (HashMap Text Text)
ciTags = lens _ciTags (\ s a -> s{_ciTags = a}) . _Default . _Map

instance FromJSON ConfigurationItem where
        parseJSON
          = withObject "ConfigurationItem"
              (\ x ->
                 ConfigurationItem' <$>
                   (x .:? "resourceId") <*> (x .:? "resourceType") <*>
                     (x .:? "configurationStateId")
                     <*> (x .:? "arn")
                     <*> (x .:? "resourceName")
                     <*> (x .:? "resourceCreationTime")
                     <*> (x .:? "configurationItemStatus")
                     <*> (x .:? "configurationItemCaptureTime")
                     <*> (x .:? "accountId")
                     <*> (x .:? "supplementaryConfiguration" .!= mempty)
                     <*> (x .:? "availabilityZone")
                     <*> (x .:? "relationships" .!= mempty)
                     <*> (x .:? "version")
                     <*> (x .:? "awsRegion")
                     <*> (x .:? "relatedEvents" .!= mempty)
                     <*> (x .:? "configuration")
                     <*> (x .:? "configurationItemMD5Hash")
                     <*> (x .:? "tags" .!= mempty))

instance Hashable ConfigurationItem where

instance NFData ConfigurationItem where

-- | An object that represents the recording of configuration changes of an AWS resource.
--
--
--
-- /See:/ 'configurationRecorder' smart constructor.
data ConfigurationRecorder =
  ConfigurationRecorder'
    { _crName           :: !(Maybe Text)
    , _crRecordingGroup :: !(Maybe RecordingGroup)
    , _crRoleARN        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationRecorder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crName' - The name of the recorder. By default, AWS Config automatically assigns the name "default" when creating the configuration recorder. You cannot change the assigned name.
--
-- * 'crRecordingGroup' - Specifies the types of AWS resources for which AWS Config records configuration changes.
--
-- * 'crRoleARN' - Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.
configurationRecorder
    :: ConfigurationRecorder
configurationRecorder =
  ConfigurationRecorder'
    {_crName = Nothing, _crRecordingGroup = Nothing, _crRoleARN = Nothing}


-- | The name of the recorder. By default, AWS Config automatically assigns the name "default" when creating the configuration recorder. You cannot change the assigned name.
crName :: Lens' ConfigurationRecorder (Maybe Text)
crName = lens _crName (\ s a -> s{_crName = a})

-- | Specifies the types of AWS resources for which AWS Config records configuration changes.
crRecordingGroup :: Lens' ConfigurationRecorder (Maybe RecordingGroup)
crRecordingGroup = lens _crRecordingGroup (\ s a -> s{_crRecordingGroup = a})

-- | Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.
crRoleARN :: Lens' ConfigurationRecorder (Maybe Text)
crRoleARN = lens _crRoleARN (\ s a -> s{_crRoleARN = a})

instance FromJSON ConfigurationRecorder where
        parseJSON
          = withObject "ConfigurationRecorder"
              (\ x ->
                 ConfigurationRecorder' <$>
                   (x .:? "name") <*> (x .:? "recordingGroup") <*>
                     (x .:? "roleARN"))

instance Hashable ConfigurationRecorder where

instance NFData ConfigurationRecorder where

instance ToJSON ConfigurationRecorder where
        toJSON ConfigurationRecorder'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _crName,
                  ("recordingGroup" .=) <$> _crRecordingGroup,
                  ("roleARN" .=) <$> _crRoleARN])

-- | The current status of the configuration recorder.
--
--
--
-- /See:/ 'configurationRecorderStatus' smart constructor.
data ConfigurationRecorderStatus =
  ConfigurationRecorderStatus'
    { _crsLastErrorCode        :: !(Maybe Text)
    , _crsLastStopTime         :: !(Maybe POSIX)
    , _crsLastStatusChangeTime :: !(Maybe POSIX)
    , _crsRecording            :: !(Maybe Bool)
    , _crsLastStatus           :: !(Maybe RecorderStatus)
    , _crsLastErrorMessage     :: !(Maybe Text)
    , _crsName                 :: !(Maybe Text)
    , _crsLastStartTime        :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfigurationRecorderStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsLastErrorCode' - The error code indicating that the recording failed.
--
-- * 'crsLastStopTime' - The time the recorder was last stopped.
--
-- * 'crsLastStatusChangeTime' - The time when the status was last changed.
--
-- * 'crsRecording' - Specifies whether or not the recorder is currently recording.
--
-- * 'crsLastStatus' - The last (previous) status of the recorder.
--
-- * 'crsLastErrorMessage' - The message indicating that the recording failed due to an error.
--
-- * 'crsName' - The name of the configuration recorder.
--
-- * 'crsLastStartTime' - The time the recorder was last started.
configurationRecorderStatus
    :: ConfigurationRecorderStatus
configurationRecorderStatus =
  ConfigurationRecorderStatus'
    { _crsLastErrorCode = Nothing
    , _crsLastStopTime = Nothing
    , _crsLastStatusChangeTime = Nothing
    , _crsRecording = Nothing
    , _crsLastStatus = Nothing
    , _crsLastErrorMessage = Nothing
    , _crsName = Nothing
    , _crsLastStartTime = Nothing
    }


-- | The error code indicating that the recording failed.
crsLastErrorCode :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsLastErrorCode = lens _crsLastErrorCode (\ s a -> s{_crsLastErrorCode = a})

-- | The time the recorder was last stopped.
crsLastStopTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStopTime = lens _crsLastStopTime (\ s a -> s{_crsLastStopTime = a}) . mapping _Time

-- | The time when the status was last changed.
crsLastStatusChangeTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStatusChangeTime = lens _crsLastStatusChangeTime (\ s a -> s{_crsLastStatusChangeTime = a}) . mapping _Time

-- | Specifies whether or not the recorder is currently recording.
crsRecording :: Lens' ConfigurationRecorderStatus (Maybe Bool)
crsRecording = lens _crsRecording (\ s a -> s{_crsRecording = a})

-- | The last (previous) status of the recorder.
crsLastStatus :: Lens' ConfigurationRecorderStatus (Maybe RecorderStatus)
crsLastStatus = lens _crsLastStatus (\ s a -> s{_crsLastStatus = a})

-- | The message indicating that the recording failed due to an error.
crsLastErrorMessage :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsLastErrorMessage = lens _crsLastErrorMessage (\ s a -> s{_crsLastErrorMessage = a})

-- | The name of the configuration recorder.
crsName :: Lens' ConfigurationRecorderStatus (Maybe Text)
crsName = lens _crsName (\ s a -> s{_crsName = a})

-- | The time the recorder was last started.
crsLastStartTime :: Lens' ConfigurationRecorderStatus (Maybe UTCTime)
crsLastStartTime = lens _crsLastStartTime (\ s a -> s{_crsLastStartTime = a}) . mapping _Time

instance FromJSON ConfigurationRecorderStatus where
        parseJSON
          = withObject "ConfigurationRecorderStatus"
              (\ x ->
                 ConfigurationRecorderStatus' <$>
                   (x .:? "lastErrorCode") <*> (x .:? "lastStopTime")
                     <*> (x .:? "lastStatusChangeTime")
                     <*> (x .:? "recording")
                     <*> (x .:? "lastStatus")
                     <*> (x .:? "lastErrorMessage")
                     <*> (x .:? "name")
                     <*> (x .:? "lastStartTime"))

instance Hashable ConfigurationRecorderStatus where

instance NFData ConfigurationRecorderStatus where

-- | Filters the conformance pack by compliance types and AWS Config rule names.
--
--
--
-- /See:/ 'conformancePackComplianceFilters' smart constructor.
data ConformancePackComplianceFilters =
  ConformancePackComplianceFilters'
    { _cpcfConfigRuleNames :: !(Maybe [Text])
    , _cpcfComplianceType  :: !(Maybe ConformancePackComplianceType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackComplianceFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcfConfigRuleNames' - Filters the results by AWS Config rule names.
--
-- * 'cpcfComplianceType' - Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
conformancePackComplianceFilters
    :: ConformancePackComplianceFilters
conformancePackComplianceFilters =
  ConformancePackComplianceFilters'
    {_cpcfConfigRuleNames = Nothing, _cpcfComplianceType = Nothing}


-- | Filters the results by AWS Config rule names.
cpcfConfigRuleNames :: Lens' ConformancePackComplianceFilters [Text]
cpcfConfigRuleNames = lens _cpcfConfigRuleNames (\ s a -> s{_cpcfConfigRuleNames = a}) . _Default . _Coerce

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
cpcfComplianceType :: Lens' ConformancePackComplianceFilters (Maybe ConformancePackComplianceType)
cpcfComplianceType = lens _cpcfComplianceType (\ s a -> s{_cpcfComplianceType = a})

instance Hashable ConformancePackComplianceFilters
         where

instance NFData ConformancePackComplianceFilters
         where

instance ToJSON ConformancePackComplianceFilters
         where
        toJSON ConformancePackComplianceFilters'{..}
          = object
              (catMaybes
                 [("ConfigRuleNames" .=) <$> _cpcfConfigRuleNames,
                  ("ComplianceType" .=) <$> _cpcfComplianceType])

-- | Summary includes the name and status of the conformance pack.
--
--
--
-- /See:/ 'conformancePackComplianceSummary' smart constructor.
data ConformancePackComplianceSummary =
  ConformancePackComplianceSummary'
    { _cpcsConformancePackName             :: !Text
    , _cpcsConformancePackComplianceStatus :: !ConformancePackComplianceType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackComplianceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcsConformancePackName' - The name of the conformance pack name.
--
-- * 'cpcsConformancePackComplianceStatus' - The status of the conformance pack. The allowed values are COMPLIANT and NON_COMPLIANT.
conformancePackComplianceSummary
    :: Text -- ^ 'cpcsConformancePackName'
    -> ConformancePackComplianceType -- ^ 'cpcsConformancePackComplianceStatus'
    -> ConformancePackComplianceSummary
conformancePackComplianceSummary pConformancePackName_ pConformancePackComplianceStatus_ =
  ConformancePackComplianceSummary'
    { _cpcsConformancePackName = pConformancePackName_
    , _cpcsConformancePackComplianceStatus = pConformancePackComplianceStatus_
    }


-- | The name of the conformance pack name.
cpcsConformancePackName :: Lens' ConformancePackComplianceSummary Text
cpcsConformancePackName = lens _cpcsConformancePackName (\ s a -> s{_cpcsConformancePackName = a})

-- | The status of the conformance pack. The allowed values are COMPLIANT and NON_COMPLIANT.
cpcsConformancePackComplianceStatus :: Lens' ConformancePackComplianceSummary ConformancePackComplianceType
cpcsConformancePackComplianceStatus = lens _cpcsConformancePackComplianceStatus (\ s a -> s{_cpcsConformancePackComplianceStatus = a})

instance FromJSON ConformancePackComplianceSummary
         where
        parseJSON
          = withObject "ConformancePackComplianceSummary"
              (\ x ->
                 ConformancePackComplianceSummary' <$>
                   (x .: "ConformancePackName") <*>
                     (x .: "ConformancePackComplianceStatus"))

instance Hashable ConformancePackComplianceSummary
         where

instance NFData ConformancePackComplianceSummary
         where

-- | Returns details of a conformance pack. A conformance pack is a collection of AWS Config rules and remediation actions that can be easily deployed in an account and a region.
--
--
--
-- /See:/ 'conformancePackDetail' smart constructor.
data ConformancePackDetail =
  ConformancePackDetail'
    { _cpdDeliveryS3KeyPrefix :: !(Maybe Text)
    , _cpdCreatedBy :: !(Maybe Text)
    , _cpdLastUpdateRequestedTime :: !(Maybe POSIX)
    , _cpdConformancePackInputParameters :: !(Maybe [ConformancePackInputParameter])
    , _cpdConformancePackName :: !Text
    , _cpdConformancePackARN :: !Text
    , _cpdConformancePackId :: !Text
    , _cpdDeliveryS3Bucket :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdDeliveryS3KeyPrefix' - The prefix for the Amazon S3 bucket.
--
-- * 'cpdCreatedBy' - AWS service that created the conformance pack.
--
-- * 'cpdLastUpdateRequestedTime' - Last time when conformation pack update was requested.
--
-- * 'cpdConformancePackInputParameters' - A list of @ConformancePackInputParameter@ objects.
--
-- * 'cpdConformancePackName' - Name of the conformance pack.
--
-- * 'cpdConformancePackARN' - Amazon Resource Name (ARN) of the conformance pack.
--
-- * 'cpdConformancePackId' - ID of the conformance pack.
--
-- * 'cpdDeliveryS3Bucket' - Conformance pack template that is used to create a pack. The delivery bucket name should start with awsconfigconforms. For example: "Resource": "arn:aws:s3:::your_bucket_name/*".
conformancePackDetail
    :: Text -- ^ 'cpdConformancePackName'
    -> Text -- ^ 'cpdConformancePackARN'
    -> Text -- ^ 'cpdConformancePackId'
    -> Text -- ^ 'cpdDeliveryS3Bucket'
    -> ConformancePackDetail
conformancePackDetail pConformancePackName_ pConformancePackARN_ pConformancePackId_ pDeliveryS3Bucket_ =
  ConformancePackDetail'
    { _cpdDeliveryS3KeyPrefix = Nothing
    , _cpdCreatedBy = Nothing
    , _cpdLastUpdateRequestedTime = Nothing
    , _cpdConformancePackInputParameters = Nothing
    , _cpdConformancePackName = pConformancePackName_
    , _cpdConformancePackARN = pConformancePackARN_
    , _cpdConformancePackId = pConformancePackId_
    , _cpdDeliveryS3Bucket = pDeliveryS3Bucket_
    }


-- | The prefix for the Amazon S3 bucket.
cpdDeliveryS3KeyPrefix :: Lens' ConformancePackDetail (Maybe Text)
cpdDeliveryS3KeyPrefix = lens _cpdDeliveryS3KeyPrefix (\ s a -> s{_cpdDeliveryS3KeyPrefix = a})

-- | AWS service that created the conformance pack.
cpdCreatedBy :: Lens' ConformancePackDetail (Maybe Text)
cpdCreatedBy = lens _cpdCreatedBy (\ s a -> s{_cpdCreatedBy = a})

-- | Last time when conformation pack update was requested.
cpdLastUpdateRequestedTime :: Lens' ConformancePackDetail (Maybe UTCTime)
cpdLastUpdateRequestedTime = lens _cpdLastUpdateRequestedTime (\ s a -> s{_cpdLastUpdateRequestedTime = a}) . mapping _Time

-- | A list of @ConformancePackInputParameter@ objects.
cpdConformancePackInputParameters :: Lens' ConformancePackDetail [ConformancePackInputParameter]
cpdConformancePackInputParameters = lens _cpdConformancePackInputParameters (\ s a -> s{_cpdConformancePackInputParameters = a}) . _Default . _Coerce

-- | Name of the conformance pack.
cpdConformancePackName :: Lens' ConformancePackDetail Text
cpdConformancePackName = lens _cpdConformancePackName (\ s a -> s{_cpdConformancePackName = a})

-- | Amazon Resource Name (ARN) of the conformance pack.
cpdConformancePackARN :: Lens' ConformancePackDetail Text
cpdConformancePackARN = lens _cpdConformancePackARN (\ s a -> s{_cpdConformancePackARN = a})

-- | ID of the conformance pack.
cpdConformancePackId :: Lens' ConformancePackDetail Text
cpdConformancePackId = lens _cpdConformancePackId (\ s a -> s{_cpdConformancePackId = a})

-- | Conformance pack template that is used to create a pack. The delivery bucket name should start with awsconfigconforms. For example: "Resource": "arn:aws:s3:::your_bucket_name/*".
cpdDeliveryS3Bucket :: Lens' ConformancePackDetail Text
cpdDeliveryS3Bucket = lens _cpdDeliveryS3Bucket (\ s a -> s{_cpdDeliveryS3Bucket = a})

instance FromJSON ConformancePackDetail where
        parseJSON
          = withObject "ConformancePackDetail"
              (\ x ->
                 ConformancePackDetail' <$>
                   (x .:? "DeliveryS3KeyPrefix") <*> (x .:? "CreatedBy")
                     <*> (x .:? "LastUpdateRequestedTime")
                     <*>
                     (x .:? "ConformancePackInputParameters" .!= mempty)
                     <*> (x .: "ConformancePackName")
                     <*> (x .: "ConformancePackArn")
                     <*> (x .: "ConformancePackId")
                     <*> (x .: "DeliveryS3Bucket"))

instance Hashable ConformancePackDetail where

instance NFData ConformancePackDetail where

-- | Filters a conformance pack by AWS Config rule names, compliance types, AWS resource types, and resource IDs.
--
--
--
-- /See:/ 'conformancePackEvaluationFilters' smart constructor.
data ConformancePackEvaluationFilters =
  ConformancePackEvaluationFilters'
    { _cpefResourceIds     :: !(Maybe [Text])
    , _cpefResourceType    :: !(Maybe Text)
    , _cpefConfigRuleNames :: !(Maybe [Text])
    , _cpefComplianceType  :: !(Maybe ConformancePackComplianceType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackEvaluationFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpefResourceIds' - Filters the results by resource IDs.
--
-- * 'cpefResourceType' - Filters the results by the resource type (for example, @"AWS::EC2::Instance"@ ).
--
-- * 'cpefConfigRuleNames' - Filters the results by AWS Config rule names.
--
-- * 'cpefComplianceType' - Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
conformancePackEvaluationFilters
    :: ConformancePackEvaluationFilters
conformancePackEvaluationFilters =
  ConformancePackEvaluationFilters'
    { _cpefResourceIds = Nothing
    , _cpefResourceType = Nothing
    , _cpefConfigRuleNames = Nothing
    , _cpefComplianceType = Nothing
    }


-- | Filters the results by resource IDs.
cpefResourceIds :: Lens' ConformancePackEvaluationFilters [Text]
cpefResourceIds = lens _cpefResourceIds (\ s a -> s{_cpefResourceIds = a}) . _Default . _Coerce

-- | Filters the results by the resource type (for example, @"AWS::EC2::Instance"@ ).
cpefResourceType :: Lens' ConformancePackEvaluationFilters (Maybe Text)
cpefResourceType = lens _cpefResourceType (\ s a -> s{_cpefResourceType = a})

-- | Filters the results by AWS Config rule names.
cpefConfigRuleNames :: Lens' ConformancePackEvaluationFilters [Text]
cpefConfigRuleNames = lens _cpefConfigRuleNames (\ s a -> s{_cpefConfigRuleNames = a}) . _Default . _Coerce

-- | Filters the results by compliance. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
cpefComplianceType :: Lens' ConformancePackEvaluationFilters (Maybe ConformancePackComplianceType)
cpefComplianceType = lens _cpefComplianceType (\ s a -> s{_cpefComplianceType = a})

instance Hashable ConformancePackEvaluationFilters
         where

instance NFData ConformancePackEvaluationFilters
         where

instance ToJSON ConformancePackEvaluationFilters
         where
        toJSON ConformancePackEvaluationFilters'{..}
          = object
              (catMaybes
                 [("ResourceIds" .=) <$> _cpefResourceIds,
                  ("ResourceType" .=) <$> _cpefResourceType,
                  ("ConfigRuleNames" .=) <$> _cpefConfigRuleNames,
                  ("ComplianceType" .=) <$> _cpefComplianceType])

-- | The details of a conformance pack evaluation. Provides AWS Config rule and AWS resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information.
--
--
--
-- /See:/ 'conformancePackEvaluationResult' smart constructor.
data ConformancePackEvaluationResult =
  ConformancePackEvaluationResult'
    { _cperAnnotation                 :: !(Maybe Text)
    , _cperComplianceType             :: !ConformancePackComplianceType
    , _cperEvaluationResultIdentifier :: !EvaluationResultIdentifier
    , _cperConfigRuleInvokedTime      :: !POSIX
    , _cperResultRecordedTime         :: !POSIX
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackEvaluationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cperAnnotation' - Supplementary information about how the evaluation determined the compliance.
--
-- * 'cperComplianceType' - The compliance type. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
--
-- * 'cperEvaluationResultIdentifier' - Undocumented member.
--
-- * 'cperConfigRuleInvokedTime' - The time when AWS Config rule evaluated AWS resource.
--
-- * 'cperResultRecordedTime' - The time when AWS Config recorded the evaluation result.
conformancePackEvaluationResult
    :: ConformancePackComplianceType -- ^ 'cperComplianceType'
    -> EvaluationResultIdentifier -- ^ 'cperEvaluationResultIdentifier'
    -> UTCTime -- ^ 'cperConfigRuleInvokedTime'
    -> UTCTime -- ^ 'cperResultRecordedTime'
    -> ConformancePackEvaluationResult
conformancePackEvaluationResult pComplianceType_ pEvaluationResultIdentifier_ pConfigRuleInvokedTime_ pResultRecordedTime_ =
  ConformancePackEvaluationResult'
    { _cperAnnotation = Nothing
    , _cperComplianceType = pComplianceType_
    , _cperEvaluationResultIdentifier = pEvaluationResultIdentifier_
    , _cperConfigRuleInvokedTime = _Time # pConfigRuleInvokedTime_
    , _cperResultRecordedTime = _Time # pResultRecordedTime_
    }


-- | Supplementary information about how the evaluation determined the compliance.
cperAnnotation :: Lens' ConformancePackEvaluationResult (Maybe Text)
cperAnnotation = lens _cperAnnotation (\ s a -> s{_cperAnnotation = a})

-- | The compliance type. The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
cperComplianceType :: Lens' ConformancePackEvaluationResult ConformancePackComplianceType
cperComplianceType = lens _cperComplianceType (\ s a -> s{_cperComplianceType = a})

-- | Undocumented member.
cperEvaluationResultIdentifier :: Lens' ConformancePackEvaluationResult EvaluationResultIdentifier
cperEvaluationResultIdentifier = lens _cperEvaluationResultIdentifier (\ s a -> s{_cperEvaluationResultIdentifier = a})

-- | The time when AWS Config rule evaluated AWS resource.
cperConfigRuleInvokedTime :: Lens' ConformancePackEvaluationResult UTCTime
cperConfigRuleInvokedTime = lens _cperConfigRuleInvokedTime (\ s a -> s{_cperConfigRuleInvokedTime = a}) . _Time

-- | The time when AWS Config recorded the evaluation result.
cperResultRecordedTime :: Lens' ConformancePackEvaluationResult UTCTime
cperResultRecordedTime = lens _cperResultRecordedTime (\ s a -> s{_cperResultRecordedTime = a}) . _Time

instance FromJSON ConformancePackEvaluationResult
         where
        parseJSON
          = withObject "ConformancePackEvaluationResult"
              (\ x ->
                 ConformancePackEvaluationResult' <$>
                   (x .:? "Annotation") <*> (x .: "ComplianceType") <*>
                     (x .: "EvaluationResultIdentifier")
                     <*> (x .: "ConfigRuleInvokedTime")
                     <*> (x .: "ResultRecordedTime"))

instance Hashable ConformancePackEvaluationResult
         where

instance NFData ConformancePackEvaluationResult where

-- | Input parameters in the form of key-value pairs for the conformance pack, both of which you define. Keys can have a maximum character length of 128 characters, and values can have a maximum length of 256 characters.
--
--
--
-- /See:/ 'conformancePackInputParameter' smart constructor.
data ConformancePackInputParameter =
  ConformancePackInputParameter'
    { _cpipParameterName  :: !Text
    , _cpipParameterValue :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackInputParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpipParameterName' - One part of a key-value pair.
--
-- * 'cpipParameterValue' - Another part of the key-value pair.
conformancePackInputParameter
    :: Text -- ^ 'cpipParameterName'
    -> Text -- ^ 'cpipParameterValue'
    -> ConformancePackInputParameter
conformancePackInputParameter pParameterName_ pParameterValue_ =
  ConformancePackInputParameter'
    { _cpipParameterName = pParameterName_
    , _cpipParameterValue = pParameterValue_
    }


-- | One part of a key-value pair.
cpipParameterName :: Lens' ConformancePackInputParameter Text
cpipParameterName = lens _cpipParameterName (\ s a -> s{_cpipParameterName = a})

-- | Another part of the key-value pair.
cpipParameterValue :: Lens' ConformancePackInputParameter Text
cpipParameterValue = lens _cpipParameterValue (\ s a -> s{_cpipParameterValue = a})

instance FromJSON ConformancePackInputParameter where
        parseJSON
          = withObject "ConformancePackInputParameter"
              (\ x ->
                 ConformancePackInputParameter' <$>
                   (x .: "ParameterName") <*> (x .: "ParameterValue"))

instance Hashable ConformancePackInputParameter where

instance NFData ConformancePackInputParameter where

instance ToJSON ConformancePackInputParameter where
        toJSON ConformancePackInputParameter'{..}
          = object
              (catMaybes
                 [Just ("ParameterName" .= _cpipParameterName),
                  Just ("ParameterValue" .= _cpipParameterValue)])

-- | Compliance information of one or more AWS Config rules within a conformance pack. You can filter using AWS Config rule names and compliance types.
--
--
--
-- /See:/ 'conformancePackRuleCompliance' smart constructor.
data ConformancePackRuleCompliance =
  ConformancePackRuleCompliance'
    { _cprcConfigRuleName :: !(Maybe Text)
    , _cprcComplianceType :: !(Maybe ConformancePackComplianceType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackRuleCompliance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprcConfigRuleName' - Name of the config rule.
--
-- * 'cprcComplianceType' - Compliance of the AWS Config rule The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
conformancePackRuleCompliance
    :: ConformancePackRuleCompliance
conformancePackRuleCompliance =
  ConformancePackRuleCompliance'
    {_cprcConfigRuleName = Nothing, _cprcComplianceType = Nothing}


-- | Name of the config rule.
cprcConfigRuleName :: Lens' ConformancePackRuleCompliance (Maybe Text)
cprcConfigRuleName = lens _cprcConfigRuleName (\ s a -> s{_cprcConfigRuleName = a})

-- | Compliance of the AWS Config rule The allowed values are @COMPLIANT@ and @NON_COMPLIANT@ .
cprcComplianceType :: Lens' ConformancePackRuleCompliance (Maybe ConformancePackComplianceType)
cprcComplianceType = lens _cprcComplianceType (\ s a -> s{_cprcComplianceType = a})

instance FromJSON ConformancePackRuleCompliance where
        parseJSON
          = withObject "ConformancePackRuleCompliance"
              (\ x ->
                 ConformancePackRuleCompliance' <$>
                   (x .:? "ConfigRuleName") <*>
                     (x .:? "ComplianceType"))

instance Hashable ConformancePackRuleCompliance where

instance NFData ConformancePackRuleCompliance where

-- | Status details of a conformance pack.
--
--
--
-- /See:/ 'conformancePackStatusDetail' smart constructor.
data ConformancePackStatusDetail =
  ConformancePackStatusDetail'
    { _cpsdConformancePackStatusReason :: !(Maybe Text)
    , _cpsdLastUpdateCompletedTime     :: !(Maybe POSIX)
    , _cpsdConformancePackName         :: !Text
    , _cpsdConformancePackId           :: !Text
    , _cpsdConformancePackARN          :: !Text
    , _cpsdConformancePackState        :: !ConformancePackState
    , _cpsdStackARN                    :: !Text
    , _cpsdLastUpdateRequestedTime     :: !POSIX
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConformancePackStatusDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpsdConformancePackStatusReason' - The reason of conformance pack creation failure.
--
-- * 'cpsdLastUpdateCompletedTime' - Last time when conformation pack creation and update was successful.
--
-- * 'cpsdConformancePackName' - Name of the conformance pack.
--
-- * 'cpsdConformancePackId' - ID of the conformance pack.
--
-- * 'cpsdConformancePackARN' - Amazon Resource Name (ARN) of comformance pack.
--
-- * 'cpsdConformancePackState' - Indicates deployment status of conformance pack. AWS Config sets the state of the conformance pack to:     * CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.     * CREATE_COMPLETE when a conformance pack has been successfully created in your account.     * CREATE_FAILED when a conformance pack creation failed in your account.     * DELETE_IN_PROGRESS when a conformance pack deletion is in progress.      * DELETE_FAILED when a conformance pack deletion failed in your account.
--
-- * 'cpsdStackARN' - Amazon Resource Name (ARN) of AWS CloudFormation stack.
--
-- * 'cpsdLastUpdateRequestedTime' - Last time when conformation pack creation and update was requested.
conformancePackStatusDetail
    :: Text -- ^ 'cpsdConformancePackName'
    -> Text -- ^ 'cpsdConformancePackId'
    -> Text -- ^ 'cpsdConformancePackARN'
    -> ConformancePackState -- ^ 'cpsdConformancePackState'
    -> Text -- ^ 'cpsdStackARN'
    -> UTCTime -- ^ 'cpsdLastUpdateRequestedTime'
    -> ConformancePackStatusDetail
conformancePackStatusDetail pConformancePackName_ pConformancePackId_ pConformancePackARN_ pConformancePackState_ pStackARN_ pLastUpdateRequestedTime_ =
  ConformancePackStatusDetail'
    { _cpsdConformancePackStatusReason = Nothing
    , _cpsdLastUpdateCompletedTime = Nothing
    , _cpsdConformancePackName = pConformancePackName_
    , _cpsdConformancePackId = pConformancePackId_
    , _cpsdConformancePackARN = pConformancePackARN_
    , _cpsdConformancePackState = pConformancePackState_
    , _cpsdStackARN = pStackARN_
    , _cpsdLastUpdateRequestedTime = _Time # pLastUpdateRequestedTime_
    }


-- | The reason of conformance pack creation failure.
cpsdConformancePackStatusReason :: Lens' ConformancePackStatusDetail (Maybe Text)
cpsdConformancePackStatusReason = lens _cpsdConformancePackStatusReason (\ s a -> s{_cpsdConformancePackStatusReason = a})

-- | Last time when conformation pack creation and update was successful.
cpsdLastUpdateCompletedTime :: Lens' ConformancePackStatusDetail (Maybe UTCTime)
cpsdLastUpdateCompletedTime = lens _cpsdLastUpdateCompletedTime (\ s a -> s{_cpsdLastUpdateCompletedTime = a}) . mapping _Time

-- | Name of the conformance pack.
cpsdConformancePackName :: Lens' ConformancePackStatusDetail Text
cpsdConformancePackName = lens _cpsdConformancePackName (\ s a -> s{_cpsdConformancePackName = a})

-- | ID of the conformance pack.
cpsdConformancePackId :: Lens' ConformancePackStatusDetail Text
cpsdConformancePackId = lens _cpsdConformancePackId (\ s a -> s{_cpsdConformancePackId = a})

-- | Amazon Resource Name (ARN) of comformance pack.
cpsdConformancePackARN :: Lens' ConformancePackStatusDetail Text
cpsdConformancePackARN = lens _cpsdConformancePackARN (\ s a -> s{_cpsdConformancePackARN = a})

-- | Indicates deployment status of conformance pack. AWS Config sets the state of the conformance pack to:     * CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.     * CREATE_COMPLETE when a conformance pack has been successfully created in your account.     * CREATE_FAILED when a conformance pack creation failed in your account.     * DELETE_IN_PROGRESS when a conformance pack deletion is in progress.      * DELETE_FAILED when a conformance pack deletion failed in your account.
cpsdConformancePackState :: Lens' ConformancePackStatusDetail ConformancePackState
cpsdConformancePackState = lens _cpsdConformancePackState (\ s a -> s{_cpsdConformancePackState = a})

-- | Amazon Resource Name (ARN) of AWS CloudFormation stack.
cpsdStackARN :: Lens' ConformancePackStatusDetail Text
cpsdStackARN = lens _cpsdStackARN (\ s a -> s{_cpsdStackARN = a})

-- | Last time when conformation pack creation and update was requested.
cpsdLastUpdateRequestedTime :: Lens' ConformancePackStatusDetail UTCTime
cpsdLastUpdateRequestedTime = lens _cpsdLastUpdateRequestedTime (\ s a -> s{_cpsdLastUpdateRequestedTime = a}) . _Time

instance FromJSON ConformancePackStatusDetail where
        parseJSON
          = withObject "ConformancePackStatusDetail"
              (\ x ->
                 ConformancePackStatusDetail' <$>
                   (x .:? "ConformancePackStatusReason") <*>
                     (x .:? "LastUpdateCompletedTime")
                     <*> (x .: "ConformancePackName")
                     <*> (x .: "ConformancePackId")
                     <*> (x .: "ConformancePackArn")
                     <*> (x .: "ConformancePackState")
                     <*> (x .: "StackArn")
                     <*> (x .: "LastUpdateRequestedTime"))

instance Hashable ConformancePackStatusDetail where

instance NFData ConformancePackStatusDetail where

-- | The channel through which AWS Config delivers notifications and updated configuration states.
--
--
--
-- /See:/ 'deliveryChannel' smart constructor.
data DeliveryChannel =
  DeliveryChannel'
    { _dcS3KeyPrefix :: !(Maybe Text)
    , _dcSnsTopicARN :: !(Maybe Text)
    , _dcName :: !(Maybe Text)
    , _dcConfigSnapshotDeliveryProperties :: !(Maybe ConfigSnapshotDeliveryProperties)
    , _dcS3BucketName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeliveryChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcS3KeyPrefix' - The prefix for the specified Amazon S3 bucket.
--
-- * 'dcSnsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes. If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic> in the AWS Config Developer Guide.
--
-- * 'dcName' - The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.
--
-- * 'dcConfigSnapshotDeliveryProperties' - The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.
--
-- * 'dcS3BucketName' - The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files. If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket> in the AWS Config Developer Guide.
deliveryChannel
    :: DeliveryChannel
deliveryChannel =
  DeliveryChannel'
    { _dcS3KeyPrefix = Nothing
    , _dcSnsTopicARN = Nothing
    , _dcName = Nothing
    , _dcConfigSnapshotDeliveryProperties = Nothing
    , _dcS3BucketName = Nothing
    }


-- | The prefix for the specified Amazon S3 bucket.
dcS3KeyPrefix :: Lens' DeliveryChannel (Maybe Text)
dcS3KeyPrefix = lens _dcS3KeyPrefix (\ s a -> s{_dcS3KeyPrefix = a})

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes. If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic> in the AWS Config Developer Guide.
dcSnsTopicARN :: Lens' DeliveryChannel (Maybe Text)
dcSnsTopicARN = lens _dcSnsTopicARN (\ s a -> s{_dcSnsTopicARN = a})

-- | The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.
dcName :: Lens' DeliveryChannel (Maybe Text)
dcName = lens _dcName (\ s a -> s{_dcName = a})

-- | The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.
dcConfigSnapshotDeliveryProperties :: Lens' DeliveryChannel (Maybe ConfigSnapshotDeliveryProperties)
dcConfigSnapshotDeliveryProperties = lens _dcConfigSnapshotDeliveryProperties (\ s a -> s{_dcConfigSnapshotDeliveryProperties = a})

-- | The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files. If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket> in the AWS Config Developer Guide.
dcS3BucketName :: Lens' DeliveryChannel (Maybe Text)
dcS3BucketName = lens _dcS3BucketName (\ s a -> s{_dcS3BucketName = a})

instance FromJSON DeliveryChannel where
        parseJSON
          = withObject "DeliveryChannel"
              (\ x ->
                 DeliveryChannel' <$>
                   (x .:? "s3KeyPrefix") <*> (x .:? "snsTopicARN") <*>
                     (x .:? "name")
                     <*> (x .:? "configSnapshotDeliveryProperties")
                     <*> (x .:? "s3BucketName"))

instance Hashable DeliveryChannel where

instance NFData DeliveryChannel where

instance ToJSON DeliveryChannel where
        toJSON DeliveryChannel'{..}
          = object
              (catMaybes
                 [("s3KeyPrefix" .=) <$> _dcS3KeyPrefix,
                  ("snsTopicARN" .=) <$> _dcSnsTopicARN,
                  ("name" .=) <$> _dcName,
                  ("configSnapshotDeliveryProperties" .=) <$>
                    _dcConfigSnapshotDeliveryProperties,
                  ("s3BucketName" .=) <$> _dcS3BucketName])

-- | The status of a specified delivery channel.
--
--
-- Valid values: @Success@ | @Failure@
--
--
-- /See:/ 'deliveryChannelStatus' smart constructor.
data DeliveryChannelStatus =
  DeliveryChannelStatus'
    { _dcsConfigSnapshotDeliveryInfo :: !(Maybe ConfigExportDeliveryInfo)
    , _dcsConfigStreamDeliveryInfo   :: !(Maybe ConfigStreamDeliveryInfo)
    , _dcsConfigHistoryDeliveryInfo  :: !(Maybe ConfigExportDeliveryInfo)
    , _dcsName                       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeliveryChannelStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsConfigSnapshotDeliveryInfo' - A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.
--
-- * 'dcsConfigStreamDeliveryInfo' - A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.
--
-- * 'dcsConfigHistoryDeliveryInfo' - A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.
--
-- * 'dcsName' - The name of the delivery channel.
deliveryChannelStatus
    :: DeliveryChannelStatus
deliveryChannelStatus =
  DeliveryChannelStatus'
    { _dcsConfigSnapshotDeliveryInfo = Nothing
    , _dcsConfigStreamDeliveryInfo = Nothing
    , _dcsConfigHistoryDeliveryInfo = Nothing
    , _dcsName = Nothing
    }


-- | A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.
dcsConfigSnapshotDeliveryInfo :: Lens' DeliveryChannelStatus (Maybe ConfigExportDeliveryInfo)
dcsConfigSnapshotDeliveryInfo = lens _dcsConfigSnapshotDeliveryInfo (\ s a -> s{_dcsConfigSnapshotDeliveryInfo = a})

-- | A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.
dcsConfigStreamDeliveryInfo :: Lens' DeliveryChannelStatus (Maybe ConfigStreamDeliveryInfo)
dcsConfigStreamDeliveryInfo = lens _dcsConfigStreamDeliveryInfo (\ s a -> s{_dcsConfigStreamDeliveryInfo = a})

-- | A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.
dcsConfigHistoryDeliveryInfo :: Lens' DeliveryChannelStatus (Maybe ConfigExportDeliveryInfo)
dcsConfigHistoryDeliveryInfo = lens _dcsConfigHistoryDeliveryInfo (\ s a -> s{_dcsConfigHistoryDeliveryInfo = a})

-- | The name of the delivery channel.
dcsName :: Lens' DeliveryChannelStatus (Maybe Text)
dcsName = lens _dcsName (\ s a -> s{_dcsName = a})

instance FromJSON DeliveryChannelStatus where
        parseJSON
          = withObject "DeliveryChannelStatus"
              (\ x ->
                 DeliveryChannelStatus' <$>
                   (x .:? "configSnapshotDeliveryInfo") <*>
                     (x .:? "configStreamDeliveryInfo")
                     <*> (x .:? "configHistoryDeliveryInfo")
                     <*> (x .:? "name"))

instance Hashable DeliveryChannelStatus where

instance NFData DeliveryChannelStatus where

-- | Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.
--
--
--
-- /See:/ 'evaluation' smart constructor.
data Evaluation =
  Evaluation'
    { _eAnnotation             :: !(Maybe Text)
    , _eComplianceResourceType :: !Text
    , _eComplianceResourceId   :: !Text
    , _eComplianceType         :: !ComplianceType
    , _eOrderingTimestamp      :: !POSIX
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Evaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAnnotation' - Supplementary information about how the evaluation determined the compliance.
--
-- * 'eComplianceResourceType' - The type of AWS resource that was evaluated.
--
-- * 'eComplianceResourceId' - The ID of the AWS resource that was evaluated.
--
-- * 'eComplianceType' - Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against. For the @Evaluation@ data type, AWS Config supports only the @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ values. AWS Config does not support the @INSUFFICIENT_DATA@ value for this data type. Similarly, AWS Config does not accept @INSUFFICIENT_DATA@ as the value for @ComplianceType@ from a @PutEvaluations@ request. For example, an AWS Lambda function for a custom AWS Config rule cannot pass an @INSUFFICIENT_DATA@ value to AWS Config.
--
-- * 'eOrderingTimestamp' - The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).
evaluation
    :: Text -- ^ 'eComplianceResourceType'
    -> Text -- ^ 'eComplianceResourceId'
    -> ComplianceType -- ^ 'eComplianceType'
    -> UTCTime -- ^ 'eOrderingTimestamp'
    -> Evaluation
evaluation pComplianceResourceType_ pComplianceResourceId_ pComplianceType_ pOrderingTimestamp_ =
  Evaluation'
    { _eAnnotation = Nothing
    , _eComplianceResourceType = pComplianceResourceType_
    , _eComplianceResourceId = pComplianceResourceId_
    , _eComplianceType = pComplianceType_
    , _eOrderingTimestamp = _Time # pOrderingTimestamp_
    }


-- | Supplementary information about how the evaluation determined the compliance.
eAnnotation :: Lens' Evaluation (Maybe Text)
eAnnotation = lens _eAnnotation (\ s a -> s{_eAnnotation = a})

-- | The type of AWS resource that was evaluated.
eComplianceResourceType :: Lens' Evaluation Text
eComplianceResourceType = lens _eComplianceResourceType (\ s a -> s{_eComplianceResourceType = a})

-- | The ID of the AWS resource that was evaluated.
eComplianceResourceId :: Lens' Evaluation Text
eComplianceResourceId = lens _eComplianceResourceId (\ s a -> s{_eComplianceResourceId = a})

-- | Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against. For the @Evaluation@ data type, AWS Config supports only the @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ values. AWS Config does not support the @INSUFFICIENT_DATA@ value for this data type. Similarly, AWS Config does not accept @INSUFFICIENT_DATA@ as the value for @ComplianceType@ from a @PutEvaluations@ request. For example, an AWS Lambda function for a custom AWS Config rule cannot pass an @INSUFFICIENT_DATA@ value to AWS Config.
eComplianceType :: Lens' Evaluation ComplianceType
eComplianceType = lens _eComplianceType (\ s a -> s{_eComplianceType = a})

-- | The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).
eOrderingTimestamp :: Lens' Evaluation UTCTime
eOrderingTimestamp = lens _eOrderingTimestamp (\ s a -> s{_eOrderingTimestamp = a}) . _Time

instance FromJSON Evaluation where
        parseJSON
          = withObject "Evaluation"
              (\ x ->
                 Evaluation' <$>
                   (x .:? "Annotation") <*>
                     (x .: "ComplianceResourceType")
                     <*> (x .: "ComplianceResourceId")
                     <*> (x .: "ComplianceType")
                     <*> (x .: "OrderingTimestamp"))

instance Hashable Evaluation where

instance NFData Evaluation where

instance ToJSON Evaluation where
        toJSON Evaluation'{..}
          = object
              (catMaybes
                 [("Annotation" .=) <$> _eAnnotation,
                  Just
                    ("ComplianceResourceType" .=
                       _eComplianceResourceType),
                  Just
                    ("ComplianceResourceId" .= _eComplianceResourceId),
                  Just ("ComplianceType" .= _eComplianceType),
                  Just ("OrderingTimestamp" .= _eOrderingTimestamp)])

-- | The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
--
--
--
-- /See:/ 'evaluationResult' smart constructor.
data EvaluationResult =
  EvaluationResult'
    { _erEvaluationResultIdentifier :: !(Maybe EvaluationResultIdentifier)
    , _erAnnotation                 :: !(Maybe Text)
    , _erConfigRuleInvokedTime      :: !(Maybe POSIX)
    , _erResultRecordedTime         :: !(Maybe POSIX)
    , _erResultToken                :: !(Maybe Text)
    , _erComplianceType             :: !(Maybe ComplianceType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erEvaluationResultIdentifier' - Uniquely identifies the evaluation result.
--
-- * 'erAnnotation' - Supplementary information about how the evaluation determined the compliance.
--
-- * 'erConfigRuleInvokedTime' - The time when the AWS Config rule evaluated the AWS resource.
--
-- * 'erResultRecordedTime' - The time when AWS Config recorded the evaluation result.
--
-- * 'erResultToken' - An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.
--
-- * 'erComplianceType' - Indicates whether the AWS resource complies with the AWS Config rule that evaluated it. For the @EvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ values. AWS Config does not support the @INSUFFICIENT_DATA@ value for the @EvaluationResult@ data type.
evaluationResult
    :: EvaluationResult
evaluationResult =
  EvaluationResult'
    { _erEvaluationResultIdentifier = Nothing
    , _erAnnotation = Nothing
    , _erConfigRuleInvokedTime = Nothing
    , _erResultRecordedTime = Nothing
    , _erResultToken = Nothing
    , _erComplianceType = Nothing
    }


-- | Uniquely identifies the evaluation result.
erEvaluationResultIdentifier :: Lens' EvaluationResult (Maybe EvaluationResultIdentifier)
erEvaluationResultIdentifier = lens _erEvaluationResultIdentifier (\ s a -> s{_erEvaluationResultIdentifier = a})

-- | Supplementary information about how the evaluation determined the compliance.
erAnnotation :: Lens' EvaluationResult (Maybe Text)
erAnnotation = lens _erAnnotation (\ s a -> s{_erAnnotation = a})

-- | The time when the AWS Config rule evaluated the AWS resource.
erConfigRuleInvokedTime :: Lens' EvaluationResult (Maybe UTCTime)
erConfigRuleInvokedTime = lens _erConfigRuleInvokedTime (\ s a -> s{_erConfigRuleInvokedTime = a}) . mapping _Time

-- | The time when AWS Config recorded the evaluation result.
erResultRecordedTime :: Lens' EvaluationResult (Maybe UTCTime)
erResultRecordedTime = lens _erResultRecordedTime (\ s a -> s{_erResultRecordedTime = a}) . mapping _Time

-- | An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.
erResultToken :: Lens' EvaluationResult (Maybe Text)
erResultToken = lens _erResultToken (\ s a -> s{_erResultToken = a})

-- | Indicates whether the AWS resource complies with the AWS Config rule that evaluated it. For the @EvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ , @NON_COMPLIANT@ , and @NOT_APPLICABLE@ values. AWS Config does not support the @INSUFFICIENT_DATA@ value for the @EvaluationResult@ data type.
erComplianceType :: Lens' EvaluationResult (Maybe ComplianceType)
erComplianceType = lens _erComplianceType (\ s a -> s{_erComplianceType = a})

instance FromJSON EvaluationResult where
        parseJSON
          = withObject "EvaluationResult"
              (\ x ->
                 EvaluationResult' <$>
                   (x .:? "EvaluationResultIdentifier") <*>
                     (x .:? "Annotation")
                     <*> (x .:? "ConfigRuleInvokedTime")
                     <*> (x .:? "ResultRecordedTime")
                     <*> (x .:? "ResultToken")
                     <*> (x .:? "ComplianceType"))

instance Hashable EvaluationResult where

instance NFData EvaluationResult where

-- | Uniquely identifies an evaluation result.
--
--
--
-- /See:/ 'evaluationResultIdentifier' smart constructor.
data EvaluationResultIdentifier =
  EvaluationResultIdentifier'
    { _eriEvaluationResultQualifier :: !(Maybe EvaluationResultQualifier)
    , _eriOrderingTimestamp         :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluationResultIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eriEvaluationResultQualifier' - Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.
--
-- * 'eriOrderingTimestamp' - The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.
evaluationResultIdentifier
    :: EvaluationResultIdentifier
evaluationResultIdentifier =
  EvaluationResultIdentifier'
    {_eriEvaluationResultQualifier = Nothing, _eriOrderingTimestamp = Nothing}


-- | Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.
eriEvaluationResultQualifier :: Lens' EvaluationResultIdentifier (Maybe EvaluationResultQualifier)
eriEvaluationResultQualifier = lens _eriEvaluationResultQualifier (\ s a -> s{_eriEvaluationResultQualifier = a})

-- | The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.
eriOrderingTimestamp :: Lens' EvaluationResultIdentifier (Maybe UTCTime)
eriOrderingTimestamp = lens _eriOrderingTimestamp (\ s a -> s{_eriOrderingTimestamp = a}) . mapping _Time

instance FromJSON EvaluationResultIdentifier where
        parseJSON
          = withObject "EvaluationResultIdentifier"
              (\ x ->
                 EvaluationResultIdentifier' <$>
                   (x .:? "EvaluationResultQualifier") <*>
                     (x .:? "OrderingTimestamp"))

instance Hashable EvaluationResultIdentifier where

instance NFData EvaluationResultIdentifier where

-- | Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.
--
--
--
-- /See:/ 'evaluationResultQualifier' smart constructor.
data EvaluationResultQualifier =
  EvaluationResultQualifier'
    { _erqResourceId     :: !(Maybe Text)
    , _erqResourceType   :: !(Maybe Text)
    , _erqConfigRuleName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluationResultQualifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erqResourceId' - The ID of the evaluated AWS resource.
--
-- * 'erqResourceType' - The type of AWS resource that was evaluated.
--
-- * 'erqConfigRuleName' - The name of the AWS Config rule that was used in the evaluation.
evaluationResultQualifier
    :: EvaluationResultQualifier
evaluationResultQualifier =
  EvaluationResultQualifier'
    { _erqResourceId = Nothing
    , _erqResourceType = Nothing
    , _erqConfigRuleName = Nothing
    }


-- | The ID of the evaluated AWS resource.
erqResourceId :: Lens' EvaluationResultQualifier (Maybe Text)
erqResourceId = lens _erqResourceId (\ s a -> s{_erqResourceId = a})

-- | The type of AWS resource that was evaluated.
erqResourceType :: Lens' EvaluationResultQualifier (Maybe Text)
erqResourceType = lens _erqResourceType (\ s a -> s{_erqResourceType = a})

-- | The name of the AWS Config rule that was used in the evaluation.
erqConfigRuleName :: Lens' EvaluationResultQualifier (Maybe Text)
erqConfigRuleName = lens _erqConfigRuleName (\ s a -> s{_erqConfigRuleName = a})

instance FromJSON EvaluationResultQualifier where
        parseJSON
          = withObject "EvaluationResultQualifier"
              (\ x ->
                 EvaluationResultQualifier' <$>
                   (x .:? "ResourceId") <*> (x .:? "ResourceType") <*>
                     (x .:? "ConfigRuleName"))

instance Hashable EvaluationResultQualifier where

instance NFData EvaluationResultQualifier where

-- | The controls that AWS Config uses for executing remediations.
--
--
--
-- /See:/ 'executionControls' smart constructor.
newtype ExecutionControls =
  ExecutionControls'
    { _ecSsmControls :: Maybe SsmControls
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecSsmControls' - A SsmControls object.
executionControls
    :: ExecutionControls
executionControls = ExecutionControls' {_ecSsmControls = Nothing}


-- | A SsmControls object.
ecSsmControls :: Lens' ExecutionControls (Maybe SsmControls)
ecSsmControls = lens _ecSsmControls (\ s a -> s{_ecSsmControls = a})

instance FromJSON ExecutionControls where
        parseJSON
          = withObject "ExecutionControls"
              (\ x -> ExecutionControls' <$> (x .:? "SsmControls"))

instance Hashable ExecutionControls where

instance NFData ExecutionControls where

instance ToJSON ExecutionControls where
        toJSON ExecutionControls'{..}
          = object
              (catMaybes [("SsmControls" .=) <$> _ecSsmControls])

-- | List of each of the failed delete remediation exceptions with specific reasons.
--
--
--
-- /See:/ 'failedDeleteRemediationExceptionsBatch' smart constructor.
data FailedDeleteRemediationExceptionsBatch =
  FailedDeleteRemediationExceptionsBatch'
    { _fdrebFailureMessage :: !(Maybe Text)
    , _fdrebFailedItems    :: !(Maybe (List1 RemediationExceptionResourceKey))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedDeleteRemediationExceptionsBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdrebFailureMessage' - Returns a failure message for delete remediation exception. For example, AWS Config creates an exception due to an internal error.
--
-- * 'fdrebFailedItems' - Returns remediation exception resource key object of the failed items.
failedDeleteRemediationExceptionsBatch
    :: FailedDeleteRemediationExceptionsBatch
failedDeleteRemediationExceptionsBatch =
  FailedDeleteRemediationExceptionsBatch'
    {_fdrebFailureMessage = Nothing, _fdrebFailedItems = Nothing}


-- | Returns a failure message for delete remediation exception. For example, AWS Config creates an exception due to an internal error.
fdrebFailureMessage :: Lens' FailedDeleteRemediationExceptionsBatch (Maybe Text)
fdrebFailureMessage = lens _fdrebFailureMessage (\ s a -> s{_fdrebFailureMessage = a})

-- | Returns remediation exception resource key object of the failed items.
fdrebFailedItems :: Lens' FailedDeleteRemediationExceptionsBatch (Maybe (NonEmpty RemediationExceptionResourceKey))
fdrebFailedItems = lens _fdrebFailedItems (\ s a -> s{_fdrebFailedItems = a}) . mapping _List1

instance FromJSON
           FailedDeleteRemediationExceptionsBatch
         where
        parseJSON
          = withObject "FailedDeleteRemediationExceptionsBatch"
              (\ x ->
                 FailedDeleteRemediationExceptionsBatch' <$>
                   (x .:? "FailureMessage") <*> (x .:? "FailedItems"))

instance Hashable
           FailedDeleteRemediationExceptionsBatch
         where

instance NFData
           FailedDeleteRemediationExceptionsBatch
         where

-- | List of each of the failed remediations with specific reasons.
--
--
--
-- /See:/ 'failedRemediationBatch' smart constructor.
data FailedRemediationBatch =
  FailedRemediationBatch'
    { _frbFailureMessage :: !(Maybe Text)
    , _frbFailedItems    :: !(Maybe [RemediationConfiguration])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedRemediationBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frbFailureMessage' - Returns a failure message. For example, the resource is already compliant.
--
-- * 'frbFailedItems' - Returns remediation configurations of the failed items.
failedRemediationBatch
    :: FailedRemediationBatch
failedRemediationBatch =
  FailedRemediationBatch'
    {_frbFailureMessage = Nothing, _frbFailedItems = Nothing}


-- | Returns a failure message. For example, the resource is already compliant.
frbFailureMessage :: Lens' FailedRemediationBatch (Maybe Text)
frbFailureMessage = lens _frbFailureMessage (\ s a -> s{_frbFailureMessage = a})

-- | Returns remediation configurations of the failed items.
frbFailedItems :: Lens' FailedRemediationBatch [RemediationConfiguration]
frbFailedItems = lens _frbFailedItems (\ s a -> s{_frbFailedItems = a}) . _Default . _Coerce

instance FromJSON FailedRemediationBatch where
        parseJSON
          = withObject "FailedRemediationBatch"
              (\ x ->
                 FailedRemediationBatch' <$>
                   (x .:? "FailureMessage") <*>
                     (x .:? "FailedItems" .!= mempty))

instance Hashable FailedRemediationBatch where

instance NFData FailedRemediationBatch where

-- | List of each of the failed remediation exceptions with specific reasons.
--
--
--
-- /See:/ 'failedRemediationExceptionBatch' smart constructor.
data FailedRemediationExceptionBatch =
  FailedRemediationExceptionBatch'
    { _frebFailureMessage :: !(Maybe Text)
    , _frebFailedItems    :: !(Maybe [RemediationException])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedRemediationExceptionBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frebFailureMessage' - Returns a failure message. For example, the auto-remediation has failed.
--
-- * 'frebFailedItems' - Returns remediation exception resource key object of the failed items.
failedRemediationExceptionBatch
    :: FailedRemediationExceptionBatch
failedRemediationExceptionBatch =
  FailedRemediationExceptionBatch'
    {_frebFailureMessage = Nothing, _frebFailedItems = Nothing}


-- | Returns a failure message. For example, the auto-remediation has failed.
frebFailureMessage :: Lens' FailedRemediationExceptionBatch (Maybe Text)
frebFailureMessage = lens _frebFailureMessage (\ s a -> s{_frebFailureMessage = a})

-- | Returns remediation exception resource key object of the failed items.
frebFailedItems :: Lens' FailedRemediationExceptionBatch [RemediationException]
frebFailedItems = lens _frebFailedItems (\ s a -> s{_frebFailedItems = a}) . _Default . _Coerce

instance FromJSON FailedRemediationExceptionBatch
         where
        parseJSON
          = withObject "FailedRemediationExceptionBatch"
              (\ x ->
                 FailedRemediationExceptionBatch' <$>
                   (x .:? "FailureMessage") <*>
                     (x .:? "FailedItems" .!= mempty))

instance Hashable FailedRemediationExceptionBatch
         where

instance NFData FailedRemediationExceptionBatch where

-- | Details about the fields such as name of the field.
--
--
--
-- /See:/ 'fieldInfo' smart constructor.
newtype FieldInfo =
  FieldInfo'
    { _fiName :: Maybe Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FieldInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiName' - Name of the field.
fieldInfo
    :: FieldInfo
fieldInfo = FieldInfo' {_fiName = Nothing}


-- | Name of the field.
fiName :: Lens' FieldInfo (Maybe Text)
fiName = lens _fiName (\ s a -> s{_fiName = a})

instance FromJSON FieldInfo where
        parseJSON
          = withObject "FieldInfo"
              (\ x -> FieldInfo' <$> (x .:? "Name"))

instance Hashable FieldInfo where

instance NFData FieldInfo where

-- | The count of resources that are grouped by the group name.
--
--
--
-- /See:/ 'groupedResourceCount' smart constructor.
data GroupedResourceCount =
  GroupedResourceCount'
    { _grcGroupName     :: !Text
    , _grcResourceCount :: !Integer
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupedResourceCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcGroupName' - The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as @GroupByKey@ .
--
-- * 'grcResourceCount' - The number of resources in the group.
groupedResourceCount
    :: Text -- ^ 'grcGroupName'
    -> Integer -- ^ 'grcResourceCount'
    -> GroupedResourceCount
groupedResourceCount pGroupName_ pResourceCount_ =
  GroupedResourceCount'
    {_grcGroupName = pGroupName_, _grcResourceCount = pResourceCount_}


-- | The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as @GroupByKey@ .
grcGroupName :: Lens' GroupedResourceCount Text
grcGroupName = lens _grcGroupName (\ s a -> s{_grcGroupName = a})

-- | The number of resources in the group.
grcResourceCount :: Lens' GroupedResourceCount Integer
grcResourceCount = lens _grcResourceCount (\ s a -> s{_grcResourceCount = a})

instance FromJSON GroupedResourceCount where
        parseJSON
          = withObject "GroupedResourceCount"
              (\ x ->
                 GroupedResourceCount' <$>
                   (x .: "GroupName") <*> (x .: "ResourceCount"))

instance Hashable GroupedResourceCount where

instance NFData GroupedResourceCount where

-- | Organization config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.
--
--
--
-- /See:/ 'memberAccountStatus' smart constructor.
data MemberAccountStatus =
  MemberAccountStatus'
    { _masErrorCode               :: !(Maybe Text)
    , _masErrorMessage            :: !(Maybe Text)
    , _masLastUpdateTime          :: !(Maybe POSIX)
    , _masAccountId               :: !Text
    , _masConfigRuleName          :: !Text
    , _masMemberAccountRuleStatus :: !MemberAccountRuleStatus
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MemberAccountStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'masErrorCode' - An error code that is returned when config rule creation or deletion failed in the member account.
--
-- * 'masErrorMessage' - An error message indicating that config rule account creation or deletion has failed due to an error in the member account.
--
-- * 'masLastUpdateTime' - The timestamp of the last status update.
--
-- * 'masAccountId' - The 12-digit account ID of a member account.
--
-- * 'masConfigRuleName' - The name of config rule deployed in the member account.
--
-- * 'masMemberAccountRuleStatus' - Indicates deployment status for config rule in the member account. When master account calls @PutOrganizationConfigRule@ action for the first time, config rule status is created in the member account. When master account calls @PutOrganizationConfigRule@ action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes @OrganizationConfigRule@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when config rule has been created in the member account.      * @CREATE_IN_PROGRESS@ when config rule is being created in the member account.     * @CREATE_FAILED@ when config rule creation has failed in the member account.     * @DELETE_FAILED@ when config rule deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when config rule is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when config rule has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when config rule has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when config rule is being updated in the member account.     * @UPDATE_FAILED@ when config rule deletion has failed in the member account.
memberAccountStatus
    :: Text -- ^ 'masAccountId'
    -> Text -- ^ 'masConfigRuleName'
    -> MemberAccountRuleStatus -- ^ 'masMemberAccountRuleStatus'
    -> MemberAccountStatus
memberAccountStatus pAccountId_ pConfigRuleName_ pMemberAccountRuleStatus_ =
  MemberAccountStatus'
    { _masErrorCode = Nothing
    , _masErrorMessage = Nothing
    , _masLastUpdateTime = Nothing
    , _masAccountId = pAccountId_
    , _masConfigRuleName = pConfigRuleName_
    , _masMemberAccountRuleStatus = pMemberAccountRuleStatus_
    }


-- | An error code that is returned when config rule creation or deletion failed in the member account.
masErrorCode :: Lens' MemberAccountStatus (Maybe Text)
masErrorCode = lens _masErrorCode (\ s a -> s{_masErrorCode = a})

-- | An error message indicating that config rule account creation or deletion has failed due to an error in the member account.
masErrorMessage :: Lens' MemberAccountStatus (Maybe Text)
masErrorMessage = lens _masErrorMessage (\ s a -> s{_masErrorMessage = a})

-- | The timestamp of the last status update.
masLastUpdateTime :: Lens' MemberAccountStatus (Maybe UTCTime)
masLastUpdateTime = lens _masLastUpdateTime (\ s a -> s{_masLastUpdateTime = a}) . mapping _Time

-- | The 12-digit account ID of a member account.
masAccountId :: Lens' MemberAccountStatus Text
masAccountId = lens _masAccountId (\ s a -> s{_masAccountId = a})

-- | The name of config rule deployed in the member account.
masConfigRuleName :: Lens' MemberAccountStatus Text
masConfigRuleName = lens _masConfigRuleName (\ s a -> s{_masConfigRuleName = a})

-- | Indicates deployment status for config rule in the member account. When master account calls @PutOrganizationConfigRule@ action for the first time, config rule status is created in the member account. When master account calls @PutOrganizationConfigRule@ action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes @OrganizationConfigRule@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when config rule has been created in the member account.      * @CREATE_IN_PROGRESS@ when config rule is being created in the member account.     * @CREATE_FAILED@ when config rule creation has failed in the member account.     * @DELETE_FAILED@ when config rule deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when config rule is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when config rule has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when config rule has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when config rule is being updated in the member account.     * @UPDATE_FAILED@ when config rule deletion has failed in the member account.
masMemberAccountRuleStatus :: Lens' MemberAccountStatus MemberAccountRuleStatus
masMemberAccountRuleStatus = lens _masMemberAccountRuleStatus (\ s a -> s{_masMemberAccountRuleStatus = a})

instance FromJSON MemberAccountStatus where
        parseJSON
          = withObject "MemberAccountStatus"
              (\ x ->
                 MemberAccountStatus' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "LastUpdateTime")
                     <*> (x .: "AccountId")
                     <*> (x .: "ConfigRuleName")
                     <*> (x .: "MemberAccountRuleStatus"))

instance Hashable MemberAccountStatus where

instance NFData MemberAccountStatus where

-- | This object contains regions to set up the aggregator and an IAM role to retrieve organization details.
--
--
--
-- /See:/ 'organizationAggregationSource' smart constructor.
data OrganizationAggregationSource =
  OrganizationAggregationSource'
    { _oasAWSRegions    :: !(Maybe (List1 Text))
    , _oasAllAWSRegions :: !(Maybe Bool)
    , _oasRoleARN       :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationAggregationSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oasAWSRegions' - The source regions being aggregated.
--
-- * 'oasAllAWSRegions' - If true, aggregate existing AWS Config regions and future regions.
--
-- * 'oasRoleARN' - ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
organizationAggregationSource
    :: Text -- ^ 'oasRoleARN'
    -> OrganizationAggregationSource
organizationAggregationSource pRoleARN_ =
  OrganizationAggregationSource'
    { _oasAWSRegions = Nothing
    , _oasAllAWSRegions = Nothing
    , _oasRoleARN = pRoleARN_
    }


-- | The source regions being aggregated.
oasAWSRegions :: Lens' OrganizationAggregationSource (Maybe (NonEmpty Text))
oasAWSRegions = lens _oasAWSRegions (\ s a -> s{_oasAWSRegions = a}) . mapping _List1

-- | If true, aggregate existing AWS Config regions and future regions.
oasAllAWSRegions :: Lens' OrganizationAggregationSource (Maybe Bool)
oasAllAWSRegions = lens _oasAllAWSRegions (\ s a -> s{_oasAllAWSRegions = a})

-- | ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
oasRoleARN :: Lens' OrganizationAggregationSource Text
oasRoleARN = lens _oasRoleARN (\ s a -> s{_oasRoleARN = a})

instance FromJSON OrganizationAggregationSource where
        parseJSON
          = withObject "OrganizationAggregationSource"
              (\ x ->
                 OrganizationAggregationSource' <$>
                   (x .:? "AwsRegions") <*> (x .:? "AllAwsRegions") <*>
                     (x .: "RoleArn"))

instance Hashable OrganizationAggregationSource where

instance NFData OrganizationAggregationSource where

instance ToJSON OrganizationAggregationSource where
        toJSON OrganizationAggregationSource'{..}
          = object
              (catMaybes
                 [("AwsRegions" .=) <$> _oasAWSRegions,
                  ("AllAwsRegions" .=) <$> _oasAllAWSRegions,
                  Just ("RoleArn" .= _oasRoleARN)])

-- | An organization config rule that has information about config rules that AWS Config creates in member accounts.
--
--
--
-- /See:/ 'organizationConfigRule' smart constructor.
data OrganizationConfigRule =
  OrganizationConfigRule'
    { _ocrOrganizationManagedRuleMetadata :: !(Maybe OrganizationManagedRuleMetadata)
    , _ocrExcludedAccounts :: !(Maybe [Text])
    , _ocrOrganizationCustomRuleMetadata :: !(Maybe OrganizationCustomRuleMetadata)
    , _ocrLastUpdateTime :: !(Maybe POSIX)
    , _ocrOrganizationConfigRuleName :: !Text
    , _ocrOrganizationConfigRuleARN :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrOrganizationManagedRuleMetadata' - An @OrganizationManagedRuleMetadata@ object.
--
-- * 'ocrExcludedAccounts' - A comma-separated list of accounts excluded from organization config rule.
--
-- * 'ocrOrganizationCustomRuleMetadata' - An @OrganizationCustomRuleMetadata@ object.
--
-- * 'ocrLastUpdateTime' - The timestamp of the last update.
--
-- * 'ocrOrganizationConfigRuleName' - The name that you assign to organization config rule.
--
-- * 'ocrOrganizationConfigRuleARN' - Amazon Resource Name (ARN) of organization config rule.
organizationConfigRule
    :: Text -- ^ 'ocrOrganizationConfigRuleName'
    -> Text -- ^ 'ocrOrganizationConfigRuleARN'
    -> OrganizationConfigRule
organizationConfigRule pOrganizationConfigRuleName_ pOrganizationConfigRuleARN_ =
  OrganizationConfigRule'
    { _ocrOrganizationManagedRuleMetadata = Nothing
    , _ocrExcludedAccounts = Nothing
    , _ocrOrganizationCustomRuleMetadata = Nothing
    , _ocrLastUpdateTime = Nothing
    , _ocrOrganizationConfigRuleName = pOrganizationConfigRuleName_
    , _ocrOrganizationConfigRuleARN = pOrganizationConfigRuleARN_
    }


-- | An @OrganizationManagedRuleMetadata@ object.
ocrOrganizationManagedRuleMetadata :: Lens' OrganizationConfigRule (Maybe OrganizationManagedRuleMetadata)
ocrOrganizationManagedRuleMetadata = lens _ocrOrganizationManagedRuleMetadata (\ s a -> s{_ocrOrganizationManagedRuleMetadata = a})

-- | A comma-separated list of accounts excluded from organization config rule.
ocrExcludedAccounts :: Lens' OrganizationConfigRule [Text]
ocrExcludedAccounts = lens _ocrExcludedAccounts (\ s a -> s{_ocrExcludedAccounts = a}) . _Default . _Coerce

-- | An @OrganizationCustomRuleMetadata@ object.
ocrOrganizationCustomRuleMetadata :: Lens' OrganizationConfigRule (Maybe OrganizationCustomRuleMetadata)
ocrOrganizationCustomRuleMetadata = lens _ocrOrganizationCustomRuleMetadata (\ s a -> s{_ocrOrganizationCustomRuleMetadata = a})

-- | The timestamp of the last update.
ocrLastUpdateTime :: Lens' OrganizationConfigRule (Maybe UTCTime)
ocrLastUpdateTime = lens _ocrLastUpdateTime (\ s a -> s{_ocrLastUpdateTime = a}) . mapping _Time

-- | The name that you assign to organization config rule.
ocrOrganizationConfigRuleName :: Lens' OrganizationConfigRule Text
ocrOrganizationConfigRuleName = lens _ocrOrganizationConfigRuleName (\ s a -> s{_ocrOrganizationConfigRuleName = a})

-- | Amazon Resource Name (ARN) of organization config rule.
ocrOrganizationConfigRuleARN :: Lens' OrganizationConfigRule Text
ocrOrganizationConfigRuleARN = lens _ocrOrganizationConfigRuleARN (\ s a -> s{_ocrOrganizationConfigRuleARN = a})

instance FromJSON OrganizationConfigRule where
        parseJSON
          = withObject "OrganizationConfigRule"
              (\ x ->
                 OrganizationConfigRule' <$>
                   (x .:? "OrganizationManagedRuleMetadata") <*>
                     (x .:? "ExcludedAccounts" .!= mempty)
                     <*> (x .:? "OrganizationCustomRuleMetadata")
                     <*> (x .:? "LastUpdateTime")
                     <*> (x .: "OrganizationConfigRuleName")
                     <*> (x .: "OrganizationConfigRuleArn"))

instance Hashable OrganizationConfigRule where

instance NFData OrganizationConfigRule where

-- | Returns the status for an organization config rule in an organization.
--
--
--
-- /See:/ 'organizationConfigRuleStatus' smart constructor.
data OrganizationConfigRuleStatus =
  OrganizationConfigRuleStatus'
    { _ocrsErrorCode                  :: !(Maybe Text)
    , _ocrsErrorMessage               :: !(Maybe Text)
    , _ocrsLastUpdateTime             :: !(Maybe POSIX)
    , _ocrsOrganizationConfigRuleName :: !Text
    , _ocrsOrganizationRuleStatus     :: !OrganizationRuleStatus
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationConfigRuleStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrsErrorCode' - An error code that is returned when organization config rule creation or deletion has failed.
--
-- * 'ocrsErrorMessage' - An error message indicating that organization config rule creation or deletion failed due to an error.
--
-- * 'ocrsLastUpdateTime' - The timestamp of the last update.
--
-- * 'ocrsOrganizationConfigRuleName' - The name that you assign to organization config rule.
--
-- * 'ocrsOrganizationRuleStatus' - Indicates deployment status of an organization config rule. When master account calls PutOrganizationConfigRule action for the first time, config rule status is created in all the member accounts. When master account calls PutOrganizationConfigRule action for the second time, config rule status is updated in all the member accounts. Additionally, config rule status is updated when one or more member accounts join or leave an organization. Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for @config-multiaccountsetup.amazonaws.com@ . AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when an organization config rule has been successfully created in all the member accounts.      * @CREATE_IN_PROGRESS@ when an organization config rule creation is in progress.     * @CREATE_FAILED@ when an organization config rule creation failed in one or more member accounts within that organization.     * @DELETE_FAILED@ when an organization config rule deletion failed in one or more member accounts within that organization.     * @DELETE_IN_PROGRESS@ when an organization config rule deletion is in progress.     * @DELETE_SUCCESSFUL@ when an organization config rule has been successfully deleted from all the member accounts.     * @UPDATE_SUCCESSFUL@ when an organization config rule has been successfully updated in all the member accounts.     * @UPDATE_IN_PROGRESS@ when an organization config rule update is in progress.     * @UPDATE_FAILED@ when an organization config rule update failed in one or more member accounts within that organization.
organizationConfigRuleStatus
    :: Text -- ^ 'ocrsOrganizationConfigRuleName'
    -> OrganizationRuleStatus -- ^ 'ocrsOrganizationRuleStatus'
    -> OrganizationConfigRuleStatus
organizationConfigRuleStatus pOrganizationConfigRuleName_ pOrganizationRuleStatus_ =
  OrganizationConfigRuleStatus'
    { _ocrsErrorCode = Nothing
    , _ocrsErrorMessage = Nothing
    , _ocrsLastUpdateTime = Nothing
    , _ocrsOrganizationConfigRuleName = pOrganizationConfigRuleName_
    , _ocrsOrganizationRuleStatus = pOrganizationRuleStatus_
    }


-- | An error code that is returned when organization config rule creation or deletion has failed.
ocrsErrorCode :: Lens' OrganizationConfigRuleStatus (Maybe Text)
ocrsErrorCode = lens _ocrsErrorCode (\ s a -> s{_ocrsErrorCode = a})

-- | An error message indicating that organization config rule creation or deletion failed due to an error.
ocrsErrorMessage :: Lens' OrganizationConfigRuleStatus (Maybe Text)
ocrsErrorMessage = lens _ocrsErrorMessage (\ s a -> s{_ocrsErrorMessage = a})

-- | The timestamp of the last update.
ocrsLastUpdateTime :: Lens' OrganizationConfigRuleStatus (Maybe UTCTime)
ocrsLastUpdateTime = lens _ocrsLastUpdateTime (\ s a -> s{_ocrsLastUpdateTime = a}) . mapping _Time

-- | The name that you assign to organization config rule.
ocrsOrganizationConfigRuleName :: Lens' OrganizationConfigRuleStatus Text
ocrsOrganizationConfigRuleName = lens _ocrsOrganizationConfigRuleName (\ s a -> s{_ocrsOrganizationConfigRuleName = a})

-- | Indicates deployment status of an organization config rule. When master account calls PutOrganizationConfigRule action for the first time, config rule status is created in all the member accounts. When master account calls PutOrganizationConfigRule action for the second time, config rule status is updated in all the member accounts. Additionally, config rule status is updated when one or more member accounts join or leave an organization. Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for @config-multiaccountsetup.amazonaws.com@ . AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when an organization config rule has been successfully created in all the member accounts.      * @CREATE_IN_PROGRESS@ when an organization config rule creation is in progress.     * @CREATE_FAILED@ when an organization config rule creation failed in one or more member accounts within that organization.     * @DELETE_FAILED@ when an organization config rule deletion failed in one or more member accounts within that organization.     * @DELETE_IN_PROGRESS@ when an organization config rule deletion is in progress.     * @DELETE_SUCCESSFUL@ when an organization config rule has been successfully deleted from all the member accounts.     * @UPDATE_SUCCESSFUL@ when an organization config rule has been successfully updated in all the member accounts.     * @UPDATE_IN_PROGRESS@ when an organization config rule update is in progress.     * @UPDATE_FAILED@ when an organization config rule update failed in one or more member accounts within that organization.
ocrsOrganizationRuleStatus :: Lens' OrganizationConfigRuleStatus OrganizationRuleStatus
ocrsOrganizationRuleStatus = lens _ocrsOrganizationRuleStatus (\ s a -> s{_ocrsOrganizationRuleStatus = a})

instance FromJSON OrganizationConfigRuleStatus where
        parseJSON
          = withObject "OrganizationConfigRuleStatus"
              (\ x ->
                 OrganizationConfigRuleStatus' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "LastUpdateTime")
                     <*> (x .: "OrganizationConfigRuleName")
                     <*> (x .: "OrganizationRuleStatus"))

instance Hashable OrganizationConfigRuleStatus where

instance NFData OrganizationConfigRuleStatus where

-- | An organization conformance pack that has information about conformance packs that AWS Config creates in member accounts.
--
--
--
-- /See:/ 'organizationConformancePack' smart constructor.
data OrganizationConformancePack =
  OrganizationConformancePack'
    { _ocpDeliveryS3KeyPrefix :: !(Maybe Text)
    , _ocpConformancePackInputParameters :: !(Maybe [ConformancePackInputParameter])
    , _ocpExcludedAccounts :: !(Maybe [Text])
    , _ocpOrganizationConformancePackName :: !Text
    , _ocpOrganizationConformancePackARN :: !Text
    , _ocpDeliveryS3Bucket :: !Text
    , _ocpLastUpdateTime :: !POSIX
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationConformancePack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocpDeliveryS3KeyPrefix' - Any folder structure you want to add to an Amazon S3 bucket.
--
-- * 'ocpConformancePackInputParameters' - A list of @ConformancePackInputParameter@ objects.
--
-- * 'ocpExcludedAccounts' - A comma-separated list of accounts excluded from organization conformance pack.
--
-- * 'ocpOrganizationConformancePackName' - The name you assign to an organization conformance pack.
--
-- * 'ocpOrganizationConformancePackARN' - Amazon Resource Name (ARN) of organization conformance pack.
--
-- * 'ocpDeliveryS3Bucket' - Location of an Amazon S3 bucket where AWS Config can deliver evaluation results and conformance pack template that is used to create a pack.
--
-- * 'ocpLastUpdateTime' - Last time when organization conformation pack was updated.
organizationConformancePack
    :: Text -- ^ 'ocpOrganizationConformancePackName'
    -> Text -- ^ 'ocpOrganizationConformancePackARN'
    -> Text -- ^ 'ocpDeliveryS3Bucket'
    -> UTCTime -- ^ 'ocpLastUpdateTime'
    -> OrganizationConformancePack
organizationConformancePack pOrganizationConformancePackName_ pOrganizationConformancePackARN_ pDeliveryS3Bucket_ pLastUpdateTime_ =
  OrganizationConformancePack'
    { _ocpDeliveryS3KeyPrefix = Nothing
    , _ocpConformancePackInputParameters = Nothing
    , _ocpExcludedAccounts = Nothing
    , _ocpOrganizationConformancePackName = pOrganizationConformancePackName_
    , _ocpOrganizationConformancePackARN = pOrganizationConformancePackARN_
    , _ocpDeliveryS3Bucket = pDeliveryS3Bucket_
    , _ocpLastUpdateTime = _Time # pLastUpdateTime_
    }


-- | Any folder structure you want to add to an Amazon S3 bucket.
ocpDeliveryS3KeyPrefix :: Lens' OrganizationConformancePack (Maybe Text)
ocpDeliveryS3KeyPrefix = lens _ocpDeliveryS3KeyPrefix (\ s a -> s{_ocpDeliveryS3KeyPrefix = a})

-- | A list of @ConformancePackInputParameter@ objects.
ocpConformancePackInputParameters :: Lens' OrganizationConformancePack [ConformancePackInputParameter]
ocpConformancePackInputParameters = lens _ocpConformancePackInputParameters (\ s a -> s{_ocpConformancePackInputParameters = a}) . _Default . _Coerce

-- | A comma-separated list of accounts excluded from organization conformance pack.
ocpExcludedAccounts :: Lens' OrganizationConformancePack [Text]
ocpExcludedAccounts = lens _ocpExcludedAccounts (\ s a -> s{_ocpExcludedAccounts = a}) . _Default . _Coerce

-- | The name you assign to an organization conformance pack.
ocpOrganizationConformancePackName :: Lens' OrganizationConformancePack Text
ocpOrganizationConformancePackName = lens _ocpOrganizationConformancePackName (\ s a -> s{_ocpOrganizationConformancePackName = a})

-- | Amazon Resource Name (ARN) of organization conformance pack.
ocpOrganizationConformancePackARN :: Lens' OrganizationConformancePack Text
ocpOrganizationConformancePackARN = lens _ocpOrganizationConformancePackARN (\ s a -> s{_ocpOrganizationConformancePackARN = a})

-- | Location of an Amazon S3 bucket where AWS Config can deliver evaluation results and conformance pack template that is used to create a pack.
ocpDeliveryS3Bucket :: Lens' OrganizationConformancePack Text
ocpDeliveryS3Bucket = lens _ocpDeliveryS3Bucket (\ s a -> s{_ocpDeliveryS3Bucket = a})

-- | Last time when organization conformation pack was updated.
ocpLastUpdateTime :: Lens' OrganizationConformancePack UTCTime
ocpLastUpdateTime = lens _ocpLastUpdateTime (\ s a -> s{_ocpLastUpdateTime = a}) . _Time

instance FromJSON OrganizationConformancePack where
        parseJSON
          = withObject "OrganizationConformancePack"
              (\ x ->
                 OrganizationConformancePack' <$>
                   (x .:? "DeliveryS3KeyPrefix") <*>
                     (x .:? "ConformancePackInputParameters" .!= mempty)
                     <*> (x .:? "ExcludedAccounts" .!= mempty)
                     <*> (x .: "OrganizationConformancePackName")
                     <*> (x .: "OrganizationConformancePackArn")
                     <*> (x .: "DeliveryS3Bucket")
                     <*> (x .: "LastUpdateTime"))

instance Hashable OrganizationConformancePack where

instance NFData OrganizationConformancePack where

-- | Organization conformance pack creation or deletion status in each member account. This includes the name of the conformance pack, the status, error code and error message when the conformance pack creation or deletion failed.
--
--
--
-- /See:/ 'organizationConformancePackDetailedStatus' smart constructor.
data OrganizationConformancePackDetailedStatus =
  OrganizationConformancePackDetailedStatus'
    { _ocpdsErrorCode           :: !(Maybe Text)
    , _ocpdsErrorMessage        :: !(Maybe Text)
    , _ocpdsLastUpdateTime      :: !(Maybe POSIX)
    , _ocpdsAccountId           :: !Text
    , _ocpdsConformancePackName :: !Text
    , _ocpdsStatus              :: !OrganizationResourceDetailedStatus
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationConformancePackDetailedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocpdsErrorCode' - An error code that is returned when conformance pack creation or deletion failed in the member account.
--
-- * 'ocpdsErrorMessage' - An error message indicating that conformance pack account creation or deletion has failed due to an error in the member account.
--
-- * 'ocpdsLastUpdateTime' - The timestamp of the last status update.
--
-- * 'ocpdsAccountId' - The 12-digit account ID of a member account.
--
-- * 'ocpdsConformancePackName' - The name of conformance pack deployed in the member account.
--
-- * 'ocpdsStatus' - Indicates deployment status for conformance pack in a member account. When master account calls @PutOrganizationConformancePack@ action for the first time, conformance pack status is created in the member account. When master account calls @PutOrganizationConformancePack@ action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes @OrganizationConformancePack@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when conformance pack has been created in the member account.      * @CREATE_IN_PROGRESS@ when conformance pack is being created in the member account.     * @CREATE_FAILED@ when conformance pack creation has failed in the member account.     * @DELETE_FAILED@ when conformance pack deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when conformance pack is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when conformance pack has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when conformance pack has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when conformance pack is being updated in the member account.     * @UPDATE_FAILED@ when conformance pack deletion has failed in the member account.
organizationConformancePackDetailedStatus
    :: Text -- ^ 'ocpdsAccountId'
    -> Text -- ^ 'ocpdsConformancePackName'
    -> OrganizationResourceDetailedStatus -- ^ 'ocpdsStatus'
    -> OrganizationConformancePackDetailedStatus
organizationConformancePackDetailedStatus pAccountId_ pConformancePackName_ pStatus_ =
  OrganizationConformancePackDetailedStatus'
    { _ocpdsErrorCode = Nothing
    , _ocpdsErrorMessage = Nothing
    , _ocpdsLastUpdateTime = Nothing
    , _ocpdsAccountId = pAccountId_
    , _ocpdsConformancePackName = pConformancePackName_
    , _ocpdsStatus = pStatus_
    }


-- | An error code that is returned when conformance pack creation or deletion failed in the member account.
ocpdsErrorCode :: Lens' OrganizationConformancePackDetailedStatus (Maybe Text)
ocpdsErrorCode = lens _ocpdsErrorCode (\ s a -> s{_ocpdsErrorCode = a})

-- | An error message indicating that conformance pack account creation or deletion has failed due to an error in the member account.
ocpdsErrorMessage :: Lens' OrganizationConformancePackDetailedStatus (Maybe Text)
ocpdsErrorMessage = lens _ocpdsErrorMessage (\ s a -> s{_ocpdsErrorMessage = a})

-- | The timestamp of the last status update.
ocpdsLastUpdateTime :: Lens' OrganizationConformancePackDetailedStatus (Maybe UTCTime)
ocpdsLastUpdateTime = lens _ocpdsLastUpdateTime (\ s a -> s{_ocpdsLastUpdateTime = a}) . mapping _Time

-- | The 12-digit account ID of a member account.
ocpdsAccountId :: Lens' OrganizationConformancePackDetailedStatus Text
ocpdsAccountId = lens _ocpdsAccountId (\ s a -> s{_ocpdsAccountId = a})

-- | The name of conformance pack deployed in the member account.
ocpdsConformancePackName :: Lens' OrganizationConformancePackDetailedStatus Text
ocpdsConformancePackName = lens _ocpdsConformancePackName (\ s a -> s{_ocpdsConformancePackName = a})

-- | Indicates deployment status for conformance pack in a member account. When master account calls @PutOrganizationConformancePack@ action for the first time, conformance pack status is created in the member account. When master account calls @PutOrganizationConformancePack@ action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes @OrganizationConformancePack@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when conformance pack has been created in the member account.      * @CREATE_IN_PROGRESS@ when conformance pack is being created in the member account.     * @CREATE_FAILED@ when conformance pack creation has failed in the member account.     * @DELETE_FAILED@ when conformance pack deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when conformance pack is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when conformance pack has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when conformance pack has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when conformance pack is being updated in the member account.     * @UPDATE_FAILED@ when conformance pack deletion has failed in the member account.
ocpdsStatus :: Lens' OrganizationConformancePackDetailedStatus OrganizationResourceDetailedStatus
ocpdsStatus = lens _ocpdsStatus (\ s a -> s{_ocpdsStatus = a})

instance FromJSON
           OrganizationConformancePackDetailedStatus
         where
        parseJSON
          = withObject
              "OrganizationConformancePackDetailedStatus"
              (\ x ->
                 OrganizationConformancePackDetailedStatus' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "LastUpdateTime")
                     <*> (x .: "AccountId")
                     <*> (x .: "ConformancePackName")
                     <*> (x .: "Status"))

instance Hashable
           OrganizationConformancePackDetailedStatus
         where

instance NFData
           OrganizationConformancePackDetailedStatus
         where

-- | Returns the status for an organization conformance pack in an organization.
--
--
--
-- /See:/ 'organizationConformancePackStatus' smart constructor.
data OrganizationConformancePackStatus =
  OrganizationConformancePackStatus'
    { _ocpsErrorCode                       :: !(Maybe Text)
    , _ocpsErrorMessage                    :: !(Maybe Text)
    , _ocpsLastUpdateTime                  :: !(Maybe POSIX)
    , _ocpsOrganizationConformancePackName :: !Text
    , _ocpsStatus                          :: !OrganizationResourceStatus
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationConformancePackStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocpsErrorCode' - An error code that is returned when organization conformance pack creation or deletion has failed in a member account.
--
-- * 'ocpsErrorMessage' - An error message indicating that organization conformance pack creation or deletion failed due to an error.
--
-- * 'ocpsLastUpdateTime' - The timestamp of the last update.
--
-- * 'ocpsOrganizationConformancePackName' - The name that you assign to organization conformance pack.
--
-- * 'ocpsStatus' - Indicates deployment status of an organization conformance pack. When master account calls PutOrganizationConformancePack for the first time, conformance pack status is created in all the member accounts. When master account calls PutOrganizationConformancePack for the second time, conformance pack status is updated in all the member accounts. Additionally, conformance pack status is updated when one or more member accounts join or leave an organization. Conformance pack status is deleted when the master account deletes OrganizationConformancePack in all the member accounts and disables service access for @config-multiaccountsetup.amazonaws.com@ . AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when an organization conformance pack has been successfully created in all the member accounts.      * @CREATE_IN_PROGRESS@ when an organization conformance pack creation is in progress.     * @CREATE_FAILED@ when an organization conformance pack creation failed in one or more member accounts within that organization.     * @DELETE_FAILED@ when an organization conformance pack deletion failed in one or more member accounts within that organization.     * @DELETE_IN_PROGRESS@ when an organization conformance pack deletion is in progress.     * @DELETE_SUCCESSFUL@ when an organization conformance pack has been successfully deleted from all the member accounts.     * @UPDATE_SUCCESSFUL@ when an organization conformance pack has been successfully updated in all the member accounts.     * @UPDATE_IN_PROGRESS@ when an organization conformance pack update is in progress.     * @UPDATE_FAILED@ when an organization conformance pack update failed in one or more member accounts within that organization.
organizationConformancePackStatus
    :: Text -- ^ 'ocpsOrganizationConformancePackName'
    -> OrganizationResourceStatus -- ^ 'ocpsStatus'
    -> OrganizationConformancePackStatus
organizationConformancePackStatus pOrganizationConformancePackName_ pStatus_ =
  OrganizationConformancePackStatus'
    { _ocpsErrorCode = Nothing
    , _ocpsErrorMessage = Nothing
    , _ocpsLastUpdateTime = Nothing
    , _ocpsOrganizationConformancePackName = pOrganizationConformancePackName_
    , _ocpsStatus = pStatus_
    }


-- | An error code that is returned when organization conformance pack creation or deletion has failed in a member account.
ocpsErrorCode :: Lens' OrganizationConformancePackStatus (Maybe Text)
ocpsErrorCode = lens _ocpsErrorCode (\ s a -> s{_ocpsErrorCode = a})

-- | An error message indicating that organization conformance pack creation or deletion failed due to an error.
ocpsErrorMessage :: Lens' OrganizationConformancePackStatus (Maybe Text)
ocpsErrorMessage = lens _ocpsErrorMessage (\ s a -> s{_ocpsErrorMessage = a})

-- | The timestamp of the last update.
ocpsLastUpdateTime :: Lens' OrganizationConformancePackStatus (Maybe UTCTime)
ocpsLastUpdateTime = lens _ocpsLastUpdateTime (\ s a -> s{_ocpsLastUpdateTime = a}) . mapping _Time

-- | The name that you assign to organization conformance pack.
ocpsOrganizationConformancePackName :: Lens' OrganizationConformancePackStatus Text
ocpsOrganizationConformancePackName = lens _ocpsOrganizationConformancePackName (\ s a -> s{_ocpsOrganizationConformancePackName = a})

-- | Indicates deployment status of an organization conformance pack. When master account calls PutOrganizationConformancePack for the first time, conformance pack status is created in all the member accounts. When master account calls PutOrganizationConformancePack for the second time, conformance pack status is updated in all the member accounts. Additionally, conformance pack status is updated when one or more member accounts join or leave an organization. Conformance pack status is deleted when the master account deletes OrganizationConformancePack in all the member accounts and disables service access for @config-multiaccountsetup.amazonaws.com@ . AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when an organization conformance pack has been successfully created in all the member accounts.      * @CREATE_IN_PROGRESS@ when an organization conformance pack creation is in progress.     * @CREATE_FAILED@ when an organization conformance pack creation failed in one or more member accounts within that organization.     * @DELETE_FAILED@ when an organization conformance pack deletion failed in one or more member accounts within that organization.     * @DELETE_IN_PROGRESS@ when an organization conformance pack deletion is in progress.     * @DELETE_SUCCESSFUL@ when an organization conformance pack has been successfully deleted from all the member accounts.     * @UPDATE_SUCCESSFUL@ when an organization conformance pack has been successfully updated in all the member accounts.     * @UPDATE_IN_PROGRESS@ when an organization conformance pack update is in progress.     * @UPDATE_FAILED@ when an organization conformance pack update failed in one or more member accounts within that organization.
ocpsStatus :: Lens' OrganizationConformancePackStatus OrganizationResourceStatus
ocpsStatus = lens _ocpsStatus (\ s a -> s{_ocpsStatus = a})

instance FromJSON OrganizationConformancePackStatus
         where
        parseJSON
          = withObject "OrganizationConformancePackStatus"
              (\ x ->
                 OrganizationConformancePackStatus' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "LastUpdateTime")
                     <*> (x .: "OrganizationConformancePackName")
                     <*> (x .: "Status"))

instance Hashable OrganizationConformancePackStatus
         where

instance NFData OrganizationConformancePackStatus
         where

-- | An object that specifies organization custom rule metadata such as resource type, resource ID of AWS resource, Lamdba function ARN, and organization trigger types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
--
--
--
-- /See:/ 'organizationCustomRuleMetadata' smart constructor.
data OrganizationCustomRuleMetadata =
  OrganizationCustomRuleMetadata'
    { _ocrmInputParameters :: !(Maybe Text)
    , _ocrmResourceIdScope :: !(Maybe Text)
    , _ocrmTagValueScope :: !(Maybe Text)
    , _ocrmMaximumExecutionFrequency :: !(Maybe MaximumExecutionFrequency)
    , _ocrmTagKeyScope :: !(Maybe Text)
    , _ocrmResourceTypesScope :: !(Maybe [Text])
    , _ocrmDescription :: !(Maybe Text)
    , _ocrmLambdaFunctionARN :: !Text
    , _ocrmOrganizationConfigRuleTriggerTypes :: ![OrganizationConfigRuleTriggerType]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationCustomRuleMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrmInputParameters' - A string, in JSON format, that is passed to organization config rule Lambda function.
--
-- * 'ocrmResourceIdScope' - The ID of the AWS resource that was evaluated.
--
-- * 'ocrmTagValueScope' - The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
--
-- * 'ocrmMaximumExecutionFrequency' - The maximum frequency with which AWS Config runs evaluations for a rule. Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
--
-- * 'ocrmTagKeyScope' - One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
--
-- * 'ocrmResourceTypesScope' - The type of the AWS resource that was evaluated.
--
-- * 'ocrmDescription' - The description that you provide for organization config rule.
--
-- * 'ocrmLambdaFunctionARN' - The lambda function ARN.
--
-- * 'ocrmOrganizationConfigRuleTriggerTypes' - The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .
organizationCustomRuleMetadata
    :: Text -- ^ 'ocrmLambdaFunctionARN'
    -> OrganizationCustomRuleMetadata
organizationCustomRuleMetadata pLambdaFunctionARN_ =
  OrganizationCustomRuleMetadata'
    { _ocrmInputParameters = Nothing
    , _ocrmResourceIdScope = Nothing
    , _ocrmTagValueScope = Nothing
    , _ocrmMaximumExecutionFrequency = Nothing
    , _ocrmTagKeyScope = Nothing
    , _ocrmResourceTypesScope = Nothing
    , _ocrmDescription = Nothing
    , _ocrmLambdaFunctionARN = pLambdaFunctionARN_
    , _ocrmOrganizationConfigRuleTriggerTypes = mempty
    }


-- | A string, in JSON format, that is passed to organization config rule Lambda function.
ocrmInputParameters :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmInputParameters = lens _ocrmInputParameters (\ s a -> s{_ocrmInputParameters = a})

-- | The ID of the AWS resource that was evaluated.
ocrmResourceIdScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmResourceIdScope = lens _ocrmResourceIdScope (\ s a -> s{_ocrmResourceIdScope = a})

-- | The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
ocrmTagValueScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmTagValueScope = lens _ocrmTagValueScope (\ s a -> s{_ocrmTagValueScope = a})

-- | The maximum frequency with which AWS Config runs evaluations for a rule. Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see 'ConfigSnapshotDeliveryProperties' .
ocrmMaximumExecutionFrequency :: Lens' OrganizationCustomRuleMetadata (Maybe MaximumExecutionFrequency)
ocrmMaximumExecutionFrequency = lens _ocrmMaximumExecutionFrequency (\ s a -> s{_ocrmMaximumExecutionFrequency = a})

-- | One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
ocrmTagKeyScope :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmTagKeyScope = lens _ocrmTagKeyScope (\ s a -> s{_ocrmTagKeyScope = a})

-- | The type of the AWS resource that was evaluated.
ocrmResourceTypesScope :: Lens' OrganizationCustomRuleMetadata [Text]
ocrmResourceTypesScope = lens _ocrmResourceTypesScope (\ s a -> s{_ocrmResourceTypesScope = a}) . _Default . _Coerce

-- | The description that you provide for organization config rule.
ocrmDescription :: Lens' OrganizationCustomRuleMetadata (Maybe Text)
ocrmDescription = lens _ocrmDescription (\ s a -> s{_ocrmDescription = a})

-- | The lambda function ARN.
ocrmLambdaFunctionARN :: Lens' OrganizationCustomRuleMetadata Text
ocrmLambdaFunctionARN = lens _ocrmLambdaFunctionARN (\ s a -> s{_ocrmLambdaFunctionARN = a})

-- | The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .
ocrmOrganizationConfigRuleTriggerTypes :: Lens' OrganizationCustomRuleMetadata [OrganizationConfigRuleTriggerType]
ocrmOrganizationConfigRuleTriggerTypes = lens _ocrmOrganizationConfigRuleTriggerTypes (\ s a -> s{_ocrmOrganizationConfigRuleTriggerTypes = a}) . _Coerce

instance FromJSON OrganizationCustomRuleMetadata
         where
        parseJSON
          = withObject "OrganizationCustomRuleMetadata"
              (\ x ->
                 OrganizationCustomRuleMetadata' <$>
                   (x .:? "InputParameters") <*>
                     (x .:? "ResourceIdScope")
                     <*> (x .:? "TagValueScope")
                     <*> (x .:? "MaximumExecutionFrequency")
                     <*> (x .:? "TagKeyScope")
                     <*> (x .:? "ResourceTypesScope" .!= mempty)
                     <*> (x .:? "Description")
                     <*> (x .: "LambdaFunctionArn")
                     <*>
                     (x .:? "OrganizationConfigRuleTriggerTypes" .!=
                        mempty))

instance Hashable OrganizationCustomRuleMetadata
         where

instance NFData OrganizationCustomRuleMetadata where

instance ToJSON OrganizationCustomRuleMetadata where
        toJSON OrganizationCustomRuleMetadata'{..}
          = object
              (catMaybes
                 [("InputParameters" .=) <$> _ocrmInputParameters,
                  ("ResourceIdScope" .=) <$> _ocrmResourceIdScope,
                  ("TagValueScope" .=) <$> _ocrmTagValueScope,
                  ("MaximumExecutionFrequency" .=) <$>
                    _ocrmMaximumExecutionFrequency,
                  ("TagKeyScope" .=) <$> _ocrmTagKeyScope,
                  ("ResourceTypesScope" .=) <$>
                    _ocrmResourceTypesScope,
                  ("Description" .=) <$> _ocrmDescription,
                  Just ("LambdaFunctionArn" .= _ocrmLambdaFunctionARN),
                  Just
                    ("OrganizationConfigRuleTriggerTypes" .=
                       _ocrmOrganizationConfigRuleTriggerTypes)])

-- | An object that specifies organization managed rule metadata such as resource type and ID of AWS resource along with the rule identifier. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
--
--
--
-- /See:/ 'organizationManagedRuleMetadata' smart constructor.
data OrganizationManagedRuleMetadata =
  OrganizationManagedRuleMetadata'
    { _omrmInputParameters           :: !(Maybe Text)
    , _omrmResourceIdScope           :: !(Maybe Text)
    , _omrmTagValueScope             :: !(Maybe Text)
    , _omrmMaximumExecutionFrequency :: !(Maybe MaximumExecutionFrequency)
    , _omrmTagKeyScope               :: !(Maybe Text)
    , _omrmResourceTypesScope        :: !(Maybe [Text])
    , _omrmDescription               :: !(Maybe Text)
    , _omrmRuleIdentifier            :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationManagedRuleMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omrmInputParameters' - A string, in JSON format, that is passed to organization config rule Lambda function.
--
-- * 'omrmResourceIdScope' - The ID of the AWS resource that was evaluated.
--
-- * 'omrmTagValueScope' - The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
--
-- * 'omrmMaximumExecutionFrequency' - The maximum frequency with which AWS Config runs evaluations for a rule. You are using an AWS managed rule that is triggered at a periodic frequency.
--
-- * 'omrmTagKeyScope' - One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
--
-- * 'omrmResourceTypesScope' - The type of the AWS resource that was evaluated.
--
-- * 'omrmDescription' - The description that you provide for organization config rule.
--
-- * 'omrmRuleIdentifier' - For organization config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> .
organizationManagedRuleMetadata
    :: Text -- ^ 'omrmRuleIdentifier'
    -> OrganizationManagedRuleMetadata
organizationManagedRuleMetadata pRuleIdentifier_ =
  OrganizationManagedRuleMetadata'
    { _omrmInputParameters = Nothing
    , _omrmResourceIdScope = Nothing
    , _omrmTagValueScope = Nothing
    , _omrmMaximumExecutionFrequency = Nothing
    , _omrmTagKeyScope = Nothing
    , _omrmResourceTypesScope = Nothing
    , _omrmDescription = Nothing
    , _omrmRuleIdentifier = pRuleIdentifier_
    }


-- | A string, in JSON format, that is passed to organization config rule Lambda function.
omrmInputParameters :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmInputParameters = lens _omrmInputParameters (\ s a -> s{_omrmInputParameters = a})

-- | The ID of the AWS resource that was evaluated.
omrmResourceIdScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmResourceIdScope = lens _omrmResourceIdScope (\ s a -> s{_omrmResourceIdScope = a})

-- | The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
omrmTagValueScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmTagValueScope = lens _omrmTagValueScope (\ s a -> s{_omrmTagValueScope = a})

-- | The maximum frequency with which AWS Config runs evaluations for a rule. You are using an AWS managed rule that is triggered at a periodic frequency.
omrmMaximumExecutionFrequency :: Lens' OrganizationManagedRuleMetadata (Maybe MaximumExecutionFrequency)
omrmMaximumExecutionFrequency = lens _omrmMaximumExecutionFrequency (\ s a -> s{_omrmMaximumExecutionFrequency = a})

-- | One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
omrmTagKeyScope :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmTagKeyScope = lens _omrmTagKeyScope (\ s a -> s{_omrmTagKeyScope = a})

-- | The type of the AWS resource that was evaluated.
omrmResourceTypesScope :: Lens' OrganizationManagedRuleMetadata [Text]
omrmResourceTypesScope = lens _omrmResourceTypesScope (\ s a -> s{_omrmResourceTypesScope = a}) . _Default . _Coerce

-- | The description that you provide for organization config rule.
omrmDescription :: Lens' OrganizationManagedRuleMetadata (Maybe Text)
omrmDescription = lens _omrmDescription (\ s a -> s{_omrmDescription = a})

-- | For organization config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> .
omrmRuleIdentifier :: Lens' OrganizationManagedRuleMetadata Text
omrmRuleIdentifier = lens _omrmRuleIdentifier (\ s a -> s{_omrmRuleIdentifier = a})

instance FromJSON OrganizationManagedRuleMetadata
         where
        parseJSON
          = withObject "OrganizationManagedRuleMetadata"
              (\ x ->
                 OrganizationManagedRuleMetadata' <$>
                   (x .:? "InputParameters") <*>
                     (x .:? "ResourceIdScope")
                     <*> (x .:? "TagValueScope")
                     <*> (x .:? "MaximumExecutionFrequency")
                     <*> (x .:? "TagKeyScope")
                     <*> (x .:? "ResourceTypesScope" .!= mempty)
                     <*> (x .:? "Description")
                     <*> (x .: "RuleIdentifier"))

instance Hashable OrganizationManagedRuleMetadata
         where

instance NFData OrganizationManagedRuleMetadata where

instance ToJSON OrganizationManagedRuleMetadata where
        toJSON OrganizationManagedRuleMetadata'{..}
          = object
              (catMaybes
                 [("InputParameters" .=) <$> _omrmInputParameters,
                  ("ResourceIdScope" .=) <$> _omrmResourceIdScope,
                  ("TagValueScope" .=) <$> _omrmTagValueScope,
                  ("MaximumExecutionFrequency" .=) <$>
                    _omrmMaximumExecutionFrequency,
                  ("TagKeyScope" .=) <$> _omrmTagKeyScope,
                  ("ResourceTypesScope" .=) <$>
                    _omrmResourceTypesScope,
                  ("Description" .=) <$> _omrmDescription,
                  Just ("RuleIdentifier" .= _omrmRuleIdentifier)])

-- | Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.
--
--
--
-- /See:/ 'organizationResourceDetailedStatusFilters' smart constructor.
data OrganizationResourceDetailedStatusFilters =
  OrganizationResourceDetailedStatusFilters'
    { _ordsfStatus    :: !(Maybe OrganizationResourceDetailedStatus)
    , _ordsfAccountId :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationResourceDetailedStatusFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordsfStatus' - Indicates deployment status for conformance pack in a member account. When master account calls @PutOrganizationConformancePack@ action for the first time, conformance pack status is created in the member account. When master account calls @PutOrganizationConformancePack@ action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes @OrganizationConformancePack@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when conformance pack has been created in the member account.      * @CREATE_IN_PROGRESS@ when conformance pack is being created in the member account.     * @CREATE_FAILED@ when conformance pack creation has failed in the member account.     * @DELETE_FAILED@ when conformance pack deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when conformance pack is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when conformance pack has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when conformance pack has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when conformance pack is being updated in the member account.     * @UPDATE_FAILED@ when conformance pack deletion has failed in the member account.
--
-- * 'ordsfAccountId' - The 12-digit account ID of the member account within an organization.
organizationResourceDetailedStatusFilters
    :: OrganizationResourceDetailedStatusFilters
organizationResourceDetailedStatusFilters =
  OrganizationResourceDetailedStatusFilters'
    {_ordsfStatus = Nothing, _ordsfAccountId = Nothing}


-- | Indicates deployment status for conformance pack in a member account. When master account calls @PutOrganizationConformancePack@ action for the first time, conformance pack status is created in the member account. When master account calls @PutOrganizationConformancePack@ action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes @OrganizationConformancePack@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the conformance pack to:     * @CREATE_SUCCESSFUL@ when conformance pack has been created in the member account.      * @CREATE_IN_PROGRESS@ when conformance pack is being created in the member account.     * @CREATE_FAILED@ when conformance pack creation has failed in the member account.     * @DELETE_FAILED@ when conformance pack deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when conformance pack is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when conformance pack has been deleted in the member account.      * @UPDATE_SUCCESSFUL@ when conformance pack has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when conformance pack is being updated in the member account.     * @UPDATE_FAILED@ when conformance pack deletion has failed in the member account.
ordsfStatus :: Lens' OrganizationResourceDetailedStatusFilters (Maybe OrganizationResourceDetailedStatus)
ordsfStatus = lens _ordsfStatus (\ s a -> s{_ordsfStatus = a})

-- | The 12-digit account ID of the member account within an organization.
ordsfAccountId :: Lens' OrganizationResourceDetailedStatusFilters (Maybe Text)
ordsfAccountId = lens _ordsfAccountId (\ s a -> s{_ordsfAccountId = a})

instance Hashable
           OrganizationResourceDetailedStatusFilters
         where

instance NFData
           OrganizationResourceDetailedStatusFilters
         where

instance ToJSON
           OrganizationResourceDetailedStatusFilters
         where
        toJSON OrganizationResourceDetailedStatusFilters'{..}
          = object
              (catMaybes
                 [("Status" .=) <$> _ordsfStatus,
                  ("AccountId" .=) <$> _ordsfAccountId])

-- | An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.
--
--
--
-- /See:/ 'pendingAggregationRequest' smart constructor.
data PendingAggregationRequest =
  PendingAggregationRequest'
    { _parRequesterAccountId :: !(Maybe Text)
    , _parRequesterAWSRegion :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PendingAggregationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parRequesterAccountId' - The 12-digit account ID of the account requesting to aggregate data.
--
-- * 'parRequesterAWSRegion' - The region requesting to aggregate data.
pendingAggregationRequest
    :: PendingAggregationRequest
pendingAggregationRequest =
  PendingAggregationRequest'
    {_parRequesterAccountId = Nothing, _parRequesterAWSRegion = Nothing}


-- | The 12-digit account ID of the account requesting to aggregate data.
parRequesterAccountId :: Lens' PendingAggregationRequest (Maybe Text)
parRequesterAccountId = lens _parRequesterAccountId (\ s a -> s{_parRequesterAccountId = a})

-- | The region requesting to aggregate data.
parRequesterAWSRegion :: Lens' PendingAggregationRequest (Maybe Text)
parRequesterAWSRegion = lens _parRequesterAWSRegion (\ s a -> s{_parRequesterAWSRegion = a})

instance FromJSON PendingAggregationRequest where
        parseJSON
          = withObject "PendingAggregationRequest"
              (\ x ->
                 PendingAggregationRequest' <$>
                   (x .:? "RequesterAccountId") <*>
                     (x .:? "RequesterAwsRegion"))

instance Hashable PendingAggregationRequest where

instance NFData PendingAggregationRequest where

-- | Details about the query.
--
--
--
-- /See:/ 'queryInfo' smart constructor.
newtype QueryInfo =
  QueryInfo'
    { _qiSelectFields :: Maybe [FieldInfo]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qiSelectFields' - Returns a @FieldInfo@ object.
queryInfo
    :: QueryInfo
queryInfo = QueryInfo' {_qiSelectFields = Nothing}


-- | Returns a @FieldInfo@ object.
qiSelectFields :: Lens' QueryInfo [FieldInfo]
qiSelectFields = lens _qiSelectFields (\ s a -> s{_qiSelectFields = a}) . _Default . _Coerce

instance FromJSON QueryInfo where
        parseJSON
          = withObject "QueryInfo"
              (\ x ->
                 QueryInfo' <$> (x .:? "SelectFields" .!= mempty))

instance Hashable QueryInfo where

instance NFData QueryInfo where

-- | Specifies the types of AWS resource for which AWS Config records configuration changes.
--
--
-- In the recording group, you specify whether all supported types or specific types of resources are recorded.
--
-- By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.
--
-- You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.
--
-- /Important:/ The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.
--
-- If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the @resourceTypes@ parameter.
--
-- For a list of supported resource types, see <https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported Resource Types> .
--
-- For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html Selecting Which Resources AWS Config Records> .
--
--
-- /See:/ 'recordingGroup' smart constructor.
data RecordingGroup =
  RecordingGroup'
    { _rgAllSupported               :: !(Maybe Bool)
    , _rgIncludeGlobalResourceTypes :: !(Maybe Bool)
    , _rgResourceTypes              :: !(Maybe [ResourceType])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecordingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgAllSupported' - Specifies whether AWS Config records configuration changes for every supported type of regional resource. If you set this option to @true@ , when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically. If you set this option to @true@ , you cannot enumerate a list of @resourceTypes@ .
--
-- * 'rgIncludeGlobalResourceTypes' - Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records. Before you can set this option to @true@ , you must set the @allSupported@ option to @true@ . If you set this option to @true@ , when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically. The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.
--
-- * 'rgResourceTypes' - A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, @AWS::EC2::Instance@ or @AWS::CloudTrail::Trail@ ). Before you can set this option to @true@ , you must set the @allSupported@ option to @false@ . If you set this option to @true@ , when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group. For a list of valid @resourceTypes@ values, see the __resourceType Value__ column in <https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported AWS Resource Types> .
recordingGroup
    :: RecordingGroup
recordingGroup =
  RecordingGroup'
    { _rgAllSupported = Nothing
    , _rgIncludeGlobalResourceTypes = Nothing
    , _rgResourceTypes = Nothing
    }


-- | Specifies whether AWS Config records configuration changes for every supported type of regional resource. If you set this option to @true@ , when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically. If you set this option to @true@ , you cannot enumerate a list of @resourceTypes@ .
rgAllSupported :: Lens' RecordingGroup (Maybe Bool)
rgAllSupported = lens _rgAllSupported (\ s a -> s{_rgAllSupported = a})

-- | Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records. Before you can set this option to @true@ , you must set the @allSupported@ option to @true@ . If you set this option to @true@ , when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically. The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.
rgIncludeGlobalResourceTypes :: Lens' RecordingGroup (Maybe Bool)
rgIncludeGlobalResourceTypes = lens _rgIncludeGlobalResourceTypes (\ s a -> s{_rgIncludeGlobalResourceTypes = a})

-- | A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, @AWS::EC2::Instance@ or @AWS::CloudTrail::Trail@ ). Before you can set this option to @true@ , you must set the @allSupported@ option to @false@ . If you set this option to @true@ , when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group. For a list of valid @resourceTypes@ values, see the __resourceType Value__ column in <https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported AWS Resource Types> .
rgResourceTypes :: Lens' RecordingGroup [ResourceType]
rgResourceTypes = lens _rgResourceTypes (\ s a -> s{_rgResourceTypes = a}) . _Default . _Coerce

instance FromJSON RecordingGroup where
        parseJSON
          = withObject "RecordingGroup"
              (\ x ->
                 RecordingGroup' <$>
                   (x .:? "allSupported") <*>
                     (x .:? "includeGlobalResourceTypes")
                     <*> (x .:? "resourceTypes" .!= mempty))

instance Hashable RecordingGroup where

instance NFData RecordingGroup where

instance ToJSON RecordingGroup where
        toJSON RecordingGroup'{..}
          = object
              (catMaybes
                 [("allSupported" .=) <$> _rgAllSupported,
                  ("includeGlobalResourceTypes" .=) <$>
                    _rgIncludeGlobalResourceTypes,
                  ("resourceTypes" .=) <$> _rgResourceTypes])

-- | The relationship of the related resource to the main resource.
--
--
--
-- /See:/ 'relationship' smart constructor.
data Relationship =
  Relationship'
    { _rResourceId       :: !(Maybe Text)
    , _rResourceType     :: !(Maybe ResourceType)
    , _rResourceName     :: !(Maybe Text)
    , _rRelationshipName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Relationship' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rResourceId' - The ID of the related resource (for example, @sg-xxxxxx@ ).
--
-- * 'rResourceType' - The resource type of the related resource.
--
-- * 'rResourceName' - The custom name of the related resource, if available.
--
-- * 'rRelationshipName' - The type of relationship with the related resource.
relationship
    :: Relationship
relationship =
  Relationship'
    { _rResourceId = Nothing
    , _rResourceType = Nothing
    , _rResourceName = Nothing
    , _rRelationshipName = Nothing
    }


-- | The ID of the related resource (for example, @sg-xxxxxx@ ).
rResourceId :: Lens' Relationship (Maybe Text)
rResourceId = lens _rResourceId (\ s a -> s{_rResourceId = a})

-- | The resource type of the related resource.
rResourceType :: Lens' Relationship (Maybe ResourceType)
rResourceType = lens _rResourceType (\ s a -> s{_rResourceType = a})

-- | The custom name of the related resource, if available.
rResourceName :: Lens' Relationship (Maybe Text)
rResourceName = lens _rResourceName (\ s a -> s{_rResourceName = a})

-- | The type of relationship with the related resource.
rRelationshipName :: Lens' Relationship (Maybe Text)
rRelationshipName = lens _rRelationshipName (\ s a -> s{_rRelationshipName = a})

instance FromJSON Relationship where
        parseJSON
          = withObject "Relationship"
              (\ x ->
                 Relationship' <$>
                   (x .:? "resourceId") <*> (x .:? "resourceType") <*>
                     (x .:? "resourceName")
                     <*> (x .:? "relationshipName"))

instance Hashable Relationship where

instance NFData Relationship where

-- | An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
--
--
--
-- /See:/ 'remediationConfiguration' smart constructor.
data RemediationConfiguration =
  RemediationConfiguration'
    { _rcResourceType :: !(Maybe Text)
    , _rcARN :: !(Maybe Text)
    , _rcAutomatic :: !(Maybe Bool)
    , _rcCreatedByService :: !(Maybe Text)
    , _rcRetryAttemptSeconds :: !(Maybe Nat)
    , _rcExecutionControls :: !(Maybe ExecutionControls)
    , _rcParameters :: !(Maybe (Map Text RemediationParameterValue))
    , _rcMaximumAutomaticAttempts :: !(Maybe Nat)
    , _rcTargetVersion :: !(Maybe Text)
    , _rcConfigRuleName :: !Text
    , _rcTargetType :: !RemediationTargetType
    , _rcTargetId :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcResourceType' - The type of a resource.
--
-- * 'rcARN' - Amazon Resource Name (ARN) of remediation configuration.
--
-- * 'rcAutomatic' - The remediation is triggered automatically.
--
-- * 'rcCreatedByService' - Name of the service that owns the service linked rule, if applicable.
--
-- * 'rcRetryAttemptSeconds' - Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.  For example, if you specify RetryAttemptsSeconds as 50 seconds and MaximumAutomaticAttempts as 5, AWS Config will run auto-remediations 5 times within 50 seconds before throwing an exception.
--
-- * 'rcExecutionControls' - An ExecutionControls object.
--
-- * 'rcParameters' - An object of the RemediationParameterValue.
--
-- * 'rcMaximumAutomaticAttempts' - The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5. For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptsSeconds as 50 seconds, AWS Config throws an exception after the 5th failed attempt within 50 seconds.
--
-- * 'rcTargetVersion' - Version of the target. For example, version of the SSM document.
--
-- * 'rcConfigRuleName' - The name of the AWS Config rule.
--
-- * 'rcTargetType' - The type of the target. Target executes remediation. For example, SSM document.
--
-- * 'rcTargetId' - Target ID is the name of the public document.
remediationConfiguration
    :: Text -- ^ 'rcConfigRuleName'
    -> RemediationTargetType -- ^ 'rcTargetType'
    -> Text -- ^ 'rcTargetId'
    -> RemediationConfiguration
remediationConfiguration pConfigRuleName_ pTargetType_ pTargetId_ =
  RemediationConfiguration'
    { _rcResourceType = Nothing
    , _rcARN = Nothing
    , _rcAutomatic = Nothing
    , _rcCreatedByService = Nothing
    , _rcRetryAttemptSeconds = Nothing
    , _rcExecutionControls = Nothing
    , _rcParameters = Nothing
    , _rcMaximumAutomaticAttempts = Nothing
    , _rcTargetVersion = Nothing
    , _rcConfigRuleName = pConfigRuleName_
    , _rcTargetType = pTargetType_
    , _rcTargetId = pTargetId_
    }


-- | The type of a resource.
rcResourceType :: Lens' RemediationConfiguration (Maybe Text)
rcResourceType = lens _rcResourceType (\ s a -> s{_rcResourceType = a})

-- | Amazon Resource Name (ARN) of remediation configuration.
rcARN :: Lens' RemediationConfiguration (Maybe Text)
rcARN = lens _rcARN (\ s a -> s{_rcARN = a})

-- | The remediation is triggered automatically.
rcAutomatic :: Lens' RemediationConfiguration (Maybe Bool)
rcAutomatic = lens _rcAutomatic (\ s a -> s{_rcAutomatic = a})

-- | Name of the service that owns the service linked rule, if applicable.
rcCreatedByService :: Lens' RemediationConfiguration (Maybe Text)
rcCreatedByService = lens _rcCreatedByService (\ s a -> s{_rcCreatedByService = a})

-- | Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.  For example, if you specify RetryAttemptsSeconds as 50 seconds and MaximumAutomaticAttempts as 5, AWS Config will run auto-remediations 5 times within 50 seconds before throwing an exception.
rcRetryAttemptSeconds :: Lens' RemediationConfiguration (Maybe Natural)
rcRetryAttemptSeconds = lens _rcRetryAttemptSeconds (\ s a -> s{_rcRetryAttemptSeconds = a}) . mapping _Nat

-- | An ExecutionControls object.
rcExecutionControls :: Lens' RemediationConfiguration (Maybe ExecutionControls)
rcExecutionControls = lens _rcExecutionControls (\ s a -> s{_rcExecutionControls = a})

-- | An object of the RemediationParameterValue.
rcParameters :: Lens' RemediationConfiguration (HashMap Text RemediationParameterValue)
rcParameters = lens _rcParameters (\ s a -> s{_rcParameters = a}) . _Default . _Map

-- | The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5. For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptsSeconds as 50 seconds, AWS Config throws an exception after the 5th failed attempt within 50 seconds.
rcMaximumAutomaticAttempts :: Lens' RemediationConfiguration (Maybe Natural)
rcMaximumAutomaticAttempts = lens _rcMaximumAutomaticAttempts (\ s a -> s{_rcMaximumAutomaticAttempts = a}) . mapping _Nat

-- | Version of the target. For example, version of the SSM document.
rcTargetVersion :: Lens' RemediationConfiguration (Maybe Text)
rcTargetVersion = lens _rcTargetVersion (\ s a -> s{_rcTargetVersion = a})

-- | The name of the AWS Config rule.
rcConfigRuleName :: Lens' RemediationConfiguration Text
rcConfigRuleName = lens _rcConfigRuleName (\ s a -> s{_rcConfigRuleName = a})

-- | The type of the target. Target executes remediation. For example, SSM document.
rcTargetType :: Lens' RemediationConfiguration RemediationTargetType
rcTargetType = lens _rcTargetType (\ s a -> s{_rcTargetType = a})

-- | Target ID is the name of the public document.
rcTargetId :: Lens' RemediationConfiguration Text
rcTargetId = lens _rcTargetId (\ s a -> s{_rcTargetId = a})

instance FromJSON RemediationConfiguration where
        parseJSON
          = withObject "RemediationConfiguration"
              (\ x ->
                 RemediationConfiguration' <$>
                   (x .:? "ResourceType") <*> (x .:? "Arn") <*>
                     (x .:? "Automatic")
                     <*> (x .:? "CreatedByService")
                     <*> (x .:? "RetryAttemptSeconds")
                     <*> (x .:? "ExecutionControls")
                     <*> (x .:? "Parameters" .!= mempty)
                     <*> (x .:? "MaximumAutomaticAttempts")
                     <*> (x .:? "TargetVersion")
                     <*> (x .: "ConfigRuleName")
                     <*> (x .: "TargetType")
                     <*> (x .: "TargetId"))

instance Hashable RemediationConfiguration where

instance NFData RemediationConfiguration where

instance ToJSON RemediationConfiguration where
        toJSON RemediationConfiguration'{..}
          = object
              (catMaybes
                 [("ResourceType" .=) <$> _rcResourceType,
                  ("Arn" .=) <$> _rcARN,
                  ("Automatic" .=) <$> _rcAutomatic,
                  ("CreatedByService" .=) <$> _rcCreatedByService,
                  ("RetryAttemptSeconds" .=) <$>
                    _rcRetryAttemptSeconds,
                  ("ExecutionControls" .=) <$> _rcExecutionControls,
                  ("Parameters" .=) <$> _rcParameters,
                  ("MaximumAutomaticAttempts" .=) <$>
                    _rcMaximumAutomaticAttempts,
                  ("TargetVersion" .=) <$> _rcTargetVersion,
                  Just ("ConfigRuleName" .= _rcConfigRuleName),
                  Just ("TargetType" .= _rcTargetType),
                  Just ("TargetId" .= _rcTargetId)])

-- | An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
--
--
--
-- /See:/ 'remediationException' smart constructor.
data RemediationException =
  RemediationException'
    { _reMessage        :: !(Maybe Text)
    , _reExpirationTime :: !(Maybe POSIX)
    , _reConfigRuleName :: !Text
    , _reResourceType   :: !Text
    , _reResourceId     :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationException' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reMessage' - An explanation of an remediation exception.
--
-- * 'reExpirationTime' - The time when the remediation exception will be deleted.
--
-- * 'reConfigRuleName' - The name of the AWS Config rule.
--
-- * 'reResourceType' - The type of a resource.
--
-- * 'reResourceId' - The ID of the resource (for example., sg-xxxxxx).
remediationException
    :: Text -- ^ 'reConfigRuleName'
    -> Text -- ^ 'reResourceType'
    -> Text -- ^ 'reResourceId'
    -> RemediationException
remediationException pConfigRuleName_ pResourceType_ pResourceId_ =
  RemediationException'
    { _reMessage = Nothing
    , _reExpirationTime = Nothing
    , _reConfigRuleName = pConfigRuleName_
    , _reResourceType = pResourceType_
    , _reResourceId = pResourceId_
    }


-- | An explanation of an remediation exception.
reMessage :: Lens' RemediationException (Maybe Text)
reMessage = lens _reMessage (\ s a -> s{_reMessage = a})

-- | The time when the remediation exception will be deleted.
reExpirationTime :: Lens' RemediationException (Maybe UTCTime)
reExpirationTime = lens _reExpirationTime (\ s a -> s{_reExpirationTime = a}) . mapping _Time

-- | The name of the AWS Config rule.
reConfigRuleName :: Lens' RemediationException Text
reConfigRuleName = lens _reConfigRuleName (\ s a -> s{_reConfigRuleName = a})

-- | The type of a resource.
reResourceType :: Lens' RemediationException Text
reResourceType = lens _reResourceType (\ s a -> s{_reResourceType = a})

-- | The ID of the resource (for example., sg-xxxxxx).
reResourceId :: Lens' RemediationException Text
reResourceId = lens _reResourceId (\ s a -> s{_reResourceId = a})

instance FromJSON RemediationException where
        parseJSON
          = withObject "RemediationException"
              (\ x ->
                 RemediationException' <$>
                   (x .:? "Message") <*> (x .:? "ExpirationTime") <*>
                     (x .: "ConfigRuleName")
                     <*> (x .: "ResourceType")
                     <*> (x .: "ResourceId"))

instance Hashable RemediationException where

instance NFData RemediationException where

-- | The details that identify a resource within AWS Config, including the resource type and resource ID.
--
--
--
-- /See:/ 'remediationExceptionResourceKey' smart constructor.
data RemediationExceptionResourceKey =
  RemediationExceptionResourceKey'
    { _rerkResourceId   :: !(Maybe Text)
    , _rerkResourceType :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationExceptionResourceKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rerkResourceId' - The ID of the resource (for example., sg-xxxxxx).
--
-- * 'rerkResourceType' - The type of a resource.
remediationExceptionResourceKey
    :: RemediationExceptionResourceKey
remediationExceptionResourceKey =
  RemediationExceptionResourceKey'
    {_rerkResourceId = Nothing, _rerkResourceType = Nothing}


-- | The ID of the resource (for example., sg-xxxxxx).
rerkResourceId :: Lens' RemediationExceptionResourceKey (Maybe Text)
rerkResourceId = lens _rerkResourceId (\ s a -> s{_rerkResourceId = a})

-- | The type of a resource.
rerkResourceType :: Lens' RemediationExceptionResourceKey (Maybe Text)
rerkResourceType = lens _rerkResourceType (\ s a -> s{_rerkResourceType = a})

instance FromJSON RemediationExceptionResourceKey
         where
        parseJSON
          = withObject "RemediationExceptionResourceKey"
              (\ x ->
                 RemediationExceptionResourceKey' <$>
                   (x .:? "ResourceId") <*> (x .:? "ResourceType"))

instance Hashable RemediationExceptionResourceKey
         where

instance NFData RemediationExceptionResourceKey where

instance ToJSON RemediationExceptionResourceKey where
        toJSON RemediationExceptionResourceKey'{..}
          = object
              (catMaybes
                 [("ResourceId" .=) <$> _rerkResourceId,
                  ("ResourceType" .=) <$> _rerkResourceType])

-- | Provides details of the current status of the invoked remediation action for that resource.
--
--
--
-- /See:/ 'remediationExecutionStatus' smart constructor.
data RemediationExecutionStatus =
  RemediationExecutionStatus'
    { _rState           :: !(Maybe RemediationExecutionState)
    , _rLastUpdatedTime :: !(Maybe POSIX)
    , _rResourceKey     :: !(Maybe ResourceKey)
    , _rStepDetails     :: !(Maybe [RemediationExecutionStep])
    , _rInvocationTime  :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationExecutionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rState' - ENUM of the values.
--
-- * 'rLastUpdatedTime' - The time when the remediation execution was last updated.
--
-- * 'rResourceKey' - Undocumented member.
--
-- * 'rStepDetails' - Details of every step.
--
-- * 'rInvocationTime' - Start time when the remediation was executed.
remediationExecutionStatus
    :: RemediationExecutionStatus
remediationExecutionStatus =
  RemediationExecutionStatus'
    { _rState = Nothing
    , _rLastUpdatedTime = Nothing
    , _rResourceKey = Nothing
    , _rStepDetails = Nothing
    , _rInvocationTime = Nothing
    }


-- | ENUM of the values.
rState :: Lens' RemediationExecutionStatus (Maybe RemediationExecutionState)
rState = lens _rState (\ s a -> s{_rState = a})

-- | The time when the remediation execution was last updated.
rLastUpdatedTime :: Lens' RemediationExecutionStatus (Maybe UTCTime)
rLastUpdatedTime = lens _rLastUpdatedTime (\ s a -> s{_rLastUpdatedTime = a}) . mapping _Time

-- | Undocumented member.
rResourceKey :: Lens' RemediationExecutionStatus (Maybe ResourceKey)
rResourceKey = lens _rResourceKey (\ s a -> s{_rResourceKey = a})

-- | Details of every step.
rStepDetails :: Lens' RemediationExecutionStatus [RemediationExecutionStep]
rStepDetails = lens _rStepDetails (\ s a -> s{_rStepDetails = a}) . _Default . _Coerce

-- | Start time when the remediation was executed.
rInvocationTime :: Lens' RemediationExecutionStatus (Maybe UTCTime)
rInvocationTime = lens _rInvocationTime (\ s a -> s{_rInvocationTime = a}) . mapping _Time

instance FromJSON RemediationExecutionStatus where
        parseJSON
          = withObject "RemediationExecutionStatus"
              (\ x ->
                 RemediationExecutionStatus' <$>
                   (x .:? "State") <*> (x .:? "LastUpdatedTime") <*>
                     (x .:? "ResourceKey")
                     <*> (x .:? "StepDetails" .!= mempty)
                     <*> (x .:? "InvocationTime"))

instance Hashable RemediationExecutionStatus where

instance NFData RemediationExecutionStatus where

-- | Name of the step from the SSM document.
--
--
--
-- /See:/ 'remediationExecutionStep' smart constructor.
data RemediationExecutionStep =
  RemediationExecutionStep'
    { _resState        :: !(Maybe RemediationExecutionStepState)
    , _resStartTime    :: !(Maybe POSIX)
    , _resName         :: !(Maybe Text)
    , _resStopTime     :: !(Maybe POSIX)
    , _resErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationExecutionStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resState' - The valid status of the step.
--
-- * 'resStartTime' - The time when the step started.
--
-- * 'resName' - The details of the step.
--
-- * 'resStopTime' - The time when the step stopped.
--
-- * 'resErrorMessage' - An error message if the step was interrupted during execution.
remediationExecutionStep
    :: RemediationExecutionStep
remediationExecutionStep =
  RemediationExecutionStep'
    { _resState = Nothing
    , _resStartTime = Nothing
    , _resName = Nothing
    , _resStopTime = Nothing
    , _resErrorMessage = Nothing
    }


-- | The valid status of the step.
resState :: Lens' RemediationExecutionStep (Maybe RemediationExecutionStepState)
resState = lens _resState (\ s a -> s{_resState = a})

-- | The time when the step started.
resStartTime :: Lens' RemediationExecutionStep (Maybe UTCTime)
resStartTime = lens _resStartTime (\ s a -> s{_resStartTime = a}) . mapping _Time

-- | The details of the step.
resName :: Lens' RemediationExecutionStep (Maybe Text)
resName = lens _resName (\ s a -> s{_resName = a})

-- | The time when the step stopped.
resStopTime :: Lens' RemediationExecutionStep (Maybe UTCTime)
resStopTime = lens _resStopTime (\ s a -> s{_resStopTime = a}) . mapping _Time

-- | An error message if the step was interrupted during execution.
resErrorMessage :: Lens' RemediationExecutionStep (Maybe Text)
resErrorMessage = lens _resErrorMessage (\ s a -> s{_resErrorMessage = a})

instance FromJSON RemediationExecutionStep where
        parseJSON
          = withObject "RemediationExecutionStep"
              (\ x ->
                 RemediationExecutionStep' <$>
                   (x .:? "State") <*> (x .:? "StartTime") <*>
                     (x .:? "Name")
                     <*> (x .:? "StopTime")
                     <*> (x .:? "ErrorMessage"))

instance Hashable RemediationExecutionStep where

instance NFData RemediationExecutionStep where

-- | The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.
--
--
--
-- /See:/ 'remediationParameterValue' smart constructor.
data RemediationParameterValue =
  RemediationParameterValue'
    { _rpvStaticValue   :: !(Maybe StaticValue)
    , _rpvResourceValue :: !(Maybe ResourceValue)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemediationParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpvStaticValue' - The value is static and does not change at run-time.
--
-- * 'rpvResourceValue' - The value is dynamic and changes at run-time.
remediationParameterValue
    :: RemediationParameterValue
remediationParameterValue =
  RemediationParameterValue'
    {_rpvStaticValue = Nothing, _rpvResourceValue = Nothing}


-- | The value is static and does not change at run-time.
rpvStaticValue :: Lens' RemediationParameterValue (Maybe StaticValue)
rpvStaticValue = lens _rpvStaticValue (\ s a -> s{_rpvStaticValue = a})

-- | The value is dynamic and changes at run-time.
rpvResourceValue :: Lens' RemediationParameterValue (Maybe ResourceValue)
rpvResourceValue = lens _rpvResourceValue (\ s a -> s{_rpvResourceValue = a})

instance FromJSON RemediationParameterValue where
        parseJSON
          = withObject "RemediationParameterValue"
              (\ x ->
                 RemediationParameterValue' <$>
                   (x .:? "StaticValue") <*> (x .:? "ResourceValue"))

instance Hashable RemediationParameterValue where

instance NFData RemediationParameterValue where

instance ToJSON RemediationParameterValue where
        toJSON RemediationParameterValue'{..}
          = object
              (catMaybes
                 [("StaticValue" .=) <$> _rpvStaticValue,
                  ("ResourceValue" .=) <$> _rpvResourceValue])

-- | An object that contains the resource type and the number of resources.
--
--
--
-- /See:/ 'resourceCount' smart constructor.
data ResourceCount =
  ResourceCount'
    { _resResourceType :: !(Maybe ResourceType)
    , _resCount        :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resResourceType' - The resource type (for example, @"AWS::EC2::Instance"@ ).
--
-- * 'resCount' - The number of resources.
resourceCount
    :: ResourceCount
resourceCount = ResourceCount' {_resResourceType = Nothing, _resCount = Nothing}


-- | The resource type (for example, @"AWS::EC2::Instance"@ ).
resResourceType :: Lens' ResourceCount (Maybe ResourceType)
resResourceType = lens _resResourceType (\ s a -> s{_resResourceType = a})

-- | The number of resources.
resCount :: Lens' ResourceCount (Maybe Integer)
resCount = lens _resCount (\ s a -> s{_resCount = a})

instance FromJSON ResourceCount where
        parseJSON
          = withObject "ResourceCount"
              (\ x ->
                 ResourceCount' <$>
                   (x .:? "resourceType") <*> (x .:? "count"))

instance Hashable ResourceCount where

instance NFData ResourceCount where

-- | Filters the resource count based on account ID, region, and resource type.
--
--
--
-- /See:/ 'resourceCountFilters' smart constructor.
data ResourceCountFilters =
  ResourceCountFilters'
    { _rcfResourceType :: !(Maybe ResourceType)
    , _rcfAccountId    :: !(Maybe Text)
    , _rcfRegion       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceCountFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfResourceType' - The type of the AWS resource.
--
-- * 'rcfAccountId' - The 12-digit ID of the account.
--
-- * 'rcfRegion' - The region where the account is located.
resourceCountFilters
    :: ResourceCountFilters
resourceCountFilters =
  ResourceCountFilters'
    {_rcfResourceType = Nothing, _rcfAccountId = Nothing, _rcfRegion = Nothing}


-- | The type of the AWS resource.
rcfResourceType :: Lens' ResourceCountFilters (Maybe ResourceType)
rcfResourceType = lens _rcfResourceType (\ s a -> s{_rcfResourceType = a})

-- | The 12-digit ID of the account.
rcfAccountId :: Lens' ResourceCountFilters (Maybe Text)
rcfAccountId = lens _rcfAccountId (\ s a -> s{_rcfAccountId = a})

-- | The region where the account is located.
rcfRegion :: Lens' ResourceCountFilters (Maybe Text)
rcfRegion = lens _rcfRegion (\ s a -> s{_rcfRegion = a})

instance Hashable ResourceCountFilters where

instance NFData ResourceCountFilters where

instance ToJSON ResourceCountFilters where
        toJSON ResourceCountFilters'{..}
          = object
              (catMaybes
                 [("ResourceType" .=) <$> _rcfResourceType,
                  ("AccountId" .=) <$> _rcfAccountId,
                  ("Region" .=) <$> _rcfRegion])

-- | Filters the results by resource account ID, region, resource ID, and resource name.
--
--
--
-- /See:/ 'resourceFilters' smart constructor.
data ResourceFilters =
  ResourceFilters'
    { _rfResourceId   :: !(Maybe Text)
    , _rfResourceName :: !(Maybe Text)
    , _rfAccountId    :: !(Maybe Text)
    , _rfRegion       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfResourceId' - The ID of the resource.
--
-- * 'rfResourceName' - The name of the resource.
--
-- * 'rfAccountId' - The 12-digit source account ID.
--
-- * 'rfRegion' - The source region.
resourceFilters
    :: ResourceFilters
resourceFilters =
  ResourceFilters'
    { _rfResourceId = Nothing
    , _rfResourceName = Nothing
    , _rfAccountId = Nothing
    , _rfRegion = Nothing
    }


-- | The ID of the resource.
rfResourceId :: Lens' ResourceFilters (Maybe Text)
rfResourceId = lens _rfResourceId (\ s a -> s{_rfResourceId = a})

-- | The name of the resource.
rfResourceName :: Lens' ResourceFilters (Maybe Text)
rfResourceName = lens _rfResourceName (\ s a -> s{_rfResourceName = a})

-- | The 12-digit source account ID.
rfAccountId :: Lens' ResourceFilters (Maybe Text)
rfAccountId = lens _rfAccountId (\ s a -> s{_rfAccountId = a})

-- | The source region.
rfRegion :: Lens' ResourceFilters (Maybe Text)
rfRegion = lens _rfRegion (\ s a -> s{_rfRegion = a})

instance Hashable ResourceFilters where

instance NFData ResourceFilters where

instance ToJSON ResourceFilters where
        toJSON ResourceFilters'{..}
          = object
              (catMaybes
                 [("ResourceId" .=) <$> _rfResourceId,
                  ("ResourceName" .=) <$> _rfResourceName,
                  ("AccountId" .=) <$> _rfAccountId,
                  ("Region" .=) <$> _rfRegion])

-- | The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.
--
--
--
-- /See:/ 'resourceIdentifier' smart constructor.
data ResourceIdentifier =
  ResourceIdentifier'
    { _riResourceId           :: !(Maybe Text)
    , _riResourceType         :: !(Maybe ResourceType)
    , _riResourceName         :: !(Maybe Text)
    , _riResourceDeletionTime :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riResourceId' - The ID of the resource (for example, @sg-xxxxxx@ ).
--
-- * 'riResourceType' - The type of resource.
--
-- * 'riResourceName' - The custom name of the resource (if available).
--
-- * 'riResourceDeletionTime' - The time that the resource was deleted.
resourceIdentifier
    :: ResourceIdentifier
resourceIdentifier =
  ResourceIdentifier'
    { _riResourceId = Nothing
    , _riResourceType = Nothing
    , _riResourceName = Nothing
    , _riResourceDeletionTime = Nothing
    }


-- | The ID of the resource (for example, @sg-xxxxxx@ ).
riResourceId :: Lens' ResourceIdentifier (Maybe Text)
riResourceId = lens _riResourceId (\ s a -> s{_riResourceId = a})

-- | The type of resource.
riResourceType :: Lens' ResourceIdentifier (Maybe ResourceType)
riResourceType = lens _riResourceType (\ s a -> s{_riResourceType = a})

-- | The custom name of the resource (if available).
riResourceName :: Lens' ResourceIdentifier (Maybe Text)
riResourceName = lens _riResourceName (\ s a -> s{_riResourceName = a})

-- | The time that the resource was deleted.
riResourceDeletionTime :: Lens' ResourceIdentifier (Maybe UTCTime)
riResourceDeletionTime = lens _riResourceDeletionTime (\ s a -> s{_riResourceDeletionTime = a}) . mapping _Time

instance FromJSON ResourceIdentifier where
        parseJSON
          = withObject "ResourceIdentifier"
              (\ x ->
                 ResourceIdentifier' <$>
                   (x .:? "resourceId") <*> (x .:? "resourceType") <*>
                     (x .:? "resourceName")
                     <*> (x .:? "resourceDeletionTime"))

instance Hashable ResourceIdentifier where

instance NFData ResourceIdentifier where

-- | The details that identify a resource within AWS Config, including the resource type and resource ID.
--
--
--
-- /See:/ 'resourceKey' smart constructor.
data ResourceKey =
  ResourceKey'
    { _rkResourceType :: !ResourceType
    , _rkResourceId   :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rkResourceType' - The resource type.
--
-- * 'rkResourceId' - The ID of the resource (for example., sg-xxxxxx).
resourceKey
    :: ResourceType -- ^ 'rkResourceType'
    -> Text -- ^ 'rkResourceId'
    -> ResourceKey
resourceKey pResourceType_ pResourceId_ =
  ResourceKey' {_rkResourceType = pResourceType_, _rkResourceId = pResourceId_}


-- | The resource type.
rkResourceType :: Lens' ResourceKey ResourceType
rkResourceType = lens _rkResourceType (\ s a -> s{_rkResourceType = a})

-- | The ID of the resource (for example., sg-xxxxxx).
rkResourceId :: Lens' ResourceKey Text
rkResourceId = lens _rkResourceId (\ s a -> s{_rkResourceId = a})

instance FromJSON ResourceKey where
        parseJSON
          = withObject "ResourceKey"
              (\ x ->
                 ResourceKey' <$>
                   (x .: "resourceType") <*> (x .: "resourceId"))

instance Hashable ResourceKey where

instance NFData ResourceKey where

instance ToJSON ResourceKey where
        toJSON ResourceKey'{..}
          = object
              (catMaybes
                 [Just ("resourceType" .= _rkResourceType),
                  Just ("resourceId" .= _rkResourceId)])

-- | The dynamic value of the resource.
--
--
--
-- /See:/ 'resourceValue' smart constructor.
newtype ResourceValue =
  ResourceValue'
    { _rvValue :: ResourceValueType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvValue' - The value is a resource ID.
resourceValue
    :: ResourceValueType -- ^ 'rvValue'
    -> ResourceValue
resourceValue pValue_ = ResourceValue' {_rvValue = pValue_}


-- | The value is a resource ID.
rvValue :: Lens' ResourceValue ResourceValueType
rvValue = lens _rvValue (\ s a -> s{_rvValue = a})

instance FromJSON ResourceValue where
        parseJSON
          = withObject "ResourceValue"
              (\ x -> ResourceValue' <$> (x .: "Value"))

instance Hashable ResourceValue where

instance NFData ResourceValue where

instance ToJSON ResourceValue where
        toJSON ResourceValue'{..}
          = object (catMaybes [Just ("Value" .= _rvValue)])

-- | An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in AWS Config.
--
--
--
-- /See:/ 'retentionConfiguration' smart constructor.
data RetentionConfiguration =
  RetentionConfiguration'
    { _rcName                  :: !Text
    , _rcRetentionPeriodInDays :: !Nat
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RetentionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcName' - The name of the retention configuration object.
--
-- * 'rcRetentionPeriodInDays' - Number of days AWS Config stores your historical information.
retentionConfiguration
    :: Text -- ^ 'rcName'
    -> Natural -- ^ 'rcRetentionPeriodInDays'
    -> RetentionConfiguration
retentionConfiguration pName_ pRetentionPeriodInDays_ =
  RetentionConfiguration'
    { _rcName = pName_
    , _rcRetentionPeriodInDays = _Nat # pRetentionPeriodInDays_
    }


-- | The name of the retention configuration object.
rcName :: Lens' RetentionConfiguration Text
rcName = lens _rcName (\ s a -> s{_rcName = a})

-- | Number of days AWS Config stores your historical information.
rcRetentionPeriodInDays :: Lens' RetentionConfiguration Natural
rcRetentionPeriodInDays = lens _rcRetentionPeriodInDays (\ s a -> s{_rcRetentionPeriodInDays = a}) . _Nat

instance FromJSON RetentionConfiguration where
        parseJSON
          = withObject "RetentionConfiguration"
              (\ x ->
                 RetentionConfiguration' <$>
                   (x .: "Name") <*> (x .: "RetentionPeriodInDays"))

instance Hashable RetentionConfiguration where

instance NFData RetentionConfiguration where

-- | Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
--
--
--
-- /See:/ 'scope' smart constructor.
data Scope =
  Scope'
    { _sComplianceResourceTypes :: !(Maybe [Text])
    , _sComplianceResourceId    :: !(Maybe Text)
    , _sTagValue                :: !(Maybe Text)
    , _sTagKey                  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Scope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sComplianceResourceTypes' - The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for @ComplianceResourceId@ .
--
-- * 'sComplianceResourceId' - The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for @ComplianceResourceTypes@ .
--
-- * 'sTagValue' - The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for @TagValue@ , you must also specify a value for @TagKey@ .
--
-- * 'sTagKey' - The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.
scope
    :: Scope
scope =
  Scope'
    { _sComplianceResourceTypes = Nothing
    , _sComplianceResourceId = Nothing
    , _sTagValue = Nothing
    , _sTagKey = Nothing
    }


-- | The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for @ComplianceResourceId@ .
sComplianceResourceTypes :: Lens' Scope [Text]
sComplianceResourceTypes = lens _sComplianceResourceTypes (\ s a -> s{_sComplianceResourceTypes = a}) . _Default . _Coerce

-- | The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for @ComplianceResourceTypes@ .
sComplianceResourceId :: Lens' Scope (Maybe Text)
sComplianceResourceId = lens _sComplianceResourceId (\ s a -> s{_sComplianceResourceId = a})

-- | The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for @TagValue@ , you must also specify a value for @TagKey@ .
sTagValue :: Lens' Scope (Maybe Text)
sTagValue = lens _sTagValue (\ s a -> s{_sTagValue = a})

-- | The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.
sTagKey :: Lens' Scope (Maybe Text)
sTagKey = lens _sTagKey (\ s a -> s{_sTagKey = a})

instance FromJSON Scope where
        parseJSON
          = withObject "Scope"
              (\ x ->
                 Scope' <$>
                   (x .:? "ComplianceResourceTypes" .!= mempty) <*>
                     (x .:? "ComplianceResourceId")
                     <*> (x .:? "TagValue")
                     <*> (x .:? "TagKey"))

instance Hashable Scope where

instance NFData Scope where

instance ToJSON Scope where
        toJSON Scope'{..}
          = object
              (catMaybes
                 [("ComplianceResourceTypes" .=) <$>
                    _sComplianceResourceTypes,
                  ("ComplianceResourceId" .=) <$>
                    _sComplianceResourceId,
                  ("TagValue" .=) <$> _sTagValue,
                  ("TagKey" .=) <$> _sTagKey])

-- | Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.
--
--
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sSourceDetails    :: !(Maybe [SourceDetail])
    , _sOwner            :: !Owner
    , _sSourceIdentifier :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSourceDetails' - Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.
--
-- * 'sOwner' - Indicates whether AWS or the customer owns and manages the AWS Config rule.
--
-- * 'sSourceIdentifier' - For AWS Config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> . For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as @arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name@ .
source
    :: Owner -- ^ 'sOwner'
    -> Text -- ^ 'sSourceIdentifier'
    -> Source
source pOwner_ pSourceIdentifier_ =
  Source'
    { _sSourceDetails = Nothing
    , _sOwner = pOwner_
    , _sSourceIdentifier = pSourceIdentifier_
    }


-- | Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.
sSourceDetails :: Lens' Source [SourceDetail]
sSourceDetails = lens _sSourceDetails (\ s a -> s{_sSourceDetails = a}) . _Default . _Coerce

-- | Indicates whether AWS or the customer owns and manages the AWS Config rule.
sOwner :: Lens' Source Owner
sOwner = lens _sOwner (\ s a -> s{_sOwner = a})

-- | For AWS Config managed rules, a predefined identifier from a list. For example, @IAM_PASSWORD_POLICY@ is a managed rule. To reference a managed rule, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html Using AWS Managed Config Rules> . For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as @arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name@ .
sSourceIdentifier :: Lens' Source Text
sSourceIdentifier = lens _sSourceIdentifier (\ s a -> s{_sSourceIdentifier = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ x ->
                 Source' <$>
                   (x .:? "SourceDetails" .!= mempty) <*> (x .: "Owner")
                     <*> (x .: "SourceIdentifier"))

instance Hashable Source where

instance NFData Source where

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("SourceDetails" .=) <$> _sSourceDetails,
                  Just ("Owner" .= _sOwner),
                  Just ("SourceIdentifier" .= _sSourceIdentifier)])

-- | Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for @SourceDetail@ only for custom rules.
--
--
--
-- /See:/ 'sourceDetail' smart constructor.
data SourceDetail =
  SourceDetail'
    { _sdMessageType               :: !(Maybe MessageType)
    , _sdMaximumExecutionFrequency :: !(Maybe MaximumExecutionFrequency)
    , _sdEventSource               :: !(Maybe EventSource)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdMessageType' - The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .     * @ConfigurationSnapshotDeliveryCompleted@ - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot. If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for @ConfigurationItemChangeNotification@ and one for @OversizedConfigurationItemChangeNotification@ .
--
-- * 'sdMaximumExecutionFrequency' - The frequency at which you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for @MaximumExecutionFrequency@ , then @MessageType@ must use the @ScheduledNotification@ value.
--
-- * 'sdEventSource' - The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.
sourceDetail
    :: SourceDetail
sourceDetail =
  SourceDetail'
    { _sdMessageType = Nothing
    , _sdMaximumExecutionFrequency = Nothing
    , _sdEventSource = Nothing
    }


-- | The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:     * @ConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.     * @OversizedConfigurationItemChangeNotification@ - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.     * @ScheduledNotification@ - Triggers a periodic evaluation at the frequency specified for @MaximumExecutionFrequency@ .     * @ConfigurationSnapshotDeliveryCompleted@ - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot. If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for @ConfigurationItemChangeNotification@ and one for @OversizedConfigurationItemChangeNotification@ .
sdMessageType :: Lens' SourceDetail (Maybe MessageType)
sdMessageType = lens _sdMessageType (\ s a -> s{_sdMessageType = a})

-- | The frequency at which you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for @MaximumExecutionFrequency@ , then @MessageType@ must use the @ScheduledNotification@ value.
sdMaximumExecutionFrequency :: Lens' SourceDetail (Maybe MaximumExecutionFrequency)
sdMaximumExecutionFrequency = lens _sdMaximumExecutionFrequency (\ s a -> s{_sdMaximumExecutionFrequency = a})

-- | The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.
sdEventSource :: Lens' SourceDetail (Maybe EventSource)
sdEventSource = lens _sdEventSource (\ s a -> s{_sdEventSource = a})

instance FromJSON SourceDetail where
        parseJSON
          = withObject "SourceDetail"
              (\ x ->
                 SourceDetail' <$>
                   (x .:? "MessageType") <*>
                     (x .:? "MaximumExecutionFrequency")
                     <*> (x .:? "EventSource"))

instance Hashable SourceDetail where

instance NFData SourceDetail where

instance ToJSON SourceDetail where
        toJSON SourceDetail'{..}
          = object
              (catMaybes
                 [("MessageType" .=) <$> _sdMessageType,
                  ("MaximumExecutionFrequency" .=) <$>
                    _sdMaximumExecutionFrequency,
                  ("EventSource" .=) <$> _sdEventSource])

-- | AWS Systems Manager (SSM) specific remediation controls.
--
--
--
-- /See:/ 'ssmControls' smart constructor.
data SsmControls =
  SsmControls'
    { _scConcurrentExecutionRatePercentage :: !(Maybe Nat)
    , _scErrorPercentage                   :: !(Maybe Nat)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SsmControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scConcurrentExecutionRatePercentage' - The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10.
--
-- * 'scErrorPercentage' - The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received.
ssmControls
    :: SsmControls
ssmControls =
  SsmControls'
    { _scConcurrentExecutionRatePercentage = Nothing
    , _scErrorPercentage = Nothing
    }


-- | The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10.
scConcurrentExecutionRatePercentage :: Lens' SsmControls (Maybe Natural)
scConcurrentExecutionRatePercentage = lens _scConcurrentExecutionRatePercentage (\ s a -> s{_scConcurrentExecutionRatePercentage = a}) . mapping _Nat

-- | The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received.
scErrorPercentage :: Lens' SsmControls (Maybe Natural)
scErrorPercentage = lens _scErrorPercentage (\ s a -> s{_scErrorPercentage = a}) . mapping _Nat

instance FromJSON SsmControls where
        parseJSON
          = withObject "SsmControls"
              (\ x ->
                 SsmControls' <$>
                   (x .:? "ConcurrentExecutionRatePercentage") <*>
                     (x .:? "ErrorPercentage"))

instance Hashable SsmControls where

instance NFData SsmControls where

instance ToJSON SsmControls where
        toJSON SsmControls'{..}
          = object
              (catMaybes
                 [("ConcurrentExecutionRatePercentage" .=) <$>
                    _scConcurrentExecutionRatePercentage,
                  ("ErrorPercentage" .=) <$> _scErrorPercentage])

-- | The static value of the resource.
--
--
--
-- /See:/ 'staticValue' smart constructor.
newtype StaticValue =
  StaticValue'
    { _svValues :: [Text]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'StaticValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svValues' - A list of values. For example, the ARN of the assumed role.
staticValue
    :: StaticValue
staticValue = StaticValue' {_svValues = mempty}


-- | A list of values. For example, the ARN of the assumed role.
svValues :: Lens' StaticValue [Text]
svValues = lens _svValues (\ s a -> s{_svValues = a}) . _Coerce

instance FromJSON StaticValue where
        parseJSON
          = withObject "StaticValue"
              (\ x -> StaticValue' <$> (x .:? "Values" .!= mempty))

instance Hashable StaticValue where

instance NFData StaticValue where

instance ToJSON StaticValue where
        toJSON StaticValue'{..}
          = object (catMaybes [Just ("Values" .= _svValues)])

-- | Status filter object to filter results based on specific member account ID or status type for an organization config rule.
--
--
--
-- /See:/ 'statusDetailFilters' smart constructor.
data StatusDetailFilters =
  StatusDetailFilters'
    { _sdfMemberAccountRuleStatus :: !(Maybe MemberAccountRuleStatus)
    , _sdfAccountId               :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdfMemberAccountRuleStatus' - Indicates deployment status for config rule in the member account. When master account calls @PutOrganizationConfigRule@ action for the first time, config rule status is created in the member account. When master account calls @PutOrganizationConfigRule@ action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes @OrganizationConfigRule@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when config rule has been created in the member account.     * @CREATE_IN_PROGRESS@ when config rule is being created in the member account.     * @CREATE_FAILED@ when config rule creation has failed in the member account.     * @DELETE_FAILED@ when config rule deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when config rule is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when config rule has been deleted in the member account.     * @UPDATE_SUCCESSFUL@ when config rule has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when config rule is being updated in the member account.     * @UPDATE_FAILED@ when config rule deletion has failed in the member account.
--
-- * 'sdfAccountId' - The 12-digit account ID of the member account within an organization.
statusDetailFilters
    :: StatusDetailFilters
statusDetailFilters =
  StatusDetailFilters'
    {_sdfMemberAccountRuleStatus = Nothing, _sdfAccountId = Nothing}


-- | Indicates deployment status for config rule in the member account. When master account calls @PutOrganizationConfigRule@ action for the first time, config rule status is created in the member account. When master account calls @PutOrganizationConfigRule@ action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes @OrganizationConfigRule@ and disables service access for @config-multiaccountsetup.amazonaws.com@ .  AWS Config sets the state of the rule to:     * @CREATE_SUCCESSFUL@ when config rule has been created in the member account.     * @CREATE_IN_PROGRESS@ when config rule is being created in the member account.     * @CREATE_FAILED@ when config rule creation has failed in the member account.     * @DELETE_FAILED@ when config rule deletion has failed in the member account.     * @DELETE_IN_PROGRESS@ when config rule is being deleted in the member account.     * @DELETE_SUCCESSFUL@ when config rule has been deleted in the member account.     * @UPDATE_SUCCESSFUL@ when config rule has been updated in the member account.     * @UPDATE_IN_PROGRESS@ when config rule is being updated in the member account.     * @UPDATE_FAILED@ when config rule deletion has failed in the member account.
sdfMemberAccountRuleStatus :: Lens' StatusDetailFilters (Maybe MemberAccountRuleStatus)
sdfMemberAccountRuleStatus = lens _sdfMemberAccountRuleStatus (\ s a -> s{_sdfMemberAccountRuleStatus = a})

-- | The 12-digit account ID of the member account within an organization.
sdfAccountId :: Lens' StatusDetailFilters (Maybe Text)
sdfAccountId = lens _sdfAccountId (\ s a -> s{_sdfAccountId = a})

instance Hashable StatusDetailFilters where

instance NFData StatusDetailFilters where

instance ToJSON StatusDetailFilters where
        toJSON StatusDetailFilters'{..}
          = object
              (catMaybes
                 [("MemberAccountRuleStatus" .=) <$>
                    _sdfMemberAccountRuleStatus,
                  ("AccountId" .=) <$> _sdfAccountId])

-- | The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
--
--
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tagValue :: !(Maybe Text)
    , _tagKey   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagValue' - The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
--
-- * 'tagKey' - One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
tag
    :: Tag
tag = Tag' {_tagValue = Nothing, _tagKey = Nothing}


-- | The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\ s a -> s{_tagValue = a})

-- | One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ x -> Tag' <$> (x .:? "Value") <*> (x .:? "Key"))

instance Hashable Tag where

instance NFData Tag where

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("Value" .=) <$> _tagValue, ("Key" .=) <$> _tagKey])
