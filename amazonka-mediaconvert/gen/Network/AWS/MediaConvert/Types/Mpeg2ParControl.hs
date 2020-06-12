{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2ParControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2ParControl where

import Network.AWS.Prelude
  
-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
data Mpeg2ParControl = MPCInitializeFromSource
                     | MPCSpecified
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText Mpeg2ParControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure MPCInitializeFromSource
        "specified" -> pure MPCSpecified
        e -> fromTextError $ "Failure parsing Mpeg2ParControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText Mpeg2ParControl where
    toText = \case
        MPCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        MPCSpecified -> "SPECIFIED"

instance Hashable     Mpeg2ParControl
instance NFData       Mpeg2ParControl
instance ToByteString Mpeg2ParControl
instance ToQuery      Mpeg2ParControl
instance ToHeader     Mpeg2ParControl

instance ToJSON Mpeg2ParControl where
    toJSON = toJSONText

instance FromJSON Mpeg2ParControl where
    parseJSON = parseJSONText "Mpeg2ParControl"
