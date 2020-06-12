{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputResolution
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.InputResolution where

import Network.AWS.Prelude
  
-- | Input resolution based on lines of vertical resolution in the input; SD is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than 1080 lines
data InputResolution = HD
                     | SD
                     | Uhd
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText InputResolution where
    parser = takeLowerText >>= \case
        "hd" -> pure HD
        "sd" -> pure SD
        "uhd" -> pure Uhd
        e -> fromTextError $ "Failure parsing InputResolution from value: '" <> e
           <> "'. Accepted values: hd, sd, uhd"

instance ToText InputResolution where
    toText = \case
        HD -> "HD"
        SD -> "SD"
        Uhd -> "UHD"

instance Hashable     InputResolution
instance NFData       InputResolution
instance ToByteString InputResolution
instance ToQuery      InputResolution
instance ToHeader     InputResolution

instance ToJSON InputResolution where
    toJSON = toJSONText

instance FromJSON InputResolution where
    parseJSON = parseJSONText "InputResolution"
