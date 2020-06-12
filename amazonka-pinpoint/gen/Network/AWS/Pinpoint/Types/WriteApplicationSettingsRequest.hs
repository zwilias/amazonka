{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Prelude

-- | Creating application setting request
--
-- /See:/ 'writeApplicationSettingsRequest' smart constructor.
data WriteApplicationSettingsRequest = WriteApplicationSettingsRequest'{_wasrLimits
                                                                        ::
                                                                        !(Maybe
                                                                            CampaignLimits),
                                                                        _wasrQuietTime
                                                                        ::
                                                                        !(Maybe
                                                                            QuietTime),
                                                                        _wasrCampaignHook
                                                                        ::
                                                                        !(Maybe
                                                                            CampaignHook)}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'WriteApplicationSettingsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wasrLimits' - The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
--
-- * 'wasrQuietTime' - The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
--
-- * 'wasrCampaignHook' - Default campaign hook information.
writeApplicationSettingsRequest
    :: WriteApplicationSettingsRequest
writeApplicationSettingsRequest
  = WriteApplicationSettingsRequest'{_wasrLimits =
                                       Nothing,
                                     _wasrQuietTime = Nothing,
                                     _wasrCampaignHook = Nothing}

-- | The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
wasrLimits :: Lens' WriteApplicationSettingsRequest (Maybe CampaignLimits)
wasrLimits = lens _wasrLimits (\ s a -> s{_wasrLimits = a})

-- | The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
wasrQuietTime :: Lens' WriteApplicationSettingsRequest (Maybe QuietTime)
wasrQuietTime = lens _wasrQuietTime (\ s a -> s{_wasrQuietTime = a})

-- | Default campaign hook information.
wasrCampaignHook :: Lens' WriteApplicationSettingsRequest (Maybe CampaignHook)
wasrCampaignHook = lens _wasrCampaignHook (\ s a -> s{_wasrCampaignHook = a})

instance Hashable WriteApplicationSettingsRequest
         where

instance NFData WriteApplicationSettingsRequest where

instance ToJSON WriteApplicationSettingsRequest where
        toJSON WriteApplicationSettingsRequest'{..}
          = object
              (catMaybes
                 [("Limits" .=) <$> _wasrLimits,
                  ("QuietTime" .=) <$> _wasrQuietTime,
                  ("CampaignHook" .=) <$> _wasrCampaignHook])
