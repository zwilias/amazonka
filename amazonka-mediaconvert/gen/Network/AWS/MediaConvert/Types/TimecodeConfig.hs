{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TimecodeConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.TimecodeConfig where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.TimecodeSource
import Network.AWS.Prelude

-- | Contains settings used to acquire and adjust timecode information from inputs.
--
-- /See:/ 'timecodeConfig' smart constructor.
data TimecodeConfig = TimecodeConfig'{_tcStart ::
                                      !(Maybe Text),
                                      _tcTimestampOffset :: !(Maybe Text),
                                      _tcAnchor :: !(Maybe Text),
                                      _tcSource :: !(Maybe TimecodeSource)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TimecodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcStart' - Only use when you set Timecode Source (TimecodeSource) to Specified Start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF).
--
-- * 'tcTimestampOffset' - Only applies to outputs that support program-date-time stamp. Use Time stamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format "yyyy-mm-dd".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings.
--
-- * 'tcAnchor' - If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores framerate conversion. System behavior for Anchor Timecode varies depending on your setting for Timecode source (TimecodeSource). * If Timecode source (TimecodeSource) is set to Specified Start (specifiedstart), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Timecode source (TimecodeSource) is set to Start at 0 (zerobased)  the  first frame is 00:00:00:00. * If Timecode source (TimecodeSource) is set to Embedded (embedded), the  first frame is the timecode value on the first input frame of the input.
--
-- * 'tcSource' - Undocumented member.
timecodeConfig
    :: TimecodeConfig
timecodeConfig
  = TimecodeConfig'{_tcStart = Nothing,
                    _tcTimestampOffset = Nothing, _tcAnchor = Nothing,
                    _tcSource = Nothing}

-- | Only use when you set Timecode Source (TimecodeSource) to Specified Start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF).
tcStart :: Lens' TimecodeConfig (Maybe Text)
tcStart = lens _tcStart (\ s a -> s{_tcStart = a})

-- | Only applies to outputs that support program-date-time stamp. Use Time stamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format "yyyy-mm-dd".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings.
tcTimestampOffset :: Lens' TimecodeConfig (Maybe Text)
tcTimestampOffset = lens _tcTimestampOffset (\ s a -> s{_tcTimestampOffset = a})

-- | If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores framerate conversion. System behavior for Anchor Timecode varies depending on your setting for Timecode source (TimecodeSource). * If Timecode source (TimecodeSource) is set to Specified Start (specifiedstart), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Timecode source (TimecodeSource) is set to Start at 0 (zerobased)  the  first frame is 00:00:00:00. * If Timecode source (TimecodeSource) is set to Embedded (embedded), the  first frame is the timecode value on the first input frame of the input.
tcAnchor :: Lens' TimecodeConfig (Maybe Text)
tcAnchor = lens _tcAnchor (\ s a -> s{_tcAnchor = a})

-- | Undocumented member.
tcSource :: Lens' TimecodeConfig (Maybe TimecodeSource)
tcSource = lens _tcSource (\ s a -> s{_tcSource = a})

instance FromJSON TimecodeConfig where
        parseJSON
          = withObject "TimecodeConfig"
              (\ x ->
                 TimecodeConfig' <$>
                   (x .:? "start") <*> (x .:? "timestampOffset") <*>
                     (x .:? "anchor")
                     <*> (x .:? "source"))

instance Hashable TimecodeConfig where

instance NFData TimecodeConfig where

instance ToJSON TimecodeConfig where
        toJSON TimecodeConfig'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _tcStart,
                  ("timestampOffset" .=) <$> _tcTimestampOffset,
                  ("anchor" .=) <$> _tcAnchor,
                  ("source" .=) <$> _tcSource])
