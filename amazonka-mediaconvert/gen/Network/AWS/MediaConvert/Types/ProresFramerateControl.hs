{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresFramerateControl where

import Network.AWS.Prelude
  
-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data ProresFramerateControl = PFCInitializeFromSource
                            | PFCSpecified
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText ProresFramerateControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure PFCInitializeFromSource
        "specified" -> pure PFCSpecified
        e -> fromTextError $ "Failure parsing ProresFramerateControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText ProresFramerateControl where
    toText = \case
        PFCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        PFCSpecified -> "SPECIFIED"

instance Hashable     ProresFramerateControl
instance NFData       ProresFramerateControl
instance ToByteString ProresFramerateControl
instance ToQuery      ProresFramerateControl
instance ToHeader     ProresFramerateControl

instance ToJSON ProresFramerateControl where
    toJSON = toJSONText

instance FromJSON ProresFramerateControl where
    parseJSON = parseJSONText "ProresFramerateControl"
