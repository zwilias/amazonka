{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresSlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresSlowPal where

import Network.AWS.Prelude
  
-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
data ProresSlowPal = PSPDisabled
                   | PSPEnabled
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText ProresSlowPal where
    parser = takeLowerText >>= \case
        "disabled" -> pure PSPDisabled
        "enabled" -> pure PSPEnabled
        e -> fromTextError $ "Failure parsing ProresSlowPal from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText ProresSlowPal where
    toText = \case
        PSPDisabled -> "DISABLED"
        PSPEnabled -> "ENABLED"

instance Hashable     ProresSlowPal
instance NFData       ProresSlowPal
instance ToByteString ProresSlowPal
instance ToQuery      ProresSlowPal
instance ToHeader     ProresSlowPal

instance ToJSON ProresSlowPal where
    toJSON = toJSONText

instance FromJSON ProresSlowPal where
    parseJSON = parseJSONText "ProresSlowPal"
