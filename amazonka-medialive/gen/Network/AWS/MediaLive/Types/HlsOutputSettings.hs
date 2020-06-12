{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsOutputSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.HlsOutputSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.HlsSettings
import Network.AWS.Prelude

-- | Placeholder documentation for HlsOutputSettings
--
-- /See:/ 'hlsOutputSettings' smart constructor.
data HlsOutputSettings = HlsOutputSettings'{_hosSegmentModifier
                                            :: !(Maybe Text),
                                            _hosNameModifier :: !(Maybe Text),
                                            _hosHlsSettings :: !HlsSettings}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsOutputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hosSegmentModifier' - String concatenated to end of segment filenames.
--
-- * 'hosNameModifier' - String concatenated to the end of the destination filename. Accepts \"Format Identifiers\":#formatIdentifierParameters.
--
-- * 'hosHlsSettings' - Settings regarding the underlying stream. These settings are different for audio-only outputs.
hlsOutputSettings
    :: HlsSettings -- ^ 'hosHlsSettings'
    -> HlsOutputSettings
hlsOutputSettings pHlsSettings_
  = HlsOutputSettings'{_hosSegmentModifier = Nothing,
                       _hosNameModifier = Nothing,
                       _hosHlsSettings = pHlsSettings_}

-- | String concatenated to end of segment filenames.
hosSegmentModifier :: Lens' HlsOutputSettings (Maybe Text)
hosSegmentModifier = lens _hosSegmentModifier (\ s a -> s{_hosSegmentModifier = a})

-- | String concatenated to the end of the destination filename. Accepts \"Format Identifiers\":#formatIdentifierParameters.
hosNameModifier :: Lens' HlsOutputSettings (Maybe Text)
hosNameModifier = lens _hosNameModifier (\ s a -> s{_hosNameModifier = a})

-- | Settings regarding the underlying stream. These settings are different for audio-only outputs.
hosHlsSettings :: Lens' HlsOutputSettings HlsSettings
hosHlsSettings = lens _hosHlsSettings (\ s a -> s{_hosHlsSettings = a})

instance FromJSON HlsOutputSettings where
        parseJSON
          = withObject "HlsOutputSettings"
              (\ x ->
                 HlsOutputSettings' <$>
                   (x .:? "segmentModifier") <*> (x .:? "nameModifier")
                     <*> (x .: "hlsSettings"))

instance Hashable HlsOutputSettings where

instance NFData HlsOutputSettings where

instance ToJSON HlsOutputSettings where
        toJSON HlsOutputSettings'{..}
          = object
              (catMaybes
                 [("segmentModifier" .=) <$> _hosSegmentModifier,
                  ("nameModifier" .=) <$> _hosNameModifier,
                  Just ("hlsSettings" .= _hosHlsSettings)])
