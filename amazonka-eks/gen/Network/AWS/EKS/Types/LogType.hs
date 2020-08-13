{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.LogType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.LogType (
  LogType (
    ..
    , API
    , Audit
    , Authenticator
    , ControllerManager
    , Scheduler
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogType = LogType' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern API :: LogType
pattern API = LogType' "api"

pattern Audit :: LogType
pattern Audit = LogType' "audit"

pattern Authenticator :: LogType
pattern Authenticator = LogType' "authenticator"

pattern ControllerManager :: LogType
pattern ControllerManager = LogType' "controllerManager"

pattern Scheduler :: LogType
pattern Scheduler = LogType' "scheduler"

{-# COMPLETE
  API,
  Audit,
  Authenticator,
  ControllerManager,
  Scheduler,
  LogType' #-}

instance FromText LogType where
    parser = (LogType' . mk) <$> takeText

instance ToText LogType where
    toText (LogType' ci) = original ci

-- | Represents an enum of /known/ $LogType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum LogType where
    toEnum i = case i of
        0 -> API
        1 -> Audit
        2 -> Authenticator
        3 -> ControllerManager
        4 -> Scheduler
        _ -> (error . showText) $ "Unknown index for LogType: " <> toText i
    fromEnum x = case x of
        API -> 0
        Audit -> 1
        Authenticator -> 2
        ControllerManager -> 3
        Scheduler -> 4
        LogType' name -> (error . showText) $ "Unknown LogType: " <> original name

-- | Represents the bounds of /known/ $LogType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LogType where
    minBound = API
    maxBound = Scheduler

instance Hashable     LogType
instance NFData       LogType
instance ToByteString LogType
instance ToQuery      LogType
instance ToHeader     LogType

instance ToJSON LogType where
    toJSON = toJSONText

instance FromJSON LogType where
    parseJSON = parseJSONText "LogType"
