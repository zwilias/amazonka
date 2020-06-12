{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.ConnectionType where

import Network.AWS.Prelude
  
data ConnectionType = Jdbc
                    | Sftp
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText ConnectionType where
    parser = takeLowerText >>= \case
        "jdbc" -> pure Jdbc
        "sftp" -> pure Sftp
        e -> fromTextError $ "Failure parsing ConnectionType from value: '" <> e
           <> "'. Accepted values: jdbc, sftp"

instance ToText ConnectionType where
    toText = \case
        Jdbc -> "JDBC"
        Sftp -> "SFTP"

instance Hashable     ConnectionType
instance NFData       ConnectionType
instance ToByteString ConnectionType
instance ToQuery      ConnectionType
instance ToHeader     ConnectionType

instance ToJSON ConnectionType where
    toJSON = toJSONText

instance FromJSON ConnectionType where
    parseJSON = parseJSONText "ConnectionType"
