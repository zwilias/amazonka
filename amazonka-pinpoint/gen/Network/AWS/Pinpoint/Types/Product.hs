{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.Product (
    module Network.AWS.Pinpoint.Types.ADMChannelRequest,
    module Network.AWS.Pinpoint.Types.ADMChannelResponse,
    module Network.AWS.Pinpoint.Types.ADMMessage,
    module Network.AWS.Pinpoint.Types.APNSChannelRequest,
    module Network.AWS.Pinpoint.Types.APNSChannelResponse,
    module Network.AWS.Pinpoint.Types.APNSMessage,
    module Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest,
    module Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse,
    module Network.AWS.Pinpoint.Types.APNSVoipChannelRequest,
    module Network.AWS.Pinpoint.Types.APNSVoipChannelResponse,
    module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest,
    module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse,
    module Network.AWS.Pinpoint.Types.ActivitiesResponse,
    module Network.AWS.Pinpoint.Types.ActivityResponse,
    module Network.AWS.Pinpoint.Types.AddressConfiguration,
    module Network.AWS.Pinpoint.Types.ApplicationResponse,
    module Network.AWS.Pinpoint.Types.ApplicationSettingsResource,
    module Network.AWS.Pinpoint.Types.ApplicationsResponse,
    module Network.AWS.Pinpoint.Types.AttributeDimension,
    module Network.AWS.Pinpoint.Types.BaiduChannelRequest,
    module Network.AWS.Pinpoint.Types.BaiduChannelResponse,
    module Network.AWS.Pinpoint.Types.BaiduMessage,
    module Network.AWS.Pinpoint.Types.CampaignEmailMessage,
    module Network.AWS.Pinpoint.Types.CampaignHook,
    module Network.AWS.Pinpoint.Types.CampaignLimits,
    module Network.AWS.Pinpoint.Types.CampaignResponse,
    module Network.AWS.Pinpoint.Types.CampaignSmsMessage,
    module Network.AWS.Pinpoint.Types.CampaignState,
    module Network.AWS.Pinpoint.Types.CampaignsResponse,
    module Network.AWS.Pinpoint.Types.CreateApplicationRequest,
    module Network.AWS.Pinpoint.Types.DefaultMessage,
    module Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage,
    module Network.AWS.Pinpoint.Types.DirectMessageConfiguration,
    module Network.AWS.Pinpoint.Types.EmailChannelRequest,
    module Network.AWS.Pinpoint.Types.EmailChannelResponse,
    module Network.AWS.Pinpoint.Types.EndpointBatchItem,
    module Network.AWS.Pinpoint.Types.EndpointBatchRequest,
    module Network.AWS.Pinpoint.Types.EndpointDemographic,
    module Network.AWS.Pinpoint.Types.EndpointLocation,
    module Network.AWS.Pinpoint.Types.EndpointMessageResult,
    module Network.AWS.Pinpoint.Types.EndpointRequest,
    module Network.AWS.Pinpoint.Types.EndpointResponse,
    module Network.AWS.Pinpoint.Types.EndpointSendConfiguration,
    module Network.AWS.Pinpoint.Types.EndpointUser,
    module Network.AWS.Pinpoint.Types.EventStream,
    module Network.AWS.Pinpoint.Types.ExportJobRequest,
    module Network.AWS.Pinpoint.Types.ExportJobResource,
    module Network.AWS.Pinpoint.Types.ExportJobResponse,
    module Network.AWS.Pinpoint.Types.ExportJobsResponse,
    module Network.AWS.Pinpoint.Types.GCMChannelRequest,
    module Network.AWS.Pinpoint.Types.GCMChannelResponse,
    module Network.AWS.Pinpoint.Types.GCMMessage,
    module Network.AWS.Pinpoint.Types.ImportJobRequest,
    module Network.AWS.Pinpoint.Types.ImportJobResource,
    module Network.AWS.Pinpoint.Types.ImportJobResponse,
    module Network.AWS.Pinpoint.Types.ImportJobsResponse,
    module Network.AWS.Pinpoint.Types.Message,
    module Network.AWS.Pinpoint.Types.MessageBody,
    module Network.AWS.Pinpoint.Types.MessageConfiguration,
    module Network.AWS.Pinpoint.Types.MessageRequest,
    module Network.AWS.Pinpoint.Types.MessageResponse,
    module Network.AWS.Pinpoint.Types.MessageResult,
    module Network.AWS.Pinpoint.Types.QuietTime,
    module Network.AWS.Pinpoint.Types.RecencyDimension,
    module Network.AWS.Pinpoint.Types.SMSChannelRequest,
    module Network.AWS.Pinpoint.Types.SMSChannelResponse,
    module Network.AWS.Pinpoint.Types.SMSMessage,
    module Network.AWS.Pinpoint.Types.Schedule,
    module Network.AWS.Pinpoint.Types.SegmentBehaviors,
    module Network.AWS.Pinpoint.Types.SegmentDemographics,
    module Network.AWS.Pinpoint.Types.SegmentDimensions,
    module Network.AWS.Pinpoint.Types.SegmentImportResource,
    module Network.AWS.Pinpoint.Types.SegmentLocation,
    module Network.AWS.Pinpoint.Types.SegmentResponse,
    module Network.AWS.Pinpoint.Types.SegmentsResponse,
    module Network.AWS.Pinpoint.Types.SendUsersMessageRequest,
    module Network.AWS.Pinpoint.Types.SendUsersMessageResponse,
    module Network.AWS.Pinpoint.Types.SetDimension,
    module Network.AWS.Pinpoint.Types.TreatmentResource,
    module Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest,
    module Network.AWS.Pinpoint.Types.WriteCampaignRequest,
    module Network.AWS.Pinpoint.Types.WriteEventStream,
    module Network.AWS.Pinpoint.Types.WriteSegmentRequest,
    module Network.AWS.Pinpoint.Types.WriteTreatmentResource
  ) where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ADMChannelRequest
import Network.AWS.Pinpoint.Types.ADMChannelResponse
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSChannelRequest
import Network.AWS.Pinpoint.Types.APNSChannelResponse
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
import Network.AWS.Pinpoint.Types.ActivitiesResponse
import Network.AWS.Pinpoint.Types.ActivityResponse
import Network.AWS.Pinpoint.Types.AddressConfiguration
import Network.AWS.Pinpoint.Types.ApplicationResponse
import Network.AWS.Pinpoint.Types.ApplicationSettingsResource
import Network.AWS.Pinpoint.Types.ApplicationsResponse
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.BaiduChannelRequest
import Network.AWS.Pinpoint.Types.BaiduChannelResponse
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.CampaignEmailMessage
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignResponse
import Network.AWS.Pinpoint.Types.CampaignSmsMessage
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.CampaignsResponse
import Network.AWS.Pinpoint.Types.CreateApplicationRequest
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EmailChannelRequest
import Network.AWS.Pinpoint.Types.EmailChannelResponse
import Network.AWS.Pinpoint.Types.EndpointBatchItem
import Network.AWS.Pinpoint.Types.EndpointBatchRequest
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.EndpointRequest
import Network.AWS.Pinpoint.Types.EndpointResponse
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Pinpoint.Types.EventStream
import Network.AWS.Pinpoint.Types.ExportJobRequest
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.ExportJobResponse
import Network.AWS.Pinpoint.Types.ExportJobsResponse
import Network.AWS.Pinpoint.Types.GCMChannelRequest
import Network.AWS.Pinpoint.Types.GCMChannelResponse
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.ImportJobRequest
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.ImportJobResponse
import Network.AWS.Pinpoint.Types.ImportJobsResponse
import Network.AWS.Pinpoint.Types.Message
import Network.AWS.Pinpoint.Types.MessageBody
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.MessageRequest
import Network.AWS.Pinpoint.Types.MessageResponse
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.RecencyDimension
import Network.AWS.Pinpoint.Types.SMSChannelRequest
import Network.AWS.Pinpoint.Types.SMSChannelResponse
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentLocation
import Network.AWS.Pinpoint.Types.SegmentResponse
import Network.AWS.Pinpoint.Types.SegmentsResponse
import Network.AWS.Pinpoint.Types.SendUsersMessageRequest
import Network.AWS.Pinpoint.Types.SendUsersMessageResponse
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
import Network.AWS.Pinpoint.Types.WriteCampaignRequest
import Network.AWS.Pinpoint.Types.WriteEventStream
import Network.AWS.Pinpoint.Types.WriteSegmentRequest
import Network.AWS.Pinpoint.Types.WriteTreatmentResource
import Network.AWS.Prelude
