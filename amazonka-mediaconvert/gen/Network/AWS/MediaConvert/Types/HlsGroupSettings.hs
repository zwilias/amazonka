{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsGroupSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.HlsAdMarkers
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageMapping
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageSetting
import Network.AWS.MediaConvert.Types.HlsClientCache
import Network.AWS.MediaConvert.Types.HlsCodecSpecification
import Network.AWS.MediaConvert.Types.HlsDirectoryStructure
import Network.AWS.MediaConvert.Types.HlsEncryptionSettings
import Network.AWS.MediaConvert.Types.HlsManifestCompression
import Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
import Network.AWS.MediaConvert.Types.HlsOutputSelection
import Network.AWS.MediaConvert.Types.HlsProgramDateTime
import Network.AWS.MediaConvert.Types.HlsSegmentControl
import Network.AWS.MediaConvert.Types.HlsStreamInfResolution
import Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
import Network.AWS.Prelude

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.
--
-- /See:/ 'hlsGroupSettings' smart constructor.
data HlsGroupSettings = HlsGroupSettings'{_hgsDirectoryStructure
                                          :: !(Maybe HlsDirectoryStructure),
                                          _hgsSegmentControl ::
                                          !(Maybe HlsSegmentControl),
                                          _hgsDestination :: !(Maybe Text),
                                          _hgsTimedMetadataId3Period ::
                                          !(Maybe Int),
                                          _hgsMinSegmentLength :: !(Maybe Int),
                                          _hgsProgramDateTime ::
                                          !(Maybe HlsProgramDateTime),
                                          _hgsProgramDateTimePeriod ::
                                          !(Maybe Int),
                                          _hgsCodecSpecification ::
                                          !(Maybe HlsCodecSpecification),
                                          _hgsCaptionLanguageMappings ::
                                          !(Maybe [HlsCaptionLanguageMapping]),
                                          _hgsBaseURL :: !(Maybe Text),
                                          _hgsAdMarkers ::
                                          !(Maybe [HlsAdMarkers]),
                                          _hgsEncryption ::
                                          !(Maybe HlsEncryptionSettings),
                                          _hgsSegmentLength :: !(Maybe Int),
                                          _hgsTimedMetadataId3Frame ::
                                          !(Maybe HlsTimedMetadataId3Frame),
                                          _hgsOutputSelection ::
                                          !(Maybe HlsOutputSelection),
                                          _hgsCaptionLanguageSetting ::
                                          !(Maybe HlsCaptionLanguageSetting),
                                          _hgsSegmentsPerSubdirectory ::
                                          !(Maybe Int),
                                          _hgsManifestDurationFormat ::
                                          !(Maybe HlsManifestDurationFormat),
                                          _hgsClientCache ::
                                          !(Maybe HlsClientCache),
                                          _hgsTimestampDeltaMilliseconds ::
                                          !(Maybe Int),
                                          _hgsStreamInfResolution ::
                                          !(Maybe HlsStreamInfResolution),
                                          _hgsManifestCompression ::
                                          !(Maybe HlsManifestCompression)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgsDirectoryStructure' - Undocumented member.
--
-- * 'hgsSegmentControl' - Undocumented member.
--
-- * 'hgsDestination' - Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
--
-- * 'hgsTimedMetadataId3Period' - Timed Metadata interval in seconds.
--
-- * 'hgsMinSegmentLength' - When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
--
-- * 'hgsProgramDateTime' - Undocumented member.
--
-- * 'hgsProgramDateTimePeriod' - Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
--
-- * 'hgsCodecSpecification' - Undocumented member.
--
-- * 'hgsCaptionLanguageMappings' - Language to be used on Caption outputs
--
-- * 'hgsBaseURL' - A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
--
-- * 'hgsAdMarkers' - Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
--
-- * 'hgsEncryption' - DRM settings.
--
-- * 'hgsSegmentLength' - Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
--
-- * 'hgsTimedMetadataId3Frame' - Undocumented member.
--
-- * 'hgsOutputSelection' - Undocumented member.
--
-- * 'hgsCaptionLanguageSetting' - Undocumented member.
--
-- * 'hgsSegmentsPerSubdirectory' - Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect.
--
-- * 'hgsManifestDurationFormat' - Undocumented member.
--
-- * 'hgsClientCache' - Undocumented member.
--
-- * 'hgsTimestampDeltaMilliseconds' - Provides an extra millisecond delta offset to fine tune the timestamps.
--
-- * 'hgsStreamInfResolution' - Undocumented member.
--
-- * 'hgsManifestCompression' - Undocumented member.
hlsGroupSettings
    :: HlsGroupSettings
hlsGroupSettings
  = HlsGroupSettings'{_hgsDirectoryStructure = Nothing,
                      _hgsSegmentControl = Nothing,
                      _hgsDestination = Nothing,
                      _hgsTimedMetadataId3Period = Nothing,
                      _hgsMinSegmentLength = Nothing,
                      _hgsProgramDateTime = Nothing,
                      _hgsProgramDateTimePeriod = Nothing,
                      _hgsCodecSpecification = Nothing,
                      _hgsCaptionLanguageMappings = Nothing,
                      _hgsBaseURL = Nothing, _hgsAdMarkers = Nothing,
                      _hgsEncryption = Nothing,
                      _hgsSegmentLength = Nothing,
                      _hgsTimedMetadataId3Frame = Nothing,
                      _hgsOutputSelection = Nothing,
                      _hgsCaptionLanguageSetting = Nothing,
                      _hgsSegmentsPerSubdirectory = Nothing,
                      _hgsManifestDurationFormat = Nothing,
                      _hgsClientCache = Nothing,
                      _hgsTimestampDeltaMilliseconds = Nothing,
                      _hgsStreamInfResolution = Nothing,
                      _hgsManifestCompression = Nothing}

-- | Undocumented member.
hgsDirectoryStructure :: Lens' HlsGroupSettings (Maybe HlsDirectoryStructure)
hgsDirectoryStructure = lens _hgsDirectoryStructure (\ s a -> s{_hgsDirectoryStructure = a})

-- | Undocumented member.
hgsSegmentControl :: Lens' HlsGroupSettings (Maybe HlsSegmentControl)
hgsSegmentControl = lens _hgsSegmentControl (\ s a -> s{_hgsSegmentControl = a})

-- | Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
hgsDestination :: Lens' HlsGroupSettings (Maybe Text)
hgsDestination = lens _hgsDestination (\ s a -> s{_hgsDestination = a})

-- | Timed Metadata interval in seconds.
hgsTimedMetadataId3Period :: Lens' HlsGroupSettings (Maybe Int)
hgsTimedMetadataId3Period = lens _hgsTimedMetadataId3Period (\ s a -> s{_hgsTimedMetadataId3Period = a})

-- | When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
hgsMinSegmentLength :: Lens' HlsGroupSettings (Maybe Int)
hgsMinSegmentLength = lens _hgsMinSegmentLength (\ s a -> s{_hgsMinSegmentLength = a})

-- | Undocumented member.
hgsProgramDateTime :: Lens' HlsGroupSettings (Maybe HlsProgramDateTime)
hgsProgramDateTime = lens _hgsProgramDateTime (\ s a -> s{_hgsProgramDateTime = a})

-- | Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
hgsProgramDateTimePeriod :: Lens' HlsGroupSettings (Maybe Int)
hgsProgramDateTimePeriod = lens _hgsProgramDateTimePeriod (\ s a -> s{_hgsProgramDateTimePeriod = a})

-- | Undocumented member.
hgsCodecSpecification :: Lens' HlsGroupSettings (Maybe HlsCodecSpecification)
hgsCodecSpecification = lens _hgsCodecSpecification (\ s a -> s{_hgsCodecSpecification = a})

-- | Language to be used on Caption outputs
hgsCaptionLanguageMappings :: Lens' HlsGroupSettings [HlsCaptionLanguageMapping]
hgsCaptionLanguageMappings = lens _hgsCaptionLanguageMappings (\ s a -> s{_hgsCaptionLanguageMappings = a}) . _Default . _Coerce

-- | A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
hgsBaseURL :: Lens' HlsGroupSettings (Maybe Text)
hgsBaseURL = lens _hgsBaseURL (\ s a -> s{_hgsBaseURL = a})

-- | Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
hgsAdMarkers :: Lens' HlsGroupSettings [HlsAdMarkers]
hgsAdMarkers = lens _hgsAdMarkers (\ s a -> s{_hgsAdMarkers = a}) . _Default . _Coerce

-- | DRM settings.
hgsEncryption :: Lens' HlsGroupSettings (Maybe HlsEncryptionSettings)
hgsEncryption = lens _hgsEncryption (\ s a -> s{_hgsEncryption = a})

-- | Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
hgsSegmentLength :: Lens' HlsGroupSettings (Maybe Int)
hgsSegmentLength = lens _hgsSegmentLength (\ s a -> s{_hgsSegmentLength = a})

-- | Undocumented member.
hgsTimedMetadataId3Frame :: Lens' HlsGroupSettings (Maybe HlsTimedMetadataId3Frame)
hgsTimedMetadataId3Frame = lens _hgsTimedMetadataId3Frame (\ s a -> s{_hgsTimedMetadataId3Frame = a})

-- | Undocumented member.
hgsOutputSelection :: Lens' HlsGroupSettings (Maybe HlsOutputSelection)
hgsOutputSelection = lens _hgsOutputSelection (\ s a -> s{_hgsOutputSelection = a})

-- | Undocumented member.
hgsCaptionLanguageSetting :: Lens' HlsGroupSettings (Maybe HlsCaptionLanguageSetting)
hgsCaptionLanguageSetting = lens _hgsCaptionLanguageSetting (\ s a -> s{_hgsCaptionLanguageSetting = a})

-- | Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect.
hgsSegmentsPerSubdirectory :: Lens' HlsGroupSettings (Maybe Int)
hgsSegmentsPerSubdirectory = lens _hgsSegmentsPerSubdirectory (\ s a -> s{_hgsSegmentsPerSubdirectory = a})

-- | Undocumented member.
hgsManifestDurationFormat :: Lens' HlsGroupSettings (Maybe HlsManifestDurationFormat)
hgsManifestDurationFormat = lens _hgsManifestDurationFormat (\ s a -> s{_hgsManifestDurationFormat = a})

-- | Undocumented member.
hgsClientCache :: Lens' HlsGroupSettings (Maybe HlsClientCache)
hgsClientCache = lens _hgsClientCache (\ s a -> s{_hgsClientCache = a})

-- | Provides an extra millisecond delta offset to fine tune the timestamps.
hgsTimestampDeltaMilliseconds :: Lens' HlsGroupSettings (Maybe Int)
hgsTimestampDeltaMilliseconds = lens _hgsTimestampDeltaMilliseconds (\ s a -> s{_hgsTimestampDeltaMilliseconds = a})

-- | Undocumented member.
hgsStreamInfResolution :: Lens' HlsGroupSettings (Maybe HlsStreamInfResolution)
hgsStreamInfResolution = lens _hgsStreamInfResolution (\ s a -> s{_hgsStreamInfResolution = a})

-- | Undocumented member.
hgsManifestCompression :: Lens' HlsGroupSettings (Maybe HlsManifestCompression)
hgsManifestCompression = lens _hgsManifestCompression (\ s a -> s{_hgsManifestCompression = a})

instance FromJSON HlsGroupSettings where
        parseJSON
          = withObject "HlsGroupSettings"
              (\ x ->
                 HlsGroupSettings' <$>
                   (x .:? "directoryStructure") <*>
                     (x .:? "segmentControl")
                     <*> (x .:? "destination")
                     <*> (x .:? "timedMetadataId3Period")
                     <*> (x .:? "minSegmentLength")
                     <*> (x .:? "programDateTime")
                     <*> (x .:? "programDateTimePeriod")
                     <*> (x .:? "codecSpecification")
                     <*> (x .:? "captionLanguageMappings" .!= mempty)
                     <*> (x .:? "baseUrl")
                     <*> (x .:? "adMarkers" .!= mempty)
                     <*> (x .:? "encryption")
                     <*> (x .:? "segmentLength")
                     <*> (x .:? "timedMetadataId3Frame")
                     <*> (x .:? "outputSelection")
                     <*> (x .:? "captionLanguageSetting")
                     <*> (x .:? "segmentsPerSubdirectory")
                     <*> (x .:? "manifestDurationFormat")
                     <*> (x .:? "clientCache")
                     <*> (x .:? "timestampDeltaMilliseconds")
                     <*> (x .:? "streamInfResolution")
                     <*> (x .:? "manifestCompression"))

instance Hashable HlsGroupSettings where

instance NFData HlsGroupSettings where

instance ToJSON HlsGroupSettings where
        toJSON HlsGroupSettings'{..}
          = object
              (catMaybes
                 [("directoryStructure" .=) <$>
                    _hgsDirectoryStructure,
                  ("segmentControl" .=) <$> _hgsSegmentControl,
                  ("destination" .=) <$> _hgsDestination,
                  ("timedMetadataId3Period" .=) <$>
                    _hgsTimedMetadataId3Period,
                  ("minSegmentLength" .=) <$> _hgsMinSegmentLength,
                  ("programDateTime" .=) <$> _hgsProgramDateTime,
                  ("programDateTimePeriod" .=) <$>
                    _hgsProgramDateTimePeriod,
                  ("codecSpecification" .=) <$> _hgsCodecSpecification,
                  ("captionLanguageMappings" .=) <$>
                    _hgsCaptionLanguageMappings,
                  ("baseUrl" .=) <$> _hgsBaseURL,
                  ("adMarkers" .=) <$> _hgsAdMarkers,
                  ("encryption" .=) <$> _hgsEncryption,
                  ("segmentLength" .=) <$> _hgsSegmentLength,
                  ("timedMetadataId3Frame" .=) <$>
                    _hgsTimedMetadataId3Frame,
                  ("outputSelection" .=) <$> _hgsOutputSelection,
                  ("captionLanguageSetting" .=) <$>
                    _hgsCaptionLanguageSetting,
                  ("segmentsPerSubdirectory" .=) <$>
                    _hgsSegmentsPerSubdirectory,
                  ("manifestDurationFormat" .=) <$>
                    _hgsManifestDurationFormat,
                  ("clientCache" .=) <$> _hgsClientCache,
                  ("timestampDeltaMilliseconds" .=) <$>
                    _hgsTimestampDeltaMilliseconds,
                  ("streamInfResolution" .=) <$>
                    _hgsStreamInfResolution,
                  ("manifestCompression" .=) <$>
                    _hgsManifestCompression])
