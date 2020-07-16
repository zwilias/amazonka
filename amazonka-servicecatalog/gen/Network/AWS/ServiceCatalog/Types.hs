{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types
    (
    -- * Service Configuration
      serviceCatalog

    -- * Errors
    , _InvalidStateException
    , _ResourceNotFoundException
    , _TagOptionNotMigratedException
    , _DuplicateResourceException
    , _InvalidParametersException
    , _LimitExceededException
    , _ResourceInUseException

    -- * AccessLevelFilterKey
    , AccessLevelFilterKey (..)

    -- * ChangeAction
    , ChangeAction (..)

    -- * CopyOption
    , CopyOption (..)

    -- * CopyProductStatus
    , CopyProductStatus (..)

    -- * EvaluationType
    , EvaluationType (..)

    -- * PrincipalType
    , PrincipalType (..)

    -- * ProductSource
    , ProductSource (..)

    -- * ProductType
    , ProductType (..)

    -- * ProductViewFilterBy
    , ProductViewFilterBy (..)

    -- * ProductViewSortBy
    , ProductViewSortBy (..)

    -- * ProvisionedProductPlanStatus
    , ProvisionedProductPlanStatus (..)

    -- * ProvisionedProductPlanType
    , ProvisionedProductPlanType (..)

    -- * ProvisionedProductStatus
    , ProvisionedProductStatus (..)

    -- * ProvisionedProductViewFilterBy
    , ProvisionedProductViewFilterBy (..)

    -- * ProvisioningArtifactPropertyName
    , ProvisioningArtifactPropertyName (..)

    -- * ProvisioningArtifactType
    , ProvisioningArtifactType (..)

    -- * RecordStatus
    , RecordStatus (..)

    -- * Replacement
    , Replacement (..)

    -- * RequestStatus
    , RequestStatus (..)

    -- * RequiresRecreation
    , RequiresRecreation (..)

    -- * ResourceAttribute
    , ResourceAttribute (..)

    -- * SortOrder
    , SortOrder (..)

    -- * AccessLevelFilter
    , AccessLevelFilter
    , accessLevelFilter
    , alfValue
    , alfKey

    -- * CloudWatchDashboard
    , CloudWatchDashboard
    , cloudWatchDashboard
    , cwdName

    -- * ConstraintDetail
    , ConstraintDetail
    , constraintDetail
    , cdConstraintId
    , cdOwner
    , cdType
    , cdDescription

    -- * ConstraintSummary
    , ConstraintSummary
    , constraintSummary
    , csType
    , csDescription

    -- * LaunchPathSummary
    , LaunchPathSummary
    , launchPathSummary
    , lpsConstraintSummaries
    , lpsName
    , lpsId
    , lpsTags

    -- * ListRecordHistorySearchFilter
    , ListRecordHistorySearchFilter
    , listRecordHistorySearchFilter
    , lrhsfValue
    , lrhsfKey

    -- * ListTagOptionsFilters
    , ListTagOptionsFilters
    , listTagOptionsFilters
    , ltofValue
    , ltofActive
    , ltofKey

    -- * ParameterConstraints
    , ParameterConstraints
    , parameterConstraints
    , pcAllowedValues

    -- * PortfolioDetail
    , PortfolioDetail
    , portfolioDetail
    , pdARN
    , pdCreatedTime
    , pdId
    , pdDisplayName
    , pdDescription
    , pdProviderName

    -- * Principal
    , Principal
    , principal
    , pPrincipalType
    , pPrincipalARN

    -- * ProductViewAggregationValue
    , ProductViewAggregationValue
    , productViewAggregationValue
    , pvavValue
    , pvavApproximateCount

    -- * ProductViewDetail
    , ProductViewDetail
    , productViewDetail
    , pvdStatus
    , pvdProductViewSummary
    , pvdCreatedTime
    , pvdProductARN

    -- * ProductViewSummary
    , ProductViewSummary
    , productViewSummary
    , pvsOwner
    , pvsSupportURL
    , pvsShortDescription
    , pvsHasDefaultPath
    , pvsDistributor
    , pvsName
    , pvsId
    , pvsType
    , pvsSupportEmail
    , pvsProductId
    , pvsSupportDescription

    -- * ProvisionedProductAttribute
    , ProvisionedProductAttribute
    , provisionedProductAttribute
    , ppaIdempotencyToken
    , ppaStatus
    , ppaProvisioningArtifactId
    , ppaARN
    , ppaCreatedTime
    , ppaUserARN
    , ppaStatusMessage
    , ppaName
    , ppaLastRecordId
    , ppaUserARNSession
    , ppaId
    , ppaType
    , ppaPhysicalId
    , ppaProductId
    , ppaTags

    -- * ProvisionedProductDetail
    , ProvisionedProductDetail
    , provisionedProductDetail
    , ppdIdempotencyToken
    , ppdStatus
    , ppdARN
    , ppdCreatedTime
    , ppdStatusMessage
    , ppdName
    , ppdLastRecordId
    , ppdId
    , ppdType

    -- * ProvisionedProductPlanDetails
    , ProvisionedProductPlanDetails
    , provisionedProductPlanDetails
    , pppdStatus
    , pppdProvisionProductId
    , pppdProvisioningArtifactId
    , pppdProvisionProductName
    , pppdCreatedTime
    , pppdNotificationARNs
    , pppdPlanId
    , pppdPlanName
    , pppdStatusMessage
    , pppdUpdatedTime
    , pppdPathId
    , pppdProvisioningParameters
    , pppdPlanType
    , pppdProductId
    , pppdTags

    -- * ProvisionedProductPlanSummary
    , ProvisionedProductPlanSummary
    , provisionedProductPlanSummary
    , pppsProvisionProductId
    , pppsProvisioningArtifactId
    , pppsProvisionProductName
    , pppsPlanId
    , pppsPlanName
    , pppsPlanType

    -- * ProvisioningArtifact
    , ProvisioningArtifact
    , provisioningArtifact
    , paCreatedTime
    , paName
    , paId
    , paDescription

    -- * ProvisioningArtifactDetail
    , ProvisioningArtifactDetail
    , provisioningArtifactDetail
    , padCreatedTime
    , padActive
    , padName
    , padId
    , padType
    , padDescription

    -- * ProvisioningArtifactParameter
    , ProvisioningArtifactParameter
    , provisioningArtifactParameter
    , pIsNoEcho
    , pParameterKey
    , pParameterType
    , pParameterConstraints
    , pDefaultValue
    , pDescription

    -- * ProvisioningArtifactProperties
    , ProvisioningArtifactProperties
    , provisioningArtifactProperties
    , papName
    , papType
    , papDescription
    , papInfo

    -- * ProvisioningArtifactSummary
    , ProvisioningArtifactSummary
    , provisioningArtifactSummary
    , pasProvisioningArtifactMetadata
    , pasCreatedTime
    , pasName
    , pasId
    , pasDescription

    -- * ProvisioningParameter
    , ProvisioningParameter
    , provisioningParameter
    , ppValue
    , ppKey

    -- * RecordDetail
    , RecordDetail
    , recordDetail
    , rdStatus
    , rdRecordTags
    , rdProvisionedProductName
    , rdProvisioningArtifactId
    , rdCreatedTime
    , rdRecordType
    , rdRecordId
    , rdProvisionedProductType
    , rdUpdatedTime
    , rdPathId
    , rdProvisionedProductId
    , rdRecordErrors
    , rdProductId

    -- * RecordError
    , RecordError
    , recordError
    , reCode
    , reDescription

    -- * RecordOutput
    , RecordOutput
    , recordOutput
    , roOutputValue
    , roOutputKey
    , roDescription

    -- * RecordTag
    , RecordTag
    , recordTag
    , rtValue
    , rtKey

    -- * ResourceChange
    , ResourceChange
    , resourceChange
    , rcLogicalResourceId
    , rcPhysicalResourceId
    , rcResourceType
    , rcAction
    , rcScope
    , rcDetails
    , rcReplacement

    -- * ResourceChangeDetail
    , ResourceChangeDetail
    , resourceChangeDetail
    , rcdCausingEntity
    , rcdEvaluation
    , rcdTarget

    -- * ResourceDetail
    , ResourceDetail
    , resourceDetail
    , rARN
    , rCreatedTime
    , rName
    , rId
    , rDescription

    -- * ResourceTargetDefinition
    , ResourceTargetDefinition
    , resourceTargetDefinition
    , rtdAttribute
    , rtdRequiresRecreation
    , rtdName

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * TagOptionDetail
    , TagOptionDetail
    , tagOptionDetail
    , todValue
    , todActive
    , todKey
    , todId

    -- * TagOptionSummary
    , TagOptionSummary
    , tagOptionSummary
    , tosValues
    , tosKey

    -- * UpdateProvisioningParameter
    , UpdateProvisioningParameter
    , updateProvisioningParameter
    , uppValue
    , uppKey
    , uppUsePreviousValue

    -- * UsageInstruction
    , UsageInstruction
    , usageInstruction
    , uiValue
    , uiType
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
import Network.AWS.ServiceCatalog.Types.ChangeAction
import Network.AWS.ServiceCatalog.Types.CopyOption
import Network.AWS.ServiceCatalog.Types.CopyProductStatus
import Network.AWS.ServiceCatalog.Types.EvaluationType
import Network.AWS.ServiceCatalog.Types.PrincipalType
import Network.AWS.ServiceCatalog.Types.ProductSource
import Network.AWS.ServiceCatalog.Types.ProductType
import Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
import Network.AWS.ServiceCatalog.Types.ProductViewSortBy
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
import Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
import Network.AWS.ServiceCatalog.Types.RecordStatus
import Network.AWS.ServiceCatalog.Types.Replacement
import Network.AWS.ServiceCatalog.Types.RequestStatus
import Network.AWS.ServiceCatalog.Types.RequiresRecreation
import Network.AWS.ServiceCatalog.Types.ResourceAttribute
import Network.AWS.ServiceCatalog.Types.SortOrder
import Network.AWS.ServiceCatalog.Types.AccessLevelFilter
import Network.AWS.ServiceCatalog.Types.CloudWatchDashboard
import Network.AWS.ServiceCatalog.Types.ConstraintDetail
import Network.AWS.ServiceCatalog.Types.ConstraintSummary
import Network.AWS.ServiceCatalog.Types.LaunchPathSummary
import Network.AWS.ServiceCatalog.Types.ListRecordHistorySearchFilter
import Network.AWS.ServiceCatalog.Types.ListTagOptionsFilters
import Network.AWS.ServiceCatalog.Types.ParameterConstraints
import Network.AWS.ServiceCatalog.Types.PortfolioDetail
import Network.AWS.ServiceCatalog.Types.Principal
import Network.AWS.ServiceCatalog.Types.ProductViewAggregationValue
import Network.AWS.ServiceCatalog.Types.ProductViewDetail
import Network.AWS.ServiceCatalog.Types.ProductViewSummary
import Network.AWS.ServiceCatalog.Types.ProvisionedProductAttribute
import Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifact
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactDetail
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactParameter
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactProperties
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactSummary
import Network.AWS.ServiceCatalog.Types.ProvisioningParameter
import Network.AWS.ServiceCatalog.Types.RecordDetail
import Network.AWS.ServiceCatalog.Types.RecordError
import Network.AWS.ServiceCatalog.Types.RecordOutput
import Network.AWS.ServiceCatalog.Types.RecordTag
import Network.AWS.ServiceCatalog.Types.ResourceChange
import Network.AWS.ServiceCatalog.Types.ResourceChangeDetail
import Network.AWS.ServiceCatalog.Types.ResourceDetail
import Network.AWS.ServiceCatalog.Types.ResourceTargetDefinition
import Network.AWS.ServiceCatalog.Types.Tag
import Network.AWS.ServiceCatalog.Types.TagOptionDetail
import Network.AWS.ServiceCatalog.Types.TagOptionSummary
import Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter
import Network.AWS.ServiceCatalog.Types.UsageInstruction

-- | API version @2015-12-10@ of the Amazon Service Catalog SDK configuration.
serviceCatalog :: Service
serviceCatalog
  = Service{_svcAbbrev = "ServiceCatalog",
            _svcSigner = v4, _svcPrefix = "servicecatalog",
            _svcVersion = "2015-12-10",
            _svcEndpoint = defaultEndpoint serviceCatalog,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "ServiceCatalog",
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

-- | An attempt was made to modify a resource that is in a state that is not valid. Check your resources to ensure that they are in valid states before retrying the operation.
--
--
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException
  = _MatchServiceError serviceCatalog
      "InvalidStateException"

-- | The specified resource was not found.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError serviceCatalog
      "ResourceNotFoundException"

-- | An operation requiring TagOptions failed because the TagOptions migration process has not been performed for this account. Please use the AWS console to perform the migration process before retrying the operation.
--
--
_TagOptionNotMigratedException :: AsError a => Getting (First ServiceError) a ServiceError
_TagOptionNotMigratedException
  = _MatchServiceError serviceCatalog
      "TagOptionNotMigratedException"

-- | The specified resource is a duplicate.
--
--
_DuplicateResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateResourceException
  = _MatchServiceError serviceCatalog
      "DuplicateResourceException"

-- | One or more parameters provided to the operation are not valid.
--
--
_InvalidParametersException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParametersException
  = _MatchServiceError serviceCatalog
      "InvalidParametersException"

-- | The current limits of the service would have been exceeded by this operation. Decrease your resource use or increase your service limits and retry the operation.
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError serviceCatalog
      "LimitExceededException"

-- | A resource that is currently in use. Ensure that the resource is not in use and retry the operation.
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError serviceCatalog
      "ResourceInUseException"
