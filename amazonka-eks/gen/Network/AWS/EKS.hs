{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on AWS without needing to stand up or maintain your own Kubernetes control plane. Kubernetes is an open-source system for automating the deployment, scaling, and management of containerized applications. 
--
--
-- Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS are fully compatible with applications running on any standard Kubernetes environment, whether running in on-premises data centers or public clouds. This means that you can easily migrate any standard Kubernetes application to Amazon EKS without any code modification required.
--
module Network.AWS.EKS
    (
    -- * Service Configuration
      eks

    -- * Errors
    -- $errors

    -- ** ServerException
    , _ServerException

    -- ** InvalidParameterException
    , _InvalidParameterException

    -- ** InvalidRequestException
    , _InvalidRequestException

    -- ** BadRequestException
    , _BadRequestException

    -- ** ClientException
    , _ClientException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** ResourceLimitExceededException
    , _ResourceLimitExceededException

    -- ** ServiceUnavailableException
    , _ServiceUnavailableException

    -- ** UnsupportedAvailabilityZoneException
    , _UnsupportedAvailabilityZoneException

    -- ** NotFoundException
    , _NotFoundException

    -- ** ResourceInUseException
    , _ResourceInUseException

    -- * Waiters
    -- $waiters

    -- ** NodegroupDeleted
    , nodegroupDeleted

    -- ** ClusterActive
    , clusterActive

    -- ** ClusterDeleted
    , clusterDeleted

    -- ** NodegroupActive
    , nodegroupActive

    -- * Operations
    -- $operations

    -- ** DescribeFargateProfile 
    , module Network.AWS.EKS.DescribeFargateProfile

    -- ** DescribeUpdate 
    , module Network.AWS.EKS.DescribeUpdate

    -- ** UpdateNodegroupConfig 
    , module Network.AWS.EKS.UpdateNodegroupConfig

    -- ** DescribeCluster 
    , module Network.AWS.EKS.DescribeCluster

    -- ** DescribeNodegroup 
    , module Network.AWS.EKS.DescribeNodegroup

    -- ** ListTagsForResource 
    , module Network.AWS.EKS.ListTagsForResource

    -- ** CreateFargateProfile 
    , module Network.AWS.EKS.CreateFargateProfile

    -- ** DeleteFargateProfile 
    , module Network.AWS.EKS.DeleteFargateProfile

    -- ** DeleteCluster 
    , module Network.AWS.EKS.DeleteCluster

    -- ** CreateCluster 
    , module Network.AWS.EKS.CreateCluster

    -- ** UpdateClusterConfig 
    , module Network.AWS.EKS.UpdateClusterConfig

    -- ** UpdateClusterVersion 
    , module Network.AWS.EKS.UpdateClusterVersion

    -- ** UpdateNodegroupVersion 
    , module Network.AWS.EKS.UpdateNodegroupVersion

    -- ** ListUpdates (Paginated)
    , module Network.AWS.EKS.ListUpdates

    -- ** TagResource 
    , module Network.AWS.EKS.TagResource

    -- ** ListFargateProfiles (Paginated)
    , module Network.AWS.EKS.ListFargateProfiles

    -- ** ListClusters (Paginated)
    , module Network.AWS.EKS.ListClusters

    -- ** UntagResource 
    , module Network.AWS.EKS.UntagResource

    -- ** CreateNodegroup 
    , module Network.AWS.EKS.CreateNodegroup

    -- ** ListNodegroups (Paginated)
    , module Network.AWS.EKS.ListNodegroups

    -- ** DeleteNodegroup 
    , module Network.AWS.EKS.DeleteNodegroup

    -- * Types

    -- ** AMITypes
    , AMITypes (..)

    -- ** ClusterStatus
    , ClusterStatus (..)

    -- ** EKSErrorCode
    , EKSErrorCode (..)

    -- ** FargateProfileStatus
    , FargateProfileStatus (..)

    -- ** LogType
    , LogType (..)

    -- ** NodegroupIssueCode
    , NodegroupIssueCode (..)

    -- ** NodegroupStatus
    , NodegroupStatus (..)

    -- ** UpdateParamType
    , UpdateParamType (..)

    -- ** UpdateStatus
    , UpdateStatus (..)

    -- ** UpdateType
    , UpdateType (..)

    -- ** AutoScalingGroup
    , AutoScalingGroup
    , autoScalingGroup
    , asgName

    -- ** Certificate
    , Certificate
    , certificate
    , cData

    -- ** Cluster
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

    -- ** EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecResources
    , ecProvider

    -- ** ErrorDetail
    , ErrorDetail
    , errorDetail
    , edResourceIds
    , edErrorCode
    , edErrorMessage

    -- ** FargateProfile
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

    -- ** FargateProfileSelector
    , FargateProfileSelector
    , fargateProfileSelector
    , fpsNamespace
    , fpsLabels

    -- ** Identity
    , Identity
    , identity
    , iOidc

    -- ** Issue
    , Issue
    , issue
    , iResourceIds
    , iCode
    , iMessage

    -- ** LogSetup
    , LogSetup
    , logSetup
    , lsEnabled
    , lsTypes

    -- ** Logging
    , Logging
    , logging
    , lClusterLogging

    -- ** Nodegroup
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

    -- ** NodegroupHealth
    , NodegroupHealth
    , nodegroupHealth
    , nhIssues

    -- ** NodegroupResources
    , NodegroupResources
    , nodegroupResources
    , nrRemoteAccessSecurityGroup
    , nrAutoScalingGroups

    -- ** NodegroupScalingConfig
    , NodegroupScalingConfig
    , nodegroupScalingConfig
    , nscDesiredSize
    , nscMaxSize
    , nscMinSize

    -- ** OIdC
    , OIdC
    , oIdC
    , oicIssuer

    -- ** Provider
    , Provider
    , provider
    , pKeyARN

    -- ** RemoteAccessConfig
    , RemoteAccessConfig
    , remoteAccessConfig
    , racSourceSecurityGroups
    , racEc2SSHKey

    -- ** Update
    , Update
    , update
    , uStatus
    , uCreatedAt
    , uParams
    , uId
    , uType
    , uErrors

    -- ** UpdateLabelsPayload
    , UpdateLabelsPayload
    , updateLabelsPayload
    , ulpRemoveLabels
    , ulpAddOrUpdateLabels

    -- ** UpdateParam
    , UpdateParam
    , updateParam
    , upValue
    , upType

    -- ** VPCConfigRequest
    , VPCConfigRequest
    , vpcConfigRequest
    , vcrSecurityGroupIds
    , vcrEndpointPrivateAccess
    , vcrPublicAccessCidrs
    , vcrSubnetIds
    , vcrEndpointPublicAccess

    -- ** VPCConfigResponse
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

import Network.AWS.EKS.CreateCluster
import Network.AWS.EKS.CreateFargateProfile
import Network.AWS.EKS.CreateNodegroup
import Network.AWS.EKS.DeleteCluster
import Network.AWS.EKS.DeleteFargateProfile
import Network.AWS.EKS.DeleteNodegroup
import Network.AWS.EKS.DescribeCluster
import Network.AWS.EKS.DescribeFargateProfile
import Network.AWS.EKS.DescribeNodegroup
import Network.AWS.EKS.DescribeUpdate
import Network.AWS.EKS.ListClusters
import Network.AWS.EKS.ListFargateProfiles
import Network.AWS.EKS.ListNodegroups
import Network.AWS.EKS.ListTagsForResource
import Network.AWS.EKS.ListUpdates
import Network.AWS.EKS.TagResource
import Network.AWS.EKS.Types
import Network.AWS.EKS.UntagResource
import Network.AWS.EKS.UpdateClusterConfig
import Network.AWS.EKS.UpdateClusterVersion
import Network.AWS.EKS.UpdateNodegroupConfig
import Network.AWS.EKS.UpdateNodegroupVersion
import Network.AWS.EKS.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'EKS'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
