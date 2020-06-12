{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionSourceSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionSourceSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AncillarySourceSettings
import Network.AWS.MediaConvert.Types.CaptionSourceType
import Network.AWS.MediaConvert.Types.DvbSubSourceSettings
import Network.AWS.MediaConvert.Types.EmbeddedSourceSettings
import Network.AWS.MediaConvert.Types.FileSourceSettings
import Network.AWS.MediaConvert.Types.TeletextSourceSettings
import Network.AWS.Prelude

-- | Source settings (SourceSettings) contains the group of settings for captions in the input.
--
-- /See:/ 'captionSourceSettings' smart constructor.
data CaptionSourceSettings = CaptionSourceSettings'{_cssTeletextSourceSettings
                                                    ::
                                                    !(Maybe
                                                        TeletextSourceSettings),
                                                    _cssSourceType ::
                                                    !(Maybe CaptionSourceType),
                                                    _cssFileSourceSettings ::
                                                    !(Maybe FileSourceSettings),
                                                    _cssDvbSubSourceSettings ::
                                                    !(Maybe
                                                        DvbSubSourceSettings),
                                                    _cssAncillarySourceSettings
                                                    ::
                                                    !(Maybe
                                                        AncillarySourceSettings),
                                                    _cssEmbeddedSourceSettings
                                                    ::
                                                    !(Maybe
                                                        EmbeddedSourceSettings)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'CaptionSourceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssTeletextSourceSettings' - Undocumented member.
--
-- * 'cssSourceType' - Undocumented member.
--
-- * 'cssFileSourceSettings' - Undocumented member.
--
-- * 'cssDvbSubSourceSettings' - Undocumented member.
--
-- * 'cssAncillarySourceSettings' - Undocumented member.
--
-- * 'cssEmbeddedSourceSettings' - Undocumented member.
captionSourceSettings
    :: CaptionSourceSettings
captionSourceSettings
  = CaptionSourceSettings'{_cssTeletextSourceSettings =
                             Nothing,
                           _cssSourceType = Nothing,
                           _cssFileSourceSettings = Nothing,
                           _cssDvbSubSourceSettings = Nothing,
                           _cssAncillarySourceSettings = Nothing,
                           _cssEmbeddedSourceSettings = Nothing}

-- | Undocumented member.
cssTeletextSourceSettings :: Lens' CaptionSourceSettings (Maybe TeletextSourceSettings)
cssTeletextSourceSettings = lens _cssTeletextSourceSettings (\ s a -> s{_cssTeletextSourceSettings = a})

-- | Undocumented member.
cssSourceType :: Lens' CaptionSourceSettings (Maybe CaptionSourceType)
cssSourceType = lens _cssSourceType (\ s a -> s{_cssSourceType = a})

-- | Undocumented member.
cssFileSourceSettings :: Lens' CaptionSourceSettings (Maybe FileSourceSettings)
cssFileSourceSettings = lens _cssFileSourceSettings (\ s a -> s{_cssFileSourceSettings = a})

-- | Undocumented member.
cssDvbSubSourceSettings :: Lens' CaptionSourceSettings (Maybe DvbSubSourceSettings)
cssDvbSubSourceSettings = lens _cssDvbSubSourceSettings (\ s a -> s{_cssDvbSubSourceSettings = a})

-- | Undocumented member.
cssAncillarySourceSettings :: Lens' CaptionSourceSettings (Maybe AncillarySourceSettings)
cssAncillarySourceSettings = lens _cssAncillarySourceSettings (\ s a -> s{_cssAncillarySourceSettings = a})

-- | Undocumented member.
cssEmbeddedSourceSettings :: Lens' CaptionSourceSettings (Maybe EmbeddedSourceSettings)
cssEmbeddedSourceSettings = lens _cssEmbeddedSourceSettings (\ s a -> s{_cssEmbeddedSourceSettings = a})

instance FromJSON CaptionSourceSettings where
        parseJSON
          = withObject "CaptionSourceSettings"
              (\ x ->
                 CaptionSourceSettings' <$>
                   (x .:? "teletextSourceSettings") <*>
                     (x .:? "sourceType")
                     <*> (x .:? "fileSourceSettings")
                     <*> (x .:? "dvbSubSourceSettings")
                     <*> (x .:? "ancillarySourceSettings")
                     <*> (x .:? "embeddedSourceSettings"))

instance Hashable CaptionSourceSettings where

instance NFData CaptionSourceSettings where

instance ToJSON CaptionSourceSettings where
        toJSON CaptionSourceSettings'{..}
          = object
              (catMaybes
                 [("teletextSourceSettings" .=) <$>
                    _cssTeletextSourceSettings,
                  ("sourceType" .=) <$> _cssSourceType,
                  ("fileSourceSettings" .=) <$> _cssFileSourceSettings,
                  ("dvbSubSourceSettings" .=) <$>
                    _cssDvbSubSourceSettings,
                  ("ancillarySourceSettings" .=) <$>
                    _cssAncillarySourceSettings,
                  ("embeddedSourceSettings" .=) <$>
                    _cssEmbeddedSourceSettings])
