{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionPropertyKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.ConnectionPropertyKey where

import Network.AWS.Prelude
  
data ConnectionPropertyKey = ConfigFiles
                           | Host
                           | InstanceId
                           | JdbcConnectionURL
                           | JdbcDriverClassName
                           | JdbcDriverJARURI
                           | JdbcEngine
                           | JdbcEngineVersion
                           | Password
                           | Port
                           | Username
                               deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                         Data, Typeable, Generic)

instance FromText ConnectionPropertyKey where
    parser = takeLowerText >>= \case
        "config_files" -> pure ConfigFiles
        "host" -> pure Host
        "instance_id" -> pure InstanceId
        "jdbc_connection_url" -> pure JdbcConnectionURL
        "jdbc_driver_class_name" -> pure JdbcDriverClassName
        "jdbc_driver_jar_uri" -> pure JdbcDriverJARURI
        "jdbc_engine" -> pure JdbcEngine
        "jdbc_engine_version" -> pure JdbcEngineVersion
        "password" -> pure Password
        "port" -> pure Port
        "username" -> pure Username
        e -> fromTextError $ "Failure parsing ConnectionPropertyKey from value: '" <> e
           <> "'. Accepted values: config_files, host, instance_id, jdbc_connection_url, jdbc_driver_class_name, jdbc_driver_jar_uri, jdbc_engine, jdbc_engine_version, password, port, username"

instance ToText ConnectionPropertyKey where
    toText = \case
        ConfigFiles -> "CONFIG_FILES"
        Host -> "HOST"
        InstanceId -> "INSTANCE_ID"
        JdbcConnectionURL -> "JDBC_CONNECTION_URL"
        JdbcDriverClassName -> "JDBC_DRIVER_CLASS_NAME"
        JdbcDriverJARURI -> "JDBC_DRIVER_JAR_URI"
        JdbcEngine -> "JDBC_ENGINE"
        JdbcEngineVersion -> "JDBC_ENGINE_VERSION"
        Password -> "PASSWORD"
        Port -> "PORT"
        Username -> "USERNAME"

instance Hashable     ConnectionPropertyKey
instance NFData       ConnectionPropertyKey
instance ToByteString ConnectionPropertyKey
instance ToQuery      ConnectionPropertyKey
instance ToHeader     ConnectionPropertyKey

instance ToJSON ConnectionPropertyKey where
    toJSON = toJSONText

instance FromJSON ConnectionPropertyKey where
    parseJSON = parseJSONText "ConnectionPropertyKey"
