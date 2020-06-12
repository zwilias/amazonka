{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265FramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265FramerateControl where

import Network.AWS.Prelude
  
-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data H265FramerateControl = HFCInitializeFromSource
                          | HFCSpecified
                              deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                        Data, Typeable, Generic)

instance FromText H265FramerateControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure HFCInitializeFromSource
        "specified" -> pure HFCSpecified
        e -> fromTextError $ "Failure parsing H265FramerateControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText H265FramerateControl where
    toText = \case
        HFCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        HFCSpecified -> "SPECIFIED"

instance Hashable     H265FramerateControl
instance NFData       H265FramerateControl
instance ToByteString H265FramerateControl
instance ToQuery      H265FramerateControl
instance ToHeader     H265FramerateControl

instance ToJSON H265FramerateControl where
    toJSON = toJSONText

instance FromJSON H265FramerateControl where
    parseJSON = parseJSONText "H265FramerateControl"
