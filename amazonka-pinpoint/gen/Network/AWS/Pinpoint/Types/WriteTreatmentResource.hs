{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteTreatmentResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteTreatmentResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Prelude

-- | Used to create a campaign treatment.
--
-- /See:/ 'writeTreatmentResource' smart constructor.
data WriteTreatmentResource = WriteTreatmentResource'{_wtrSchedule
                                                      :: !(Maybe Schedule),
                                                      _wtrTreatmentName ::
                                                      !(Maybe Text),
                                                      _wtrSizePercent ::
                                                      !(Maybe Int),
                                                      _wtrTreatmentDescription
                                                      :: !(Maybe Text),
                                                      _wtrMessageConfiguration
                                                      ::
                                                      !(Maybe
                                                          MessageConfiguration)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'WriteTreatmentResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtrSchedule' - The campaign schedule.
--
-- * 'wtrTreatmentName' - The custom name of a variation of the campaign used for A/B testing.
--
-- * 'wtrSizePercent' - The allocated percentage of users for this treatment.
--
-- * 'wtrTreatmentDescription' - A custom description for the treatment.
--
-- * 'wtrMessageConfiguration' - The message configuration settings.
writeTreatmentResource
    :: WriteTreatmentResource
writeTreatmentResource
  = WriteTreatmentResource'{_wtrSchedule = Nothing,
                            _wtrTreatmentName = Nothing,
                            _wtrSizePercent = Nothing,
                            _wtrTreatmentDescription = Nothing,
                            _wtrMessageConfiguration = Nothing}

-- | The campaign schedule.
wtrSchedule :: Lens' WriteTreatmentResource (Maybe Schedule)
wtrSchedule = lens _wtrSchedule (\ s a -> s{_wtrSchedule = a})

-- | The custom name of a variation of the campaign used for A/B testing.
wtrTreatmentName :: Lens' WriteTreatmentResource (Maybe Text)
wtrTreatmentName = lens _wtrTreatmentName (\ s a -> s{_wtrTreatmentName = a})

-- | The allocated percentage of users for this treatment.
wtrSizePercent :: Lens' WriteTreatmentResource (Maybe Int)
wtrSizePercent = lens _wtrSizePercent (\ s a -> s{_wtrSizePercent = a})

-- | A custom description for the treatment.
wtrTreatmentDescription :: Lens' WriteTreatmentResource (Maybe Text)
wtrTreatmentDescription = lens _wtrTreatmentDescription (\ s a -> s{_wtrTreatmentDescription = a})

-- | The message configuration settings.
wtrMessageConfiguration :: Lens' WriteTreatmentResource (Maybe MessageConfiguration)
wtrMessageConfiguration = lens _wtrMessageConfiguration (\ s a -> s{_wtrMessageConfiguration = a})

instance Hashable WriteTreatmentResource where

instance NFData WriteTreatmentResource where

instance ToJSON WriteTreatmentResource where
        toJSON WriteTreatmentResource'{..}
          = object
              (catMaybes
                 [("Schedule" .=) <$> _wtrSchedule,
                  ("TreatmentName" .=) <$> _wtrTreatmentName,
                  ("SizePercent" .=) <$> _wtrSizePercent,
                  ("TreatmentDescription" .=) <$>
                    _wtrTreatmentDescription,
                  ("MessageConfiguration" .=) <$>
                    _wtrMessageConfiguration])
