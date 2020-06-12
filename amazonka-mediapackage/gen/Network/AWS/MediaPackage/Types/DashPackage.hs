{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.DashPackage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types.DashPackage where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.DashEncryption
import Network.AWS.MediaPackage.Types.Profile
import Network.AWS.MediaPackage.Types.StreamSelection
import Network.AWS.Prelude

-- | A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
--
-- /See:/ 'dashPackage' smart constructor.
data DashPackage = DashPackage'{_dpMinBufferTimeSeconds
                                :: !(Maybe Int),
                                _dpProfile :: !(Maybe Profile),
                                _dpSegmentDurationSeconds :: !(Maybe Int),
                                _dpStreamSelection :: !(Maybe StreamSelection),
                                _dpEncryption :: !(Maybe DashEncryption),
                                _dpMinUpdatePeriodSeconds :: !(Maybe Int),
                                _dpSuggestedPresentationDelaySeconds ::
                                !(Maybe Int),
                                _dpManifestWindowSeconds :: !(Maybe Int)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DashPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpMinBufferTimeSeconds' - Minimum duration (in seconds) that a player will buffer media before starting the presentation.
--
-- * 'dpProfile' - The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
--
-- * 'dpSegmentDurationSeconds' - Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
--
-- * 'dpStreamSelection' - Undocumented member.
--
-- * 'dpEncryption' - Undocumented member.
--
-- * 'dpMinUpdatePeriodSeconds' - Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
--
-- * 'dpSuggestedPresentationDelaySeconds' - Duration (in seconds) to delay live content before presentation.
--
-- * 'dpManifestWindowSeconds' - Time window (in seconds) contained in each manifest.
dashPackage
    :: DashPackage
dashPackage
  = DashPackage'{_dpMinBufferTimeSeconds = Nothing,
                 _dpProfile = Nothing,
                 _dpSegmentDurationSeconds = Nothing,
                 _dpStreamSelection = Nothing,
                 _dpEncryption = Nothing,
                 _dpMinUpdatePeriodSeconds = Nothing,
                 _dpSuggestedPresentationDelaySeconds = Nothing,
                 _dpManifestWindowSeconds = Nothing}

-- | Minimum duration (in seconds) that a player will buffer media before starting the presentation.
dpMinBufferTimeSeconds :: Lens' DashPackage (Maybe Int)
dpMinBufferTimeSeconds = lens _dpMinBufferTimeSeconds (\ s a -> s{_dpMinBufferTimeSeconds = a})

-- | The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
dpProfile :: Lens' DashPackage (Maybe Profile)
dpProfile = lens _dpProfile (\ s a -> s{_dpProfile = a})

-- | Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
dpSegmentDurationSeconds :: Lens' DashPackage (Maybe Int)
dpSegmentDurationSeconds = lens _dpSegmentDurationSeconds (\ s a -> s{_dpSegmentDurationSeconds = a})

-- | Undocumented member.
dpStreamSelection :: Lens' DashPackage (Maybe StreamSelection)
dpStreamSelection = lens _dpStreamSelection (\ s a -> s{_dpStreamSelection = a})

-- | Undocumented member.
dpEncryption :: Lens' DashPackage (Maybe DashEncryption)
dpEncryption = lens _dpEncryption (\ s a -> s{_dpEncryption = a})

-- | Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
dpMinUpdatePeriodSeconds :: Lens' DashPackage (Maybe Int)
dpMinUpdatePeriodSeconds = lens _dpMinUpdatePeriodSeconds (\ s a -> s{_dpMinUpdatePeriodSeconds = a})

-- | Duration (in seconds) to delay live content before presentation.
dpSuggestedPresentationDelaySeconds :: Lens' DashPackage (Maybe Int)
dpSuggestedPresentationDelaySeconds = lens _dpSuggestedPresentationDelaySeconds (\ s a -> s{_dpSuggestedPresentationDelaySeconds = a})

-- | Time window (in seconds) contained in each manifest.
dpManifestWindowSeconds :: Lens' DashPackage (Maybe Int)
dpManifestWindowSeconds = lens _dpManifestWindowSeconds (\ s a -> s{_dpManifestWindowSeconds = a})

instance FromJSON DashPackage where
        parseJSON
          = withObject "DashPackage"
              (\ x ->
                 DashPackage' <$>
                   (x .:? "minBufferTimeSeconds") <*> (x .:? "profile")
                     <*> (x .:? "segmentDurationSeconds")
                     <*> (x .:? "streamSelection")
                     <*> (x .:? "encryption")
                     <*> (x .:? "minUpdatePeriodSeconds")
                     <*> (x .:? "suggestedPresentationDelaySeconds")
                     <*> (x .:? "manifestWindowSeconds"))

instance Hashable DashPackage where

instance NFData DashPackage where

instance ToJSON DashPackage where
        toJSON DashPackage'{..}
          = object
              (catMaybes
                 [("minBufferTimeSeconds" .=) <$>
                    _dpMinBufferTimeSeconds,
                  ("profile" .=) <$> _dpProfile,
                  ("segmentDurationSeconds" .=) <$>
                    _dpSegmentDurationSeconds,
                  ("streamSelection" .=) <$> _dpStreamSelection,
                  ("encryption" .=) <$> _dpEncryption,
                  ("minUpdatePeriodSeconds" .=) <$>
                    _dpMinUpdatePeriodSeconds,
                  ("suggestedPresentationDelaySeconds" .=) <$>
                    _dpSuggestedPresentationDelaySeconds,
                  ("manifestWindowSeconds" .=) <$>
                    _dpManifestWindowSeconds])
