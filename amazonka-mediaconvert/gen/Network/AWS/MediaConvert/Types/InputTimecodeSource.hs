{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.InputTimecodeSource where

import Network.AWS.Prelude
  
-- | Use Timecode source (InputTimecodeSource) to specify how timecode information from your input is adjusted and encoded in all outputs for the job. Default is embedded. Set to Embedded (EMBEDDED) to use the timecode that is in the input video. If no embedded timecode is in the source, will set the timecode for the first frame to 00:00:00:00. Set to Start at 0 (ZEROBASED) to set the timecode of the initial frame to 00:00:00:00. Set to Specified start (SPECIFIEDSTART) to provide the initial timecode yourself the setting (Start).
data InputTimecodeSource = Embedded
                         | Specifiedstart
                         | Zerobased
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText InputTimecodeSource where
    parser = takeLowerText >>= \case
        "embedded" -> pure Embedded
        "specifiedstart" -> pure Specifiedstart
        "zerobased" -> pure Zerobased
        e -> fromTextError $ "Failure parsing InputTimecodeSource from value: '" <> e
           <> "'. Accepted values: embedded, specifiedstart, zerobased"

instance ToText InputTimecodeSource where
    toText = \case
        Embedded -> "EMBEDDED"
        Specifiedstart -> "SPECIFIEDSTART"
        Zerobased -> "ZEROBASED"

instance Hashable     InputTimecodeSource
instance NFData       InputTimecodeSource
instance ToByteString InputTimecodeSource
instance ToQuery      InputTimecodeSource
instance ToHeader     InputTimecodeSource

instance ToJSON InputTimecodeSource where
    toJSON = toJSONText

instance FromJSON InputTimecodeSource where
    parseJSON = parseJSONText "InputTimecodeSource"
