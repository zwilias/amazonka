{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.AudioDefaultSelection where

import Network.AWS.Prelude
  
-- | When an "Audio Description":#audio_description specifies an AudioSelector or AudioSelectorGroup  for which no matching source is found in the input, then the audio selector marked as DEFAULT will be used.  If none are marked as default, silence will be inserted for the duration of the input.
data AudioDefaultSelection = Default
                           | NotDefault
                               deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                         Data, Typeable, Generic)

instance FromText AudioDefaultSelection where
    parser = takeLowerText >>= \case
        "default" -> pure Default
        "not_default" -> pure NotDefault
        e -> fromTextError $ "Failure parsing AudioDefaultSelection from value: '" <> e
           <> "'. Accepted values: default, not_default"

instance ToText AudioDefaultSelection where
    toText = \case
        Default -> "DEFAULT"
        NotDefault -> "NOT_DEFAULT"

instance Hashable     AudioDefaultSelection
instance NFData       AudioDefaultSelection
instance ToByteString AudioDefaultSelection
instance ToQuery      AudioDefaultSelection
instance ToHeader     AudioDefaultSelection

instance ToJSON AudioDefaultSelection where
    toJSON = toJSONText

instance FromJSON AudioDefaultSelection where
    parseJSON = parseJSONText "AudioDefaultSelection"
