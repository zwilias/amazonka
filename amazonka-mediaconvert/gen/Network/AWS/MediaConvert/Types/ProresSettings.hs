{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.ProresCodecProfile
import Network.AWS.MediaConvert.Types.ProresFramerateControl
import Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.ProresInterlaceMode
import Network.AWS.MediaConvert.Types.ProresParControl
import Network.AWS.MediaConvert.Types.ProresSlowPal
import Network.AWS.MediaConvert.Types.ProresTelecine
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
--
-- /See:/ 'proresSettings' smart constructor.
data ProresSettings = ProresSettings'{_psSlowPal ::
                                      !(Maybe ProresSlowPal),
                                      _psParNumerator :: !(Maybe Int),
                                      _psTelecine :: !(Maybe ProresTelecine),
                                      _psInterlaceMode ::
                                      !(Maybe ProresInterlaceMode),
                                      _psParControl ::
                                      !(Maybe ProresParControl),
                                      _psCodecProfile ::
                                      !(Maybe ProresCodecProfile),
                                      _psFramerateDenominator :: !(Maybe Int),
                                      _psFramerateConversionAlgorithm ::
                                      !(Maybe
                                          ProresFramerateConversionAlgorithm),
                                      _psFramerateControl ::
                                      !(Maybe ProresFramerateControl),
                                      _psFramerateNumerator :: !(Maybe Int),
                                      _psParDenominator :: !(Maybe Int)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProresSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psSlowPal' - Undocumented member.
--
-- * 'psParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'psTelecine' - Undocumented member.
--
-- * 'psInterlaceMode' - Undocumented member.
--
-- * 'psParControl' - Undocumented member.
--
-- * 'psCodecProfile' - Undocumented member.
--
-- * 'psFramerateDenominator' - Framerate denominator.
--
-- * 'psFramerateConversionAlgorithm' - Undocumented member.
--
-- * 'psFramerateControl' - Undocumented member.
--
-- * 'psFramerateNumerator' - When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator.
--
-- * 'psParDenominator' - Pixel Aspect Ratio denominator.
proresSettings
    :: ProresSettings
proresSettings
  = ProresSettings'{_psSlowPal = Nothing,
                    _psParNumerator = Nothing, _psTelecine = Nothing,
                    _psInterlaceMode = Nothing, _psParControl = Nothing,
                    _psCodecProfile = Nothing,
                    _psFramerateDenominator = Nothing,
                    _psFramerateConversionAlgorithm = Nothing,
                    _psFramerateControl = Nothing,
                    _psFramerateNumerator = Nothing,
                    _psParDenominator = Nothing}

-- | Undocumented member.
psSlowPal :: Lens' ProresSettings (Maybe ProresSlowPal)
psSlowPal = lens _psSlowPal (\ s a -> s{_psSlowPal = a})

-- | Pixel Aspect Ratio numerator.
psParNumerator :: Lens' ProresSettings (Maybe Int)
psParNumerator = lens _psParNumerator (\ s a -> s{_psParNumerator = a})

-- | Undocumented member.
psTelecine :: Lens' ProresSettings (Maybe ProresTelecine)
psTelecine = lens _psTelecine (\ s a -> s{_psTelecine = a})

-- | Undocumented member.
psInterlaceMode :: Lens' ProresSettings (Maybe ProresInterlaceMode)
psInterlaceMode = lens _psInterlaceMode (\ s a -> s{_psInterlaceMode = a})

-- | Undocumented member.
psParControl :: Lens' ProresSettings (Maybe ProresParControl)
psParControl = lens _psParControl (\ s a -> s{_psParControl = a})

-- | Undocumented member.
psCodecProfile :: Lens' ProresSettings (Maybe ProresCodecProfile)
psCodecProfile = lens _psCodecProfile (\ s a -> s{_psCodecProfile = a})

-- | Framerate denominator.
psFramerateDenominator :: Lens' ProresSettings (Maybe Int)
psFramerateDenominator = lens _psFramerateDenominator (\ s a -> s{_psFramerateDenominator = a})

-- | Undocumented member.
psFramerateConversionAlgorithm :: Lens' ProresSettings (Maybe ProresFramerateConversionAlgorithm)
psFramerateConversionAlgorithm = lens _psFramerateConversionAlgorithm (\ s a -> s{_psFramerateConversionAlgorithm = a})

-- | Undocumented member.
psFramerateControl :: Lens' ProresSettings (Maybe ProresFramerateControl)
psFramerateControl = lens _psFramerateControl (\ s a -> s{_psFramerateControl = a})

-- | When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator.
psFramerateNumerator :: Lens' ProresSettings (Maybe Int)
psFramerateNumerator = lens _psFramerateNumerator (\ s a -> s{_psFramerateNumerator = a})

-- | Pixel Aspect Ratio denominator.
psParDenominator :: Lens' ProresSettings (Maybe Int)
psParDenominator = lens _psParDenominator (\ s a -> s{_psParDenominator = a})

instance FromJSON ProresSettings where
        parseJSON
          = withObject "ProresSettings"
              (\ x ->
                 ProresSettings' <$>
                   (x .:? "slowPal") <*> (x .:? "parNumerator") <*>
                     (x .:? "telecine")
                     <*> (x .:? "interlaceMode")
                     <*> (x .:? "parControl")
                     <*> (x .:? "codecProfile")
                     <*> (x .:? "framerateDenominator")
                     <*> (x .:? "framerateConversionAlgorithm")
                     <*> (x .:? "framerateControl")
                     <*> (x .:? "framerateNumerator")
                     <*> (x .:? "parDenominator"))

instance Hashable ProresSettings where

instance NFData ProresSettings where

instance ToJSON ProresSettings where
        toJSON ProresSettings'{..}
          = object
              (catMaybes
                 [("slowPal" .=) <$> _psSlowPal,
                  ("parNumerator" .=) <$> _psParNumerator,
                  ("telecine" .=) <$> _psTelecine,
                  ("interlaceMode" .=) <$> _psInterlaceMode,
                  ("parControl" .=) <$> _psParControl,
                  ("codecProfile" .=) <$> _psCodecProfile,
                  ("framerateDenominator" .=) <$>
                    _psFramerateDenominator,
                  ("framerateConversionAlgorithm" .=) <$>
                    _psFramerateConversionAlgorithm,
                  ("framerateControl" .=) <$> _psFramerateControl,
                  ("framerateNumerator" .=) <$> _psFramerateNumerator,
                  ("parDenominator" .=) <$> _psParDenominator])
