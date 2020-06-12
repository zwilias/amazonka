{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballCapacity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.SnowballCapacity where

import Network.AWS.Prelude
  
data SnowballCapacity = NoPreference
                      | T100
                      | T50
                      | T80
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText SnowballCapacity where
    parser = takeLowerText >>= \case
        "nopreference" -> pure NoPreference
        "t100" -> pure T100
        "t50" -> pure T50
        "t80" -> pure T80
        e -> fromTextError $ "Failure parsing SnowballCapacity from value: '" <> e
           <> "'. Accepted values: nopreference, t100, t50, t80"

instance ToText SnowballCapacity where
    toText = \case
        NoPreference -> "NoPreference"
        T100 -> "T100"
        T50 -> "T50"
        T80 -> "T80"

instance Hashable     SnowballCapacity
instance NFData       SnowballCapacity
instance ToByteString SnowballCapacity
instance ToQuery      SnowballCapacity
instance ToHeader     SnowballCapacity

instance ToJSON SnowballCapacity where
    toJSON = toJSONText

instance FromJSON SnowballCapacity where
    parseJSON = parseJSONText "SnowballCapacity"
