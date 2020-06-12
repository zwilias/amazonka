{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M2tsSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DvbNitSettings
import Network.AWS.MediaConvert.Types.DvbSdtSettings
import Network.AWS.MediaConvert.Types.DvbTdtSettings
import Network.AWS.MediaConvert.Types.M2tsAudioBufferModel
import Network.AWS.MediaConvert.Types.M2tsBufferModel
import Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
import Network.AWS.MediaConvert.Types.M2tsEbpPlacement
import Network.AWS.MediaConvert.Types.M2tsEsRateInPes
import Network.AWS.MediaConvert.Types.M2tsNielsenId3
import Network.AWS.MediaConvert.Types.M2tsPcrControl
import Network.AWS.MediaConvert.Types.M2tsRateMode
import Network.AWS.MediaConvert.Types.M2tsScte35Source
import Network.AWS.MediaConvert.Types.M2tsSegmentationMarkers
import Network.AWS.MediaConvert.Types.M2tsSegmentationStyle
import Network.AWS.Prelude

-- | Settings for M2TS Container.
--
-- /See:/ 'm2tsSettings' smart constructor.
data M2tsSettings = M2tsSettings'{_mPmtPid ::
                                  !(Maybe Int),
                                  _mVideoPid :: !(Maybe Int),
                                  _mBufferModel :: !(Maybe M2tsBufferModel),
                                  _mProgramNumber :: !(Maybe Int),
                                  _mScte35Pid :: !(Maybe Int),
                                  _mMinEbpInterval :: !(Maybe Int),
                                  _mTransportStreamId :: !(Maybe Int),
                                  _mMaxPcrInterval :: !(Maybe Int),
                                  _mFragmentTime :: !(Maybe Double),
                                  _mPrivateMetadataPid :: !(Maybe Int),
                                  _mPmtInterval :: !(Maybe Int),
                                  _mDvbSdtSettings :: !(Maybe DvbSdtSettings),
                                  _mNullPacketBitrate :: !(Maybe Double),
                                  _mAudioBufferModel ::
                                  !(Maybe M2tsAudioBufferModel),
                                  _mTimedMetadataPid :: !(Maybe Int),
                                  _mAudioFramesPerPes :: !(Maybe Int),
                                  _mPcrPid :: !(Maybe Int),
                                  _mSegmentationMarkers ::
                                  !(Maybe M2tsSegmentationMarkers),
                                  _mDvbSubPids :: !(Maybe [Int]),
                                  _mScte35Source :: !(Maybe M2tsScte35Source),
                                  _mPatInterval :: !(Maybe Int),
                                  _mEsRateInPes :: !(Maybe M2tsEsRateInPes),
                                  _mBitrate :: !(Maybe Int),
                                  _mAudioPids :: !(Maybe [Int]),
                                  _mDvbTeletextPid :: !(Maybe Int),
                                  _mNielsenId3 :: !(Maybe M2tsNielsenId3),
                                  _mSegmentationTime :: !(Maybe Double),
                                  _mEbpAudioInterval ::
                                  !(Maybe M2tsEbpAudioInterval),
                                  _mDvbNitSettings :: !(Maybe DvbNitSettings),
                                  _mPcrControl :: !(Maybe M2tsPcrControl),
                                  _mEbpPlacement :: !(Maybe M2tsEbpPlacement),
                                  _mRateMode :: !(Maybe M2tsRateMode),
                                  _mSegmentationStyle ::
                                  !(Maybe M2tsSegmentationStyle),
                                  _mDvbTdtSettings :: !(Maybe DvbTdtSettings)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M2tsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mPmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
--
-- * 'mVideoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream.
--
-- * 'mBufferModel' - Undocumented member.
--
-- * 'mProgramNumber' - The value of the program number field in the Program Map Table.
--
-- * 'mScte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
--
-- * 'mMinEbpInterval' - When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
--
-- * 'mTransportStreamId' - The value of the transport stream ID field in the Program Map Table.
--
-- * 'mMaxPcrInterval' - Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
--
-- * 'mFragmentTime' - The length in seconds of each fragment. Only used with EBP markers.
--
-- * 'mPrivateMetadataPid' - Packet Identifier (PID) of the private metadata stream in the transport stream.
--
-- * 'mPmtInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'mDvbSdtSettings' - Undocumented member.
--
-- * 'mNullPacketBitrate' - Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
--
-- * 'mAudioBufferModel' - Undocumented member.
--
-- * 'mTimedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream.
--
-- * 'mAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'mPcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
--
-- * 'mSegmentationMarkers' - Undocumented member.
--
-- * 'mDvbSubPids' - Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
--
-- * 'mScte35Source' - Undocumented member.
--
-- * 'mPatInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'mEsRateInPes' - Undocumented member.
--
-- * 'mBitrate' - The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
--
-- * 'mAudioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
--
-- * 'mDvbTeletextPid' - Packet Identifier (PID) for input source DVB Teletext data to this output.
--
-- * 'mNielsenId3' - Undocumented member.
--
-- * 'mSegmentationTime' - The length in seconds of each segment. Required unless markers is set to _none_.
--
-- * 'mEbpAudioInterval' - Undocumented member.
--
-- * 'mDvbNitSettings' - Undocumented member.
--
-- * 'mPcrControl' - Undocumented member.
--
-- * 'mEbpPlacement' - Undocumented member.
--
-- * 'mRateMode' - Undocumented member.
--
-- * 'mSegmentationStyle' - Undocumented member.
--
-- * 'mDvbTdtSettings' - Undocumented member.
m2tsSettings
    :: M2tsSettings
m2tsSettings
  = M2tsSettings'{_mPmtPid = Nothing,
                  _mVideoPid = Nothing, _mBufferModel = Nothing,
                  _mProgramNumber = Nothing, _mScte35Pid = Nothing,
                  _mMinEbpInterval = Nothing,
                  _mTransportStreamId = Nothing,
                  _mMaxPcrInterval = Nothing, _mFragmentTime = Nothing,
                  _mPrivateMetadataPid = Nothing,
                  _mPmtInterval = Nothing, _mDvbSdtSettings = Nothing,
                  _mNullPacketBitrate = Nothing,
                  _mAudioBufferModel = Nothing,
                  _mTimedMetadataPid = Nothing,
                  _mAudioFramesPerPes = Nothing, _mPcrPid = Nothing,
                  _mSegmentationMarkers = Nothing,
                  _mDvbSubPids = Nothing, _mScte35Source = Nothing,
                  _mPatInterval = Nothing, _mEsRateInPes = Nothing,
                  _mBitrate = Nothing, _mAudioPids = Nothing,
                  _mDvbTeletextPid = Nothing, _mNielsenId3 = Nothing,
                  _mSegmentationTime = Nothing,
                  _mEbpAudioInterval = Nothing,
                  _mDvbNitSettings = Nothing, _mPcrControl = Nothing,
                  _mEbpPlacement = Nothing, _mRateMode = Nothing,
                  _mSegmentationStyle = Nothing,
                  _mDvbTdtSettings = Nothing}

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
mPmtPid :: Lens' M2tsSettings (Maybe Int)
mPmtPid = lens _mPmtPid (\ s a -> s{_mPmtPid = a})

-- | Packet Identifier (PID) of the elementary video stream in the transport stream.
mVideoPid :: Lens' M2tsSettings (Maybe Int)
mVideoPid = lens _mVideoPid (\ s a -> s{_mVideoPid = a})

-- | Undocumented member.
mBufferModel :: Lens' M2tsSettings (Maybe M2tsBufferModel)
mBufferModel = lens _mBufferModel (\ s a -> s{_mBufferModel = a})

-- | The value of the program number field in the Program Map Table.
mProgramNumber :: Lens' M2tsSettings (Maybe Int)
mProgramNumber = lens _mProgramNumber (\ s a -> s{_mProgramNumber = a})

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
mScte35Pid :: Lens' M2tsSettings (Maybe Int)
mScte35Pid = lens _mScte35Pid (\ s a -> s{_mScte35Pid = a})

-- | When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
mMinEbpInterval :: Lens' M2tsSettings (Maybe Int)
mMinEbpInterval = lens _mMinEbpInterval (\ s a -> s{_mMinEbpInterval = a})

-- | The value of the transport stream ID field in the Program Map Table.
mTransportStreamId :: Lens' M2tsSettings (Maybe Int)
mTransportStreamId = lens _mTransportStreamId (\ s a -> s{_mTransportStreamId = a})

-- | Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
mMaxPcrInterval :: Lens' M2tsSettings (Maybe Int)
mMaxPcrInterval = lens _mMaxPcrInterval (\ s a -> s{_mMaxPcrInterval = a})

-- | The length in seconds of each fragment. Only used with EBP markers.
mFragmentTime :: Lens' M2tsSettings (Maybe Double)
mFragmentTime = lens _mFragmentTime (\ s a -> s{_mFragmentTime = a})

-- | Packet Identifier (PID) of the private metadata stream in the transport stream.
mPrivateMetadataPid :: Lens' M2tsSettings (Maybe Int)
mPrivateMetadataPid = lens _mPrivateMetadataPid (\ s a -> s{_mPrivateMetadataPid = a})

-- | The number of milliseconds between instances of this table in the output transport stream.
mPmtInterval :: Lens' M2tsSettings (Maybe Int)
mPmtInterval = lens _mPmtInterval (\ s a -> s{_mPmtInterval = a})

-- | Undocumented member.
mDvbSdtSettings :: Lens' M2tsSettings (Maybe DvbSdtSettings)
mDvbSdtSettings = lens _mDvbSdtSettings (\ s a -> s{_mDvbSdtSettings = a})

-- | Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
mNullPacketBitrate :: Lens' M2tsSettings (Maybe Double)
mNullPacketBitrate = lens _mNullPacketBitrate (\ s a -> s{_mNullPacketBitrate = a})

-- | Undocumented member.
mAudioBufferModel :: Lens' M2tsSettings (Maybe M2tsAudioBufferModel)
mAudioBufferModel = lens _mAudioBufferModel (\ s a -> s{_mAudioBufferModel = a})

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream.
mTimedMetadataPid :: Lens' M2tsSettings (Maybe Int)
mTimedMetadataPid = lens _mTimedMetadataPid (\ s a -> s{_mTimedMetadataPid = a})

-- | The number of audio frames to insert for each PES packet.
mAudioFramesPerPes :: Lens' M2tsSettings (Maybe Int)
mAudioFramesPerPes = lens _mAudioFramesPerPes (\ s a -> s{_mAudioFramesPerPes = a})

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
mPcrPid :: Lens' M2tsSettings (Maybe Int)
mPcrPid = lens _mPcrPid (\ s a -> s{_mPcrPid = a})

-- | Undocumented member.
mSegmentationMarkers :: Lens' M2tsSettings (Maybe M2tsSegmentationMarkers)
mSegmentationMarkers = lens _mSegmentationMarkers (\ s a -> s{_mSegmentationMarkers = a})

-- | Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
mDvbSubPids :: Lens' M2tsSettings [Int]
mDvbSubPids = lens _mDvbSubPids (\ s a -> s{_mDvbSubPids = a}) . _Default . _Coerce

-- | Undocumented member.
mScte35Source :: Lens' M2tsSettings (Maybe M2tsScte35Source)
mScte35Source = lens _mScte35Source (\ s a -> s{_mScte35Source = a})

-- | The number of milliseconds between instances of this table in the output transport stream.
mPatInterval :: Lens' M2tsSettings (Maybe Int)
mPatInterval = lens _mPatInterval (\ s a -> s{_mPatInterval = a})

-- | Undocumented member.
mEsRateInPes :: Lens' M2tsSettings (Maybe M2tsEsRateInPes)
mEsRateInPes = lens _mEsRateInPes (\ s a -> s{_mEsRateInPes = a})

-- | The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
mBitrate :: Lens' M2tsSettings (Maybe Int)
mBitrate = lens _mBitrate (\ s a -> s{_mBitrate = a})

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
mAudioPids :: Lens' M2tsSettings [Int]
mAudioPids = lens _mAudioPids (\ s a -> s{_mAudioPids = a}) . _Default . _Coerce

-- | Packet Identifier (PID) for input source DVB Teletext data to this output.
mDvbTeletextPid :: Lens' M2tsSettings (Maybe Int)
mDvbTeletextPid = lens _mDvbTeletextPid (\ s a -> s{_mDvbTeletextPid = a})

-- | Undocumented member.
mNielsenId3 :: Lens' M2tsSettings (Maybe M2tsNielsenId3)
mNielsenId3 = lens _mNielsenId3 (\ s a -> s{_mNielsenId3 = a})

-- | The length in seconds of each segment. Required unless markers is set to _none_.
mSegmentationTime :: Lens' M2tsSettings (Maybe Double)
mSegmentationTime = lens _mSegmentationTime (\ s a -> s{_mSegmentationTime = a})

-- | Undocumented member.
mEbpAudioInterval :: Lens' M2tsSettings (Maybe M2tsEbpAudioInterval)
mEbpAudioInterval = lens _mEbpAudioInterval (\ s a -> s{_mEbpAudioInterval = a})

-- | Undocumented member.
mDvbNitSettings :: Lens' M2tsSettings (Maybe DvbNitSettings)
mDvbNitSettings = lens _mDvbNitSettings (\ s a -> s{_mDvbNitSettings = a})

-- | Undocumented member.
mPcrControl :: Lens' M2tsSettings (Maybe M2tsPcrControl)
mPcrControl = lens _mPcrControl (\ s a -> s{_mPcrControl = a})

-- | Undocumented member.
mEbpPlacement :: Lens' M2tsSettings (Maybe M2tsEbpPlacement)
mEbpPlacement = lens _mEbpPlacement (\ s a -> s{_mEbpPlacement = a})

-- | Undocumented member.
mRateMode :: Lens' M2tsSettings (Maybe M2tsRateMode)
mRateMode = lens _mRateMode (\ s a -> s{_mRateMode = a})

-- | Undocumented member.
mSegmentationStyle :: Lens' M2tsSettings (Maybe M2tsSegmentationStyle)
mSegmentationStyle = lens _mSegmentationStyle (\ s a -> s{_mSegmentationStyle = a})

-- | Undocumented member.
mDvbTdtSettings :: Lens' M2tsSettings (Maybe DvbTdtSettings)
mDvbTdtSettings = lens _mDvbTdtSettings (\ s a -> s{_mDvbTdtSettings = a})

instance FromJSON M2tsSettings where
        parseJSON
          = withObject "M2tsSettings"
              (\ x ->
                 M2tsSettings' <$>
                   (x .:? "pmtPid") <*> (x .:? "videoPid") <*>
                     (x .:? "bufferModel")
                     <*> (x .:? "programNumber")
                     <*> (x .:? "scte35Pid")
                     <*> (x .:? "minEbpInterval")
                     <*> (x .:? "transportStreamId")
                     <*> (x .:? "maxPcrInterval")
                     <*> (x .:? "fragmentTime")
                     <*> (x .:? "privateMetadataPid")
                     <*> (x .:? "pmtInterval")
                     <*> (x .:? "dvbSdtSettings")
                     <*> (x .:? "nullPacketBitrate")
                     <*> (x .:? "audioBufferModel")
                     <*> (x .:? "timedMetadataPid")
                     <*> (x .:? "audioFramesPerPes")
                     <*> (x .:? "pcrPid")
                     <*> (x .:? "segmentationMarkers")
                     <*> (x .:? "dvbSubPids" .!= mempty)
                     <*> (x .:? "scte35Source")
                     <*> (x .:? "patInterval")
                     <*> (x .:? "esRateInPes")
                     <*> (x .:? "bitrate")
                     <*> (x .:? "audioPids" .!= mempty)
                     <*> (x .:? "dvbTeletextPid")
                     <*> (x .:? "nielsenId3")
                     <*> (x .:? "segmentationTime")
                     <*> (x .:? "ebpAudioInterval")
                     <*> (x .:? "dvbNitSettings")
                     <*> (x .:? "pcrControl")
                     <*> (x .:? "ebpPlacement")
                     <*> (x .:? "rateMode")
                     <*> (x .:? "segmentationStyle")
                     <*> (x .:? "dvbTdtSettings"))

instance Hashable M2tsSettings where

instance NFData M2tsSettings where

instance ToJSON M2tsSettings where
        toJSON M2tsSettings'{..}
          = object
              (catMaybes
                 [("pmtPid" .=) <$> _mPmtPid,
                  ("videoPid" .=) <$> _mVideoPid,
                  ("bufferModel" .=) <$> _mBufferModel,
                  ("programNumber" .=) <$> _mProgramNumber,
                  ("scte35Pid" .=) <$> _mScte35Pid,
                  ("minEbpInterval" .=) <$> _mMinEbpInterval,
                  ("transportStreamId" .=) <$> _mTransportStreamId,
                  ("maxPcrInterval" .=) <$> _mMaxPcrInterval,
                  ("fragmentTime" .=) <$> _mFragmentTime,
                  ("privateMetadataPid" .=) <$> _mPrivateMetadataPid,
                  ("pmtInterval" .=) <$> _mPmtInterval,
                  ("dvbSdtSettings" .=) <$> _mDvbSdtSettings,
                  ("nullPacketBitrate" .=) <$> _mNullPacketBitrate,
                  ("audioBufferModel" .=) <$> _mAudioBufferModel,
                  ("timedMetadataPid" .=) <$> _mTimedMetadataPid,
                  ("audioFramesPerPes" .=) <$> _mAudioFramesPerPes,
                  ("pcrPid" .=) <$> _mPcrPid,
                  ("segmentationMarkers" .=) <$> _mSegmentationMarkers,
                  ("dvbSubPids" .=) <$> _mDvbSubPids,
                  ("scte35Source" .=) <$> _mScte35Source,
                  ("patInterval" .=) <$> _mPatInterval,
                  ("esRateInPes" .=) <$> _mEsRateInPes,
                  ("bitrate" .=) <$> _mBitrate,
                  ("audioPids" .=) <$> _mAudioPids,
                  ("dvbTeletextPid" .=) <$> _mDvbTeletextPid,
                  ("nielsenId3" .=) <$> _mNielsenId3,
                  ("segmentationTime" .=) <$> _mSegmentationTime,
                  ("ebpAudioInterval" .=) <$> _mEbpAudioInterval,
                  ("dvbNitSettings" .=) <$> _mDvbNitSettings,
                  ("pcrControl" .=) <$> _mPcrControl,
                  ("ebpPlacement" .=) <$> _mEbpPlacement,
                  ("rateMode" .=) <$> _mRateMode,
                  ("segmentationStyle" .=) <$> _mSegmentationStyle,
                  ("dvbTdtSettings" .=) <$> _mDvbTdtSettings])
