{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Prelude

-- | Endpoint response
--
-- /See:/ 'endpointResponse' smart constructor.
data EndpointResponse = EndpointResponse'{_eRequestId
                                          :: !(Maybe Text),
                                          _eMetrics ::
                                          !(Maybe (Map Text Double)),
                                          _eLocation ::
                                          !(Maybe EndpointLocation),
                                          _eDemographic ::
                                          !(Maybe EndpointDemographic),
                                          _eCohortId :: !(Maybe Text),
                                          _eAddress :: !(Maybe Text),
                                          _eEffectiveDate :: !(Maybe Text),
                                          _eUser :: !(Maybe EndpointUser),
                                          _eApplicationId :: !(Maybe Text),
                                          _eAttributes ::
                                          !(Maybe (Map Text [Text])),
                                          _eEndpointStatus :: !(Maybe Text),
                                          _eOptOut :: !(Maybe Text),
                                          _eId :: !(Maybe Text),
                                          _eCreationDate :: !(Maybe Text),
                                          _eChannelType :: !(Maybe ChannelType)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eRequestId' - The unique ID for the most recent request to update the endpoint.
--
-- * 'eMetrics' - Custom metrics that your app reports to Amazon Pinpoint.
--
-- * 'eLocation' - The endpoint location attributes.
--
-- * 'eDemographic' - The endpoint demographic attributes.
--
-- * 'eCohortId' - A number from 0 - 99 that represents the cohort the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an app. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for a campaign.
--
-- * 'eAddress' - The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
--
-- * 'eEffectiveDate' - The last time the endpoint was updated. Provided in ISO 8601 format.
--
-- * 'eUser' - Custom user-specific attributes that your app reports to Amazon Pinpoint.
--
-- * 'eApplicationId' - The ID of the application associated with the endpoint.
--
-- * 'eAttributes' - Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
--
-- * 'eEndpointStatus' - The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
--
-- * 'eOptOut' - Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
--
-- * 'eId' - The unique ID that you assigned to the endpoint. The ID should be a globally unique identifier (GUID) to ensure that it is unique compared to all other endpoints for the application.
--
-- * 'eCreationDate' - The last time the endpoint was created. Provided in ISO 8601 format.
--
-- * 'eChannelType' - The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
endpointResponse
    :: EndpointResponse
endpointResponse
  = EndpointResponse'{_eRequestId = Nothing,
                      _eMetrics = Nothing, _eLocation = Nothing,
                      _eDemographic = Nothing, _eCohortId = Nothing,
                      _eAddress = Nothing, _eEffectiveDate = Nothing,
                      _eUser = Nothing, _eApplicationId = Nothing,
                      _eAttributes = Nothing, _eEndpointStatus = Nothing,
                      _eOptOut = Nothing, _eId = Nothing,
                      _eCreationDate = Nothing, _eChannelType = Nothing}

-- | The unique ID for the most recent request to update the endpoint.
eRequestId :: Lens' EndpointResponse (Maybe Text)
eRequestId = lens _eRequestId (\ s a -> s{_eRequestId = a})

-- | Custom metrics that your app reports to Amazon Pinpoint.
eMetrics :: Lens' EndpointResponse (HashMap Text Double)
eMetrics = lens _eMetrics (\ s a -> s{_eMetrics = a}) . _Default . _Map

-- | The endpoint location attributes.
eLocation :: Lens' EndpointResponse (Maybe EndpointLocation)
eLocation = lens _eLocation (\ s a -> s{_eLocation = a})

-- | The endpoint demographic attributes.
eDemographic :: Lens' EndpointResponse (Maybe EndpointDemographic)
eDemographic = lens _eDemographic (\ s a -> s{_eDemographic = a})

-- | A number from 0 - 99 that represents the cohort the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an app. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for a campaign.
eCohortId :: Lens' EndpointResponse (Maybe Text)
eCohortId = lens _eCohortId (\ s a -> s{_eCohortId = a})

-- | The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
eAddress :: Lens' EndpointResponse (Maybe Text)
eAddress = lens _eAddress (\ s a -> s{_eAddress = a})

-- | The last time the endpoint was updated. Provided in ISO 8601 format.
eEffectiveDate :: Lens' EndpointResponse (Maybe Text)
eEffectiveDate = lens _eEffectiveDate (\ s a -> s{_eEffectiveDate = a})

-- | Custom user-specific attributes that your app reports to Amazon Pinpoint.
eUser :: Lens' EndpointResponse (Maybe EndpointUser)
eUser = lens _eUser (\ s a -> s{_eUser = a})

-- | The ID of the application associated with the endpoint.
eApplicationId :: Lens' EndpointResponse (Maybe Text)
eApplicationId = lens _eApplicationId (\ s a -> s{_eApplicationId = a})

-- | Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
eAttributes :: Lens' EndpointResponse (HashMap Text [Text])
eAttributes = lens _eAttributes (\ s a -> s{_eAttributes = a}) . _Default . _Map

-- | The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
eEndpointStatus :: Lens' EndpointResponse (Maybe Text)
eEndpointStatus = lens _eEndpointStatus (\ s a -> s{_eEndpointStatus = a})

-- | Indicates whether a user has opted out of receiving messages with one of the following values: ALL - User has opted out of all messages. NONE - Users has not opted out and receives all messages.
eOptOut :: Lens' EndpointResponse (Maybe Text)
eOptOut = lens _eOptOut (\ s a -> s{_eOptOut = a})

-- | The unique ID that you assigned to the endpoint. The ID should be a globally unique identifier (GUID) to ensure that it is unique compared to all other endpoints for the application.
eId :: Lens' EndpointResponse (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

-- | The last time the endpoint was created. Provided in ISO 8601 format.
eCreationDate :: Lens' EndpointResponse (Maybe Text)
eCreationDate = lens _eCreationDate (\ s a -> s{_eCreationDate = a})

-- | The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
eChannelType :: Lens' EndpointResponse (Maybe ChannelType)
eChannelType = lens _eChannelType (\ s a -> s{_eChannelType = a})

instance FromJSON EndpointResponse where
        parseJSON
          = withObject "EndpointResponse"
              (\ x ->
                 EndpointResponse' <$>
                   (x .:? "RequestId") <*> (x .:? "Metrics" .!= mempty)
                     <*> (x .:? "Location")
                     <*> (x .:? "Demographic")
                     <*> (x .:? "CohortId")
                     <*> (x .:? "Address")
                     <*> (x .:? "EffectiveDate")
                     <*> (x .:? "User")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Attributes" .!= mempty)
                     <*> (x .:? "EndpointStatus")
                     <*> (x .:? "OptOut")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "ChannelType"))

instance Hashable EndpointResponse where

instance NFData EndpointResponse where
