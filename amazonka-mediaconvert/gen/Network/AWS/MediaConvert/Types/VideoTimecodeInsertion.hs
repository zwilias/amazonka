{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoTimecodeInsertion where

import Network.AWS.Prelude
  
-- | Enable Timecode insertion to include timecode information in this output. Do this in the API by setting (VideoTimecodeInsertion) to (PIC_TIMING_SEI). To get timecodes to appear correctly in your output, also set up the timecode configuration for your job in the input settings. Only enable Timecode insertion when the input framerate is identical to output framerate. Disable this setting to remove the timecode from the output. Default is disabled.
data VideoTimecodeInsertion = VTIDisabled
                            | VTIPicTimingSei
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText VideoTimecodeInsertion where
    parser = takeLowerText >>= \case
        "disabled" -> pure VTIDisabled
        "pic_timing_sei" -> pure VTIPicTimingSei
        e -> fromTextError $ "Failure parsing VideoTimecodeInsertion from value: '" <> e
           <> "'. Accepted values: disabled, pic_timing_sei"

instance ToText VideoTimecodeInsertion where
    toText = \case
        VTIDisabled -> "DISABLED"
        VTIPicTimingSei -> "PIC_TIMING_SEI"

instance Hashable     VideoTimecodeInsertion
instance NFData       VideoTimecodeInsertion
instance ToByteString VideoTimecodeInsertion
instance ToQuery      VideoTimecodeInsertion
instance ToHeader     VideoTimecodeInsertion

instance ToJSON VideoTimecodeInsertion where
    toJSON = toJSONText

instance FromJSON VideoTimecodeInsertion where
    parseJSON = parseJSONText "VideoTimecodeInsertion"
