{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninDestinationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.BurninDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
import Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
import Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
import Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
import Network.AWS.Prelude

-- | Burn-In Destination Settings.
--
-- /See:/ 'burninDestinationSettings' smart constructor.
data BurninDestinationSettings = BurninDestinationSettings'{_bdsBackgroundOpacity
                                                            :: !(Maybe Int),
                                                            _bdsFontOpacity ::
                                                            !(Maybe Int),
                                                            _bdsShadowYOffset ::
                                                            !(Maybe Int),
                                                            _bdsFontResolution
                                                            :: !(Maybe Int),
                                                            _bdsYPosition ::
                                                            !(Maybe Int),
                                                            _bdsBackgroundColor
                                                            ::
                                                            !(Maybe
                                                                BurninSubtitleBackgroundColor),
                                                            _bdsShadowXOffset ::
                                                            !(Maybe Int),
                                                            _bdsFontSize ::
                                                            !(Maybe Int),
                                                            _bdsXPosition ::
                                                            !(Maybe Int),
                                                            _bdsTeletextSpacing
                                                            ::
                                                            !(Maybe
                                                                BurninSubtitleTeletextSpacing),
                                                            _bdsAlignment ::
                                                            !(Maybe
                                                                BurninSubtitleAlignment),
                                                            _bdsShadowOpacity ::
                                                            !(Maybe Int),
                                                            _bdsOutlineColor ::
                                                            !(Maybe
                                                                BurninSubtitleOutlineColor),
                                                            _bdsOutlineSize ::
                                                            !(Maybe Int),
                                                            _bdsShadowColor ::
                                                            !(Maybe
                                                                BurninSubtitleShadowColor),
                                                            _bdsFontColor ::
                                                            !(Maybe
                                                                BurninSubtitleFontColor)}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'BurninDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdsBackgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsFontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsShadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsFontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsYPosition' - Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsBackgroundColor' - Undocumented member.
--
-- * 'bdsShadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsFontSize' - A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsXPosition' - Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsTeletextSpacing' - Undocumented member.
--
-- * 'bdsAlignment' - Undocumented member.
--
-- * 'bdsShadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsOutlineColor' - Undocumented member.
--
-- * 'bdsOutlineSize' - Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'bdsShadowColor' - Undocumented member.
--
-- * 'bdsFontColor' - Undocumented member.
burninDestinationSettings
    :: BurninDestinationSettings
burninDestinationSettings
  = BurninDestinationSettings'{_bdsBackgroundOpacity =
                                 Nothing,
                               _bdsFontOpacity = Nothing,
                               _bdsShadowYOffset = Nothing,
                               _bdsFontResolution = Nothing,
                               _bdsYPosition = Nothing,
                               _bdsBackgroundColor = Nothing,
                               _bdsShadowXOffset = Nothing,
                               _bdsFontSize = Nothing, _bdsXPosition = Nothing,
                               _bdsTeletextSpacing = Nothing,
                               _bdsAlignment = Nothing,
                               _bdsShadowOpacity = Nothing,
                               _bdsOutlineColor = Nothing,
                               _bdsOutlineSize = Nothing,
                               _bdsShadowColor = Nothing,
                               _bdsFontColor = Nothing}

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
bdsBackgroundOpacity :: Lens' BurninDestinationSettings (Maybe Int)
bdsBackgroundOpacity = lens _bdsBackgroundOpacity (\ s a -> s{_bdsBackgroundOpacity = a})

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
bdsFontOpacity :: Lens' BurninDestinationSettings (Maybe Int)
bdsFontOpacity = lens _bdsFontOpacity (\ s a -> s{_bdsFontOpacity = a})

-- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
bdsShadowYOffset :: Lens' BurninDestinationSettings (Maybe Int)
bdsShadowYOffset = lens _bdsShadowYOffset (\ s a -> s{_bdsShadowYOffset = a})

-- | Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
bdsFontResolution :: Lens' BurninDestinationSettings (Maybe Int)
bdsFontResolution = lens _bdsFontResolution (\ s a -> s{_bdsFontResolution = a})

-- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
bdsYPosition :: Lens' BurninDestinationSettings (Maybe Int)
bdsYPosition = lens _bdsYPosition (\ s a -> s{_bdsYPosition = a})

-- | Undocumented member.
bdsBackgroundColor :: Lens' BurninDestinationSettings (Maybe BurninSubtitleBackgroundColor)
bdsBackgroundColor = lens _bdsBackgroundColor (\ s a -> s{_bdsBackgroundColor = a})

-- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
bdsShadowXOffset :: Lens' BurninDestinationSettings (Maybe Int)
bdsShadowXOffset = lens _bdsShadowXOffset (\ s a -> s{_bdsShadowXOffset = a})

-- | A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
bdsFontSize :: Lens' BurninDestinationSettings (Maybe Int)
bdsFontSize = lens _bdsFontSize (\ s a -> s{_bdsFontSize = a})

-- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
bdsXPosition :: Lens' BurninDestinationSettings (Maybe Int)
bdsXPosition = lens _bdsXPosition (\ s a -> s{_bdsXPosition = a})

-- | Undocumented member.
bdsTeletextSpacing :: Lens' BurninDestinationSettings (Maybe BurninSubtitleTeletextSpacing)
bdsTeletextSpacing = lens _bdsTeletextSpacing (\ s a -> s{_bdsTeletextSpacing = a})

-- | Undocumented member.
bdsAlignment :: Lens' BurninDestinationSettings (Maybe BurninSubtitleAlignment)
bdsAlignment = lens _bdsAlignment (\ s a -> s{_bdsAlignment = a})

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
bdsShadowOpacity :: Lens' BurninDestinationSettings (Maybe Int)
bdsShadowOpacity = lens _bdsShadowOpacity (\ s a -> s{_bdsShadowOpacity = a})

-- | Undocumented member.
bdsOutlineColor :: Lens' BurninDestinationSettings (Maybe BurninSubtitleOutlineColor)
bdsOutlineColor = lens _bdsOutlineColor (\ s a -> s{_bdsOutlineColor = a})

-- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
bdsOutlineSize :: Lens' BurninDestinationSettings (Maybe Int)
bdsOutlineSize = lens _bdsOutlineSize (\ s a -> s{_bdsOutlineSize = a})

-- | Undocumented member.
bdsShadowColor :: Lens' BurninDestinationSettings (Maybe BurninSubtitleShadowColor)
bdsShadowColor = lens _bdsShadowColor (\ s a -> s{_bdsShadowColor = a})

-- | Undocumented member.
bdsFontColor :: Lens' BurninDestinationSettings (Maybe BurninSubtitleFontColor)
bdsFontColor = lens _bdsFontColor (\ s a -> s{_bdsFontColor = a})

instance FromJSON BurninDestinationSettings where
        parseJSON
          = withObject "BurninDestinationSettings"
              (\ x ->
                 BurninDestinationSettings' <$>
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

instance Hashable BurninDestinationSettings where

instance NFData BurninDestinationSettings where

instance ToJSON BurninDestinationSettings where
        toJSON BurninDestinationSettings'{..}
          = object
              (catMaybes
                 [("backgroundOpacity" .=) <$> _bdsBackgroundOpacity,
                  ("fontOpacity" .=) <$> _bdsFontOpacity,
                  ("shadowYOffset" .=) <$> _bdsShadowYOffset,
                  ("fontResolution" .=) <$> _bdsFontResolution,
                  ("yPosition" .=) <$> _bdsYPosition,
                  ("backgroundColor" .=) <$> _bdsBackgroundColor,
                  ("shadowXOffset" .=) <$> _bdsShadowXOffset,
                  ("fontSize" .=) <$> _bdsFontSize,
                  ("xPosition" .=) <$> _bdsXPosition,
                  ("teletextSpacing" .=) <$> _bdsTeletextSpacing,
                  ("alignment" .=) <$> _bdsAlignment,
                  ("shadowOpacity" .=) <$> _bdsShadowOpacity,
                  ("outlineColor" .=) <$> _bdsOutlineColor,
                  ("outlineSize" .=) <$> _bdsOutlineSize,
                  ("shadowColor" .=) <$> _bdsShadowColor,
                  ("fontColor" .=) <$> _bdsFontColor])
