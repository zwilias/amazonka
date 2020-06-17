{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputTimecodeSource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InputTimecodeSource (
  InputTimecodeSource (
    ..
    , Embedded
    , Specifiedstart
    , Zerobased
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Timecode source (InputTimecodeSource) to specify how timecode information from your input is adjusted and encoded in all outputs for the job. Default is embedded. Set to Embedded (EMBEDDED) to use the timecode that is in the input video. If no embedded timecode is in the source, will set the timecode for the first frame to 00:00:00:00. Set to Start at 0 (ZEROBASED) to set the timecode of the initial frame to 00:00:00:00. Set to Specified start (SPECIFIEDSTART) to provide the initial timecode yourself the setting (Start).
data InputTimecodeSource = InputTimecodeSource' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Embedded :: InputTimecodeSource
pattern Embedded = InputTimecodeSource' "EMBEDDED"

pattern Specifiedstart :: InputTimecodeSource
pattern Specifiedstart = InputTimecodeSource' "SPECIFIEDSTART"

pattern Zerobased :: InputTimecodeSource
pattern Zerobased = InputTimecodeSource' "ZEROBASED"

{-# COMPLETE
  Embedded,
  Specifiedstart,
  Zerobased,
  InputTimecodeSource' #-}

instance FromText InputTimecodeSource where
    parser = (InputTimecodeSource' . mk) <$> takeText

instance ToText InputTimecodeSource where
    toText (InputTimecodeSource' ci) = original ci

-- | Represents an enum of /known/ $InputTimecodeSource.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InputTimecodeSource where
    toEnum i = case i of
        0 -> Embedded
        1 -> Specifiedstart
        2 -> Zerobased
        _ -> (error . showText) $ "Unknown index for InputTimecodeSource: " <> toText i
    fromEnum x = case x of
        Embedded -> 0
        Specifiedstart -> 1
        Zerobased -> 2
        InputTimecodeSource' name -> (error . showText) $ "Unknown InputTimecodeSource: " <> original name

-- | Represents the bounds of /known/ $InputTimecodeSource.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InputTimecodeSource where
    minBound = Embedded
    maxBound = Zerobased

instance Hashable     InputTimecodeSource
instance NFData       InputTimecodeSource
instance ToByteString InputTimecodeSource
instance ToQuery      InputTimecodeSource
instance ToHeader     InputTimecodeSource

instance ToJSON InputTimecodeSource where
    toJSON = toJSONText

instance FromJSON InputTimecodeSource where
    parseJSON = parseJSONText "InputTimecodeSource"
