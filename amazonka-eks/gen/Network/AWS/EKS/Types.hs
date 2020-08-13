{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types
    (
    -- * Service Configuration
      eks

    -- * Errors
    , _ServerException
    , _InvalidParameterException
    , _InvalidRequestException
    , _BadRequestException
    , _ClientException
    , _ResourceNotFoundException
    , _ResourceLimitExceededException
    , _ServiceUnavailableException
    , _UnsupportedAvailabilityZoneException
    , _NotFoundException
    , _ResourceInUseException

    -- * AMITypes
    , AMITypes (..)

    -- * ClusterStatus
    , ClusterStatus (..)

    -- * EKSErrorCode
    , EKSErrorCode (..)

    -- * FargateProfileStatus
    , FargateProfileStatus (..)

    -- * LogType
    , LogType (..)

    -- * NodegroupIssueCode
    , NodegroupIssueCode (..)

    -- * NodegroupStatus
    , NodegroupStatus (..)

    -- * UpdateParamType
    , UpdateParamType (..)

    -- * UpdateStatus
    , UpdateStatus (..)

    -- * UpdateType
    , UpdateType (..)

    -- * AutoScalingGroup
    , AutoScalingGroup
    , autoScalingGroup
    , asgName

    -- * Certificate
    , Certificate
    , certificate
    , cData

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cArn
    , cCreatedAt
    , cPlatformVersion
    , cCertificateAuthority
    , cName
    , cVersion
    , cEncryptionConfig
    , cEndpoint
    , cClientRequestToken
    , cLogging
    , cIdentity
    , cResourcesVPCConfig
    , cTags
    , cRoleARN

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecResources
    , ecProvider

    -- * ErrorDetail
    , ErrorDetail
    , errorDetail
    , edResourceIds
    , edErrorCode
    , edErrorMessage

    -- * FargateProfile
    , FargateProfile
    , fargateProfile
    , fpFargateProfileARN
    , fpStatus
    , fpCreatedAt
    , fpSubnets
    , fpClusterName
    , fpPodExecutionRoleARN
    , fpFargateProfileName
    , fpSelectors
    , fpTags

    -- * FargateProfileSelector
    , FargateProfileSelector
    , fargateProfileSelector
    , fpsNamespace
    , fpsLabels

    -- * Identity
    , Identity
    , identity
    , iOidc

    -- * Issue
    , Issue
    , issue
    , iResourceIds
    , iCode
    , iMessage

    -- * LogSetup
    , LogSetup
    , logSetup
    , lsEnabled
    , lsTypes

    -- * Logging
    , Logging
    , logging
    , lClusterLogging

    -- * Nodegroup
    , Nodegroup
    , nodegroup
    , nModifiedAt
    , nStatus
    , nInstanceTypes
    , nCreatedAt
    , nSubnets
    , nRemoteAccess
    , nDiskSize
    , nReleaseVersion
    , nResources
    , nHealth
    , nNodeRole
    , nScalingConfig
    , nVersion
    , nNodegroupARN
    , nClusterName
    , nLabels
    , nAmiType
    , nNodegroupName
    , nTags

    -- * NodegroupHealth
    , NodegroupHealth
    , nodegroupHealth
    , nhIssues

    -- * NodegroupResources
    , NodegroupResources
    , nodegroupResources
    , nrRemoteAccessSecurityGroup
    , nrAutoScalingGroups

    -- * NodegroupScalingConfig
    , NodegroupScalingConfig
    , nodegroupScalingConfig
    , nscDesiredSize
    , nscMaxSize
    , nscMinSize

    -- * OIdC
    , OIdC
    , oIdC
    , oicIssuer

    -- * Provider
    , Provider
    , provider
    , pKeyARN

    -- * RemoteAccessConfig
    , RemoteAccessConfig
    , remoteAccessConfig
    , racSourceSecurityGroups
    , racEc2SSHKey

    -- * Update
    , Update
    , update
    , uStatus
    , uCreatedAt
    , uParams
    , uId
    , uType
    , uErrors

    -- * UpdateLabelsPayload
    , UpdateLabelsPayload
    , updateLabelsPayload
    , ulpRemoveLabels
    , ulpAddOrUpdateLabels

    -- * UpdateParam
    , UpdateParam
    , updateParam
    , upValue
    , upType

    -- * VPCConfigRequest
    , VPCConfigRequest
    , vpcConfigRequest
    , vcrSecurityGroupIds
    , vcrEndpointPrivateAccess
    , vcrPublicAccessCidrs
    , vcrSubnetIds
    , vcrEndpointPublicAccess

    -- * VPCConfigResponse
    , VPCConfigResponse
    , vpcConfigResponse
    , vcSecurityGroupIds
    , vcEndpointPrivateAccess
    , vcPublicAccessCidrs
    , vcSubnetIds
    , vcVpcId
    , vcClusterSecurityGroupId
    , vcEndpointPublicAccess
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.EKS.Types.AMITypes
import Network.AWS.EKS.Types.ClusterStatus
import Network.AWS.EKS.Types.EKSErrorCode
import Network.AWS.EKS.Types.FargateProfileStatus
import Network.AWS.EKS.Types.LogType
import Network.AWS.EKS.Types.NodegroupIssueCode
import Network.AWS.EKS.Types.NodegroupStatus
import Network.AWS.EKS.Types.UpdateParamType
import Network.AWS.EKS.Types.UpdateStatus
import Network.AWS.EKS.Types.UpdateType
import Network.AWS.EKS.Types.AutoScalingGroup
import Network.AWS.EKS.Types.Certificate
import Network.AWS.EKS.Types.Cluster
import Network.AWS.EKS.Types.EncryptionConfig
import Network.AWS.EKS.Types.ErrorDetail
import Network.AWS.EKS.Types.FargateProfile
import Network.AWS.EKS.Types.FargateProfileSelector
import Network.AWS.EKS.Types.Identity
import Network.AWS.EKS.Types.Issue
import Network.AWS.EKS.Types.LogSetup
import Network.AWS.EKS.Types.Logging
import Network.AWS.EKS.Types.Nodegroup
import Network.AWS.EKS.Types.NodegroupHealth
import Network.AWS.EKS.Types.NodegroupResources
import Network.AWS.EKS.Types.NodegroupScalingConfig
import Network.AWS.EKS.Types.OIdC
import Network.AWS.EKS.Types.Provider
import Network.AWS.EKS.Types.RemoteAccessConfig
import Network.AWS.EKS.Types.Update
import Network.AWS.EKS.Types.UpdateLabelsPayload
import Network.AWS.EKS.Types.UpdateParam
import Network.AWS.EKS.Types.VPCConfigRequest
import Network.AWS.EKS.Types.VPCConfigResponse

-- | API version @2017-11-01@ of the Amazon Elastic Kubernetes Service SDK configuration.
eks :: Service
eks
  = Service{_svcAbbrev = "EKS", _svcSigner = v4,
            _svcPrefix = "eks", _svcVersion = "2017-11-01",
            _svcEndpoint = defaultEndpoint eks,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "EKS", _svcRetry = retry}
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
          | has
              (hasCode "ProvisionedThroughputExceededException" .
                 hasStatus 400)
              e
            = Just "throughput_exceeded"
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

-- | These errors are usually caused by a server-side issue.
--
--
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException
  = _MatchServiceError eks "ServerException" .
      hasStatus 500

-- | The specified parameter is invalid. Review the available parameters for the API request.
--
--
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException
  = _MatchServiceError eks "InvalidParameterException"
      . hasStatus 400

-- | The request is invalid given the state of the cluster. Check the state of the cluster and the associated operations.
--
--
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException
  = _MatchServiceError eks "InvalidRequestException" .
      hasStatus 400

-- | This exception is thrown if the request contains a semantic error. The precise meaning will depend on the API, and will be documented in the error message.
--
--
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException
  = _MatchServiceError eks "BadRequestException" .
      hasStatus 400

-- | These errors are usually caused by a client action. Actions can include using an action or resource on behalf of a user that doesn't have permissions to use the action or resource or specifying an identifier that is not valid.
--
--
_ClientException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientException
  = _MatchServiceError eks "ClientException" .
      hasStatus 400

-- | The specified resource could not be found. You can view your available clusters with 'ListClusters' . You can view your available managed node groups with 'ListNodegroups' . Amazon EKS clusters and node groups are Region-specific.
--
--
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException
  = _MatchServiceError eks "ResourceNotFoundException"
      . hasStatus 404

-- | You have encountered a service limit on the specified resource.
--
--
_ResourceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceededException
  = _MatchServiceError eks
      "ResourceLimitExceededException"
      . hasStatus 400

-- | The service is unavailable. Back off and retry the operation.
--
--
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException
  = _MatchServiceError eks
      "ServiceUnavailableException"
      . hasStatus 503

-- | At least one of your specified cluster subnets is in an Availability Zone that does not support Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which you can choose subnets for your cluster.
--
--
_UnsupportedAvailabilityZoneException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedAvailabilityZoneException
  = _MatchServiceError eks
      "UnsupportedAvailabilityZoneException"
      . hasStatus 400

-- | A service resource associated with the request could not be found. Clients should not retry such requests.
--
--
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError eks "NotFoundException" .
      hasStatus 404

-- | The specified resource is in use.
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError eks "ResourceInUseException" .
      hasStatus 409
