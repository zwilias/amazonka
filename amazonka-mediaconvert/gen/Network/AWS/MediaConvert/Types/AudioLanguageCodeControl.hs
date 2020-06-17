{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioLanguageCodeControl (
  AudioLanguageCodeControl (
    ..
    , FollowInput
    , UseConfigured
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choosing FOLLOW_INPUT will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The language specified for languageCode' will be used when USE_CONFIGURED is selected or when FOLLOW_INPUT is selected but there is no ISO 639 language code specified by the input.
data AudioLanguageCodeControl = AudioLanguageCodeControl' (CI
                                                             Text)
                                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                                            Generic)

pattern FollowInput :: AudioLanguageCodeControl
pattern FollowInput = AudioLanguageCodeControl' "FOLLOW_INPUT"

pattern UseConfigured :: AudioLanguageCodeControl
pattern UseConfigured = AudioLanguageCodeControl' "USE_CONFIGURED"

{-# COMPLETE
  FollowInput,
  UseConfigured,
  AudioLanguageCodeControl' #-}

instance FromText AudioLanguageCodeControl where
    parser = (AudioLanguageCodeControl' . mk) <$> takeText

instance ToText AudioLanguageCodeControl where
    toText (AudioLanguageCodeControl' ci) = original ci

-- | Represents an enum of /known/ $AudioLanguageCodeControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum AudioLanguageCodeControl where
    toEnum i = case i of
        0 -> FollowInput
        1 -> UseConfigured
        _ -> (error . showText) $ "Unknown index for AudioLanguageCodeControl: " <> toText i
    fromEnum x = case x of
        FollowInput -> 0
        UseConfigured -> 1
        AudioLanguageCodeControl' name -> (error . showText) $ "Unknown AudioLanguageCodeControl: " <> original name

-- | Represents the bounds of /known/ $AudioLanguageCodeControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded AudioLanguageCodeControl where
    minBound = FollowInput
    maxBound = UseConfigured

instance Hashable     AudioLanguageCodeControl
instance NFData       AudioLanguageCodeControl
instance ToByteString AudioLanguageCodeControl
instance ToQuery      AudioLanguageCodeControl
instance ToHeader     AudioLanguageCodeControl

instance ToJSON AudioLanguageCodeControl where
    toJSON = toJSONText

instance FromJSON AudioLanguageCodeControl where
    parseJSON = parseJSONText "AudioLanguageCodeControl"
