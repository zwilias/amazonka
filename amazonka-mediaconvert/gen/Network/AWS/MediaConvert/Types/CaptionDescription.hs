{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionDescription where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CaptionDestinationSettings
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.Prelude

-- | Description of Caption output
--
-- /See:/ 'captionDescription' smart constructor.
data CaptionDescription = CaptionDescription'{_cdCaptionSelectorName
                                              :: !(Maybe Text),
                                              _cdLanguageCode ::
                                              !(Maybe LanguageCode),
                                              _cdDestinationSettings ::
                                              !(Maybe
                                                  CaptionDestinationSettings),
                                              _cdLanguageDescription ::
                                              !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CaptionDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdCaptionSelectorName' - <N>", which denotes that the Nth Caption Selector will be used from each input.
--
-- * 'cdLanguageCode' - Indicates the language of the caption output track.
--
-- * 'cdDestinationSettings' - Undocumented member.
--
-- * 'cdLanguageDescription' - Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
captionDescription
    :: CaptionDescription
captionDescription
  = CaptionDescription'{_cdCaptionSelectorName =
                          Nothing,
                        _cdLanguageCode = Nothing,
                        _cdDestinationSettings = Nothing,
                        _cdLanguageDescription = Nothing}

-- | <N>", which denotes that the Nth Caption Selector will be used from each input.
cdCaptionSelectorName :: Lens' CaptionDescription (Maybe Text)
cdCaptionSelectorName = lens _cdCaptionSelectorName (\ s a -> s{_cdCaptionSelectorName = a})

-- | Indicates the language of the caption output track.
cdLanguageCode :: Lens' CaptionDescription (Maybe LanguageCode)
cdLanguageCode = lens _cdLanguageCode (\ s a -> s{_cdLanguageCode = a})

-- | Undocumented member.
cdDestinationSettings :: Lens' CaptionDescription (Maybe CaptionDestinationSettings)
cdDestinationSettings = lens _cdDestinationSettings (\ s a -> s{_cdDestinationSettings = a})

-- | Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
cdLanguageDescription :: Lens' CaptionDescription (Maybe Text)
cdLanguageDescription = lens _cdLanguageDescription (\ s a -> s{_cdLanguageDescription = a})

instance FromJSON CaptionDescription where
        parseJSON
          = withObject "CaptionDescription"
              (\ x ->
                 CaptionDescription' <$>
                   (x .:? "captionSelectorName") <*>
                     (x .:? "languageCode")
                     <*> (x .:? "destinationSettings")
                     <*> (x .:? "languageDescription"))

instance Hashable CaptionDescription where

instance NFData CaptionDescription where

instance ToJSON CaptionDescription where
        toJSON CaptionDescription'{..}
          = object
              (catMaybes
                 [("captionSelectorName" .=) <$>
                    _cdCaptionSelectorName,
                  ("languageCode" .=) <$> _cdLanguageCode,
                  ("destinationSettings" .=) <$>
                    _cdDestinationSettings,
                  ("languageDescription" .=) <$>
                    _cdLanguageDescription])
