{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types
    (
    -- * Service Configuration
      glue

    -- * Errors
    , _ValidationException
    , _AccessDeniedException
    , _CrawlerRunningException
    , _SchedulerTransitioningException
    , _SchedulerRunningException
    , _ConcurrentRunsExceededException
    , _NoScheduleException
    , _OperationTimeoutException
    , _CrawlerNotRunningException
    , _VersionMismatchException
    , _EntityNotFoundException
    , _ConcurrentModificationException
    , _SchedulerNotRunningException
    , _InternalServiceException
    , _InvalidInputException
    , _ResourceNumberLimitExceededException
    , _IdempotentParameterMismatchException
    , _CrawlerStoppingException
    , _AlreadyExistsException

    -- * ConnectionPropertyKey
    , ConnectionPropertyKey (..)

    -- * ConnectionType
    , ConnectionType (..)

    -- * CrawlerState
    , CrawlerState (..)

    -- * DeleteBehavior
    , DeleteBehavior (..)

    -- * JobRunState
    , JobRunState (..)

    -- * Language
    , Language (..)

    -- * LastCrawlStatus
    , LastCrawlStatus (..)

    -- * Logical
    , Logical (..)

    -- * LogicalOperator
    , LogicalOperator (..)

    -- * PrincipalType
    , PrincipalType (..)

    -- * ResourceType
    , ResourceType (..)

    -- * ScheduleState
    , ScheduleState (..)

    -- * TriggerState
    , TriggerState (..)

    -- * TriggerType
    , TriggerType (..)

    -- * UpdateBehavior
    , UpdateBehavior (..)

    -- * Action
    , Action
    , action
    , aArguments
    , aJobName
    , aTimeout

    -- * BatchStopJobRunError
    , BatchStopJobRunError
    , batchStopJobRunError
    , bsjreJobName
    , bsjreJobRunId
    , bsjreErrorDetail

    -- * BatchStopJobRunSuccessfulSubmission
    , BatchStopJobRunSuccessfulSubmission
    , batchStopJobRunSuccessfulSubmission
    , bsjrssJobName
    , bsjrssJobRunId

    -- * CatalogEntry
    , CatalogEntry
    , catalogEntry
    , ceDatabaseName
    , ceTableName

    -- * CatalogImportStatus
    , CatalogImportStatus
    , catalogImportStatus
    , cisImportedBy
    , cisImportTime
    , cisImportCompleted

    -- * Classifier
    , Classifier
    , classifier
    , cGrokClassifier
    , cXMLClassifier
    , cJSONClassifier

    -- * CodeGenEdge
    , CodeGenEdge
    , codeGenEdge
    , cgeTargetParameter
    , cgeSource
    , cgeTarget

    -- * CodeGenNode
    , CodeGenNode
    , codeGenNode
    , cgnLineNumber
    , cgnId
    , cgnNodeType
    , cgnArgs

    -- * CodeGenNodeArg
    , CodeGenNodeArg
    , codeGenNodeArg
    , cgnaParam
    , cgnaName
    , cgnaValue

    -- * Column
    , Column
    , column
    , cType
    , cComment
    , cName

    -- * Condition
    , Condition
    , condition
    , cState
    , cJobName
    , cLogicalOperator

    -- * Connection
    , Connection
    , connection
    , conCreationTime
    , conLastUpdatedBy
    , conConnectionProperties
    , conLastUpdatedTime
    , conMatchCriteria
    , conPhysicalConnectionRequirements
    , conName
    , conDescription
    , conConnectionType

    -- * ConnectionInput
    , ConnectionInput
    , connectionInput
    , ciMatchCriteria
    , ciPhysicalConnectionRequirements
    , ciDescription
    , ciName
    , ciConnectionType
    , ciConnectionProperties

    -- * ConnectionsList
    , ConnectionsList
    , connectionsList
    , clConnections

    -- * Crawler
    , Crawler
    , crawler
    , craCreationTime
    , craState
    , craSchemaChangePolicy
    , craLastUpdated
    , craSchedule
    , craLastCrawl
    , craCrawlElapsedTime
    , craClassifiers
    , craRole
    , craName
    , craTargets
    , craVersion
    , craDatabaseName
    , craConfiguration
    , craTablePrefix
    , craDescription

    -- * CrawlerMetrics
    , CrawlerMetrics
    , crawlerMetrics
    , cmLastRuntimeSeconds
    , cmTablesCreated
    , cmStillEstimating
    , cmMedianRuntimeSeconds
    , cmTimeLeftSeconds
    , cmTablesDeleted
    , cmTablesUpdated
    , cmCrawlerName

    -- * CrawlerTargets
    , CrawlerTargets
    , crawlerTargets
    , ctS3Targets
    , ctJdbcTargets

    -- * CreateGrokClassifierRequest
    , CreateGrokClassifierRequest
    , createGrokClassifierRequest
    , cgcrCustomPatterns
    , cgcrClassification
    , cgcrName
    , cgcrGrokPattern

    -- * CreateJSONClassifierRequest
    , CreateJSONClassifierRequest
    , createJSONClassifierRequest
    , cjcrName
    , cjcrJSONPath

    -- * CreateXMLClassifierRequest
    , CreateXMLClassifierRequest
    , createXMLClassifierRequest
    , cxcrRowTag
    , cxcrClassification
    , cxcrName

    -- * Database
    , Database
    , database
    , dLocationURI
    , dParameters
    , dDescription
    , dCreateTime
    , dName

    -- * DatabaseInput
    , DatabaseInput
    , databaseInput
    , diLocationURI
    , diParameters
    , diDescription
    , diName

    -- * DevEndpoint
    , DevEndpoint
    , devEndpoint
    , deStatus
    , deFailureReason
    , deEndpointName
    , deExtraPythonLibsS3Path
    , deLastUpdateStatus
    , deSecurityGroupIds
    , deLastModifiedTimestamp
    , deVPCId
    , dePrivateAddress
    , dePublicKey
    , deSubnetId
    , deNumberOfNodes
    , dePublicAddress
    , deAvailabilityZone
    , deZeppelinRemoteSparkInterpreterPort
    , deExtraJARsS3Path
    , deCreatedTimestamp
    , deYarnEndpointAddress
    , deRoleARN

    -- * DevEndpointCustomLibraries
    , DevEndpointCustomLibraries
    , devEndpointCustomLibraries
    , declExtraPythonLibsS3Path
    , declExtraJARsS3Path

    -- * ErrorDetail
    , ErrorDetail
    , errorDetail
    , edErrorCode
    , edErrorMessage

    -- * ExecutionProperty
    , ExecutionProperty
    , executionProperty
    , epMaxConcurrentRuns

    -- * GetConnectionsFilter
    , GetConnectionsFilter
    , getConnectionsFilter
    , gcfMatchCriteria
    , gcfConnectionType

    -- * GrokClassifier
    , GrokClassifier
    , grokClassifier
    , gcCreationTime
    , gcLastUpdated
    , gcVersion
    , gcCustomPatterns
    , gcName
    , gcClassification
    , gcGrokPattern

    -- * JSONClassifier
    , JSONClassifier
    , jsonClassifier
    , jcCreationTime
    , jcLastUpdated
    , jcVersion
    , jcName
    , jcJSONPath

    -- * JdbcTarget
    , JdbcTarget
    , jdbcTarget
    , jtPath
    , jtConnectionName
    , jtExclusions

    -- * Job
    , Job
    , job
    , jCommand
    , jLastModifiedOn
    , jConnections
    , jRole
    , jName
    , jLogURI
    , jMaxRetries
    , jExecutionProperty
    , jAllocatedCapacity
    , jTimeout
    , jDefaultArguments
    , jDescription
    , jCreatedOn

    -- * JobBookmarkEntry
    , JobBookmarkEntry
    , jobBookmarkEntry
    , jbeJobName
    , jbeRun
    , jbeVersion
    , jbeAttempt
    , jbeJobBookmark

    -- * JobCommand
    , JobCommand
    , jobCommand
    , jobScriptLocation
    , jobName

    -- * JobRun
    , JobRun
    , jobRun
    , jrCompletedOn
    , jrTriggerName
    , jrLastModifiedOn
    , jrArguments
    , jrJobName
    , jrStartedOn
    , jrJobRunState
    , jrExecutionTime
    , jrPredecessorRuns
    , jrPreviousRunId
    , jrId
    , jrAttempt
    , jrAllocatedCapacity
    , jrTimeout
    , jrErrorMessage

    -- * JobUpdate
    , JobUpdate
    , jobUpdate
    , juCommand
    , juConnections
    , juRole
    , juLogURI
    , juMaxRetries
    , juExecutionProperty
    , juAllocatedCapacity
    , juTimeout
    , juDefaultArguments
    , juDescription

    -- * LastCrawlInfo
    , LastCrawlInfo
    , lastCrawlInfo
    , lciStatus
    , lciStartTime
    , lciLogStream
    , lciLogGroup
    , lciMessagePrefix
    , lciErrorMessage

    -- * Location
    , Location
    , location
    , lJdbc
    , lS3

    -- * MappingEntry
    , MappingEntry
    , mappingEntry
    , meTargetTable
    , meSourceType
    , meSourceTable
    , meTargetType
    , meTargetPath
    , meSourcePath

    -- * Order
    , Order
    , order
    , oColumn
    , oSortOrder

    -- * Partition
    , Partition
    , partition
    , pCreationTime
    , pValues
    , pLastAnalyzedTime
    , pStorageDescriptor
    , pDatabaseName
    , pParameters
    , pLastAccessTime
    , pTableName

    -- * PartitionError
    , PartitionError
    , partitionError
    , pePartitionValues
    , peErrorDetail

    -- * PartitionInput
    , PartitionInput
    , partitionInput
    , piValues
    , piLastAnalyzedTime
    , piStorageDescriptor
    , piParameters
    , piLastAccessTime

    -- * PartitionValueList
    , PartitionValueList
    , partitionValueList
    , pvlValues

    -- * PhysicalConnectionRequirements
    , PhysicalConnectionRequirements
    , physicalConnectionRequirements
    , pcrSecurityGroupIdList
    , pcrSubnetId
    , pcrAvailabilityZone

    -- * Predecessor
    , Predecessor
    , predecessor
    , pJobName
    , pRunId

    -- * Predicate
    , Predicate
    , predicate
    , pLogical
    , pConditions

    -- * ResourceURI
    , ResourceURI
    , resourceURI
    , ruResourceType
    , ruURI

    -- * S3Target
    , S3Target
    , s3Target
    , stPath
    , stExclusions

    -- * Schedule
    , Schedule
    , schedule
    , sState
    , sScheduleExpression

    -- * SchemaChangePolicy
    , SchemaChangePolicy
    , schemaChangePolicy
    , scpDeleteBehavior
    , scpUpdateBehavior

    -- * Segment
    , Segment
    , segment
    , sSegmentNumber
    , sTotalSegments

    -- * SerDeInfo
    , SerDeInfo
    , serDeInfo
    , sdiSerializationLibrary
    , sdiName
    , sdiParameters

    -- * SkewedInfo
    , SkewedInfo
    , skewedInfo
    , siSkewedColumnValueLocationMaps
    , siSkewedColumnValues
    , siSkewedColumnNames

    -- * StorageDescriptor
    , StorageDescriptor
    , storageDescriptor
    , sdSortColumns
    , sdCompressed
    , sdLocation
    , sdBucketColumns
    , sdSerdeInfo
    , sdOutputFormat
    , sdNumberOfBuckets
    , sdStoredAsSubDirectories
    , sdParameters
    , sdInputFormat
    , sdSkewedInfo
    , sdColumns

    -- * Table
    , Table
    , table
    , tRetention
    , tCreatedBy
    , tTableType
    , tOwner
    , tViewOriginalText
    , tUpdateTime
    , tViewExpandedText
    , tLastAnalyzedTime
    , tStorageDescriptor
    , tDatabaseName
    , tParameters
    , tLastAccessTime
    , tDescription
    , tPartitionKeys
    , tCreateTime
    , tName

    -- * TableError
    , TableError
    , tableError
    , teTableName
    , teErrorDetail

    -- * TableInput
    , TableInput
    , tableInput
    , tiRetention
    , tiTableType
    , tiOwner
    , tiViewOriginalText
    , tiViewExpandedText
    , tiLastAnalyzedTime
    , tiStorageDescriptor
    , tiParameters
    , tiLastAccessTime
    , tiDescription
    , tiPartitionKeys
    , tiName

    -- * TableVersion
    , TableVersion
    , tableVersion
    , tvVersionId
    , tvTable

    -- * TableVersionError
    , TableVersionError
    , tableVersionError
    , tveVersionId
    , tveTableName
    , tveErrorDetail

    -- * Trigger
    , Trigger
    , trigger
    , triState
    , triActions
    , triSchedule
    , triPredicate
    , triName
    , triId
    , triType
    , triDescription

    -- * TriggerUpdate
    , TriggerUpdate
    , triggerUpdate
    , tuActions
    , tuSchedule
    , tuPredicate
    , tuName
    , tuDescription

    -- * UpdateGrokClassifierRequest
    , UpdateGrokClassifierRequest
    , updateGrokClassifierRequest
    , ugcrClassification
    , ugcrCustomPatterns
    , ugcrGrokPattern
    , ugcrName

    -- * UpdateJSONClassifierRequest
    , UpdateJSONClassifierRequest
    , updateJSONClassifierRequest
    , ujcrJSONPath
    , ujcrName

    -- * UpdateXMLClassifierRequest
    , UpdateXMLClassifierRequest
    , updateXMLClassifierRequest
    , uxcrClassification
    , uxcrRowTag
    , uxcrName

    -- * UserDefinedFunction
    , UserDefinedFunction
    , userDefinedFunction
    , udfOwnerName
    , udfResourceURIs
    , udfFunctionName
    , udfOwnerType
    , udfCreateTime
    , udfClassName

    -- * UserDefinedFunctionInput
    , UserDefinedFunctionInput
    , userDefinedFunctionInput
    , udfiOwnerName
    , udfiResourceURIs
    , udfiFunctionName
    , udfiOwnerType
    , udfiClassName

    -- * XMLClassifier
    , XMLClassifier
    , xmlClassifier
    , xcCreationTime
    , xcLastUpdated
    , xcVersion
    , xcRowTag
    , xcName
    , xcClassification
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.CrawlerState
import Network.AWS.Glue.Types.DeleteBehavior
import Network.AWS.Glue.Types.JobRunState
import Network.AWS.Glue.Types.Language
import Network.AWS.Glue.Types.LastCrawlStatus
import Network.AWS.Glue.Types.Logical
import Network.AWS.Glue.Types.LogicalOperator
import Network.AWS.Glue.Types.PrincipalType
import Network.AWS.Glue.Types.ResourceType
import Network.AWS.Glue.Types.ScheduleState
import Network.AWS.Glue.Types.TriggerState
import Network.AWS.Glue.Types.TriggerType
import Network.AWS.Glue.Types.UpdateBehavior
import Network.AWS.Glue.Types.Action
import Network.AWS.Glue.Types.BatchStopJobRunError
import Network.AWS.Glue.Types.BatchStopJobRunSuccessfulSubmission
import Network.AWS.Glue.Types.CatalogEntry
import Network.AWS.Glue.Types.CatalogImportStatus
import Network.AWS.Glue.Types.Classifier
import Network.AWS.Glue.Types.CodeGenEdge
import Network.AWS.Glue.Types.CodeGenNode
import Network.AWS.Glue.Types.CodeGenNodeArg
import Network.AWS.Glue.Types.Column
import Network.AWS.Glue.Types.Condition
import Network.AWS.Glue.Types.Connection
import Network.AWS.Glue.Types.ConnectionInput
import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.Crawler
import Network.AWS.Glue.Types.CrawlerMetrics
import Network.AWS.Glue.Types.CrawlerTargets
import Network.AWS.Glue.Types.CreateGrokClassifierRequest
import Network.AWS.Glue.Types.CreateJSONClassifierRequest
import Network.AWS.Glue.Types.CreateXMLClassifierRequest
import Network.AWS.Glue.Types.Database
import Network.AWS.Glue.Types.DatabaseInput
import Network.AWS.Glue.Types.DevEndpoint
import Network.AWS.Glue.Types.DevEndpointCustomLibraries
import Network.AWS.Glue.Types.ErrorDetail
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.GetConnectionsFilter
import Network.AWS.Glue.Types.GrokClassifier
import Network.AWS.Glue.Types.JSONClassifier
import Network.AWS.Glue.Types.JdbcTarget
import Network.AWS.Glue.Types.Job
import Network.AWS.Glue.Types.JobBookmarkEntry
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Glue.Types.JobRun
import Network.AWS.Glue.Types.JobUpdate
import Network.AWS.Glue.Types.LastCrawlInfo
import Network.AWS.Glue.Types.Location
import Network.AWS.Glue.Types.MappingEntry
import Network.AWS.Glue.Types.Order
import Network.AWS.Glue.Types.Partition
import Network.AWS.Glue.Types.PartitionError
import Network.AWS.Glue.Types.PartitionInput
import Network.AWS.Glue.Types.PartitionValueList
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import Network.AWS.Glue.Types.Predecessor
import Network.AWS.Glue.Types.Predicate
import Network.AWS.Glue.Types.ResourceURI
import Network.AWS.Glue.Types.S3Target
import Network.AWS.Glue.Types.Schedule
import Network.AWS.Glue.Types.SchemaChangePolicy
import Network.AWS.Glue.Types.Segment
import Network.AWS.Glue.Types.SerDeInfo
import Network.AWS.Glue.Types.SkewedInfo
import Network.AWS.Glue.Types.StorageDescriptor
import Network.AWS.Glue.Types.Table
import Network.AWS.Glue.Types.TableError
import Network.AWS.Glue.Types.TableInput
import Network.AWS.Glue.Types.TableVersion
import Network.AWS.Glue.Types.TableVersionError
import Network.AWS.Glue.Types.Trigger
import Network.AWS.Glue.Types.TriggerUpdate
import Network.AWS.Glue.Types.UpdateGrokClassifierRequest
import Network.AWS.Glue.Types.UpdateJSONClassifierRequest
import Network.AWS.Glue.Types.UpdateXMLClassifierRequest
import Network.AWS.Glue.Types.UserDefinedFunction
import Network.AWS.Glue.Types.UserDefinedFunctionInput
import Network.AWS.Glue.Types.XMLClassifier

-- | API version @2017-03-31@ of the Amazon Glue SDK configuration.
glue :: Service
glue
  = Service{_svcAbbrev = "Glue", _svcSigner = v4,
            _svcPrefix = "glue", _svcVersion = "2017-03-31",
            _svcEndpoint = defaultEndpoint glue,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "Glue", _svcRetry = retry}
  where retry
          = Exponential{_retryBase = 5.0e-2, _retryGrowth = 2,
                        _retryAttempts = 5, _retryCheck = check}
        check e
          | has (hasCode "ThrottledException" . hasStatus 400)
              e
            = Just "throttled_exception"
          | has (hasStatus 429) e = Just "too_many_requests"
          | has (hasCode "ThrottlingException" . hasStatus 400)
              e
            = Just "throttling_exception"
          | has (hasCode "Throttling" . hasStatus 400) e =
            Just "throttling"
          | has (hasStatus 504) e = Just "gateway_timeout"
          | has
              (hasCode "RequestThrottledException" . hasStatus 400)
              e
            = Just "request_throttled_exception"
          | has (hasStatus 502) e = Just "bad_gateway"
          | has (hasStatus 503) e = Just "service_unavailable"
          | has (hasStatus 500) e = Just "general_server_error"
          | has (hasStatus 509) e = Just "limit_exceeded"
          | otherwise = Nothing

-- | A value could not be validated.
--
--
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException
  = _MatchServiceError glue "ValidationException"

-- | Access to a resource was denied.
--
--
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException
  = _MatchServiceError glue "AccessDeniedException"

-- | The operation cannot be performed because the crawler is already running.
--
--
_CrawlerRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerRunningException
  = _MatchServiceError glue "CrawlerRunningException"

-- | The specified scheduler is transitioning.
--
--
_SchedulerTransitioningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerTransitioningException
  = _MatchServiceError glue
      "SchedulerTransitioningException"

-- | The specified scheduler is already running.
--
--
_SchedulerRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerRunningException
  = _MatchServiceError glue "SchedulerRunningException"

-- | Too many jobs are being run concurrently.
--
--
_ConcurrentRunsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentRunsExceededException
  = _MatchServiceError glue
      "ConcurrentRunsExceededException"

-- | There is no applicable schedule.
--
--
_NoScheduleException :: AsError a => Getting (First ServiceError) a ServiceError
_NoScheduleException
  = _MatchServiceError glue "NoScheduleException"

-- | The operation timed out.
--
--
_OperationTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationTimeoutException
  = _MatchServiceError glue "OperationTimeoutException"

-- | The specified crawler is not running.
--
--
_CrawlerNotRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerNotRunningException
  = _MatchServiceError glue
      "CrawlerNotRunningException"

-- | There was a version conflict.
--
--
_VersionMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_VersionMismatchException
  = _MatchServiceError glue "VersionMismatchException"

-- | A specified entity does not exist
--
--
_EntityNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityNotFoundException
  = _MatchServiceError glue "EntityNotFoundException"

-- | Two processes are trying to modify a resource simultaneously.
--
--
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException
  = _MatchServiceError glue
      "ConcurrentModificationException"

-- | The specified scheduler is not running.
--
--
_SchedulerNotRunningException :: AsError a => Getting (First ServiceError) a ServiceError
_SchedulerNotRunningException
  = _MatchServiceError glue
      "SchedulerNotRunningException"

-- | An internal service error occurred.
--
--
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException
  = _MatchServiceError glue "InternalServiceException"

-- | The input provided was not valid.
--
--
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException
  = _MatchServiceError glue "InvalidInputException"

-- | A resource numerical limit was exceeded.
--
--
_ResourceNumberLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNumberLimitExceededException
  = _MatchServiceError glue
      "ResourceNumberLimitExceededException"

-- | The same unique identifier was associated with two different records.
--
--
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException
  = _MatchServiceError glue
      "IdempotentParameterMismatchException"

-- | The specified crawler is stopping.
--
--
_CrawlerStoppingException :: AsError a => Getting (First ServiceError) a ServiceError
_CrawlerStoppingException
  = _MatchServiceError glue "CrawlerStoppingException"

-- | A resource to be created or added already exists.
--
--
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException
  = _MatchServiceError glue "AlreadyExistsException"
