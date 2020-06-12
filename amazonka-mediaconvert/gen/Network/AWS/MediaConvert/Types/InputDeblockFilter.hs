{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputDeblockFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InputDeblockFilter where

import Network.AWS.Prelude
  
-- | Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manaully controllable for MPEG2 and uncompressed video inputs.
data InputDeblockFilter = Disabled
                        | Enabled
                            deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                      Typeable, Generic)

instance FromText InputDeblockFilter where
    parser = takeLowerText >>= \case
        "disabled" -> pure Disabled
        "enabled" -> pure Enabled
        e -> fromTextError $ "Failure parsing InputDeblockFilter from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText InputDeblockFilter where
    toText = \case
        Disabled -> "DISABLED"
        Enabled -> "ENABLED"

instance Hashable     InputDeblockFilter
instance NFData       InputDeblockFilter
instance ToByteString InputDeblockFilter
instance ToQuery      InputDeblockFilter
instance ToHeader     InputDeblockFilter

instance ToJSON InputDeblockFilter where
    toJSON = toJSONText

instance FromJSON InputDeblockFilter where
    parseJSON = parseJSONText "InputDeblockFilter"
