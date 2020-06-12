{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubDestinationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DvbSubDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DvbSubtitleAlignment
import Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
import Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
import Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
import Network.AWS.Prelude

-- | DVB-Sub Destination Settings
--
-- /See:/ 'dvbSubDestinationSettings' smart constructor.
data DvbSubDestinationSettings = DvbSubDestinationSettings'{_dsdsBackgroundOpacity
                                                            :: !(Maybe Int),
                                                            _dsdsFontOpacity ::
                                                            !(Maybe Int),
                                                            _dsdsShadowYOffset
                                                            :: !(Maybe Int),
                                                            _dsdsFontResolution
                                                            :: !(Maybe Int),
                                                            _dsdsYPosition ::
                                                            !(Maybe Int),
                                                            _dsdsBackgroundColor
                                                            ::
                                                            !(Maybe
                                                                DvbSubtitleBackgroundColor),
                                                            _dsdsShadowXOffset
                                                            :: !(Maybe Int),
                                                            _dsdsFontSize ::
                                                            !(Maybe Int),
                                                            _dsdsXPosition ::
                                                            !(Maybe Int),
                                                            _dsdsTeletextSpacing
                                                            ::
                                                            !(Maybe
                                                                DvbSubtitleTeletextSpacing),
                                                            _dsdsAlignment ::
                                                            !(Maybe
                                                                DvbSubtitleAlignment),
                                                            _dsdsShadowOpacity
                                                            :: !(Maybe Int),
                                                            _dsdsOutlineColor ::
                                                            !(Maybe
                                                                DvbSubtitleOutlineColor),
                                                            _dsdsOutlineSize ::
                                                            !(Maybe Int),
                                                            _dsdsShadowColor ::
                                                            !(Maybe
                                                                DvbSubtitleShadowColor),
                                                            _dsdsFontColor ::
                                                            !(Maybe
                                                                DvbSubtitleFontColor)}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'DvbSubDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdsBackgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsYPosition' - Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsBackgroundColor' - Undocumented member.
--
-- * 'dsdsShadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontSize' - A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsXPosition' - Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsTeletextSpacing' - Undocumented member.
--
-- * 'dsdsAlignment' - Undocumented member.
--
-- * 'dsdsShadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsOutlineColor' - Undocumented member.
--
-- * 'dsdsOutlineSize' - Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowColor' - Undocumented member.
--
-- * 'dsdsFontColor' - Undocumented member.
dvbSubDestinationSettings
    :: DvbSubDestinationSettings
dvbSubDestinationSettings
  = DvbSubDestinationSettings'{_dsdsBackgroundOpacity =
                                 Nothing,
                               _dsdsFontOpacity = Nothing,
                               _dsdsShadowYOffset = Nothing,
                               _dsdsFontResolution = Nothing,
                               _dsdsYPosition = Nothing,
                               _dsdsBackgroundColor = Nothing,
                               _dsdsShadowXOffset = Nothing,
                               _dsdsFontSize = Nothing,
                               _dsdsXPosition = Nothing,
                               _dsdsTeletextSpacing = Nothing,
                               _dsdsAlignment = Nothing,
                               _dsdsShadowOpacity = Nothing,
                               _dsdsOutlineColor = Nothing,
                               _dsdsOutlineSize = Nothing,
                               _dsdsShadowColor = Nothing,
                               _dsdsFontColor = Nothing}

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
dsdsBackgroundOpacity :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsBackgroundOpacity = lens _dsdsBackgroundOpacity (\ s a -> s{_dsdsBackgroundOpacity = a})

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
dsdsFontOpacity :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsFontOpacity = lens _dsdsFontOpacity (\ s a -> s{_dsdsFontOpacity = a})

-- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
dsdsShadowYOffset :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsShadowYOffset = lens _dsdsShadowYOffset (\ s a -> s{_dsdsShadowYOffset = a})

-- | Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
dsdsFontResolution :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsFontResolution = lens _dsdsFontResolution (\ s a -> s{_dsdsFontResolution = a})

-- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
dsdsYPosition :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsYPosition = lens _dsdsYPosition (\ s a -> s{_dsdsYPosition = a})

-- | Undocumented member.
dsdsBackgroundColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleBackgroundColor)
dsdsBackgroundColor = lens _dsdsBackgroundColor (\ s a -> s{_dsdsBackgroundColor = a})

-- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
dsdsShadowXOffset :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsShadowXOffset = lens _dsdsShadowXOffset (\ s a -> s{_dsdsShadowXOffset = a})

-- | A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
dsdsFontSize :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsFontSize = lens _dsdsFontSize (\ s a -> s{_dsdsFontSize = a})

-- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
dsdsXPosition :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsXPosition = lens _dsdsXPosition (\ s a -> s{_dsdsXPosition = a})

-- | Undocumented member.
dsdsTeletextSpacing :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleTeletextSpacing)
dsdsTeletextSpacing = lens _dsdsTeletextSpacing (\ s a -> s{_dsdsTeletextSpacing = a})

-- | Undocumented member.
dsdsAlignment :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleAlignment)
dsdsAlignment = lens _dsdsAlignment (\ s a -> s{_dsdsAlignment = a})

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
dsdsShadowOpacity :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsShadowOpacity = lens _dsdsShadowOpacity (\ s a -> s{_dsdsShadowOpacity = a})

-- | Undocumented member.
dsdsOutlineColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleOutlineColor)
dsdsOutlineColor = lens _dsdsOutlineColor (\ s a -> s{_dsdsOutlineColor = a})

-- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
dsdsOutlineSize :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsOutlineSize = lens _dsdsOutlineSize (\ s a -> s{_dsdsOutlineSize = a})

-- | Undocumented member.
dsdsShadowColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleShadowColor)
dsdsShadowColor = lens _dsdsShadowColor (\ s a -> s{_dsdsShadowColor = a})

-- | Undocumented member.
dsdsFontColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubtitleFontColor)
dsdsFontColor = lens _dsdsFontColor (\ s a -> s{_dsdsFontColor = a})

instance FromJSON DvbSubDestinationSettings where
        parseJSON
          = withObject "DvbSubDestinationSettings"
              (\ x ->
                 DvbSubDestinationSettings' <$>
                   (x .:? "backgroundOpacity") <*> (x .:? "fontOpacity")
                     <*> (x .:? "shadowYOffset")
                     <*> (x .:? "fontResolution")
                     <*> (x .:? "yPosition")
                     <*> (x .:? "backgroundColor")
                     <*> (x .:? "shadowXOffset")
                     <*> (x .:? "fontSize")
                     <*> (x .:? "xPosition")
                     <*> (x .:? "teletextSpacing")
                     <*> (x .:? "alignment")
                     <*> (x .:? "shadowOpacity")
                     <*> (x .:? "outlineColor")
                     <*> (x .:? "outlineSize")
                     <*> (x .:? "shadowColor")
                     <*> (x .:? "fontColor"))

instance Hashable DvbSubDestinationSettings where

instance NFData DvbSubDestinationSettings where

instance ToJSON DvbSubDestinationSettings where
        toJSON DvbSubDestinationSettings'{..}
          = object
              (catMaybes
                 [("backgroundOpacity" .=) <$> _dsdsBackgroundOpacity,
                  ("fontOpacity" .=) <$> _dsdsFontOpacity,
                  ("shadowYOffset" .=) <$> _dsdsShadowYOffset,
                  ("fontResolution" .=) <$> _dsdsFontResolution,
                  ("yPosition" .=) <$> _dsdsYPosition,
                  ("backgroundColor" .=) <$> _dsdsBackgroundColor,
                  ("shadowXOffset" .=) <$> _dsdsShadowXOffset,
                  ("fontSize" .=) <$> _dsdsFontSize,
                  ("xPosition" .=) <$> _dsdsXPosition,
                  ("teletextSpacing" .=) <$> _dsdsTeletextSpacing,
                  ("alignment" .=) <$> _dsdsAlignment,
                  ("shadowOpacity" .=) <$> _dsdsShadowOpacity,
                  ("outlineColor" .=) <$> _dsdsOutlineColor,
                  ("outlineSize" .=) <$> _dsdsOutlineSize,
                  ("shadowColor" .=) <$> _dsdsShadowColor,
                  ("fontColor" .=) <$> _dsdsFontColor])
