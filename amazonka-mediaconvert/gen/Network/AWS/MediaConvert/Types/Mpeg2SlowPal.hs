{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SlowPal
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2SlowPal where

import Network.AWS.Prelude
  
-- | Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
data Mpeg2SlowPal = MSPDisabled
                  | MSPEnabled
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText Mpeg2SlowPal where
    parser = takeLowerText >>= \case
        "disabled" -> pure MSPDisabled
        "enabled" -> pure MSPEnabled
        e -> fromTextError $ "Failure parsing Mpeg2SlowPal from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText Mpeg2SlowPal where
    toText = \case
        MSPDisabled -> "DISABLED"
        MSPEnabled -> "ENABLED"

instance Hashable     Mpeg2SlowPal
instance NFData       Mpeg2SlowPal
instance ToByteString Mpeg2SlowPal
instance ToQuery      Mpeg2SlowPal
instance ToHeader     Mpeg2SlowPal

instance ToJSON Mpeg2SlowPal where
    toJSON = toJSONText

instance FromJSON Mpeg2SlowPal where
    parseJSON = parseJSONText "Mpeg2SlowPal"
