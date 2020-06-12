{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Hdr10Metadata
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Hdr10Metadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Use the HDR master display (Hdr10Metadata) settings to provide values for HDR color. These values vary depending on the input video and must be provided by a color grader. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- /See:/ 'hdr10Metadata' smart constructor.
data Hdr10Metadata = Hdr10Metadata'{_hmRedPrimaryX ::
                                    !(Maybe Int),
                                    _hmBluePrimaryX :: !(Maybe Int),
                                    _hmMaxFrameAverageLightLevel ::
                                    !(Maybe Int),
                                    _hmWhitePointY :: !(Maybe Int),
                                    _hmMaxContentLightLevel :: !(Maybe Int),
                                    _hmWhitePointX :: !(Maybe Int),
                                    _hmBluePrimaryY :: !(Maybe Int),
                                    _hmGreenPrimaryY :: !(Maybe Int),
                                    _hmGreenPrimaryX :: !(Maybe Int),
                                    _hmMinLuminance :: !(Maybe Int),
                                    _hmRedPrimaryY :: !(Maybe Int),
                                    _hmMaxLuminance :: !(Maybe Int)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Hdr10Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmRedPrimaryX' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmBluePrimaryX' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmMaxFrameAverageLightLevel' - Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter.
--
-- * 'hmWhitePointY' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmMaxContentLightLevel' - Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.
--
-- * 'hmWhitePointX' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmBluePrimaryY' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmGreenPrimaryY' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmGreenPrimaryX' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmMinLuminance' - Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter
--
-- * 'hmRedPrimaryY' - HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
--
-- * 'hmMaxLuminance' - Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter.
hdr10Metadata
    :: Hdr10Metadata
hdr10Metadata
  = Hdr10Metadata'{_hmRedPrimaryX = Nothing,
                   _hmBluePrimaryX = Nothing,
                   _hmMaxFrameAverageLightLevel = Nothing,
                   _hmWhitePointY = Nothing,
                   _hmMaxContentLightLevel = Nothing,
                   _hmWhitePointX = Nothing, _hmBluePrimaryY = Nothing,
                   _hmGreenPrimaryY = Nothing,
                   _hmGreenPrimaryX = Nothing,
                   _hmMinLuminance = Nothing, _hmRedPrimaryY = Nothing,
                   _hmMaxLuminance = Nothing}

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmRedPrimaryX :: Lens' Hdr10Metadata (Maybe Int)
hmRedPrimaryX = lens _hmRedPrimaryX (\ s a -> s{_hmRedPrimaryX = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmBluePrimaryX :: Lens' Hdr10Metadata (Maybe Int)
hmBluePrimaryX = lens _hmBluePrimaryX (\ s a -> s{_hmBluePrimaryX = a})

-- | Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter.
hmMaxFrameAverageLightLevel :: Lens' Hdr10Metadata (Maybe Int)
hmMaxFrameAverageLightLevel = lens _hmMaxFrameAverageLightLevel (\ s a -> s{_hmMaxFrameAverageLightLevel = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmWhitePointY :: Lens' Hdr10Metadata (Maybe Int)
hmWhitePointY = lens _hmWhitePointY (\ s a -> s{_hmWhitePointY = a})

-- | Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.
hmMaxContentLightLevel :: Lens' Hdr10Metadata (Maybe Int)
hmMaxContentLightLevel = lens _hmMaxContentLightLevel (\ s a -> s{_hmMaxContentLightLevel = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmWhitePointX :: Lens' Hdr10Metadata (Maybe Int)
hmWhitePointX = lens _hmWhitePointX (\ s a -> s{_hmWhitePointX = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmBluePrimaryY :: Lens' Hdr10Metadata (Maybe Int)
hmBluePrimaryY = lens _hmBluePrimaryY (\ s a -> s{_hmBluePrimaryY = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmGreenPrimaryY :: Lens' Hdr10Metadata (Maybe Int)
hmGreenPrimaryY = lens _hmGreenPrimaryY (\ s a -> s{_hmGreenPrimaryY = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmGreenPrimaryX :: Lens' Hdr10Metadata (Maybe Int)
hmGreenPrimaryX = lens _hmGreenPrimaryX (\ s a -> s{_hmGreenPrimaryX = a})

-- | Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter
hmMinLuminance :: Lens' Hdr10Metadata (Maybe Int)
hmMinLuminance = lens _hmMinLuminance (\ s a -> s{_hmMinLuminance = a})

-- | HDR Master Display Information comes from the color grader and the color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate.
hmRedPrimaryY :: Lens' Hdr10Metadata (Maybe Int)
hmRedPrimaryY = lens _hmRedPrimaryY (\ s a -> s{_hmRedPrimaryY = a})

-- | Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter.
hmMaxLuminance :: Lens' Hdr10Metadata (Maybe Int)
hmMaxLuminance = lens _hmMaxLuminance (\ s a -> s{_hmMaxLuminance = a})

instance FromJSON Hdr10Metadata where
        parseJSON
          = withObject "Hdr10Metadata"
              (\ x ->
                 Hdr10Metadata' <$>
                   (x .:? "redPrimaryX") <*> (x .:? "bluePrimaryX") <*>
                     (x .:? "maxFrameAverageLightLevel")
                     <*> (x .:? "whitePointY")
                     <*> (x .:? "maxContentLightLevel")
                     <*> (x .:? "whitePointX")
                     <*> (x .:? "bluePrimaryY")
                     <*> (x .:? "greenPrimaryY")
                     <*> (x .:? "greenPrimaryX")
                     <*> (x .:? "minLuminance")
                     <*> (x .:? "redPrimaryY")
                     <*> (x .:? "maxLuminance"))

instance Hashable Hdr10Metadata where

instance NFData Hdr10Metadata where

instance ToJSON Hdr10Metadata where
        toJSON Hdr10Metadata'{..}
          = object
              (catMaybes
                 [("redPrimaryX" .=) <$> _hmRedPrimaryX,
                  ("bluePrimaryX" .=) <$> _hmBluePrimaryX,
                  ("maxFrameAverageLightLevel" .=) <$>
                    _hmMaxFrameAverageLightLevel,
                  ("whitePointY" .=) <$> _hmWhitePointY,
                  ("maxContentLightLevel" .=) <$>
                    _hmMaxContentLightLevel,
                  ("whitePointX" .=) <$> _hmWhitePointX,
                  ("bluePrimaryY" .=) <$> _hmBluePrimaryY,
                  ("greenPrimaryY" .=) <$> _hmGreenPrimaryY,
                  ("greenPrimaryX" .=) <$> _hmGreenPrimaryX,
                  ("minLuminance" .=) <$> _hmMinLuminance,
                  ("redPrimaryY" .=) <$> _hmRedPrimaryY,
                  ("maxLuminance" .=) <$> _hmMaxLuminance])
