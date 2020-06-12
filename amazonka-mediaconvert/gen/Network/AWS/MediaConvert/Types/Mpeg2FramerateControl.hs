{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2FramerateControl where

import Network.AWS.Prelude
  
-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data Mpeg2FramerateControl = MFCInitializeFromSource
                           | MFCSpecified
                               deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                         Data, Typeable, Generic)

instance FromText Mpeg2FramerateControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure MFCInitializeFromSource
        "specified" -> pure MFCSpecified
        e -> fromTextError $ "Failure parsing Mpeg2FramerateControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText Mpeg2FramerateControl where
    toText = \case
        MFCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        MFCSpecified -> "SPECIFIED"

instance Hashable     Mpeg2FramerateControl
instance NFData       Mpeg2FramerateControl
instance ToByteString Mpeg2FramerateControl
instance ToQuery      Mpeg2FramerateControl
instance ToHeader     Mpeg2FramerateControl

instance ToJSON Mpeg2FramerateControl where
    toJSON = toJSONText

instance FromJSON Mpeg2FramerateControl where
    parseJSON = parseJSONText "Mpeg2FramerateControl"
