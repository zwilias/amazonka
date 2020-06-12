{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264FramerateControl where

import Network.AWS.Prelude
  
-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data H264FramerateControl = HInitializeFromSource
                          | HSpecified
                              deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                        Data, Typeable, Generic)

instance FromText H264FramerateControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure HInitializeFromSource
        "specified" -> pure HSpecified
        e -> fromTextError $ "Failure parsing H264FramerateControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText H264FramerateControl where
    toText = \case
        HInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        HSpecified -> "SPECIFIED"

instance Hashable     H264FramerateControl
instance NFData       H264FramerateControl
instance ToByteString H264FramerateControl
instance ToQuery      H264FramerateControl
instance ToHeader     H264FramerateControl

instance ToJSON H264FramerateControl where
    toJSON = toJSONText

instance FromJSON H264FramerateControl where
    parseJSON = parseJSONText "H264FramerateControl"
