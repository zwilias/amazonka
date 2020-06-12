{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioNormalizationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithmControl
import Network.AWS.MediaConvert.Types.AudioNormalizationLoudnessLogging
import Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
import Network.AWS.Prelude

-- | Advanced audio normalization settings.
--
-- /See:/ 'audioNormalizationSettings' smart constructor.
data AudioNormalizationSettings = AudioNormalizationSettings'{_ansAlgorithmControl
                                                              ::
                                                              !(Maybe
                                                                  AudioNormalizationAlgorithmControl),
                                                              _ansTargetLkfs ::
                                                              !(Maybe Double),
                                                              _ansPeakCalculation
                                                              ::
                                                              !(Maybe
                                                                  AudioNormalizationPeakCalculation),
                                                              _ansCorrectionGateLevel
                                                              :: !(Maybe Int),
                                                              _ansAlgorithm ::
                                                              !(Maybe
                                                                  AudioNormalizationAlgorithm),
                                                              _ansLoudnessLogging
                                                              ::
                                                              !(Maybe
                                                                  AudioNormalizationLoudnessLogging)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'AudioNormalizationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ansAlgorithmControl' - Undocumented member.
--
-- * 'ansTargetLkfs' - Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm. The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
--
-- * 'ansPeakCalculation' - Undocumented member.
--
-- * 'ansCorrectionGateLevel' - Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected. Gating only applies when not using real_time_correction.
--
-- * 'ansAlgorithm' - Undocumented member.
--
-- * 'ansLoudnessLogging' - Undocumented member.
audioNormalizationSettings
    :: AudioNormalizationSettings
audioNormalizationSettings
  = AudioNormalizationSettings'{_ansAlgorithmControl =
                                  Nothing,
                                _ansTargetLkfs = Nothing,
                                _ansPeakCalculation = Nothing,
                                _ansCorrectionGateLevel = Nothing,
                                _ansAlgorithm = Nothing,
                                _ansLoudnessLogging = Nothing}

-- | Undocumented member.
ansAlgorithmControl :: Lens' AudioNormalizationSettings (Maybe AudioNormalizationAlgorithmControl)
ansAlgorithmControl = lens _ansAlgorithmControl (\ s a -> s{_ansAlgorithmControl = a})

-- | Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm. The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
ansTargetLkfs :: Lens' AudioNormalizationSettings (Maybe Double)
ansTargetLkfs = lens _ansTargetLkfs (\ s a -> s{_ansTargetLkfs = a})

-- | Undocumented member.
ansPeakCalculation :: Lens' AudioNormalizationSettings (Maybe AudioNormalizationPeakCalculation)
ansPeakCalculation = lens _ansPeakCalculation (\ s a -> s{_ansPeakCalculation = a})

-- | Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected. Gating only applies when not using real_time_correction.
ansCorrectionGateLevel :: Lens' AudioNormalizationSettings (Maybe Int)
ansCorrectionGateLevel = lens _ansCorrectionGateLevel (\ s a -> s{_ansCorrectionGateLevel = a})

-- | Undocumented member.
ansAlgorithm :: Lens' AudioNormalizationSettings (Maybe AudioNormalizationAlgorithm)
ansAlgorithm = lens _ansAlgorithm (\ s a -> s{_ansAlgorithm = a})

-- | Undocumented member.
ansLoudnessLogging :: Lens' AudioNormalizationSettings (Maybe AudioNormalizationLoudnessLogging)
ansLoudnessLogging = lens _ansLoudnessLogging (\ s a -> s{_ansLoudnessLogging = a})

instance FromJSON AudioNormalizationSettings where
        parseJSON
          = withObject "AudioNormalizationSettings"
              (\ x ->
                 AudioNormalizationSettings' <$>
                   (x .:? "algorithmControl") <*> (x .:? "targetLkfs")
                     <*> (x .:? "peakCalculation")
                     <*> (x .:? "correctionGateLevel")
                     <*> (x .:? "algorithm")
                     <*> (x .:? "loudnessLogging"))

instance Hashable AudioNormalizationSettings where

instance NFData AudioNormalizationSettings where

instance ToJSON AudioNormalizationSettings where
        toJSON AudioNormalizationSettings'{..}
          = object
              (catMaybes
                 [("algorithmControl" .=) <$> _ansAlgorithmControl,
                  ("targetLkfs" .=) <$> _ansTargetLkfs,
                  ("peakCalculation" .=) <$> _ansPeakCalculation,
                  ("correctionGateLevel" .=) <$>
                    _ansCorrectionGateLevel,
                  ("algorithm" .=) <$> _ansAlgorithm,
                  ("loudnessLogging" .=) <$> _ansLoudnessLogging])
