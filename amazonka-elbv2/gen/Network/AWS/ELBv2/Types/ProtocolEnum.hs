{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ProtocolEnum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.ProtocolEnum where

import Network.AWS.Prelude
  
data ProtocolEnum = HTTP
                  | HTTPS
                  | TCP
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText ProtocolEnum where
    parser = takeLowerText >>= \case
        "http" -> pure HTTP
        "https" -> pure HTTPS
        "tcp" -> pure TCP
        e -> fromTextError $ "Failure parsing ProtocolEnum from value: '" <> e
           <> "'. Accepted values: http, https, tcp"

instance ToText ProtocolEnum where
    toText = \case
        HTTP -> "HTTP"
        HTTPS -> "HTTPS"
        TCP -> "TCP"

instance Hashable     ProtocolEnum
instance NFData       ProtocolEnum
instance ToByteString ProtocolEnum
instance ToQuery      ProtocolEnum
instance ToHeader     ProtocolEnum

instance FromXML ProtocolEnum where
    parseXML = parseXMLText "ProtocolEnum"
