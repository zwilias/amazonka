{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.MediaConvert.Types.Ac3BitstreamMode (
  Ac3BitstreamMode (
    ..
    , Commentary
    , CompleteMain
    , Dialogue
    , Emergency
    , HearingImpaired
    , MusicAndEffects
    , VisuallyImpaired
    , VoiceOver
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
data Ac3BitstreamMode = Ac3BitstreamMode' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern Commentary :: Ac3BitstreamMode
pattern Commentary = Ac3BitstreamMode' "COMMENTARY"

pattern CompleteMain :: Ac3BitstreamMode
pattern CompleteMain = Ac3BitstreamMode' "COMPLETE_MAIN"

pattern Dialogue :: Ac3BitstreamMode
pattern Dialogue = Ac3BitstreamMode' "DIALOGUE"

pattern Emergency :: Ac3BitstreamMode
pattern Emergency = Ac3BitstreamMode' "EMERGENCY"

pattern HearingImpaired :: Ac3BitstreamMode
pattern HearingImpaired = Ac3BitstreamMode' "HEARING_IMPAIRED"

pattern MusicAndEffects :: Ac3BitstreamMode
pattern MusicAndEffects = Ac3BitstreamMode' "MUSIC_AND_EFFECTS"

pattern VisuallyImpaired :: Ac3BitstreamMode
pattern VisuallyImpaired = Ac3BitstreamMode' "VISUALLY_IMPAIRED"

pattern VoiceOver :: Ac3BitstreamMode
pattern VoiceOver = Ac3BitstreamMode' "VOICE_OVER"

{-# COMPLETE
  Commentary,
  CompleteMain,
  Dialogue,
  Emergency,
  HearingImpaired,
  MusicAndEffects,
  VisuallyImpaired,
  VoiceOver,
  Ac3BitstreamMode' #-}

instance FromText Ac3BitstreamMode where
    parser = (Ac3BitstreamMode' . mk) <$> takeText

instance ToText Ac3BitstreamMode where
    toText (Ac3BitstreamMode' ci) = original ci

-- | Represents an enum of /known/ $Ac3BitstreamMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Ac3BitstreamMode where
    toEnum i = case i of
        0 -> Commentary
        1 -> CompleteMain
        2 -> Dialogue
        3 -> Emergency
        4 -> HearingImpaired
        5 -> MusicAndEffects
        6 -> VisuallyImpaired
        7 -> VoiceOver
        _ -> (error . showText) $ "Unknown index for Ac3BitstreamMode: " <> toText i
    fromEnum x = case x of
        Commentary -> 0
        CompleteMain -> 1
        Dialogue -> 2
        Emergency -> 3
        HearingImpaired -> 4
        MusicAndEffects -> 5
        VisuallyImpaired -> 6
        VoiceOver -> 7
        Ac3BitstreamMode' name -> (error . showText) $ "Unknown Ac3BitstreamMode: " <> original name

-- | Represents the bounds of /known/ $Ac3BitstreamMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Ac3BitstreamMode where
    minBound = Commentary
    maxBound = VoiceOver

instance Hashable     Ac3BitstreamMode
instance NFData       Ac3BitstreamMode
instance ToByteString Ac3BitstreamMode
instance ToQuery      Ac3BitstreamMode
instance ToHeader     Ac3BitstreamMode

instance ToJSON Ac3BitstreamMode where
    toJSON = toJSONText

instance FromJSON Ac3BitstreamMode where
    parseJSON = parseJSONText "Ac3BitstreamMode"
