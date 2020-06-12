{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresParControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresParControl where

import Network.AWS.Prelude
  
-- | Use (ProresParControl) to specify how the service determines the pixel aspect ratio. Set to Follow source (INITIALIZE_FROM_SOURCE) to use the pixel aspect ratio from the input.  To specify a different pixel aspect ratio: Using the console, choose it from the dropdown menu. Using the API, set ProresParControl to (SPECIFIED) and provide  for (ParNumerator) and (ParDenominator).
data ProresParControl = PPCInitializeFromSource
                      | PPCSpecified
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText ProresParControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure PPCInitializeFromSource
        "specified" -> pure PPCSpecified
        e -> fromTextError $ "Failure parsing ProresParControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText ProresParControl where
    toText = \case
        PPCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        PPCSpecified -> "SPECIFIED"

instance Hashable     ProresParControl
instance NFData       ProresParControl
instance ToByteString ProresParControl
instance ToQuery      ProresParControl
instance ToHeader     ProresParControl

instance ToJSON ProresParControl where
    toJSON = toJSONText

instance FromJSON ProresParControl where
    parseJSON = parseJSONText "ProresParControl"
