{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.ProfileData
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.ProfileData where

import Network.AWS.AlexaBusiness.Types.DistanceUnit
import Network.AWS.AlexaBusiness.Types.TemperatureUnit
import Network.AWS.AlexaBusiness.Types.WakeWord
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The data of a room profile.
--
--
--
-- /See:/ 'profileData' smart constructor.
data ProfileData = ProfileData'{_pdDistanceUnit ::
                                !(Maybe DistanceUnit),
                                _pdAddress :: !(Maybe Text),
                                _pdProfileARN :: !(Maybe Text),
                                _pdWakeWord :: !(Maybe WakeWord),
                                _pdProfileName :: !(Maybe Text),
                                _pdTemperatureUnit :: !(Maybe TemperatureUnit),
                                _pdTimezone :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProfileData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdDistanceUnit' - The distance unit of a room profile.
--
-- * 'pdAddress' - The address of a room profile.
--
-- * 'pdProfileARN' - The ARN of a room profile.
--
-- * 'pdWakeWord' - The wake word of a room profile.
--
-- * 'pdProfileName' - The name of a room profile.
--
-- * 'pdTemperatureUnit' - The temperature unit of a room profile.
--
-- * 'pdTimezone' - The timezone of a room profile.
profileData
    :: ProfileData
profileData
  = ProfileData'{_pdDistanceUnit = Nothing,
                 _pdAddress = Nothing, _pdProfileARN = Nothing,
                 _pdWakeWord = Nothing, _pdProfileName = Nothing,
                 _pdTemperatureUnit = Nothing, _pdTimezone = Nothing}

-- | The distance unit of a room profile.
pdDistanceUnit :: Lens' ProfileData (Maybe DistanceUnit)
pdDistanceUnit = lens _pdDistanceUnit (\ s a -> s{_pdDistanceUnit = a})

-- | The address of a room profile.
pdAddress :: Lens' ProfileData (Maybe Text)
pdAddress = lens _pdAddress (\ s a -> s{_pdAddress = a})

-- | The ARN of a room profile.
pdProfileARN :: Lens' ProfileData (Maybe Text)
pdProfileARN = lens _pdProfileARN (\ s a -> s{_pdProfileARN = a})

-- | The wake word of a room profile.
pdWakeWord :: Lens' ProfileData (Maybe WakeWord)
pdWakeWord = lens _pdWakeWord (\ s a -> s{_pdWakeWord = a})

-- | The name of a room profile.
pdProfileName :: Lens' ProfileData (Maybe Text)
pdProfileName = lens _pdProfileName (\ s a -> s{_pdProfileName = a})

-- | The temperature unit of a room profile.
pdTemperatureUnit :: Lens' ProfileData (Maybe TemperatureUnit)
pdTemperatureUnit = lens _pdTemperatureUnit (\ s a -> s{_pdTemperatureUnit = a})

-- | The timezone of a room profile.
pdTimezone :: Lens' ProfileData (Maybe Text)
pdTimezone = lens _pdTimezone (\ s a -> s{_pdTimezone = a})

instance FromJSON ProfileData where
        parseJSON
          = withObject "ProfileData"
              (\ x ->
                 ProfileData' <$>
                   (x .:? "DistanceUnit") <*> (x .:? "Address") <*>
                     (x .:? "ProfileArn")
                     <*> (x .:? "WakeWord")
                     <*> (x .:? "ProfileName")
                     <*> (x .:? "TemperatureUnit")
                     <*> (x .:? "Timezone"))

instance Hashable ProfileData where

instance NFData ProfileData where
