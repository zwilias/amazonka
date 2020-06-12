{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.TreatmentResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.TreatmentResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Prelude

-- | Treatment resource
--
-- /See:/ 'treatmentResource' smart constructor.
data TreatmentResource = TreatmentResource'{_trState
                                            :: !(Maybe CampaignState),
                                            _trSchedule :: !(Maybe Schedule),
                                            _trTreatmentName :: !(Maybe Text),
                                            _trSizePercent :: !(Maybe Int),
                                            _trTreatmentDescription ::
                                            !(Maybe Text),
                                            _trId :: !(Maybe Text),
                                            _trMessageConfiguration ::
                                            !(Maybe MessageConfiguration)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TreatmentResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trState' - The treatment status.
--
-- * 'trSchedule' - The campaign schedule.
--
-- * 'trTreatmentName' - The custom name of a variation of the campaign used for A/B testing.
--
-- * 'trSizePercent' - The allocated percentage of users for this treatment.
--
-- * 'trTreatmentDescription' - A custom description for the treatment.
--
-- * 'trId' - The unique treatment ID.
--
-- * 'trMessageConfiguration' - The message configuration settings.
treatmentResource
    :: TreatmentResource
treatmentResource
  = TreatmentResource'{_trState = Nothing,
                       _trSchedule = Nothing, _trTreatmentName = Nothing,
                       _trSizePercent = Nothing,
                       _trTreatmentDescription = Nothing, _trId = Nothing,
                       _trMessageConfiguration = Nothing}

-- | The treatment status.
trState :: Lens' TreatmentResource (Maybe CampaignState)
trState = lens _trState (\ s a -> s{_trState = a})

-- | The campaign schedule.
trSchedule :: Lens' TreatmentResource (Maybe Schedule)
trSchedule = lens _trSchedule (\ s a -> s{_trSchedule = a})

-- | The custom name of a variation of the campaign used for A/B testing.
trTreatmentName :: Lens' TreatmentResource (Maybe Text)
trTreatmentName = lens _trTreatmentName (\ s a -> s{_trTreatmentName = a})

-- | The allocated percentage of users for this treatment.
trSizePercent :: Lens' TreatmentResource (Maybe Int)
trSizePercent = lens _trSizePercent (\ s a -> s{_trSizePercent = a})

-- | A custom description for the treatment.
trTreatmentDescription :: Lens' TreatmentResource (Maybe Text)
trTreatmentDescription = lens _trTreatmentDescription (\ s a -> s{_trTreatmentDescription = a})

-- | The unique treatment ID.
trId :: Lens' TreatmentResource (Maybe Text)
trId = lens _trId (\ s a -> s{_trId = a})

-- | The message configuration settings.
trMessageConfiguration :: Lens' TreatmentResource (Maybe MessageConfiguration)
trMessageConfiguration = lens _trMessageConfiguration (\ s a -> s{_trMessageConfiguration = a})

instance FromJSON TreatmentResource where
        parseJSON
          = withObject "TreatmentResource"
              (\ x ->
                 TreatmentResource' <$>
                   (x .:? "State") <*> (x .:? "Schedule") <*>
                     (x .:? "TreatmentName")
                     <*> (x .:? "SizePercent")
                     <*> (x .:? "TreatmentDescription")
                     <*> (x .:? "Id")
                     <*> (x .:? "MessageConfiguration"))

instance Hashable TreatmentResource where

instance NFData TreatmentResource where
