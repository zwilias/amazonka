{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputClipping
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InputClipping where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Include one instance of (InputClipping) for each input clip.
--
-- /See:/ 'inputClipping' smart constructor.
data InputClipping = InputClipping'{_icEndTimecode ::
                                    !(Maybe Text),
                                    _icStartTimecode :: !(Maybe Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputClipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icEndTimecode' - Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:00:05:00.
--
-- * 'icStartTimecode' - Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:00:05:00.
inputClipping
    :: InputClipping
inputClipping
  = InputClipping'{_icEndTimecode = Nothing,
                   _icStartTimecode = Nothing}

-- | Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:00:05:00.
icEndTimecode :: Lens' InputClipping (Maybe Text)
icEndTimecode = lens _icEndTimecode (\ s a -> s{_icEndTimecode = a})

-- | Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:00:05:00.
icStartTimecode :: Lens' InputClipping (Maybe Text)
icStartTimecode = lens _icStartTimecode (\ s a -> s{_icStartTimecode = a})

instance FromJSON InputClipping where
        parseJSON
          = withObject "InputClipping"
              (\ x ->
                 InputClipping' <$>
                   (x .:? "endTimecode") <*> (x .:? "startTimecode"))

instance Hashable InputClipping where

instance NFData InputClipping where

instance ToJSON InputClipping where
        toJSON InputClipping'{..}
          = object
              (catMaybes
                 [("endTimecode" .=) <$> _icEndTimecode,
                  ("startTimecode" .=) <$> _icStartTimecode])
