{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.EmbeddedSourceSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.EmbeddedSourceSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
import Network.AWS.Prelude

-- | Settings for embedded captions Source
--
-- /See:/ 'embeddedSourceSettings' smart constructor.
data EmbeddedSourceSettings = EmbeddedSourceSettings'{_essConvert608To708
                                                      ::
                                                      !(Maybe
                                                          EmbeddedConvert608To708),
                                                      _essSource608TrackNumber
                                                      :: !(Maybe Int),
                                                      _essSource608ChannelNumber
                                                      :: !(Maybe Int)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'EmbeddedSourceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'essConvert608To708' - Undocumented member.
--
-- * 'essSource608TrackNumber' - Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'.
--
-- * 'essSource608ChannelNumber' - Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
embeddedSourceSettings
    :: EmbeddedSourceSettings
embeddedSourceSettings
  = EmbeddedSourceSettings'{_essConvert608To708 =
                              Nothing,
                            _essSource608TrackNumber = Nothing,
                            _essSource608ChannelNumber = Nothing}

-- | Undocumented member.
essConvert608To708 :: Lens' EmbeddedSourceSettings (Maybe EmbeddedConvert608To708)
essConvert608To708 = lens _essConvert608To708 (\ s a -> s{_essConvert608To708 = a})

-- | Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'.
essSource608TrackNumber :: Lens' EmbeddedSourceSettings (Maybe Int)
essSource608TrackNumber = lens _essSource608TrackNumber (\ s a -> s{_essSource608TrackNumber = a})

-- | Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
essSource608ChannelNumber :: Lens' EmbeddedSourceSettings (Maybe Int)
essSource608ChannelNumber = lens _essSource608ChannelNumber (\ s a -> s{_essSource608ChannelNumber = a})

instance FromJSON EmbeddedSourceSettings where
        parseJSON
          = withObject "EmbeddedSourceSettings"
              (\ x ->
                 EmbeddedSourceSettings' <$>
                   (x .:? "convert608To708") <*>
                     (x .:? "source608TrackNumber")
                     <*> (x .:? "source608ChannelNumber"))

instance Hashable EmbeddedSourceSettings where

instance NFData EmbeddedSourceSettings where

instance ToJSON EmbeddedSourceSettings where
        toJSON EmbeddedSourceSettings'{..}
          = object
              (catMaybes
                 [("convert608To708" .=) <$> _essConvert608To708,
                  ("source608TrackNumber" .=) <$>
                    _essSource608TrackNumber,
                  ("source608ChannelNumber" .=) <$>
                    _essSource608ChannelNumber])
