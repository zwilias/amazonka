{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationSettingsResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ApplicationSettingsResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Prelude

-- | Application settings.
--
-- /See:/ 'applicationSettingsResource' smart constructor.
data ApplicationSettingsResource = ApplicationSettingsResource'{_asrLastModifiedDate
                                                                ::
                                                                !(Maybe Text),
                                                                _asrLimits ::
                                                                !(Maybe
                                                                    CampaignLimits),
                                                                _asrQuietTime ::
                                                                !(Maybe
                                                                    QuietTime),
                                                                _asrApplicationId
                                                                ::
                                                                !(Maybe Text),
                                                                _asrCampaignHook
                                                                ::
                                                                !(Maybe
                                                                    CampaignHook)}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'ApplicationSettingsResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrLastModifiedDate' - The date that the settings were last updated in ISO 8601 format.
--
-- * 'asrLimits' - The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
--
-- * 'asrQuietTime' - The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
--
-- * 'asrApplicationId' - The unique ID for the application.
--
-- * 'asrCampaignHook' - Default campaign hook.
applicationSettingsResource
    :: ApplicationSettingsResource
applicationSettingsResource
  = ApplicationSettingsResource'{_asrLastModifiedDate =
                                   Nothing,
                                 _asrLimits = Nothing, _asrQuietTime = Nothing,
                                 _asrApplicationId = Nothing,
                                 _asrCampaignHook = Nothing}

-- | The date that the settings were last updated in ISO 8601 format.
asrLastModifiedDate :: Lens' ApplicationSettingsResource (Maybe Text)
asrLastModifiedDate = lens _asrLastModifiedDate (\ s a -> s{_asrLastModifiedDate = a})

-- | The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
asrLimits :: Lens' ApplicationSettingsResource (Maybe CampaignLimits)
asrLimits = lens _asrLimits (\ s a -> s{_asrLimits = a})

-- | The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
asrQuietTime :: Lens' ApplicationSettingsResource (Maybe QuietTime)
asrQuietTime = lens _asrQuietTime (\ s a -> s{_asrQuietTime = a})

-- | The unique ID for the application.
asrApplicationId :: Lens' ApplicationSettingsResource (Maybe Text)
asrApplicationId = lens _asrApplicationId (\ s a -> s{_asrApplicationId = a})

-- | Default campaign hook.
asrCampaignHook :: Lens' ApplicationSettingsResource (Maybe CampaignHook)
asrCampaignHook = lens _asrCampaignHook (\ s a -> s{_asrCampaignHook = a})

instance FromJSON ApplicationSettingsResource where
        parseJSON
          = withObject "ApplicationSettingsResource"
              (\ x ->
                 ApplicationSettingsResource' <$>
                   (x .:? "LastModifiedDate") <*> (x .:? "Limits") <*>
                     (x .:? "QuietTime")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "CampaignHook"))

instance Hashable ApplicationSettingsResource where

instance NFData ApplicationSettingsResource where
