{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.CrawlerState where

import Network.AWS.Prelude
  
data CrawlerState = CSReady
                  | CSRunning
                  | CSStopping
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText CrawlerState where
    parser = takeLowerText >>= \case
        "ready" -> pure CSReady
        "running" -> pure CSRunning
        "stopping" -> pure CSStopping
        e -> fromTextError $ "Failure parsing CrawlerState from value: '" <> e
           <> "'. Accepted values: ready, running, stopping"

instance ToText CrawlerState where
    toText = \case
        CSReady -> "READY"
        CSRunning -> "RUNNING"
        CSStopping -> "STOPPING"

instance Hashable     CrawlerState
instance NFData       CrawlerState
instance ToByteString CrawlerState
instance ToQuery      CrawlerState
instance ToHeader     CrawlerState

instance FromJSON CrawlerState where
    parseJSON = parseJSONText "CrawlerState"
