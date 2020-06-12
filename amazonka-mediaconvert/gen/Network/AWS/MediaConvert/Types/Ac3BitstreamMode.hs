{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Ac3BitstreamMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Ac3BitstreamMode where

import Network.AWS.Prelude
  
-- | Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
data Ac3BitstreamMode = Commentary
                      | CompleteMain
                      | Dialogue
                      | Emergency
                      | HearingImpaired
                      | MusicAndEffects
                      | VisuallyImpaired
                      | VoiceOver
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText Ac3BitstreamMode where
    parser = takeLowerText >>= \case
        "commentary" -> pure Commentary
        "complete_main" -> pure CompleteMain
        "dialogue" -> pure Dialogue
        "emergency" -> pure Emergency
        "hearing_impaired" -> pure HearingImpaired
        "music_and_effects" -> pure MusicAndEffects
        "visually_impaired" -> pure VisuallyImpaired
        "voice_over" -> pure VoiceOver
        e -> fromTextError $ "Failure parsing Ac3BitstreamMode from value: '" <> e
           <> "'. Accepted values: commentary, complete_main, dialogue, emergency, hearing_impaired, music_and_effects, visually_impaired, voice_over"

instance ToText Ac3BitstreamMode where
    toText = \case
        Commentary -> "COMMENTARY"
        CompleteMain -> "COMPLETE_MAIN"
        Dialogue -> "DIALOGUE"
        Emergency -> "EMERGENCY"
        HearingImpaired -> "HEARING_IMPAIRED"
        MusicAndEffects -> "MUSIC_AND_EFFECTS"
        VisuallyImpaired -> "VISUALLY_IMPAIRED"
        VoiceOver -> "VOICE_OVER"

instance Hashable     Ac3BitstreamMode
instance NFData       Ac3BitstreamMode
instance ToByteString Ac3BitstreamMode
instance ToQuery      Ac3BitstreamMode
instance ToHeader     Ac3BitstreamMode

instance ToJSON Ac3BitstreamMode where
    toJSON = toJSONText

instance FromJSON Ac3BitstreamMode where
    parseJSON = parseJSONText "Ac3BitstreamMode"
