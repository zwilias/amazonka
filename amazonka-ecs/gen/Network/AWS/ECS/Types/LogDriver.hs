{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.LogDriver
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.LogDriver (
  LogDriver (
    ..
    , AWSlogs
    , Fluentd
    , Gelf
    , JSONFile
    , Journald
    , Splunk
    , Syslog
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogDriver = LogDriver' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern AWSlogs :: LogDriver
pattern AWSlogs = LogDriver' "awslogs"

pattern Fluentd :: LogDriver
pattern Fluentd = LogDriver' "fluentd"

pattern Gelf :: LogDriver
pattern Gelf = LogDriver' "gelf"

pattern JSONFile :: LogDriver
pattern JSONFile = LogDriver' "json-file"

pattern Journald :: LogDriver
pattern Journald = LogDriver' "journald"

pattern Splunk :: LogDriver
pattern Splunk = LogDriver' "splunk"

pattern Syslog :: LogDriver
pattern Syslog = LogDriver' "syslog"

{-# COMPLETE
  AWSlogs,
  Fluentd,
  Gelf,
  JSONFile,
  Journald,
  Splunk,
  Syslog,
  LogDriver' #-}

instance FromText LogDriver where
    parser = (LogDriver' . mk) <$> takeText

instance ToText LogDriver where
    toText (LogDriver' ci) = original ci

-- | Represents an enum of /known/ $LogDriver.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum LogDriver where
    toEnum i = case i of
        0 -> AWSlogs
        1 -> Fluentd
        2 -> Gelf
        3 -> JSONFile
        4 -> Journald
        5 -> Splunk
        6 -> Syslog
        _ -> (error . showText) $ "Unknown index for LogDriver: " <> toText i
    fromEnum x = case x of
        AWSlogs -> 0
        Fluentd -> 1
        Gelf -> 2
        JSONFile -> 3
        Journald -> 4
        Splunk -> 5
        Syslog -> 6
        LogDriver' name -> (error . showText) $ "Unknown LogDriver: " <> original name

-- | Represents the bounds of /known/ $LogDriver.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LogDriver where
    minBound = AWSlogs
    maxBound = Syslog

instance Hashable     LogDriver
instance NFData       LogDriver
instance ToByteString LogDriver
instance ToQuery      LogDriver
instance ToHeader     LogDriver

instance ToJSON LogDriver where
    toJSON = toJSONText

instance FromJSON LogDriver where
    parseJSON = parseJSONText "LogDriver"
