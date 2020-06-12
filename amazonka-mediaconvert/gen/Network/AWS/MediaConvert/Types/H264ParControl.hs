{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264ParControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264ParControl where

import Network.AWS.Prelude
  
-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
data H264ParControl = HPCInitializeFromSource
                    | HPCSpecified
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText H264ParControl where
    parser = takeLowerText >>= \case
        "initialize_from_source" -> pure HPCInitializeFromSource
        "specified" -> pure HPCSpecified
        e -> fromTextError $ "Failure parsing H264ParControl from value: '" <> e
           <> "'. Accepted values: initialize_from_source, specified"

instance ToText H264ParControl where
    toText = \case
        HPCInitializeFromSource -> "INITIALIZE_FROM_SOURCE"
        HPCSpecified -> "SPECIFIED"

instance Hashable     H264ParControl
instance NFData       H264ParControl
instance ToByteString H264ParControl
instance ToQuery      H264ParControl
instance ToHeader     H264ParControl

instance ToJSON H264ParControl where
    toJSON = toJSONText

instance FromJSON H264ParControl where
    parseJSON = parseJSONText "H264ParControl"
