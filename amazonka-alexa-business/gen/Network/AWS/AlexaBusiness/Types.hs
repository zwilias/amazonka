{-# LANGUAGE OverloadedStrings  #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types
    (
    -- * Service Configuration
      alexaBusiness

    -- * Errors
    , _NameInUseException
    , _InvalidUserStatusException
    , _NotFoundException
    , _LimitExceededException
    , _AlreadyExistsException
    , _ResourceInUseException

    -- * ConnectionStatus
    , ConnectionStatus (..)

    -- * DeviceEventType
    , DeviceEventType (..)

    -- * DeviceStatus
    , DeviceStatus (..)

    -- * DeviceStatusDetailCode
    , DeviceStatusDetailCode (..)

    -- * DistanceUnit
    , DistanceUnit (..)

    -- * EnrollmentStatus
    , EnrollmentStatus (..)

    -- * Feature
    , Feature (..)

    -- * SortValue
    , SortValue (..)

    -- * TemperatureUnit
    , TemperatureUnit (..)

    -- * WakeWord
    , WakeWord (..)

    -- * AddressBook
    , AddressBook
    , addressBook
    , abAddressBookARN
    , abName
    , abDescription

    -- * AddressBookData
    , AddressBookData
    , addressBookData
    , abdAddressBookARN
    , abdName
    , abdDescription

    -- * Contact
    , Contact
    , contact
    , cLastName
    , cContactARN
    , cPhoneNumber
    , cFirstName
    , cDisplayName

    -- * ContactData
    , ContactData
    , contactData
    , cdLastName
    , cdContactARN
    , cdPhoneNumber
    , cdFirstName
    , cdDisplayName

    -- * Device
    , Device
    , device
    , dDeviceStatus
    , dDeviceStatusInfo
    , dDeviceARN
    , dMACAddress
    , dDeviceName
    , dRoomARN
    , dSoftwareVersion
    , dDeviceType
    , dDeviceSerialNumber

    -- * DeviceData
    , DeviceData
    , deviceData
    , ddDeviceStatus
    , ddDeviceStatusInfo
    , ddDeviceARN
    , ddMACAddress
    , ddDeviceName
    , ddRoomARN
    , ddSoftwareVersion
    , ddDeviceType
    , ddRoomName
    , ddDeviceSerialNumber

    -- * DeviceEvent
    , DeviceEvent
    , deviceEvent
    , deValue
    , deType
    , deTimestamp

    -- * DeviceStatusDetail
    , DeviceStatusDetail
    , deviceStatusDetail
    , dsdCode

    -- * DeviceStatusInfo
    , DeviceStatusInfo
    , deviceStatusInfo
    , dsiDeviceStatusDetails
    , dsiConnectionStatus

    -- * Filter
    , Filter
    , filter'
    , fKey
    , fValues

    -- * Profile
    , Profile
    , profile
    , pSetupModeDisabled
    , pPSTNEnabled
    , pDistanceUnit
    , pAddress
    , pProfileARN
    , pWakeWord
    , pProfileName
    , pTemperatureUnit
    , pTimezone
    , pMaxVolumeLimit

    -- * ProfileData
    , ProfileData
    , profileData
    , pdDistanceUnit
    , pdAddress
    , pdProfileARN
    , pdWakeWord
    , pdProfileName
    , pdTemperatureUnit
    , pdTimezone

    -- * Room
    , Room
    , room
    , rProfileARN
    , rProviderCalendarId
    , rRoomARN
    , rRoomName
    , rDescription

    -- * RoomData
    , RoomData
    , roomData
    , rdProfileARN
    , rdProviderCalendarId
    , rdProfileName
    , rdRoomARN
    , rdRoomName
    , rdDescription

    -- * RoomSkillParameter
    , RoomSkillParameter
    , roomSkillParameter
    , rspParameterKey
    , rspParameterValue

    -- * SkillGroup
    , SkillGroup
    , skillGroup
    , sgSkillGroupARN
    , sgDescription
    , sgSkillGroupName

    -- * SkillGroupData
    , SkillGroupData
    , skillGroupData
    , sgdSkillGroupARN
    , sgdDescription
    , sgdSkillGroupName

    -- * SkillSummary
    , SkillSummary
    , skillSummary
    , ssSkillId
    , ssSupportsLinking
    , ssSkillName

    -- * Sort
    , Sort
    , sort
    , sKey
    , sValue

    -- * Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- * UserData
    , UserData
    , userData
    , udEmail
    , udLastName
    , udEnrollmentId
    , udUserARN
    , udFirstName
    , udEnrollmentStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.AlexaBusiness.Types.ConnectionStatus
import Network.AWS.AlexaBusiness.Types.DeviceEventType
import Network.AWS.AlexaBusiness.Types.DeviceStatus
import Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
import Network.AWS.AlexaBusiness.Types.DistanceUnit
import Network.AWS.AlexaBusiness.Types.EnrollmentStatus
import Network.AWS.AlexaBusiness.Types.Feature
import Network.AWS.AlexaBusiness.Types.SortValue
import Network.AWS.AlexaBusiness.Types.TemperatureUnit
import Network.AWS.AlexaBusiness.Types.WakeWord
import Network.AWS.AlexaBusiness.Types.AddressBook
import Network.AWS.AlexaBusiness.Types.AddressBookData
import Network.AWS.AlexaBusiness.Types.Contact
import Network.AWS.AlexaBusiness.Types.ContactData
import Network.AWS.AlexaBusiness.Types.Device
import Network.AWS.AlexaBusiness.Types.DeviceData
import Network.AWS.AlexaBusiness.Types.DeviceEvent
import Network.AWS.AlexaBusiness.Types.DeviceStatusDetail
import Network.AWS.AlexaBusiness.Types.DeviceStatusInfo
import Network.AWS.AlexaBusiness.Types.Filter
import Network.AWS.AlexaBusiness.Types.Profile
import Network.AWS.AlexaBusiness.Types.ProfileData
import Network.AWS.AlexaBusiness.Types.Room
import Network.AWS.AlexaBusiness.Types.RoomData
import Network.AWS.AlexaBusiness.Types.RoomSkillParameter
import Network.AWS.AlexaBusiness.Types.SkillGroup
import Network.AWS.AlexaBusiness.Types.SkillGroupData
import Network.AWS.AlexaBusiness.Types.SkillSummary
import Network.AWS.AlexaBusiness.Types.Sort
import Network.AWS.AlexaBusiness.Types.Tag
import Network.AWS.AlexaBusiness.Types.UserData

-- | API version @2017-11-09@ of the Amazon Alexa For Business SDK configuration.
alexaBusiness :: Service
alexaBusiness
  = Service{_svcAbbrev = "AlexaBusiness",
            _svcSigner = v4, _svcPrefix = "a4b",
            _svcVersion = "2017-11-09",
            _svcEndpoint = defaultEndpoint alexaBusiness,
            _svcTimeout = Just 70, _svcCheck = statusSuccess,
            _svcError = parseJSONError "AlexaBusiness",
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

-- | The name sent in the request is already in use. HTTP Status Code: 400
--
--
_NameInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_NameInUseException
  = _MatchServiceError alexaBusiness
      "NameInUseException"

-- | The attempt to update a user is invalid due to the user's current status. HTTP Status Code: 400
--
--
_InvalidUserStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserStatusException
  = _MatchServiceError alexaBusiness
      "InvalidUserStatusException"

-- | The resource is not found. HTTP Status Code: 400
--
--
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException
  = _MatchServiceError alexaBusiness
      "NotFoundException"

-- | You are performing an action that would put you beyond your account's limits. HTTP Status Code: 400
--
--
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException
  = _MatchServiceError alexaBusiness
      "LimitExceededException"

-- | The resource being created already exists. HTTP Status Code: 400
--
--
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException
  = _MatchServiceError alexaBusiness
      "AlreadyExistsException"

-- | The resource in the request is already in use. HTTP Status Code: 400
--
--
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException
  = _MatchServiceError alexaBusiness
      "ResourceInUseException"
