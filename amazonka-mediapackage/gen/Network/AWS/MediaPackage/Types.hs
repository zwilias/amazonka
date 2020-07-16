{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types
    (
    -- * Service Configuration
      mediaPackage

    -- * Errors
    , _InternalServerErrorException
    , _TooManyRequestsException
    , _ForbiddenException
    , _UnprocessableEntityException
    , _ServiceUnavailableException
    , _NotFoundException

    -- * AdMarkers
    , AdMarkers (..)

    -- * EncryptionMethod
    , EncryptionMethod (..)

    -- * PlaylistType
    , PlaylistType (..)

    -- * Profile
    , Profile (..)

    -- * StreamOrder
    , StreamOrder (..)

    -- * Channel
    , Channel
    , channel
    , cHlsIngest
    , cARN
    , cId
    , cDescription

    -- * CmafEncryption
    , CmafEncryption
    , cmafEncryption
    , ceKeyRotationIntervalSeconds
    , ceSpekeKeyProvider

    -- * CmafPackage
    , CmafPackage
    , cmafPackage
    , cpHlsManifests
    , cpSegmentDurationSeconds
    , cpStreamSelection
    , cpEncryption
    , cpSegmentPrefix

    -- * CmafPackageCreateOrUpdateParameters
    , CmafPackageCreateOrUpdateParameters
    , cmafPackageCreateOrUpdateParameters
    , cpcoupHlsManifests
    , cpcoupSegmentDurationSeconds
    , cpcoupStreamSelection
    , cpcoupEncryption
    , cpcoupSegmentPrefix

    -- * DashEncryption
    , DashEncryption
    , dashEncryption
    , deKeyRotationIntervalSeconds
    , deSpekeKeyProvider

    -- * DashPackage
    , DashPackage
    , dashPackage
    , dpMinBufferTimeSeconds
    , dpProfile
    , dpSegmentDurationSeconds
    , dpStreamSelection
    , dpEncryption
    , dpMinUpdatePeriodSeconds
    , dpSuggestedPresentationDelaySeconds
    , dpManifestWindowSeconds

    -- * HlsEncryption
    , HlsEncryption
    , hlsEncryption
    , heEncryptionMethod
    , heKeyRotationIntervalSeconds
    , heConstantInitializationVector
    , heRepeatExtXKey
    , heSpekeKeyProvider

    -- * HlsIngest
    , HlsIngest
    , hlsIngest
    , hiIngestEndpoints

    -- * HlsManifest
    , HlsManifest
    , hlsManifest
    , hmManifestName
    , hmURL
    , hmPlaylistType
    , hmProgramDateTimeIntervalSeconds
    , hmAdMarkers
    , hmIncludeIframeOnlyStream
    , hmPlaylistWindowSeconds
    , hmId

    -- * HlsManifestCreateOrUpdateParameters
    , HlsManifestCreateOrUpdateParameters
    , hlsManifestCreateOrUpdateParameters
    , hmcoupManifestName
    , hmcoupPlaylistType
    , hmcoupProgramDateTimeIntervalSeconds
    , hmcoupAdMarkers
    , hmcoupIncludeIframeOnlyStream
    , hmcoupPlaylistWindowSeconds
    , hmcoupId

    -- * HlsPackage
    , HlsPackage
    , hlsPackage
    , hpUseAudioRenditionGroup
    , hpPlaylistType
    , hpSegmentDurationSeconds
    , hpProgramDateTimeIntervalSeconds
    , hpStreamSelection
    , hpAdMarkers
    , hpEncryption
    , hpIncludeIframeOnlyStream
    , hpPlaylistWindowSeconds

    -- * IngestEndpoint
    , IngestEndpoint
    , ingestEndpoint
    , ieURL
    , ieUsername
    , iePassword

    -- * MssEncryption
    , MssEncryption
    , mssEncryption
    , meSpekeKeyProvider

    -- * MssPackage
    , MssPackage
    , mssPackage
    , mpSegmentDurationSeconds
    , mpStreamSelection
    , mpEncryption
    , mpManifestWindowSeconds

    -- * OriginEndpoint
    , OriginEndpoint
    , originEndpoint
    , oeWhitelist
    , oeHlsPackage
    , oeARN
    , oeManifestName
    , oeURL
    , oeChannelId
    , oeStartoverWindowSeconds
    , oeDashPackage
    , oeMssPackage
    , oeId
    , oeTimeDelaySeconds
    , oeCmafPackage
    , oeDescription

    -- * SpekeKeyProvider
    , SpekeKeyProvider
    , spekeKeyProvider
    , skpURL
    , skpResourceId
    , skpRoleARN
    , skpSystemIds

    -- * StreamSelection
    , StreamSelection
    , streamSelection
    , ssStreamOrder
    , ssMinVideoBitsPerSecond
    , ssMaxVideoBitsPerSecond
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.MediaPackage.Types.AdMarkers
import Network.AWS.MediaPackage.Types.EncryptionMethod
import Network.AWS.MediaPackage.Types.PlaylistType
import Network.AWS.MediaPackage.Types.Profile
import Network.AWS.MediaPackage.Types.StreamOrder
import Network.AWS.MediaPackage.Types.Channel
import Network.AWS.MediaPackage.Types.CmafEncryption
import Network.AWS.MediaPackage.Types.CmafPackage
import Network.AWS.MediaPackage.Types.CmafPackageCreateOrUpdateParameters
import Network.AWS.MediaPackage.Types.DashEncryption
import Network.AWS.MediaPackage.Types.DashPackage
import Network.AWS.MediaPackage.Types.HlsEncryption
import Network.AWS.MediaPackage.Types.HlsIngest
import Network.AWS.MediaPackage.Types.HlsManifest
import Network.AWS.MediaPackage.Types.HlsManifestCreateOrUpdateParameters
import Network.AWS.MediaPackage.Types.HlsPackage
import Network.AWS.MediaPackage.Types.IngestEndpoint
import Network.AWS.MediaPackage.Types.MssEncryption
import Network.AWS.MediaPackage.Types.MssPackage
import Network.AWS.MediaPackage.Types.OriginEndpoint
import Network.AWS.MediaPackage.Types.SpekeKeyProvider
import Network.AWS.MediaPackage.Types.StreamSelection

-- | API version @2017-10-12@ of the Amazon Elemental MediaPackage SDK configuration.
mediaPackage :: Service
mediaPackage
  = Service{_svcAbbrev = "MediaPackage",
            _svcSigner = v4, _svcPrefix = "mediapackage",
            _svcVersion = "2017-10-12",
            _svcEndpoint = defaultEndpoint mediaPackage,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "MediaPackage",
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

-- | An unexpected error occurred.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException
  = _MatchServiceError mediaPackage
      "InternalServerErrorException"
      . hasStatus 500

-- | The client has exceeded their resource or throttling limits.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException
  = _MatchServiceError mediaPackage
      "TooManyRequestsException"
      . hasStatus 429

-- | The client is not authorized to access the requested resource.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException
  = _MatchServiceError mediaPackage
      "ForbiddenException"
      . hasStatus 403

-- | The parameters sent in the request are not valid.
_UnprocessableEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_UnprocessableEntityException
  = _MatchServiceError mediaPackage
      "UnprocessableEntityException"
      . hasStatus 422

-- | An unexpected error occurred.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException
  = _MatchServiceError mediaPackage
      "ServiceUnavailableException"
      . hasStatus 503

-- | The requested resource does not exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError mediaPackage "NotFoundException"
      . hasStatus 404
