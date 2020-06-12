{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointBatchItem
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointBatchItem where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Prelude

-- | Endpoint update request
--
-- /See:/ 'endpointBatchItem' smart constructor.
data EndpointBatchItem = EndpointBatchItem'{_ebiRequestId
                                            :: !(Maybe Text),
                                            _ebiMetrics ::
                                            !(Maybe (Map Text Double)),
                                            _ebiLocation ::
                                            !(Maybe EndpointLocation),
                                            _ebiDemographic ::
                                            !(Maybe EndpointDemographic),
                                            _ebiAddress :: !(Maybe Text),
                                            _ebiEffectiveDate :: !(Maybe Text),
                                            _ebiUser :: !(Maybe EndpointUser),
                                            _ebiAttributes ::
                                            !(Maybe (Map Text [Text])),
                                            _ebiEndpointStatus :: !(Maybe Text),
                                            _ebiOptOut :: !(Maybe Text),
                                            _ebiId :: !(Maybe Text),
                                            _ebiChannelType ::
                                            !(Maybe ChannelType)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointBatchItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebiRequestId' - The unique ID for the most recent request to update the endpoint.
--
-- * 'ebiMetrics' - Custom metrics that your app reports to Amazon Pinpoint.
--
-- * 'ebiLocation' - The endpoint location attributes.
--
-- * 'ebiDemographic' - The endpoint demographic attributes.
--
-- * 'ebiAddress' - The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
--
-- * 'ebiEffectiveDate' - The last time the endpoint was updated. Provided in ISO 8601 format.
--
-- * 'ebiUser' - Custom user-specific attributes that your app reports to Amazon Pinpoint.
--
-- * 'ebiAttributes' - Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
--
-- * 'ebiEndpointStatus' - The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
--
-- * 'ebiOptOut' - Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
--
-- * 'ebiId' - The unique Id for the Endpoint in the batch.
--
-- * 'ebiChannelType' - The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
endpointBatchItem
    :: EndpointBatchItem
endpointBatchItem
  = EndpointBatchItem'{_ebiRequestId = Nothing,
                       _ebiMetrics = Nothing, _ebiLocation = Nothing,
                       _ebiDemographic = Nothing, _ebiAddress = Nothing,
                       _ebiEffectiveDate = Nothing, _ebiUser = Nothing,
                       _ebiAttributes = Nothing,
                       _ebiEndpointStatus = Nothing, _ebiOptOut = Nothing,
                       _ebiId = Nothing, _ebiChannelType = Nothing}

-- | The unique ID for the most recent request to update the endpoint.
ebiRequestId :: Lens' EndpointBatchItem (Maybe Text)
ebiRequestId = lens _ebiRequestId (\ s a -> s{_ebiRequestId = a})

-- | Custom metrics that your app reports to Amazon Pinpoint.
ebiMetrics :: Lens' EndpointBatchItem (HashMap Text Double)
ebiMetrics = lens _ebiMetrics (\ s a -> s{_ebiMetrics = a}) . _Default . _Map

-- | The endpoint location attributes.
ebiLocation :: Lens' EndpointBatchItem (Maybe EndpointLocation)
ebiLocation = lens _ebiLocation (\ s a -> s{_ebiLocation = a})

-- | The endpoint demographic attributes.
ebiDemographic :: Lens' EndpointBatchItem (Maybe EndpointDemographic)
ebiDemographic = lens _ebiDemographic (\ s a -> s{_ebiDemographic = a})

-- | The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
ebiAddress :: Lens' EndpointBatchItem (Maybe Text)
ebiAddress = lens _ebiAddress (\ s a -> s{_ebiAddress = a})

-- | The last time the endpoint was updated. Provided in ISO 8601 format.
ebiEffectiveDate :: Lens' EndpointBatchItem (Maybe Text)
ebiEffectiveDate = lens _ebiEffectiveDate (\ s a -> s{_ebiEffectiveDate = a})

-- | Custom user-specific attributes that your app reports to Amazon Pinpoint.
ebiUser :: Lens' EndpointBatchItem (Maybe EndpointUser)
ebiUser = lens _ebiUser (\ s a -> s{_ebiUser = a})

-- | Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
ebiAttributes :: Lens' EndpointBatchItem (HashMap Text [Text])
ebiAttributes = lens _ebiAttributes (\ s a -> s{_ebiAttributes = a}) . _Default . _Map

-- | The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
ebiEndpointStatus :: Lens' EndpointBatchItem (Maybe Text)
ebiEndpointStatus = lens _ebiEndpointStatus (\ s a -> s{_ebiEndpointStatus = a})

-- | Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
ebiOptOut :: Lens' EndpointBatchItem (Maybe Text)
ebiOptOut = lens _ebiOptOut (\ s a -> s{_ebiOptOut = a})

-- | The unique Id for the Endpoint in the batch.
ebiId :: Lens' EndpointBatchItem (Maybe Text)
ebiId = lens _ebiId (\ s a -> s{_ebiId = a})

-- | The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
ebiChannelType :: Lens' EndpointBatchItem (Maybe ChannelType)
ebiChannelType = lens _ebiChannelType (\ s a -> s{_ebiChannelType = a})

instance Hashable EndpointBatchItem where

instance NFData EndpointBatchItem where

instance ToJSON EndpointBatchItem where
        toJSON EndpointBatchItem'{..}
          = object
              (catMaybes
                 [("RequestId" .=) <$> _ebiRequestId,
                  ("Metrics" .=) <$> _ebiMetrics,
                  ("Location" .=) <$> _ebiLocation,
                  ("Demographic" .=) <$> _ebiDemographic,
                  ("Address" .=) <$> _ebiAddress,
                  ("EffectiveDate" .=) <$> _ebiEffectiveDate,
                  ("User" .=) <$> _ebiUser,
                  ("Attributes" .=) <$> _ebiAttributes,
                  ("EndpointStatus" .=) <$> _ebiEndpointStatus,
                  ("OptOut" .=) <$> _ebiOptOut, ("Id" .=) <$> _ebiId,
                  ("ChannelType" .=) <$> _ebiChannelType])
