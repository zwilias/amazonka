{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDescriptionPreset
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionDescriptionPreset where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CaptionDestinationSettings
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.Prelude

-- | Caption Description for preset
--
-- /See:/ 'captionDescriptionPreset' smart constructor.
data CaptionDescriptionPreset = CaptionDescriptionPreset'{_cdpLanguageCode
                                                          ::
                                                          !(Maybe LanguageCode),
                                                          _cdpDestinationSettings
                                                          ::
                                                          !(Maybe
                                                              CaptionDestinationSettings),
                                                          _cdpLanguageDescription
                                                          :: !(Maybe Text)}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'CaptionDescriptionPreset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpLanguageCode' - Indicates the language of the caption output track.
--
-- * 'cdpDestinationSettings' - Undocumented member.
--
-- * 'cdpLanguageDescription' - Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
captionDescriptionPreset
    :: CaptionDescriptionPreset
captionDescriptionPreset
  = CaptionDescriptionPreset'{_cdpLanguageCode =
                                Nothing,
                              _cdpDestinationSettings = Nothing,
                              _cdpLanguageDescription = Nothing}

-- | Indicates the language of the caption output track.
cdpLanguageCode :: Lens' CaptionDescriptionPreset (Maybe LanguageCode)
cdpLanguageCode = lens _cdpLanguageCode (\ s a -> s{_cdpLanguageCode = a})

-- | Undocumented member.
cdpDestinationSettings :: Lens' CaptionDescriptionPreset (Maybe CaptionDestinationSettings)
cdpDestinationSettings = lens _cdpDestinationSettings (\ s a -> s{_cdpDestinationSettings = a})

-- | Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
cdpLanguageDescription :: Lens' CaptionDescriptionPreset (Maybe Text)
cdpLanguageDescription = lens _cdpLanguageDescription (\ s a -> s{_cdpLanguageDescription = a})

instance FromJSON CaptionDescriptionPreset where
        parseJSON
          = withObject "CaptionDescriptionPreset"
              (\ x ->
                 CaptionDescriptionPreset' <$>
                   (x .:? "languageCode") <*>
                     (x .:? "destinationSettings")
                     <*> (x .:? "languageDescription"))

instance Hashable CaptionDescriptionPreset where

instance NFData CaptionDescriptionPreset where

instance ToJSON CaptionDescriptionPreset where
        toJSON CaptionDescriptionPreset'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _cdpLanguageCode,
                  ("destinationSettings" .=) <$>
                    _cdpDestinationSettings,
                  ("languageDescription" .=) <$>
                    _cdpLanguageDescription])
