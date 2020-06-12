{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.EngineType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MQ.Types.EngineType where

import Network.AWS.Prelude
  
-- | The type of broker engine. Note: Currently, Amazon MQ supports only ActiveMQ.
data EngineType = Activemq
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText EngineType where
    parser = takeLowerText >>= \case
        "activemq" -> pure Activemq
        e -> fromTextError $ "Failure parsing EngineType from value: '" <> e
           <> "'. Accepted values: activemq"

instance ToText EngineType where
    toText = \case
        Activemq -> "ACTIVEMQ"

instance Hashable     EngineType
instance NFData       EngineType
instance ToByteString EngineType
instance ToQuery      EngineType
instance ToHeader     EngineType

instance ToJSON EngineType where
    toJSON = toJSONText

instance FromJSON EngineType where
    parseJSON = parseJSONText "EngineType"
