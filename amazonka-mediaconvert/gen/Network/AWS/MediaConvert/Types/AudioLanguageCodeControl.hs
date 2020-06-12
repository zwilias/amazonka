{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.MediaConvert.Types.AudioLanguageCodeControl where

import Network.AWS.Prelude
  
-- | Choosing FOLLOW_INPUT will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The language specified for languageCode' will be used when USE_CONFIGURED is selected or when FOLLOW_INPUT is selected but there is no ISO 639 language code specified by the input.
data AudioLanguageCodeControl = FollowInput
                              | UseConfigured
                                  deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                            Data, Typeable, Generic)

instance FromText AudioLanguageCodeControl where
    parser = takeLowerText >>= \case
        "follow_input" -> pure FollowInput
        "use_configured" -> pure UseConfigured
        e -> fromTextError $ "Failure parsing AudioLanguageCodeControl from value: '" <> e
           <> "'. Accepted values: follow_input, use_configured"

instance ToText AudioLanguageCodeControl where
    toText = \case
        FollowInput -> "FOLLOW_INPUT"
        UseConfigured -> "USE_CONFIGURED"

instance Hashable     AudioLanguageCodeControl
instance NFData       AudioLanguageCodeControl
instance ToByteString AudioLanguageCodeControl
instance ToQuery      AudioLanguageCodeControl
instance ToHeader     AudioLanguageCodeControl

instance ToJSON AudioLanguageCodeControl where
    toJSON = toJSONText

instance FromJSON AudioLanguageCodeControl where
    parseJSON = parseJSONText "AudioLanguageCodeControl"
