{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignState where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignStatus
import Network.AWS.Prelude

-- | State of the Campaign
--
-- /See:/ 'campaignState' smart constructor.
newtype CampaignState = CampaignState'{_csCampaignStatus
                                       :: Maybe CampaignStatus}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCampaignStatus' - The status of the campaign, or the status of a treatment that belongs to an A/B test campaign. Valid values: SCHEDULED, EXECUTING, PENDING_NEXT_RUN, COMPLETED, PAUSED
campaignState
    :: CampaignState
campaignState
  = CampaignState'{_csCampaignStatus = Nothing}

-- | The status of the campaign, or the status of a treatment that belongs to an A/B test campaign. Valid values: SCHEDULED, EXECUTING, PENDING_NEXT_RUN, COMPLETED, PAUSED
csCampaignStatus :: Lens' CampaignState (Maybe CampaignStatus)
csCampaignStatus = lens _csCampaignStatus (\ s a -> s{_csCampaignStatus = a})

instance FromJSON CampaignState where
        parseJSON
          = withObject "CampaignState"
              (\ x -> CampaignState' <$> (x .:? "CampaignStatus"))

instance Hashable CampaignState where

instance NFData CampaignState where
