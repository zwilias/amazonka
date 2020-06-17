{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Glue.Types.ConnectionPropertyKey (
  ConnectionPropertyKey (
    ..
    , ConfigFiles
    , Host
    , InstanceId
    , JdbcConnectionURL
    , JdbcDriverClassName
    , JdbcDriverJARURI
    , JdbcEngine
    , JdbcEngineVersion
    , Password
    , Port
    , Username
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionPropertyKey = ConnectionPropertyKey' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern ConfigFiles :: ConnectionPropertyKey
pattern ConfigFiles = ConnectionPropertyKey' "CONFIG_FILES"

pattern Host :: ConnectionPropertyKey
pattern Host = ConnectionPropertyKey' "HOST"

pattern InstanceId :: ConnectionPropertyKey
pattern InstanceId = ConnectionPropertyKey' "INSTANCE_ID"

pattern JdbcConnectionURL :: ConnectionPropertyKey
pattern JdbcConnectionURL = ConnectionPropertyKey' "JDBC_CONNECTION_URL"

pattern JdbcDriverClassName :: ConnectionPropertyKey
pattern JdbcDriverClassName = ConnectionPropertyKey' "JDBC_DRIVER_CLASS_NAME"

pattern JdbcDriverJARURI :: ConnectionPropertyKey
pattern JdbcDriverJARURI = ConnectionPropertyKey' "JDBC_DRIVER_JAR_URI"

pattern JdbcEngine :: ConnectionPropertyKey
pattern JdbcEngine = ConnectionPropertyKey' "JDBC_ENGINE"

pattern JdbcEngineVersion :: ConnectionPropertyKey
pattern JdbcEngineVersion = ConnectionPropertyKey' "JDBC_ENGINE_VERSION"

pattern Password :: ConnectionPropertyKey
pattern Password = ConnectionPropertyKey' "PASSWORD"

pattern Port :: ConnectionPropertyKey
pattern Port = ConnectionPropertyKey' "PORT"

pattern Username :: ConnectionPropertyKey
pattern Username = ConnectionPropertyKey' "USERNAME"

{-# COMPLETE
  ConfigFiles,
  Host,
  InstanceId,
  JdbcConnectionURL,
  JdbcDriverClassName,
  JdbcDriverJARURI,
  JdbcEngine,
  JdbcEngineVersion,
  Password,
  Port,
  Username,
  ConnectionPropertyKey' #-}

instance FromText ConnectionPropertyKey where
    parser = (ConnectionPropertyKey' . mk) <$> takeText

instance ToText ConnectionPropertyKey where
    toText (ConnectionPropertyKey' ci) = original ci

-- | Represents an enum of /known/ $ConnectionPropertyKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ConnectionPropertyKey where
    toEnum i = case i of
        0 -> ConfigFiles
        1 -> Host
        2 -> InstanceId
        3 -> JdbcConnectionURL
        4 -> JdbcDriverClassName
        5 -> JdbcDriverJARURI
        6 -> JdbcEngine
        7 -> JdbcEngineVersion
        8 -> Password
        9 -> Port
        10 -> Username
        _ -> (error . showText) $ "Unknown index for ConnectionPropertyKey: " <> toText i
    fromEnum x = case x of
        ConfigFiles -> 0
        Host -> 1
        InstanceId -> 2
        JdbcConnectionURL -> 3
        JdbcDriverClassName -> 4
        JdbcDriverJARURI -> 5
        JdbcEngine -> 6
        JdbcEngineVersion -> 7
        Password -> 8
        Port -> 9
        Username -> 10
        ConnectionPropertyKey' name -> (error . showText) $ "Unknown ConnectionPropertyKey: " <> original name

-- | Represents the bounds of /known/ $ConnectionPropertyKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ConnectionPropertyKey where
    minBound = ConfigFiles
    maxBound = Username

instance Hashable     ConnectionPropertyKey
instance NFData       ConnectionPropertyKey
instance ToByteString ConnectionPropertyKey
instance ToQuery      ConnectionPropertyKey
instance ToHeader     ConnectionPropertyKey

instance ToJSON ConnectionPropertyKey where
    toJSON = toJSONText

instance FromJSON ConnectionPropertyKey where
    parseJSON = parseJSONText "ConnectionPropertyKey"
