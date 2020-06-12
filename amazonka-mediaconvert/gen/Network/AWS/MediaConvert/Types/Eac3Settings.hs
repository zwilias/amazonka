{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Eac3Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Eac3AttenuationControl
import Network.AWS.MediaConvert.Types.Eac3BitstreamMode
import Network.AWS.MediaConvert.Types.Eac3CodingMode
import Network.AWS.MediaConvert.Types.Eac3DcFilter
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
import Network.AWS.MediaConvert.Types.Eac3LfeControl
import Network.AWS.MediaConvert.Types.Eac3LfeFilter
import Network.AWS.MediaConvert.Types.Eac3MetadataControl
import Network.AWS.MediaConvert.Types.Eac3PassthroughControl
import Network.AWS.MediaConvert.Types.Eac3PhaseControl
import Network.AWS.MediaConvert.Types.Eac3StereoDownmix
import Network.AWS.MediaConvert.Types.Eac3SurroundExMode
import Network.AWS.MediaConvert.Types.Eac3SurroundMode
import Network.AWS.Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.
--
-- /See:/ 'eac3Settings' smart constructor.
data Eac3Settings = Eac3Settings'{_esStereoDownmix ::
                                  !(Maybe Eac3StereoDownmix),
                                  _esLoRoCenterMixLevel :: !(Maybe Double),
                                  _esLtRtCenterMixLevel :: !(Maybe Double),
                                  _esLfeFilter :: !(Maybe Eac3LfeFilter),
                                  _esDynamicRangeCompressionLine ::
                                  !(Maybe Eac3DynamicRangeCompressionLine),
                                  _esLtRtSurroundMixLevel :: !(Maybe Double),
                                  _esMetadataControl ::
                                  !(Maybe Eac3MetadataControl),
                                  _esLoRoSurroundMixLevel :: !(Maybe Double),
                                  _esSurroundMode :: !(Maybe Eac3SurroundMode),
                                  _esAttenuationControl ::
                                  !(Maybe Eac3AttenuationControl),
                                  _esPassthroughControl ::
                                  !(Maybe Eac3PassthroughControl),
                                  _esBitstreamMode ::
                                  !(Maybe Eac3BitstreamMode),
                                  _esLfeControl :: !(Maybe Eac3LfeControl),
                                  _esDynamicRangeCompressionRf ::
                                  !(Maybe Eac3DynamicRangeCompressionRf),
                                  _esCodingMode :: !(Maybe Eac3CodingMode),
                                  _esSampleRate :: !(Maybe Int),
                                  _esDcFilter :: !(Maybe Eac3DcFilter),
                                  _esBitrate :: !(Maybe Int),
                                  _esPhaseControl :: !(Maybe Eac3PhaseControl),
                                  _esSurroundExMode ::
                                  !(Maybe Eac3SurroundExMode),
                                  _esDialnorm :: !(Maybe Int)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Eac3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esStereoDownmix' - Undocumented member.
--
-- * 'esLoRoCenterMixLevel' - Left only/Right only center mix level. Only used for 3/2 coding mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
--
-- * 'esLtRtCenterMixLevel' - Left total/Right total center mix level. Only used for 3/2 coding mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
--
-- * 'esLfeFilter' - Undocumented member.
--
-- * 'esDynamicRangeCompressionLine' - Undocumented member.
--
-- * 'esLtRtSurroundMixLevel' - Left total/Right total surround mix level. Only used for 3/2 coding mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
--
-- * 'esMetadataControl' - Undocumented member.
--
-- * 'esLoRoSurroundMixLevel' - Left only/Right only surround mix level. Only used for 3/2 coding mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
--
-- * 'esSurroundMode' - Undocumented member.
--
-- * 'esAttenuationControl' - Undocumented member.
--
-- * 'esPassthroughControl' - Undocumented member.
--
-- * 'esBitstreamMode' - Undocumented member.
--
-- * 'esLfeControl' - Undocumented member.
--
-- * 'esDynamicRangeCompressionRf' - Undocumented member.
--
-- * 'esCodingMode' - Undocumented member.
--
-- * 'esSampleRate' - Sample rate in hz. Sample rate is always 48000.
--
-- * 'esDcFilter' - Undocumented member.
--
-- * 'esBitrate' - Average bitrate in bits/second. Valid bitrates depend on the coding mode.
--
-- * 'esPhaseControl' - Undocumented member.
--
-- * 'esSurroundExMode' - Undocumented member.
--
-- * 'esDialnorm' - Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
eac3Settings
    :: Eac3Settings
eac3Settings
  = Eac3Settings'{_esStereoDownmix = Nothing,
                  _esLoRoCenterMixLevel = Nothing,
                  _esLtRtCenterMixLevel = Nothing,
                  _esLfeFilter = Nothing,
                  _esDynamicRangeCompressionLine = Nothing,
                  _esLtRtSurroundMixLevel = Nothing,
                  _esMetadataControl = Nothing,
                  _esLoRoSurroundMixLevel = Nothing,
                  _esSurroundMode = Nothing,
                  _esAttenuationControl = Nothing,
                  _esPassthroughControl = Nothing,
                  _esBitstreamMode = Nothing, _esLfeControl = Nothing,
                  _esDynamicRangeCompressionRf = Nothing,
                  _esCodingMode = Nothing, _esSampleRate = Nothing,
                  _esDcFilter = Nothing, _esBitrate = Nothing,
                  _esPhaseControl = Nothing,
                  _esSurroundExMode = Nothing, _esDialnorm = Nothing}

-- | Undocumented member.
esStereoDownmix :: Lens' Eac3Settings (Maybe Eac3StereoDownmix)
esStereoDownmix = lens _esStereoDownmix (\ s a -> s{_esStereoDownmix = a})

-- | Left only/Right only center mix level. Only used for 3/2 coding mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
esLoRoCenterMixLevel :: Lens' Eac3Settings (Maybe Double)
esLoRoCenterMixLevel = lens _esLoRoCenterMixLevel (\ s a -> s{_esLoRoCenterMixLevel = a})

-- | Left total/Right total center mix level. Only used for 3/2 coding mode. Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
esLtRtCenterMixLevel :: Lens' Eac3Settings (Maybe Double)
esLtRtCenterMixLevel = lens _esLtRtCenterMixLevel (\ s a -> s{_esLtRtCenterMixLevel = a})

-- | Undocumented member.
esLfeFilter :: Lens' Eac3Settings (Maybe Eac3LfeFilter)
esLfeFilter = lens _esLfeFilter (\ s a -> s{_esLfeFilter = a})

-- | Undocumented member.
esDynamicRangeCompressionLine :: Lens' Eac3Settings (Maybe Eac3DynamicRangeCompressionLine)
esDynamicRangeCompressionLine = lens _esDynamicRangeCompressionLine (\ s a -> s{_esDynamicRangeCompressionLine = a})

-- | Left total/Right total surround mix level. Only used for 3/2 coding mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
esLtRtSurroundMixLevel :: Lens' Eac3Settings (Maybe Double)
esLtRtSurroundMixLevel = lens _esLtRtSurroundMixLevel (\ s a -> s{_esLtRtSurroundMixLevel = a})

-- | Undocumented member.
esMetadataControl :: Lens' Eac3Settings (Maybe Eac3MetadataControl)
esMetadataControl = lens _esMetadataControl (\ s a -> s{_esMetadataControl = a})

-- | Left only/Right only surround mix level. Only used for 3/2 coding mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60
esLoRoSurroundMixLevel :: Lens' Eac3Settings (Maybe Double)
esLoRoSurroundMixLevel = lens _esLoRoSurroundMixLevel (\ s a -> s{_esLoRoSurroundMixLevel = a})

-- | Undocumented member.
esSurroundMode :: Lens' Eac3Settings (Maybe Eac3SurroundMode)
esSurroundMode = lens _esSurroundMode (\ s a -> s{_esSurroundMode = a})

-- | Undocumented member.
esAttenuationControl :: Lens' Eac3Settings (Maybe Eac3AttenuationControl)
esAttenuationControl = lens _esAttenuationControl (\ s a -> s{_esAttenuationControl = a})

-- | Undocumented member.
esPassthroughControl :: Lens' Eac3Settings (Maybe Eac3PassthroughControl)
esPassthroughControl = lens _esPassthroughControl (\ s a -> s{_esPassthroughControl = a})

-- | Undocumented member.
esBitstreamMode :: Lens' Eac3Settings (Maybe Eac3BitstreamMode)
esBitstreamMode = lens _esBitstreamMode (\ s a -> s{_esBitstreamMode = a})

-- | Undocumented member.
esLfeControl :: Lens' Eac3Settings (Maybe Eac3LfeControl)
esLfeControl = lens _esLfeControl (\ s a -> s{_esLfeControl = a})

-- | Undocumented member.
esDynamicRangeCompressionRf :: Lens' Eac3Settings (Maybe Eac3DynamicRangeCompressionRf)
esDynamicRangeCompressionRf = lens _esDynamicRangeCompressionRf (\ s a -> s{_esDynamicRangeCompressionRf = a})

-- | Undocumented member.
esCodingMode :: Lens' Eac3Settings (Maybe Eac3CodingMode)
esCodingMode = lens _esCodingMode (\ s a -> s{_esCodingMode = a})

-- | Sample rate in hz. Sample rate is always 48000.
esSampleRate :: Lens' Eac3Settings (Maybe Int)
esSampleRate = lens _esSampleRate (\ s a -> s{_esSampleRate = a})

-- | Undocumented member.
esDcFilter :: Lens' Eac3Settings (Maybe Eac3DcFilter)
esDcFilter = lens _esDcFilter (\ s a -> s{_esDcFilter = a})

-- | Average bitrate in bits/second. Valid bitrates depend on the coding mode.
esBitrate :: Lens' Eac3Settings (Maybe Int)
esBitrate = lens _esBitrate (\ s a -> s{_esBitrate = a})

-- | Undocumented member.
esPhaseControl :: Lens' Eac3Settings (Maybe Eac3PhaseControl)
esPhaseControl = lens _esPhaseControl (\ s a -> s{_esPhaseControl = a})

-- | Undocumented member.
esSurroundExMode :: Lens' Eac3Settings (Maybe Eac3SurroundExMode)
esSurroundExMode = lens _esSurroundExMode (\ s a -> s{_esSurroundExMode = a})

-- | Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
esDialnorm :: Lens' Eac3Settings (Maybe Int)
esDialnorm = lens _esDialnorm (\ s a -> s{_esDialnorm = a})

instance FromJSON Eac3Settings where
        parseJSON
          = withObject "Eac3Settings"
              (\ x ->
                 Eac3Settings' <$>
                   (x .:? "stereoDownmix") <*>
                     (x .:? "loRoCenterMixLevel")
                     <*> (x .:? "ltRtCenterMixLevel")
                     <*> (x .:? "lfeFilter")
                     <*> (x .:? "dynamicRangeCompressionLine")
                     <*> (x .:? "ltRtSurroundMixLevel")
                     <*> (x .:? "metadataControl")
                     <*> (x .:? "loRoSurroundMixLevel")
                     <*> (x .:? "surroundMode")
                     <*> (x .:? "attenuationControl")
                     <*> (x .:? "passthroughControl")
                     <*> (x .:? "bitstreamMode")
                     <*> (x .:? "lfeControl")
                     <*> (x .:? "dynamicRangeCompressionRf")
                     <*> (x .:? "codingMode")
                     <*> (x .:? "sampleRate")
                     <*> (x .:? "dcFilter")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "phaseControl")
                     <*> (x .:? "surroundExMode")
                     <*> (x .:? "dialnorm"))

instance Hashable Eac3Settings where

instance NFData Eac3Settings where

instance ToJSON Eac3Settings where
        toJSON Eac3Settings'{..}
          = object
              (catMaybes
                 [("stereoDownmix" .=) <$> _esStereoDownmix,
                  ("loRoCenterMixLevel" .=) <$> _esLoRoCenterMixLevel,
                  ("ltRtCenterMixLevel" .=) <$> _esLtRtCenterMixLevel,
                  ("lfeFilter" .=) <$> _esLfeFilter,
                  ("dynamicRangeCompressionLine" .=) <$>
                    _esDynamicRangeCompressionLine,
                  ("ltRtSurroundMixLevel" .=) <$>
                    _esLtRtSurroundMixLevel,
                  ("metadataControl" .=) <$> _esMetadataControl,
                  ("loRoSurroundMixLevel" .=) <$>
                    _esLoRoSurroundMixLevel,
                  ("surroundMode" .=) <$> _esSurroundMode,
                  ("attenuationControl" .=) <$> _esAttenuationControl,
                  ("passthroughControl" .=) <$> _esPassthroughControl,
                  ("bitstreamMode" .=) <$> _esBitstreamMode,
                  ("lfeControl" .=) <$> _esLfeControl,
                  ("dynamicRangeCompressionRf" .=) <$>
                    _esDynamicRangeCompressionRf,
                  ("codingMode" .=) <$> _esCodingMode,
                  ("sampleRate" .=) <$> _esSampleRate,
                  ("dcFilter" .=) <$> _esDcFilter,
                  ("bitrate" .=) <$> _esBitrate,
                  ("phaseControl" .=) <$> _esPhaseControl,
                  ("surroundExMode" .=) <$> _esSurroundExMode,
                  ("dialnorm" .=) <$> _esDialnorm])
