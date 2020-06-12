{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Prelude

-- | Endpoint update request
--
-- /See:/ 'endpointRequest' smart constructor.
data EndpointRequest = EndpointRequest'{_erRequestId
                                        :: !(Maybe Text),
                                        _erMetrics ::
                                        !(Maybe (Map Text Double)),
                                        _erLocation ::
                                        !(Maybe EndpointLocation),
                                        _erDemographic ::
                                        !(Maybe EndpointDemographic),
                                        _erAddress :: !(Maybe Text),
                                        _erEffectiveDate :: !(Maybe Text),
                                        _erUser :: !(Maybe EndpointUser),
                                        _erAttributes ::
                                        !(Maybe (Map Text [Text])),
                                        _erEndpointStatus :: !(Maybe Text),
                                        _erOptOut :: !(Maybe Text),
                                        _erChannelType :: !(Maybe ChannelType)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erRequestId' - The unique ID for the most recent request to update the endpoint.
--
-- * 'erMetrics' - Custom metrics that your app reports to Amazon Pinpoint.
--
-- * 'erLocation' - The endpoint location attributes.
--
-- * 'erDemographic' - The endpoint demographic attributes.
--
-- * 'erAddress' - The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
--
-- * 'erEffectiveDate' - The last time the endpoint was updated. Provided in ISO 8601 format.
--
-- * 'erUser' - Custom user-specific attributes that your app reports to Amazon Pinpoint.
--
-- * 'erAttributes' - Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
--
-- * 'erEndpointStatus' - The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
--
-- * 'erOptOut' - Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
--
-- * 'erChannelType' - The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
endpointRequest
    :: EndpointRequest
endpointRequest
  = EndpointRequest'{_erRequestId = Nothing,
                     _erMetrics = Nothing, _erLocation = Nothing,
                     _erDemographic = Nothing, _erAddress = Nothing,
                     _erEffectiveDate = Nothing, _erUser = Nothing,
                     _erAttributes = Nothing, _erEndpointStatus = Nothing,
                     _erOptOut = Nothing, _erChannelType = Nothing}

-- | The unique ID for the most recent request to update the endpoint.
erRequestId :: Lens' EndpointRequest (Maybe Text)
erRequestId = lens _erRequestId (\ s a -> s{_erRequestId = a})

-- | Custom metrics that your app reports to Amazon Pinpoint.
erMetrics :: Lens' EndpointRequest (HashMap Text Double)
erMetrics = lens _erMetrics (\ s a -> s{_erMetrics = a}) . _Default . _Map

-- | The endpoint location attributes.
erLocation :: Lens' EndpointRequest (Maybe EndpointLocation)
erLocation = lens _erLocation (\ s a -> s{_erLocation = a})

-- | The endpoint demographic attributes.
erDemographic :: Lens' EndpointRequest (Maybe EndpointDemographic)
erDemographic = lens _erDemographic (\ s a -> s{_erDemographic = a})

-- | The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
erAddress :: Lens' EndpointRequest (Maybe Text)
erAddress = lens _erAddress (\ s a -> s{_erAddress = a})

-- | The last time the endpoint was updated. Provided in ISO 8601 format.
erEffectiveDate :: Lens' EndpointRequest (Maybe Text)
erEffectiveDate = lens _erEffectiveDate (\ s a -> s{_erEffectiveDate = a})

-- | Custom user-specific attributes that your app reports to Amazon Pinpoint.
erUser :: Lens' EndpointRequest (Maybe EndpointUser)
erUser = lens _erUser (\ s a -> s{_erUser = a})

-- | Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
erAttributes :: Lens' EndpointRequest (HashMap Text [Text])
erAttributes = lens _erAttributes (\ s a -> s{_erAttributes = a}) . _Default . _Map

-- | The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
erEndpointStatus :: Lens' EndpointRequest (Maybe Text)
erEndpointStatus = lens _erEndpointStatus (\ s a -> s{_erEndpointStatus = a})

-- | Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
erOptOut :: Lens' EndpointRequest (Maybe Text)
erOptOut = lens _erOptOut (\ s a -> s{_erOptOut = a})

-- | The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
erChannelType :: Lens' EndpointRequest (Maybe ChannelType)
erChannelType = lens _erChannelType (\ s a -> s{_erChannelType = a})

instance Hashable EndpointRequest where

instance NFData EndpointRequest where

instance ToJSON EndpointRequest where
        toJSON EndpointRequest'{..}
          = object
              (catMaybes
                 [("RequestId" .=) <$> _erRequestId,
                  ("Metrics" .=) <$> _erMetrics,
                  ("Location" .=) <$> _erLocation,
                  ("Demographic" .=) <$> _erDemographic,
                  ("Address" .=) <$> _erAddress,
                  ("EffectiveDate" .=) <$> _erEffectiveDate,
                  ("User" .=) <$> _erUser,
                  ("Attributes" .=) <$> _erAttributes,
                  ("EndpointStatus" .=) <$> _erEndpointStatus,
                  ("OptOut" .=) <$> _erOptOut,
                  ("ChannelType" .=) <$> _erChannelType])
