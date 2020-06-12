{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ActivityResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ActivityResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Activity definition
--
-- /See:/ 'activityResponse' smart constructor.
data ActivityResponse = ActivityResponse'{_aState ::
                                          !(Maybe Text),
                                          _aStart :: !(Maybe Text),
                                          _aCampaignId :: !(Maybe Text),
                                          _aTimezonesCompletedCount ::
                                          !(Maybe Int),
                                          _aTimezonesTotalCount :: !(Maybe Int),
                                          _aResult :: !(Maybe Text),
                                          _aTreatmentId :: !(Maybe Text),
                                          _aSuccessfulEndpointCount ::
                                          !(Maybe Int),
                                          _aEnd :: !(Maybe Text),
                                          _aApplicationId :: !(Maybe Text),
                                          _aTotalEndpointCount :: !(Maybe Int),
                                          _aId :: !(Maybe Text),
                                          _aScheduledStart :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aState' - The state of the activity. Valid values: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, COMPLETED
--
-- * 'aStart' - The actual start time of the activity in ISO 8601 format.
--
-- * 'aCampaignId' - The ID of the campaign to which the activity applies.
--
-- * 'aTimezonesCompletedCount' - The total number of timezones completed.
--
-- * 'aTimezonesTotalCount' - The total number of unique timezones present in the segment.
--
-- * 'aResult' - Indicates whether the activity succeeded. Valid values: SUCCESS, FAIL
--
-- * 'aTreatmentId' - The ID of a variation of the campaign used for A/B testing.
--
-- * 'aSuccessfulEndpointCount' - The total number of endpoints to which the campaign successfully delivered messages.
--
-- * 'aEnd' - The actual time the activity was marked CANCELLED or COMPLETED. Provided in ISO 8601 format.
--
-- * 'aApplicationId' - The ID of the application to which the campaign applies.
--
-- * 'aTotalEndpointCount' - The total number of endpoints to which the campaign attempts to deliver messages.
--
-- * 'aId' - The unique activity ID.
--
-- * 'aScheduledStart' - The scheduled start time for the activity in ISO 8601 format.
activityResponse
    :: ActivityResponse
activityResponse
  = ActivityResponse'{_aState = Nothing,
                      _aStart = Nothing, _aCampaignId = Nothing,
                      _aTimezonesCompletedCount = Nothing,
                      _aTimezonesTotalCount = Nothing, _aResult = Nothing,
                      _aTreatmentId = Nothing,
                      _aSuccessfulEndpointCount = Nothing, _aEnd = Nothing,
                      _aApplicationId = Nothing,
                      _aTotalEndpointCount = Nothing, _aId = Nothing,
                      _aScheduledStart = Nothing}

-- | The state of the activity. Valid values: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, COMPLETED
aState :: Lens' ActivityResponse (Maybe Text)
aState = lens _aState (\ s a -> s{_aState = a})

-- | The actual start time of the activity in ISO 8601 format.
aStart :: Lens' ActivityResponse (Maybe Text)
aStart = lens _aStart (\ s a -> s{_aStart = a})

-- | The ID of the campaign to which the activity applies.
aCampaignId :: Lens' ActivityResponse (Maybe Text)
aCampaignId = lens _aCampaignId (\ s a -> s{_aCampaignId = a})

-- | The total number of timezones completed.
aTimezonesCompletedCount :: Lens' ActivityResponse (Maybe Int)
aTimezonesCompletedCount = lens _aTimezonesCompletedCount (\ s a -> s{_aTimezonesCompletedCount = a})

-- | The total number of unique timezones present in the segment.
aTimezonesTotalCount :: Lens' ActivityResponse (Maybe Int)
aTimezonesTotalCount = lens _aTimezonesTotalCount (\ s a -> s{_aTimezonesTotalCount = a})

-- | Indicates whether the activity succeeded. Valid values: SUCCESS, FAIL
aResult :: Lens' ActivityResponse (Maybe Text)
aResult = lens _aResult (\ s a -> s{_aResult = a})

-- | The ID of a variation of the campaign used for A/B testing.
aTreatmentId :: Lens' ActivityResponse (Maybe Text)
aTreatmentId = lens _aTreatmentId (\ s a -> s{_aTreatmentId = a})

-- | The total number of endpoints to which the campaign successfully delivered messages.
aSuccessfulEndpointCount :: Lens' ActivityResponse (Maybe Int)
aSuccessfulEndpointCount = lens _aSuccessfulEndpointCount (\ s a -> s{_aSuccessfulEndpointCount = a})

-- | The actual time the activity was marked CANCELLED or COMPLETED. Provided in ISO 8601 format.
aEnd :: Lens' ActivityResponse (Maybe Text)
aEnd = lens _aEnd (\ s a -> s{_aEnd = a})

-- | The ID of the application to which the campaign applies.
aApplicationId :: Lens' ActivityResponse (Maybe Text)
aApplicationId = lens _aApplicationId (\ s a -> s{_aApplicationId = a})

-- | The total number of endpoints to which the campaign attempts to deliver messages.
aTotalEndpointCount :: Lens' ActivityResponse (Maybe Int)
aTotalEndpointCount = lens _aTotalEndpointCount (\ s a -> s{_aTotalEndpointCount = a})

-- | The unique activity ID.
aId :: Lens' ActivityResponse (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The scheduled start time for the activity in ISO 8601 format.
aScheduledStart :: Lens' ActivityResponse (Maybe Text)
aScheduledStart = lens _aScheduledStart (\ s a -> s{_aScheduledStart = a})

instance FromJSON ActivityResponse where
        parseJSON
          = withObject "ActivityResponse"
              (\ x ->
                 ActivityResponse' <$>
                   (x .:? "State") <*> (x .:? "Start") <*>
                     (x .:? "CampaignId")
                     <*> (x .:? "TimezonesCompletedCount")
                     <*> (x .:? "TimezonesTotalCount")
                     <*> (x .:? "Result")
                     <*> (x .:? "TreatmentId")
                     <*> (x .:? "SuccessfulEndpointCount")
                     <*> (x .:? "End")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "TotalEndpointCount")
                     <*> (x .:? "Id")
                     <*> (x .:? "ScheduledStart"))

instance Hashable ActivityResponse where

instance NFData ActivityResponse where
