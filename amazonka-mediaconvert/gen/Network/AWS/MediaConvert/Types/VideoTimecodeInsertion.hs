{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.VideoTimecodeInsertion (
  VideoTimecodeInsertion (
    ..
    , VTIDisabled
    , VTIPicTimingSei
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable Timecode insertion to include timecode information in this output. Do this in the API by setting (VideoTimecodeInsertion) to (PIC_TIMING_SEI). To get timecodes to appear correctly in your output, also set up the timecode configuration for your job in the input settings. Only enable Timecode insertion when the input framerate is identical to output framerate. Disable this setting to remove the timecode from the output. Default is disabled.
data VideoTimecodeInsertion = VideoTimecodeInsertion' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern VTIDisabled :: VideoTimecodeInsertion
pattern VTIDisabled = VideoTimecodeInsertion' "DISABLED"

pattern VTIPicTimingSei :: VideoTimecodeInsertion
pattern VTIPicTimingSei = VideoTimecodeInsertion' "PIC_TIMING_SEI"

{-# COMPLETE
  VTIDisabled,
  VTIPicTimingSei,
  VideoTimecodeInsertion' #-}

instance FromText VideoTimecodeInsertion where
    parser = (VideoTimecodeInsertion' . mk) <$> takeText

instance ToText VideoTimecodeInsertion where
    toText (VideoTimecodeInsertion' ci) = original ci

-- | Represents an enum of /known/ $VideoTimecodeInsertion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum VideoTimecodeInsertion where
    toEnum i = case i of
        0 -> VTIDisabled
        1 -> VTIPicTimingSei
        _ -> (error . showText) $ "Unknown index for VideoTimecodeInsertion: " <> toText i
    fromEnum x = case x of
        VTIDisabled -> 0
        VTIPicTimingSei -> 1
        VideoTimecodeInsertion' name -> (error . showText) $ "Unknown VideoTimecodeInsertion: " <> original name

-- | Represents the bounds of /known/ $VideoTimecodeInsertion.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded VideoTimecodeInsertion where
    minBound = VTIDisabled
    maxBound = VTIPicTimingSei

instance Hashable     VideoTimecodeInsertion
instance NFData       VideoTimecodeInsertion
instance ToByteString VideoTimecodeInsertion
instance ToQuery      VideoTimecodeInsertion
instance ToHeader     VideoTimecodeInsertion

instance ToJSON VideoTimecodeInsertion where
    toJSON = toJSONText

instance FromJSON VideoTimecodeInsertion where
    parseJSON = parseJSONText "VideoTimecodeInsertion"
