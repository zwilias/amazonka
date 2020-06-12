{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.Compute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkSpaces.Types.Compute where

import Network.AWS.Prelude
  
data Compute = Graphics
             | Performance
             | Power
             | Standard
             | Value
                 deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                           Typeable, Generic)

instance FromText Compute where
    parser = takeLowerText >>= \case
        "graphics" -> pure Graphics
        "performance" -> pure Performance
        "power" -> pure Power
        "standard" -> pure Standard
        "value" -> pure Value
        e -> fromTextError $ "Failure parsing Compute from value: '" <> e
           <> "'. Accepted values: graphics, performance, power, standard, value"

instance ToText Compute where
    toText = \case
        Graphics -> "GRAPHICS"
        Performance -> "PERFORMANCE"
        Power -> "POWER"
        Standard -> "STANDARD"
        Value -> "VALUE"

instance Hashable     Compute
instance NFData       Compute
instance ToByteString Compute
instance ToQuery      Compute
instance ToHeader     Compute

instance ToJSON Compute where
    toJSON = toJSONText

instance FromJSON Compute where
    parseJSON = parseJSONText "Compute"
