{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteCampaignRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteCampaignRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.WriteTreatmentResource
import Network.AWS.Prelude

-- | Used to create a campaign.
--
-- /See:/ 'writeCampaignRequest' smart constructor.
data WriteCampaignRequest = WriteCampaignRequest'{_wcrSchedule
                                                  :: !(Maybe Schedule),
                                                  _wcrHook ::
                                                  !(Maybe CampaignHook),
                                                  _wcrTreatmentName ::
                                                  !(Maybe Text),
                                                  _wcrLimits ::
                                                  !(Maybe CampaignLimits),
                                                  _wcrIsPaused :: !(Maybe Bool),
                                                  _wcrName :: !(Maybe Text),
                                                  _wcrHoldoutPercent ::
                                                  !(Maybe Int),
                                                  _wcrTreatmentDescription ::
                                                  !(Maybe Text),
                                                  _wcrMessageConfiguration ::
                                                  !(Maybe MessageConfiguration),
                                                  _wcrDescription ::
                                                  !(Maybe Text),
                                                  _wcrSegmentId ::
                                                  !(Maybe Text),
                                                  _wcrAdditionalTreatments ::
                                                  !(Maybe
                                                      [WriteTreatmentResource]),
                                                  _wcrSegmentVersion ::
                                                  !(Maybe Int)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteCampaignRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcrSchedule' - The campaign schedule.
--
-- * 'wcrHook' - Campaign hook information.
--
-- * 'wcrTreatmentName' - The custom name of a variation of the campaign used for A/B testing.
--
-- * 'wcrLimits' - The campaign limits settings.
--
-- * 'wcrIsPaused' - Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
--
-- * 'wcrName' - The custom name of the campaign.
--
-- * 'wcrHoldoutPercent' - The allocated percentage of end users who will not receive messages from this campaign.
--
-- * 'wcrTreatmentDescription' - A custom description for the treatment.
--
-- * 'wcrMessageConfiguration' - The message configuration settings.
--
-- * 'wcrDescription' - A description of the campaign.
--
-- * 'wcrSegmentId' - The ID of the segment to which the campaign sends messages.
--
-- * 'wcrAdditionalTreatments' - Treatments that are defined in addition to the default treatment.
--
-- * 'wcrSegmentVersion' - The version of the segment to which the campaign sends messages.
writeCampaignRequest
    :: WriteCampaignRequest
writeCampaignRequest
  = WriteCampaignRequest'{_wcrSchedule = Nothing,
                          _wcrHook = Nothing, _wcrTreatmentName = Nothing,
                          _wcrLimits = Nothing, _wcrIsPaused = Nothing,
                          _wcrName = Nothing, _wcrHoldoutPercent = Nothing,
                          _wcrTreatmentDescription = Nothing,
                          _wcrMessageConfiguration = Nothing,
                          _wcrDescription = Nothing, _wcrSegmentId = Nothing,
                          _wcrAdditionalTreatments = Nothing,
                          _wcrSegmentVersion = Nothing}

-- | The campaign schedule.
wcrSchedule :: Lens' WriteCampaignRequest (Maybe Schedule)
wcrSchedule = lens _wcrSchedule (\ s a -> s{_wcrSchedule = a})

-- | Campaign hook information.
wcrHook :: Lens' WriteCampaignRequest (Maybe CampaignHook)
wcrHook = lens _wcrHook (\ s a -> s{_wcrHook = a})

-- | The custom name of a variation of the campaign used for A/B testing.
wcrTreatmentName :: Lens' WriteCampaignRequest (Maybe Text)
wcrTreatmentName = lens _wcrTreatmentName (\ s a -> s{_wcrTreatmentName = a})

-- | The campaign limits settings.
wcrLimits :: Lens' WriteCampaignRequest (Maybe CampaignLimits)
wcrLimits = lens _wcrLimits (\ s a -> s{_wcrLimits = a})

-- | Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
wcrIsPaused :: Lens' WriteCampaignRequest (Maybe Bool)
wcrIsPaused = lens _wcrIsPaused (\ s a -> s{_wcrIsPaused = a})

-- | The custom name of the campaign.
wcrName :: Lens' WriteCampaignRequest (Maybe Text)
wcrName = lens _wcrName (\ s a -> s{_wcrName = a})

-- | The allocated percentage of end users who will not receive messages from this campaign.
wcrHoldoutPercent :: Lens' WriteCampaignRequest (Maybe Int)
wcrHoldoutPercent = lens _wcrHoldoutPercent (\ s a -> s{_wcrHoldoutPercent = a})

-- | A custom description for the treatment.
wcrTreatmentDescription :: Lens' WriteCampaignRequest (Maybe Text)
wcrTreatmentDescription = lens _wcrTreatmentDescription (\ s a -> s{_wcrTreatmentDescription = a})

-- | The message configuration settings.
wcrMessageConfiguration :: Lens' WriteCampaignRequest (Maybe MessageConfiguration)
wcrMessageConfiguration = lens _wcrMessageConfiguration (\ s a -> s{_wcrMessageConfiguration = a})

-- | A description of the campaign.
wcrDescription :: Lens' WriteCampaignRequest (Maybe Text)
wcrDescription = lens _wcrDescription (\ s a -> s{_wcrDescription = a})

-- | The ID of the segment to which the campaign sends messages.
wcrSegmentId :: Lens' WriteCampaignRequest (Maybe Text)
wcrSegmentId = lens _wcrSegmentId (\ s a -> s{_wcrSegmentId = a})

-- | Treatments that are defined in addition to the default treatment.
wcrAdditionalTreatments :: Lens' WriteCampaignRequest [WriteTreatmentResource]
wcrAdditionalTreatments = lens _wcrAdditionalTreatments (\ s a -> s{_wcrAdditionalTreatments = a}) . _Default . _Coerce

-- | The version of the segment to which the campaign sends messages.
wcrSegmentVersion :: Lens' WriteCampaignRequest (Maybe Int)
wcrSegmentVersion = lens _wcrSegmentVersion (\ s a -> s{_wcrSegmentVersion = a})

instance Hashable WriteCampaignRequest where

instance NFData WriteCampaignRequest where

instance ToJSON WriteCampaignRequest where
        toJSON WriteCampaignRequest'{..}
          = object
              (catMaybes
                 [("Schedule" .=) <$> _wcrSchedule,
                  ("Hook" .=) <$> _wcrHook,
                  ("TreatmentName" .=) <$> _wcrTreatmentName,
                  ("Limits" .=) <$> _wcrLimits,
                  ("IsPaused" .=) <$> _wcrIsPaused,
                  ("Name" .=) <$> _wcrName,
                  ("HoldoutPercent" .=) <$> _wcrHoldoutPercent,
                  ("TreatmentDescription" .=) <$>
                    _wcrTreatmentDescription,
                  ("MessageConfiguration" .=) <$>
                    _wcrMessageConfiguration,
                  ("Description" .=) <$> _wcrDescription,
                  ("SegmentId" .=) <$> _wcrSegmentId,
                  ("AdditionalTreatments" .=) <$>
                    _wcrAdditionalTreatments,
                  ("SegmentVersion" .=) <$> _wcrSegmentVersion])
