{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ColorCorrector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ColorCorrector where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.ColorSpaceConversion
import Network.AWS.MediaConvert.Types.Hdr10Metadata
import Network.AWS.Prelude

-- | Settings for color correction.
--
-- /See:/ 'colorCorrector' smart constructor.
data ColorCorrector = ColorCorrector'{_ccSaturation
                                      :: !(Maybe Int),
                                      _ccHue :: !(Maybe Int),
                                      _ccColorSpaceConversion ::
                                      !(Maybe ColorSpaceConversion),
                                      _ccHdr10Metadata ::
                                      !(Maybe Hdr10Metadata),
                                      _ccContrast :: !(Maybe Int),
                                      _ccBrightness :: !(Maybe Int)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColorCorrector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccSaturation' - Saturation level.
--
-- * 'ccHue' - Hue in degrees.
--
-- * 'ccColorSpaceConversion' - Undocumented member.
--
-- * 'ccHdr10Metadata' - Undocumented member.
--
-- * 'ccContrast' - Contrast level.
--
-- * 'ccBrightness' - Brightness level.
colorCorrector
    :: ColorCorrector
colorCorrector
  = ColorCorrector'{_ccSaturation = Nothing,
                    _ccHue = Nothing, _ccColorSpaceConversion = Nothing,
                    _ccHdr10Metadata = Nothing, _ccContrast = Nothing,
                    _ccBrightness = Nothing}

-- | Saturation level.
ccSaturation :: Lens' ColorCorrector (Maybe Int)
ccSaturation = lens _ccSaturation (\ s a -> s{_ccSaturation = a})

-- | Hue in degrees.
ccHue :: Lens' ColorCorrector (Maybe Int)
ccHue = lens _ccHue (\ s a -> s{_ccHue = a})

-- | Undocumented member.
ccColorSpaceConversion :: Lens' ColorCorrector (Maybe ColorSpaceConversion)
ccColorSpaceConversion = lens _ccColorSpaceConversion (\ s a -> s{_ccColorSpaceConversion = a})

-- | Undocumented member.
ccHdr10Metadata :: Lens' ColorCorrector (Maybe Hdr10Metadata)
ccHdr10Metadata = lens _ccHdr10Metadata (\ s a -> s{_ccHdr10Metadata = a})

-- | Contrast level.
ccContrast :: Lens' ColorCorrector (Maybe Int)
ccContrast = lens _ccContrast (\ s a -> s{_ccContrast = a})

-- | Brightness level.
ccBrightness :: Lens' ColorCorrector (Maybe Int)
ccBrightness = lens _ccBrightness (\ s a -> s{_ccBrightness = a})

instance FromJSON ColorCorrector where
        parseJSON
          = withObject "ColorCorrector"
              (\ x ->
                 ColorCorrector' <$>
                   (x .:? "saturation") <*> (x .:? "hue") <*>
                     (x .:? "colorSpaceConversion")
                     <*> (x .:? "hdr10Metadata")
                     <*> (x .:? "contrast")
                     <*> (x .:? "brightness"))

instance Hashable ColorCorrector where

instance NFData ColorCorrector where

instance ToJSON ColorCorrector where
        toJSON ColorCorrector'{..}
          = object
              (catMaybes
                 [("saturation" .=) <$> _ccSaturation,
                  ("hue" .=) <$> _ccHue,
                  ("colorSpaceConversion" .=) <$>
                    _ccColorSpaceConversion,
                  ("hdr10Metadata" .=) <$> _ccHdr10Metadata,
                  ("contrast" .=) <$> _ccContrast,
                  ("brightness" .=) <$> _ccBrightness])
