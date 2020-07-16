{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types
    (
    -- * Service Configuration
      ecr

    -- * Errors
    , _RepositoryAlreadyExistsException
    , _LifecyclePolicyPreviewNotFoundException
    , _InvalidLayerException
    , _ServerException
    , _LayerAlreadyExistsException
    , _LifecyclePolicyNotFoundException
    , _InvalidParameterException
    , _LayersNotFoundException
    , _RepositoryPolicyNotFoundException
    , _ImageNotFoundException
    , _LayerPartTooSmallException
    , _RepositoryNotEmptyException
    , _LayerInaccessibleException
    , _InvalidLayerPartException
    , _UploadNotFoundException
    , _LimitExceededException
    , _LifecyclePolicyPreviewInProgressException
    , _EmptyUploadException
    , _RepositoryNotFoundException
    , _ImageAlreadyExistsException

    -- * ImageActionType
    , ImageActionType (..)

    -- * ImageFailureCode
    , ImageFailureCode (..)

    -- * LayerAvailability
    , LayerAvailability (..)

    -- * LayerFailureCode
    , LayerFailureCode (..)

    -- * LifecyclePolicyPreviewStatus
    , LifecyclePolicyPreviewStatus (..)

    -- * TagStatus
    , TagStatus (..)

    -- * AuthorizationData
    , AuthorizationData
    , authorizationData
    , adExpiresAt
    , adProxyEndpoint
    , adAuthorizationToken

    -- * DescribeImagesFilter
    , DescribeImagesFilter
    , describeImagesFilter
    , difTagStatus

    -- * Image
    , Image
    , image
    , iRegistryId
    , iImageId
    , iRepositoryName
    , iImageManifest

    -- * ImageDetail
    , ImageDetail
    , imageDetail
    , idRegistryId
    , idImageTags
    , idImageSizeInBytes
    , idImageDigest
    , idImagePushedAt
    , idRepositoryName

    -- * ImageFailure
    , ImageFailure
    , imageFailure
    , ifFailureReason
    , ifFailureCode
    , ifImageId

    -- * ImageIdentifier
    , ImageIdentifier
    , imageIdentifier
    , iiImageDigest
    , iiImageTag

    -- * Layer
    , Layer
    , layer
    , lMediaType
    , lLayerDigest
    , lLayerSize
    , lLayerAvailability

    -- * LayerFailure
    , LayerFailure
    , layerFailure
    , lfFailureReason
    , lfFailureCode
    , lfLayerDigest

    -- * LifecyclePolicyPreviewFilter
    , LifecyclePolicyPreviewFilter
    , lifecyclePolicyPreviewFilter
    , lppfTagStatus

    -- * LifecyclePolicyPreviewResult
    , LifecyclePolicyPreviewResult
    , lifecyclePolicyPreviewResult
    , lpprImageTags
    , lpprAction
    , lpprImageDigest
    , lpprImagePushedAt
    , lpprAppliedRulePriority

    -- * LifecyclePolicyPreviewSummary
    , LifecyclePolicyPreviewSummary
    , lifecyclePolicyPreviewSummary
    , lppsExpiringImageTotalCount

    -- * LifecyclePolicyRuleAction
    , LifecyclePolicyRuleAction
    , lifecyclePolicyRuleAction
    , lpraType

    -- * ListImagesFilter
    , ListImagesFilter
    , listImagesFilter
    , lifTagStatus

    -- * Repository
    , Repository
    , repository
    , rRepositoryARN
    , rCreatedAt
    , rRegistryId
    , rRepositoryURI
    , rRepositoryName
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.ECR.Types.ImageActionType
import Network.AWS.ECR.Types.ImageFailureCode
import Network.AWS.ECR.Types.LayerAvailability
import Network.AWS.ECR.Types.LayerFailureCode
import Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
import Network.AWS.ECR.Types.TagStatus
import Network.AWS.ECR.Types.AuthorizationData
import Network.AWS.ECR.Types.DescribeImagesFilter
import Network.AWS.ECR.Types.Image
import Network.AWS.ECR.Types.ImageDetail
import Network.AWS.ECR.Types.ImageFailure
import Network.AWS.ECR.Types.ImageIdentifier
import Network.AWS.ECR.Types.Layer
import Network.AWS.ECR.Types.LayerFailure
import Network.AWS.ECR.Types.LifecyclePolicyPreviewFilter
import Network.AWS.ECR.Types.LifecyclePolicyPreviewResult
import Network.AWS.ECR.Types.LifecyclePolicyPreviewSummary
import Network.AWS.ECR.Types.LifecyclePolicyRuleAction
import Network.AWS.ECR.Types.ListImagesFilter
import Network.AWS.ECR.Types.Repository

-- | API version @2015-09-21@ of the Amazon EC2 Container Registry SDK configuration.
ecr :: Service
ecr
  = Service{_svcAbbrev = "ECR", _svcSigner = v4,
            _svcPrefix = "ecr", _svcVersion = "2015-09-21",
            _svcEndpoint = defaultEndpoint ecr,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "ECR", _svcRetry = retry}
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

-- | The specified repository already exists in the specified registry.
--
--
_RepositoryAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryAlreadyExistsException
  = _MatchServiceError ecr
      "RepositoryAlreadyExistsException"

-- | There is no dry run for this repository.
--
--
_LifecyclePolicyPreviewNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyPreviewNotFoundException
  = _MatchServiceError ecr
      "LifecyclePolicyPreviewNotFoundException"

-- | The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.
--
--
_InvalidLayerException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLayerException
  = _MatchServiceError ecr "InvalidLayerException"

-- | These errors are usually caused by a server-side issue.
--
--
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException
  = _MatchServiceError ecr "ServerException"

-- | The image layer already exists in the associated repository.
--
--
_LayerAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerAlreadyExistsException
  = _MatchServiceError ecr
      "LayerAlreadyExistsException"

-- | The lifecycle policy could not be found, and no policy is set to the repository.
--
--
_LifecyclePolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyNotFoundException
  = _MatchServiceError ecr
      "LifecyclePolicyNotFoundException"

-- | The specified parameter is invalid. Review the available parameters for the API request.
--
--
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException
  = _MatchServiceError ecr "InvalidParameterException"

-- | The specified layers could not be found, or the specified layer is not valid for this repository.
--
--
_LayersNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LayersNotFoundException
  = _MatchServiceError ecr "LayersNotFoundException"

-- | The specified repository and registry combination does not have an associated repository policy.
--
--
_RepositoryPolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryPolicyNotFoundException
  = _MatchServiceError ecr
      "RepositoryPolicyNotFoundException"

-- | The image requested does not exist in the specified repository.
--
--
_ImageNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageNotFoundException
  = _MatchServiceError ecr "ImageNotFoundException"

-- | Layer parts must be at least 5 MiB in size.
--
--
_LayerPartTooSmallException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerPartTooSmallException
  = _MatchServiceError ecr "LayerPartTooSmallException"

-- | The specified repository contains images. To delete a repository that contains images, you must force the deletion with the @force@ parameter.
--
--
_RepositoryNotEmptyException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNotEmptyException
  = _MatchServiceError ecr
      "RepositoryNotEmptyException"

-- | The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.
--
--
_LayerInaccessibleException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerInaccessibleException
  = _MatchServiceError ecr "LayerInaccessibleException"

-- | The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.
--
--
_InvalidLayerPartException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLayerPartException
  = _MatchServiceError ecr "InvalidLayerPartException"

-- | The upload could not be found, or the specified upload id is not valid for this repository.
--
--
_UploadNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_UploadNotFoundException
  = _MatchServiceError ecr "UploadNotFoundException"

-- | The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html Amazon ECR Default Service Limits> in the Amazon Elastic Container Registry User Guide.
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError ecr "LimitExceededException"

-- | The previous lifecycle policy preview request has not completed. Please try again later.
--
--
_LifecyclePolicyPreviewInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyPreviewInProgressException
  = _MatchServiceError ecr
      "LifecyclePolicyPreviewInProgressException"

-- | The specified layer upload does not contain any layer parts.
--
--
_EmptyUploadException :: AsError a => Getting (First ServiceError) a ServiceError
_EmptyUploadException
  = _MatchServiceError ecr "EmptyUploadException"

-- | The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.
--
--
_RepositoryNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNotFoundException
  = _MatchServiceError ecr
      "RepositoryNotFoundException"

-- | The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.
--
--
_ImageAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageAlreadyExistsException
  = _MatchServiceError ecr
      "ImageAlreadyExistsException"
