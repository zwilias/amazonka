{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignLimits
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignLimits where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Campaign Limits are used to limit the number of messages that can be sent to a user.
--
-- /See:/ 'campaignLimits' smart constructor.
data CampaignLimits = CampaignLimits'{_clMessagesPerSecond
                                      :: !(Maybe Int),
                                      _clDaily :: !(Maybe Int),
                                      _clTotal :: !(Maybe Int),
                                      _clMaximumDuration :: !(Maybe Int)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clMessagesPerSecond' - The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000.
--
-- * 'clDaily' - The maximum number of messages that the campaign can send daily.
--
-- * 'clTotal' - The maximum total number of messages that the campaign can send.
--
-- * 'clMaximumDuration' - The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60.
campaignLimits
    :: CampaignLimits
campaignLimits
  = CampaignLimits'{_clMessagesPerSecond = Nothing,
                    _clDaily = Nothing, _clTotal = Nothing,
                    _clMaximumDuration = Nothing}

-- | The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000.
clMessagesPerSecond :: Lens' CampaignLimits (Maybe Int)
clMessagesPerSecond = lens _clMessagesPerSecond (\ s a -> s{_clMessagesPerSecond = a})

-- | The maximum number of messages that the campaign can send daily.
clDaily :: Lens' CampaignLimits (Maybe Int)
clDaily = lens _clDaily (\ s a -> s{_clDaily = a})

-- | The maximum total number of messages that the campaign can send.
clTotal :: Lens' CampaignLimits (Maybe Int)
clTotal = lens _clTotal (\ s a -> s{_clTotal = a})

-- | The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60.
clMaximumDuration :: Lens' CampaignLimits (Maybe Int)
clMaximumDuration = lens _clMaximumDuration (\ s a -> s{_clMaximumDuration = a})

instance FromJSON CampaignLimits where
        parseJSON
          = withObject "CampaignLimits"
              (\ x ->
                 CampaignLimits' <$>
                   (x .:? "MessagesPerSecond") <*> (x .:? "Daily") <*>
                     (x .:? "Total")
                     <*> (x .:? "MaximumDuration"))

instance Hashable CampaignLimits where

instance NFData CampaignLimits where

instance ToJSON CampaignLimits where
        toJSON CampaignLimits'{..}
          = object
              (catMaybes
                 [("MessagesPerSecond" .=) <$> _clMessagesPerSecond,
                  ("Daily" .=) <$> _clDaily, ("Total" .=) <$> _clTotal,
                  ("MaximumDuration" .=) <$> _clMaximumDuration])
