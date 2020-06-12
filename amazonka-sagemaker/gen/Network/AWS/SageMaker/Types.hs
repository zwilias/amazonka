{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types
    (
    -- * Service Configuration
      sageMaker

    -- * Errors
    , _ResourceLimitExceeded
    , _ResourceInUse
    , _ResourceNotFound

    -- * CompressionType
    , CompressionType (..)

    -- * DirectInternetAccess
    , DirectInternetAccess (..)

    -- * EndpointConfigSortKey
    , EndpointConfigSortKey (..)

    -- * EndpointSortKey
    , EndpointSortKey (..)

    -- * EndpointStatus
    , EndpointStatus (..)

    -- * InstanceType
    , InstanceType (..)

    -- * ModelSortKey
    , ModelSortKey (..)

    -- * NotebookInstanceLifecycleConfigSortKey
    , NotebookInstanceLifecycleConfigSortKey (..)

    -- * NotebookInstanceLifecycleConfigSortOrder
    , NotebookInstanceLifecycleConfigSortOrder (..)

    -- * NotebookInstanceSortKey
    , NotebookInstanceSortKey (..)

    -- * NotebookInstanceSortOrder
    , NotebookInstanceSortOrder (..)

    -- * NotebookInstanceStatus
    , NotebookInstanceStatus (..)

    -- * OrderKey
    , OrderKey (..)

    -- * ProductionVariantInstanceType
    , ProductionVariantInstanceType (..)

    -- * RecordWrapper
    , RecordWrapper (..)

    -- * S3DataDistribution
    , S3DataDistribution (..)

    -- * S3DataType
    , S3DataType (..)

    -- * SecondaryStatus
    , SecondaryStatus (..)

    -- * SortBy
    , SortBy (..)

    -- * SortOrder
    , SortOrder (..)

    -- * TrainingInputMode
    , TrainingInputMode (..)

    -- * TrainingInstanceType
    , TrainingInstanceType (..)

    -- * TrainingJobStatus
    , TrainingJobStatus (..)

    -- * AlgorithmSpecification
    , AlgorithmSpecification
    , algorithmSpecification
    , asTrainingImage
    , asTrainingInputMode

    -- * Channel
    , Channel
    , channel
    , cRecordWrapperType
    , cCompressionType
    , cContentType
    , cChannelName
    , cDataSource

    -- * ContainerDefinition
    , ContainerDefinition
    , containerDefinition
    , cdModelDataURL
    , cdEnvironment
    , cdContainerHostname
    , cdImage

    -- * DataSource
    , DataSource
    , dataSource
    , dsS3DataSource

    -- * DesiredWeightAndCapacity
    , DesiredWeightAndCapacity
    , desiredWeightAndCapacity
    , dwacDesiredInstanceCount
    , dwacDesiredWeight
    , dwacVariantName

    -- * EndpointConfigSummary
    , EndpointConfigSummary
    , endpointConfigSummary
    , ecsEndpointConfigName
    , ecsEndpointConfigARN
    , ecsCreationTime

    -- * EndpointSummary
    , EndpointSummary
    , endpointSummary
    , esEndpointName
    , esEndpointARN
    , esCreationTime
    , esLastModifiedTime
    , esEndpointStatus

    -- * ModelArtifacts
    , ModelArtifacts
    , modelArtifacts
    , maS3ModelArtifacts

    -- * ModelSummary
    , ModelSummary
    , modelSummary
    , msModelName
    , msModelARN
    , msCreationTime

    -- * NotebookInstanceLifecycleConfigSummary
    , NotebookInstanceLifecycleConfigSummary
    , notebookInstanceLifecycleConfigSummary
    , nilcsCreationTime
    , nilcsLastModifiedTime
    , nilcsNotebookInstanceLifecycleConfigName
    , nilcsNotebookInstanceLifecycleConfigARN

    -- * NotebookInstanceLifecycleHook
    , NotebookInstanceLifecycleHook
    , notebookInstanceLifecycleHook
    , nilhContent

    -- * NotebookInstanceSummary
    , NotebookInstanceSummary
    , notebookInstanceSummary
    , nisCreationTime
    , nisURL
    , nisLastModifiedTime
    , nisInstanceType
    , nisNotebookInstanceStatus
    , nisNotebookInstanceLifecycleConfigName
    , nisNotebookInstanceName
    , nisNotebookInstanceARN

    -- * OutputDataConfig
    , OutputDataConfig
    , outputDataConfig
    , odcKMSKeyId
    , odcS3OutputPath

    -- * ProductionVariant
    , ProductionVariant
    , productionVariant
    , pvInitialVariantWeight
    , pvVariantName
    , pvModelName
    , pvInitialInstanceCount
    , pvInstanceType

    -- * ProductionVariantSummary
    , ProductionVariantSummary
    , productionVariantSummary
    , pvsDesiredInstanceCount
    , pvsDesiredWeight
    , pvsCurrentWeight
    , pvsCurrentInstanceCount
    , pvsVariantName

    -- * ResourceConfig
    , ResourceConfig
    , resourceConfig
    , rcVolumeKMSKeyId
    , rcInstanceType
    , rcInstanceCount
    , rcVolumeSizeInGB

    -- * S3DataSource
    , S3DataSource
    , s3DataSource
    , sdsS3DataDistributionType
    , sdsS3DataType
    , sdsS3URI

    -- * StoppingCondition
    , StoppingCondition
    , stoppingCondition
    , scMaxRuntimeInSeconds

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * TrainingJobSummary
    , TrainingJobSummary
    , trainingJobSummary
    , tjsTrainingEndTime
    , tjsLastModifiedTime
    , tjsTrainingJobName
    , tjsTrainingJobARN
    , tjsCreationTime
    , tjsTrainingJobStatus

    -- * VPCConfig
    , VPCConfig
    , vpcConfig
    , vcSecurityGroupIds
    , vcSubnets
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.SageMaker.Types.CompressionType
import Network.AWS.SageMaker.Types.DirectInternetAccess
import Network.AWS.SageMaker.Types.EndpointConfigSortKey
import Network.AWS.SageMaker.Types.EndpointSortKey
import Network.AWS.SageMaker.Types.EndpointStatus
import Network.AWS.SageMaker.Types.InstanceType
import Network.AWS.SageMaker.Types.ModelSortKey
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortOrder
import Network.AWS.SageMaker.Types.NotebookInstanceSortKey
import Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
import Network.AWS.SageMaker.Types.NotebookInstanceStatus
import Network.AWS.SageMaker.Types.OrderKey
import Network.AWS.SageMaker.Types.ProductionVariantInstanceType
import Network.AWS.SageMaker.Types.RecordWrapper
import Network.AWS.SageMaker.Types.S3DataDistribution
import Network.AWS.SageMaker.Types.S3DataType
import Network.AWS.SageMaker.Types.SecondaryStatus
import Network.AWS.SageMaker.Types.SortBy
import Network.AWS.SageMaker.Types.SortOrder
import Network.AWS.SageMaker.Types.TrainingInputMode
import Network.AWS.SageMaker.Types.TrainingInstanceType
import Network.AWS.SageMaker.Types.TrainingJobStatus
import Network.AWS.SageMaker.Types.AlgorithmSpecification
import Network.AWS.SageMaker.Types.Channel
import Network.AWS.SageMaker.Types.ContainerDefinition
import Network.AWS.SageMaker.Types.DataSource
import Network.AWS.SageMaker.Types.DesiredWeightAndCapacity
import Network.AWS.SageMaker.Types.EndpointConfigSummary
import Network.AWS.SageMaker.Types.EndpointSummary
import Network.AWS.SageMaker.Types.ModelArtifacts
import Network.AWS.SageMaker.Types.ModelSummary
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSummary
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleHook
import Network.AWS.SageMaker.Types.NotebookInstanceSummary
import Network.AWS.SageMaker.Types.OutputDataConfig
import Network.AWS.SageMaker.Types.ProductionVariant
import Network.AWS.SageMaker.Types.ProductionVariantSummary
import Network.AWS.SageMaker.Types.ResourceConfig
import Network.AWS.SageMaker.Types.S3DataSource
import Network.AWS.SageMaker.Types.StoppingCondition
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TrainingJobSummary
import Network.AWS.SageMaker.Types.VPCConfig

-- | API version @2017-07-24@ of the Amazon SageMaker Service SDK configuration.
sageMaker :: Service
sageMaker
  = Service{_svcAbbrev = "SageMaker", _svcSigner = v4,
            _svcPrefix = "sagemaker", _svcVersion = "2017-07-24",
            _svcEndpoint = defaultEndpoint sageMaker,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "SageMaker",
            _svcRetry = retry}
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

-- | You have exceeded an Amazon SageMaker resource limit. For example, you might have too many training jobs created. 
--
--
_ResourceLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceeded
  = _MatchServiceError sageMaker
      "ResourceLimitExceeded"

-- | Resource being accessed is in use.
--
--
_ResourceInUse :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUse
  = _MatchServiceError sageMaker "ResourceInUse"

-- | Resource being access is not found.
--
--
_ResourceNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFound
  = _MatchServiceError sageMaker "ResourceNotFound"
