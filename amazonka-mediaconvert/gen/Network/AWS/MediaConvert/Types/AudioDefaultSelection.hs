{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioDefaultSelection
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioDefaultSelection (
  AudioDefaultSelection (
    ..
    , Default
    , NotDefault
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When an "Audio Description":#audio_description specifies an AudioSelector or AudioSelectorGroup  for which no matching source is found in the input, then the audio selector marked as DEFAULT will be used.  If none are marked as default, silence will be inserted for the duration of the input.
data AudioDefaultSelection = AudioDefaultSelection' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern Default :: AudioDefaultSelection
pattern Default = AudioDefaultSelection' "DEFAULT"

pattern NotDefault :: AudioDefaultSelection
pattern NotDefault = AudioDefaultSelection' "NOT_DEFAULT"

{-# COMPLETE
  Default,
  NotDefault,
  AudioDefaultSelection' #-}

instance FromText AudioDefaultSelection where
    parser = (AudioDefaultSelection' . mk) <$> takeText

instance ToText AudioDefaultSelection where
    toText (AudioDefaultSelection' ci) = original ci

-- | Represents an enum of /known/ $AudioDefaultSelection.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum AudioDefaultSelection where
    toEnum i = case i of
        0 -> Default
        1 -> NotDefault
        _ -> (error . showText) $ "Unknown index for AudioDefaultSelection: " <> toText i
    fromEnum x = case x of
        Default -> 0
        NotDefault -> 1
        AudioDefaultSelection' name -> (error . showText) $ "Unknown AudioDefaultSelection: " <> original name

-- | Represents the bounds of /known/ $AudioDefaultSelection.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded AudioDefaultSelection where
    minBound = Default
    maxBound = NotDefault

instance Hashable     AudioDefaultSelection
instance NFData       AudioDefaultSelection
instance ToByteString AudioDefaultSelection
instance ToQuery      AudioDefaultSelection
instance ToHeader     AudioDefaultSelection

instance ToJSON AudioDefaultSelection where
    toJSON = toJSONText

instance FromJSON AudioDefaultSelection where
    parseJSON = parseJSONText "AudioDefaultSelection"
