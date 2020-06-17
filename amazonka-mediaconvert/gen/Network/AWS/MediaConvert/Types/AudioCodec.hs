{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioCodec
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioCodec (
  AudioCodec (
    ..
    , AC3
    , Aac
    , Aiff
    , EAC3
    , MP2
    , Passthrough
    , Wav
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of Audio codec.
data AudioCodec = AudioCodec' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern AC3 :: AudioCodec
pattern AC3 = AudioCodec' "AC3"

pattern Aac :: AudioCodec
pattern Aac = AudioCodec' "AAC"

pattern Aiff :: AudioCodec
pattern Aiff = AudioCodec' "AIFF"

pattern EAC3 :: AudioCodec
pattern EAC3 = AudioCodec' "EAC3"

pattern MP2 :: AudioCodec
pattern MP2 = AudioCodec' "MP2"

pattern Passthrough :: AudioCodec
pattern Passthrough = AudioCodec' "PASSTHROUGH"

pattern Wav :: AudioCodec
pattern Wav = AudioCodec' "WAV"

{-# COMPLETE
  AC3,
  Aac,
  Aiff,
  EAC3,
  MP2,
  Passthrough,
  Wav,
  AudioCodec' #-}

instance FromText AudioCodec where
    parser = (AudioCodec' . mk) <$> takeText

instance ToText AudioCodec where
    toText (AudioCodec' ci) = original ci

-- | Represents an enum of /known/ $AudioCodec.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum AudioCodec where
    toEnum i = case i of
        0 -> AC3
        1 -> Aac
        2 -> Aiff
        3 -> EAC3
        4 -> MP2
        5 -> Passthrough
        6 -> Wav
        _ -> (error . showText) $ "Unknown index for AudioCodec: " <> toText i
    fromEnum x = case x of
        AC3 -> 0
        Aac -> 1
        Aiff -> 2
        EAC3 -> 3
        MP2 -> 4
        Passthrough -> 5
        Wav -> 6
        AudioCodec' name -> (error . showText) $ "Unknown AudioCodec: " <> original name

-- | Represents the bounds of /known/ $AudioCodec.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded AudioCodec where
    minBound = AC3
    maxBound = Wav

instance Hashable     AudioCodec
instance NFData       AudioCodec
instance ToByteString AudioCodec
instance ToQuery      AudioCodec
instance ToHeader     AudioCodec

instance ToJSON AudioCodec where
    toJSON = toJSONText

instance FromJSON AudioCodec where
    parseJSON = parseJSONText "AudioCodec"
