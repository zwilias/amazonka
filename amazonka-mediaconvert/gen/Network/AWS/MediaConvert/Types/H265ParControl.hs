{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265ParControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265ParControl where

import Network.AWS.Prelude
  
-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
data H265ParControl = InitializeFromSource
                    | Specified
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText H265ParControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure InitializeFromSource
        "specified" -> pure Specified
        e -> fromTextError $ "Failure parsing H265ParControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText H265ParControl where
    toText = \case
        InitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        Specified -> "SPECIFIED"

instance Hashable     H265ParControl
instance NFData       H265ParControl
instance ToByteString H265ParControl
instance ToQuery      H265ParControl
instance ToHeader     H265ParControl

instance ToJSON H265ParControl where
    toJSON = toJSONText

instance FromJSON H265ParControl where
    parseJSON = parseJSONText "H265ParControl"
