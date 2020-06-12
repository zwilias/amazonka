{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Schedule
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.Schedule where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Frequency
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Prelude

-- | Shcedule that defines when a campaign is run.
--
-- /See:/ 'schedule' smart constructor.
data Schedule = Schedule'{_sFrequency ::
                          !(Maybe Frequency),
                          _sStartTime :: !(Maybe Text),
                          _sQuietTime :: !(Maybe QuietTime),
                          _sIsLocalTime :: !(Maybe Bool),
                          _sEndTime :: !(Maybe Text),
                          _sTimezone :: !(Maybe Text)}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sFrequency' - How often the campaign delivers messages. Valid values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
--
-- * 'sStartTime' - The scheduled time that the campaign begins in ISO 8601 format.
--
-- * 'sQuietTime' - The time during which the campaign sends no messages.
--
-- * 'sIsLocalTime' - Indicates whether the campaign schedule takes effect according to each user's local time.
--
-- * 'sEndTime' - The scheduled time that the campaign ends in ISO 8601 format.
--
-- * 'sTimezone' - The starting UTC offset for the schedule if the value for isLocalTime is true Valid values:  UTC UTC+01 UTC+02 UTC+03 UTC+03:30 UTC+04 UTC+04:30 UTC+05 UTC+05:30 UTC+05:45 UTC+06 UTC+06:30 UTC+07 UTC+08 UTC+09 UTC+09:30 UTC+10 UTC+10:30 UTC+11 UTC+12 UTC+13 UTC-02 UTC-03 UTC-04 UTC-05 UTC-06 UTC-07 UTC-08 UTC-09 UTC-10 UTC-11
schedule
    :: Schedule
schedule
  = Schedule'{_sFrequency = Nothing,
              _sStartTime = Nothing, _sQuietTime = Nothing,
              _sIsLocalTime = Nothing, _sEndTime = Nothing,
              _sTimezone = Nothing}

-- | How often the campaign delivers messages. Valid values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
sFrequency :: Lens' Schedule (Maybe Frequency)
sFrequency = lens _sFrequency (\ s a -> s{_sFrequency = a})

-- | The scheduled time that the campaign begins in ISO 8601 format.
sStartTime :: Lens' Schedule (Maybe Text)
sStartTime = lens _sStartTime (\ s a -> s{_sStartTime = a})

-- | The time during which the campaign sends no messages.
sQuietTime :: Lens' Schedule (Maybe QuietTime)
sQuietTime = lens _sQuietTime (\ s a -> s{_sQuietTime = a})

-- | Indicates whether the campaign schedule takes effect according to each user's local time.
sIsLocalTime :: Lens' Schedule (Maybe Bool)
sIsLocalTime = lens _sIsLocalTime (\ s a -> s{_sIsLocalTime = a})

-- | The scheduled time that the campaign ends in ISO 8601 format.
sEndTime :: Lens' Schedule (Maybe Text)
sEndTime = lens _sEndTime (\ s a -> s{_sEndTime = a})

-- | The starting UTC offset for the schedule if the value for isLocalTime is true Valid values:  UTC UTC+01 UTC+02 UTC+03 UTC+03:30 UTC+04 UTC+04:30 UTC+05 UTC+05:30 UTC+05:45 UTC+06 UTC+06:30 UTC+07 UTC+08 UTC+09 UTC+09:30 UTC+10 UTC+10:30 UTC+11 UTC+12 UTC+13 UTC-02 UTC-03 UTC-04 UTC-05 UTC-06 UTC-07 UTC-08 UTC-09 UTC-10 UTC-11
sTimezone :: Lens' Schedule (Maybe Text)
sTimezone = lens _sTimezone (\ s a -> s{_sTimezone = a})

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ x ->
                 Schedule' <$>
                   (x .:? "Frequency") <*> (x .:? "StartTime") <*>
                     (x .:? "QuietTime")
                     <*> (x .:? "IsLocalTime")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "Timezone"))

instance Hashable Schedule where

instance NFData Schedule where

instance ToJSON Schedule where
        toJSON Schedule'{..}
          = object
              (catMaybes
                 [("Frequency" .=) <$> _sFrequency,
                  ("StartTime" .=) <$> _sStartTime,
                  ("QuietTime" .=) <$> _sQuietTime,
                  ("IsLocalTime" .=) <$> _sIsLocalTime,
                  ("EndTime" .=) <$> _sEndTime,
                  ("Timezone" .=) <$> _sTimezone])
