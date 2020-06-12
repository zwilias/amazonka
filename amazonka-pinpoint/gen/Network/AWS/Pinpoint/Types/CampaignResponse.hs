{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Prelude

-- | Campaign definition
--
-- /See:/ 'campaignResponse' smart constructor.
data CampaignResponse = CampaignResponse'{_cState ::
                                          !(Maybe CampaignState),
                                          _cLastModifiedDate :: !(Maybe Text),
                                          _cSchedule :: !(Maybe Schedule),
                                          _cHook :: !(Maybe CampaignHook),
                                          _cTreatmentName :: !(Maybe Text),
                                          _cLimits :: !(Maybe CampaignLimits),
                                          _cIsPaused :: !(Maybe Bool),
                                          _cDefaultState ::
                                          !(Maybe CampaignState),
                                          _cApplicationId :: !(Maybe Text),
                                          _cName :: !(Maybe Text),
                                          _cVersion :: !(Maybe Int),
                                          _cHoldoutPercent :: !(Maybe Int),
                                          _cTreatmentDescription ::
                                          !(Maybe Text),
                                          _cId :: !(Maybe Text),
                                          _cCreationDate :: !(Maybe Text),
                                          _cMessageConfiguration ::
                                          !(Maybe MessageConfiguration),
                                          _cDescription :: !(Maybe Text),
                                          _cSegmentId :: !(Maybe Text),
                                          _cAdditionalTreatments ::
                                          !(Maybe [TreatmentResource]),
                                          _cSegmentVersion :: !(Maybe Int)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cState' - The campaign status. An A/B test campaign will have a status of COMPLETED only when all treatments have a status of COMPLETED.
--
-- * 'cLastModifiedDate' - The date the campaign was last updated in ISO 8601 format.	
--
-- * 'cSchedule' - The campaign schedule.
--
-- * 'cHook' - Campaign hook information.
--
-- * 'cTreatmentName' - The custom name of a variation of the campaign used for A/B testing.
--
-- * 'cLimits' - The campaign limits settings.
--
-- * 'cIsPaused' - Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
--
-- * 'cDefaultState' - The status of the campaign's default treatment. Only present for A/B test campaigns.
--
-- * 'cApplicationId' - The ID of the application to which the campaign applies.
--
-- * 'cName' - The custom name of the campaign.
--
-- * 'cVersion' - The campaign version number.
--
-- * 'cHoldoutPercent' - The allocated percentage of end users who will not receive messages from this campaign.
--
-- * 'cTreatmentDescription' - A custom description for the treatment.
--
-- * 'cId' - The unique campaign ID.
--
-- * 'cCreationDate' - The date the campaign was created in ISO 8601 format.
--
-- * 'cMessageConfiguration' - The message configuration settings.
--
-- * 'cDescription' - A description of the campaign.
--
-- * 'cSegmentId' - The ID of the segment to which the campaign sends messages.
--
-- * 'cAdditionalTreatments' - Treatments that are defined in addition to the default treatment.
--
-- * 'cSegmentVersion' - The version of the segment to which the campaign sends messages.
campaignResponse
    :: CampaignResponse
campaignResponse
  = CampaignResponse'{_cState = Nothing,
                      _cLastModifiedDate = Nothing, _cSchedule = Nothing,
                      _cHook = Nothing, _cTreatmentName = Nothing,
                      _cLimits = Nothing, _cIsPaused = Nothing,
                      _cDefaultState = Nothing, _cApplicationId = Nothing,
                      _cName = Nothing, _cVersion = Nothing,
                      _cHoldoutPercent = Nothing,
                      _cTreatmentDescription = Nothing, _cId = Nothing,
                      _cCreationDate = Nothing,
                      _cMessageConfiguration = Nothing,
                      _cDescription = Nothing, _cSegmentId = Nothing,
                      _cAdditionalTreatments = Nothing,
                      _cSegmentVersion = Nothing}

-- | The campaign status. An A/B test campaign will have a status of COMPLETED only when all treatments have a status of COMPLETED.
cState :: Lens' CampaignResponse (Maybe CampaignState)
cState = lens _cState (\ s a -> s{_cState = a})

-- | The date the campaign was last updated in ISO 8601 format.	
cLastModifiedDate :: Lens' CampaignResponse (Maybe Text)
cLastModifiedDate = lens _cLastModifiedDate (\ s a -> s{_cLastModifiedDate = a})

-- | The campaign schedule.
cSchedule :: Lens' CampaignResponse (Maybe Schedule)
cSchedule = lens _cSchedule (\ s a -> s{_cSchedule = a})

-- | Campaign hook information.
cHook :: Lens' CampaignResponse (Maybe CampaignHook)
cHook = lens _cHook (\ s a -> s{_cHook = a})

-- | The custom name of a variation of the campaign used for A/B testing.
cTreatmentName :: Lens' CampaignResponse (Maybe Text)
cTreatmentName = lens _cTreatmentName (\ s a -> s{_cTreatmentName = a})

-- | The campaign limits settings.
cLimits :: Lens' CampaignResponse (Maybe CampaignLimits)
cLimits = lens _cLimits (\ s a -> s{_cLimits = a})

-- | Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
cIsPaused :: Lens' CampaignResponse (Maybe Bool)
cIsPaused = lens _cIsPaused (\ s a -> s{_cIsPaused = a})

-- | The status of the campaign's default treatment. Only present for A/B test campaigns.
cDefaultState :: Lens' CampaignResponse (Maybe CampaignState)
cDefaultState = lens _cDefaultState (\ s a -> s{_cDefaultState = a})

-- | The ID of the application to which the campaign applies.
cApplicationId :: Lens' CampaignResponse (Maybe Text)
cApplicationId = lens _cApplicationId (\ s a -> s{_cApplicationId = a})

-- | The custom name of the campaign.
cName :: Lens' CampaignResponse (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The campaign version number.
cVersion :: Lens' CampaignResponse (Maybe Int)
cVersion = lens _cVersion (\ s a -> s{_cVersion = a})

-- | The allocated percentage of end users who will not receive messages from this campaign.
cHoldoutPercent :: Lens' CampaignResponse (Maybe Int)
cHoldoutPercent = lens _cHoldoutPercent (\ s a -> s{_cHoldoutPercent = a})

-- | A custom description for the treatment.
cTreatmentDescription :: Lens' CampaignResponse (Maybe Text)
cTreatmentDescription = lens _cTreatmentDescription (\ s a -> s{_cTreatmentDescription = a})

-- | The unique campaign ID.
cId :: Lens' CampaignResponse (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The date the campaign was created in ISO 8601 format.
cCreationDate :: Lens' CampaignResponse (Maybe Text)
cCreationDate = lens _cCreationDate (\ s a -> s{_cCreationDate = a})

-- | The message configuration settings.
cMessageConfiguration :: Lens' CampaignResponse (Maybe MessageConfiguration)
cMessageConfiguration = lens _cMessageConfiguration (\ s a -> s{_cMessageConfiguration = a})

-- | A description of the campaign.
cDescription :: Lens' CampaignResponse (Maybe Text)
cDescription = lens _cDescription (\ s a -> s{_cDescription = a})

-- | The ID of the segment to which the campaign sends messages.
cSegmentId :: Lens' CampaignResponse (Maybe Text)
cSegmentId = lens _cSegmentId (\ s a -> s{_cSegmentId = a})

-- | Treatments that are defined in addition to the default treatment.
cAdditionalTreatments :: Lens' CampaignResponse [TreatmentResource]
cAdditionalTreatments = lens _cAdditionalTreatments (\ s a -> s{_cAdditionalTreatments = a}) . _Default . _Coerce

-- | The version of the segment to which the campaign sends messages.
cSegmentVersion :: Lens' CampaignResponse (Maybe Int)
cSegmentVersion = lens _cSegmentVersion (\ s a -> s{_cSegmentVersion = a})

instance FromJSON CampaignResponse where
        parseJSON
          = withObject "CampaignResponse"
              (\ x ->
                 CampaignResponse' <$>
                   (x .:? "State") <*> (x .:? "LastModifiedDate") <*>
                     (x .:? "Schedule")
                     <*> (x .:? "Hook")
                     <*> (x .:? "TreatmentName")
                     <*> (x .:? "Limits")
                     <*> (x .:? "IsPaused")
                     <*> (x .:? "DefaultState")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Name")
                     <*> (x .:? "Version")
                     <*> (x .:? "HoldoutPercent")
                     <*> (x .:? "TreatmentDescription")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "MessageConfiguration")
                     <*> (x .:? "Description")
                     <*> (x .:? "SegmentId")
                     <*> (x .:? "AdditionalTreatments" .!= mempty)
                     <*> (x .:? "SegmentVersion"))

instance Hashable CampaignResponse where

instance NFData CampaignResponse where
