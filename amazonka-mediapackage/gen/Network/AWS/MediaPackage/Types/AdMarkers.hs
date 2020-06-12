{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.AdMarkers
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types.AdMarkers where

import Network.AWS.Prelude
  
data AdMarkers = AMNone
               | AMPassthrough
               | AMSCTE35Enhanced
                   deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                             Typeable, Generic)

instance FromText AdMarkers where
    parser = takeLowerText >>= \case
        "none" -> pure AMNone
        "passthrough" -> pure AMPassthrough
        "scte35_enhanced" -> pure AMSCTE35Enhanced
        e -> fromTextError $ "Failure parsing AdMarkers from value: '" <> e
           <> "'. Accepted values: none, passthrough, scte35_enhanced"

instance ToText AdMarkers where
    toText = \case
        AMNone -> "NONE"
        AMPassthrough -> "PASSTHROUGH"
        AMSCTE35Enhanced -> "SCTE35_ENHANCED"

instance Hashable     AdMarkers
instance NFData       AdMarkers
instance ToByteString AdMarkers
instance ToQuery      AdMarkers
instance ToHeader     AdMarkers

instance ToJSON AdMarkers where
    toJSON = toJSONText

instance FromJSON AdMarkers where
    parseJSON = parseJSONText "AdMarkers"
