{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TtmlStylePassthrough
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.TtmlStylePassthrough where

import Network.AWS.Prelude
  
-- | Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
data TtmlStylePassthrough = TSPDisabled
                          | TSPEnabled
                              deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                        Data, Typeable, Generic)

instance FromText TtmlStylePassthrough where
    parser = takeLowerText >>= \case
        "disabled" -> pure TSPDisabled
        "enabled" -> pure TSPEnabled
        e -> fromTextError $ "Failure parsing TtmlStylePassthrough from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText TtmlStylePassthrough where
    toText = \case
        TSPDisabled -> "DISABLED"
        TSPEnabled -> "ENABLED"

instance Hashable     TtmlStylePassthrough
instance NFData       TtmlStylePassthrough
instance ToByteString TtmlStylePassthrough
instance ToQuery      TtmlStylePassthrough
instance ToHeader     TtmlStylePassthrough

instance ToJSON TtmlStylePassthrough where
    toJSON = toJSONText

instance FromJSON TtmlStylePassthrough where
    parseJSON = parseJSONText "TtmlStylePassthrough"
