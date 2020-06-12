{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ColorSpaceUsage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ColorSpaceUsage where

import Network.AWS.Prelude
  
-- | There are two sources for color metadata, the input file and the job configuration. This enum controls which takes precedence. FORCE: System will use color metadata supplied by user, if any. If the user does not supply color metadata the system will use data from the source. FALLBACK: System will use color metadata from the source. If source has no color metadata, the system will use user-supplied color metadata values if available.
data ColorSpaceUsage = Fallback
                     | Force
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText ColorSpaceUsage where
    parser = takeLowerText >>= \case
        "fallback" -> pure Fallback
        "force" -> pure Force
        e -> fromTextError $ "Failure parsing ColorSpaceUsage from value: '" <> e
           <> "'. Accepted values: fallback, force"

instance ToText ColorSpaceUsage where
    toText = \case
        Fallback -> "FALLBACK"
        Force -> "FORCE"

instance Hashable     ColorSpaceUsage
instance NFData       ColorSpaceUsage
instance ToByteString ColorSpaceUsage
instance ToQuery      ColorSpaceUsage
instance ToHeader     ColorSpaceUsage

instance ToJSON ColorSpaceUsage where
    toJSON = toJSONText

instance FromJSON ColorSpaceUsage where
    parseJSON = parseJSONText "ColorSpaceUsage"
