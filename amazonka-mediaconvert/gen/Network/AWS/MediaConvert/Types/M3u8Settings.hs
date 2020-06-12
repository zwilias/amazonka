{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M3u8Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.M3u8NielsenId3
import Network.AWS.MediaConvert.Types.M3u8PcrControl
import Network.AWS.MediaConvert.Types.M3u8Scte35Source
import Network.AWS.MediaConvert.Types.TimedMetadata
import Network.AWS.Prelude

-- | Settings for TS segments in HLS
--
-- /See:/ 'm3u8Settings' smart constructor.
data M3u8Settings = M3u8Settings'{_msPmtPid ::
                                  !(Maybe Int),
                                  _msVideoPid :: !(Maybe Int),
                                  _msProgramNumber :: !(Maybe Int),
                                  _msScte35Pid :: !(Maybe Int),
                                  _msTransportStreamId :: !(Maybe Int),
                                  _msPrivateMetadataPid :: !(Maybe Int),
                                  _msPmtInterval :: !(Maybe Int),
                                  _msTimedMetadataPid :: !(Maybe Int),
                                  _msAudioFramesPerPes :: !(Maybe Int),
                                  _msPcrPid :: !(Maybe Int),
                                  _msTimedMetadata :: !(Maybe TimedMetadata),
                                  _msScte35Source :: !(Maybe M3u8Scte35Source),
                                  _msPatInterval :: !(Maybe Int),
                                  _msAudioPids :: !(Maybe [Int]),
                                  _msNielsenId3 :: !(Maybe M3u8NielsenId3),
                                  _msPcrControl :: !(Maybe M3u8PcrControl)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M3u8Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msPmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
--
-- * 'msVideoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream.
--
-- * 'msProgramNumber' - The value of the program number field in the Program Map Table.
--
-- * 'msScte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
--
-- * 'msTransportStreamId' - The value of the transport stream ID field in the Program Map Table.
--
-- * 'msPrivateMetadataPid' - Packet Identifier (PID) of the private metadata stream in the transport stream.
--
-- * 'msPmtInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'msTimedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream.
--
-- * 'msAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'msPcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
--
-- * 'msTimedMetadata' - Undocumented member.
--
-- * 'msScte35Source' - Undocumented member.
--
-- * 'msPatInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'msAudioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
--
-- * 'msNielsenId3' - Undocumented member.
--
-- * 'msPcrControl' - Undocumented member.
m3u8Settings
    :: M3u8Settings
m3u8Settings
  = M3u8Settings'{_msPmtPid = Nothing,
                  _msVideoPid = Nothing, _msProgramNumber = Nothing,
                  _msScte35Pid = Nothing,
                  _msTransportStreamId = Nothing,
                  _msPrivateMetadataPid = Nothing,
                  _msPmtInterval = Nothing,
                  _msTimedMetadataPid = Nothing,
                  _msAudioFramesPerPes = Nothing, _msPcrPid = Nothing,
                  _msTimedMetadata = Nothing,
                  _msScte35Source = Nothing, _msPatInterval = Nothing,
                  _msAudioPids = Nothing, _msNielsenId3 = Nothing,
                  _msPcrControl = Nothing}

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
msPmtPid :: Lens' M3u8Settings (Maybe Int)
msPmtPid = lens _msPmtPid (\ s a -> s{_msPmtPid = a})

-- | Packet Identifier (PID) of the elementary video stream in the transport stream.
msVideoPid :: Lens' M3u8Settings (Maybe Int)
msVideoPid = lens _msVideoPid (\ s a -> s{_msVideoPid = a})

-- | The value of the program number field in the Program Map Table.
msProgramNumber :: Lens' M3u8Settings (Maybe Int)
msProgramNumber = lens _msProgramNumber (\ s a -> s{_msProgramNumber = a})

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
msScte35Pid :: Lens' M3u8Settings (Maybe Int)
msScte35Pid = lens _msScte35Pid (\ s a -> s{_msScte35Pid = a})

-- | The value of the transport stream ID field in the Program Map Table.
msTransportStreamId :: Lens' M3u8Settings (Maybe Int)
msTransportStreamId = lens _msTransportStreamId (\ s a -> s{_msTransportStreamId = a})

-- | Packet Identifier (PID) of the private metadata stream in the transport stream.
msPrivateMetadataPid :: Lens' M3u8Settings (Maybe Int)
msPrivateMetadataPid = lens _msPrivateMetadataPid (\ s a -> s{_msPrivateMetadataPid = a})

-- | The number of milliseconds between instances of this table in the output transport stream.
msPmtInterval :: Lens' M3u8Settings (Maybe Int)
msPmtInterval = lens _msPmtInterval (\ s a -> s{_msPmtInterval = a})

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream.
msTimedMetadataPid :: Lens' M3u8Settings (Maybe Int)
msTimedMetadataPid = lens _msTimedMetadataPid (\ s a -> s{_msTimedMetadataPid = a})

-- | The number of audio frames to insert for each PES packet.
msAudioFramesPerPes :: Lens' M3u8Settings (Maybe Int)
msAudioFramesPerPes = lens _msAudioFramesPerPes (\ s a -> s{_msAudioFramesPerPes = a})

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
msPcrPid :: Lens' M3u8Settings (Maybe Int)
msPcrPid = lens _msPcrPid (\ s a -> s{_msPcrPid = a})

-- | Undocumented member.
msTimedMetadata :: Lens' M3u8Settings (Maybe TimedMetadata)
msTimedMetadata = lens _msTimedMetadata (\ s a -> s{_msTimedMetadata = a})

-- | Undocumented member.
msScte35Source :: Lens' M3u8Settings (Maybe M3u8Scte35Source)
msScte35Source = lens _msScte35Source (\ s a -> s{_msScte35Source = a})

-- | The number of milliseconds between instances of this table in the output transport stream.
msPatInterval :: Lens' M3u8Settings (Maybe Int)
msPatInterval = lens _msPatInterval (\ s a -> s{_msPatInterval = a})

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
msAudioPids :: Lens' M3u8Settings [Int]
msAudioPids = lens _msAudioPids (\ s a -> s{_msAudioPids = a}) . _Default . _Coerce

-- | Undocumented member.
msNielsenId3 :: Lens' M3u8Settings (Maybe M3u8NielsenId3)
msNielsenId3 = lens _msNielsenId3 (\ s a -> s{_msNielsenId3 = a})

-- | Undocumented member.
msPcrControl :: Lens' M3u8Settings (Maybe M3u8PcrControl)
msPcrControl = lens _msPcrControl (\ s a -> s{_msPcrControl = a})

instance FromJSON M3u8Settings where
        parseJSON
          = withObject "M3u8Settings"
              (\ x ->
                 M3u8Settings' <$>
                   (x .:? "pmtPid") <*> (x .:? "videoPid") <*>
                     (x .:? "programNumber")
                     <*> (x .:? "scte35Pid")
                     <*> (x .:? "transportStreamId")
                     <*> (x .:? "privateMetadataPid")
                     <*> (x .:? "pmtInterval")
                     <*> (x .:? "timedMetadataPid")
                     <*> (x .:? "audioFramesPerPes")
                     <*> (x .:? "pcrPid")
                     <*> (x .:? "timedMetadata")
                     <*> (x .:? "scte35Source")
                     <*> (x .:? "patInterval")
                     <*> (x .:? "audioPids" .!= mempty)
                     <*> (x .:? "nielsenId3")
                     <*> (x .:? "pcrControl"))

instance Hashable M3u8Settings where

instance NFData M3u8Settings where

instance ToJSON M3u8Settings where
        toJSON M3u8Settings'{..}
          = object
              (catMaybes
                 [("pmtPid" .=) <$> _msPmtPid,
                  ("videoPid" .=) <$> _msVideoPid,
                  ("programNumber" .=) <$> _msProgramNumber,
                  ("scte35Pid" .=) <$> _msScte35Pid,
                  ("transportStreamId" .=) <$> _msTransportStreamId,
                  ("privateMetadataPid" .=) <$> _msPrivateMetadataPid,
                  ("pmtInterval" .=) <$> _msPmtInterval,
                  ("timedMetadataPid" .=) <$> _msTimedMetadataPid,
                  ("audioFramesPerPes" .=) <$> _msAudioFramesPerPes,
                  ("pcrPid" .=) <$> _msPcrPid,
                  ("timedMetadata" .=) <$> _msTimedMetadata,
                  ("scte35Source" .=) <$> _msScte35Source,
                  ("patInterval" .=) <$> _msPatInterval,
                  ("audioPids" .=) <$> _msAudioPids,
                  ("nielsenId3" .=) <$> _msNielsenId3,
                  ("pcrControl" .=) <$> _msPcrControl])
