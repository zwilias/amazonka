{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Glue.Types.CrawlerState (
  CrawlerState (
    ..
    , CSReady
    , CSRunning
    , CSStopping
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CrawlerState = CrawlerState' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern CSReady :: CrawlerState
pattern CSReady = CrawlerState' "READY"

pattern CSRunning :: CrawlerState
pattern CSRunning = CrawlerState' "RUNNING"

pattern CSStopping :: CrawlerState
pattern CSStopping = CrawlerState' "STOPPING"

{-# COMPLETE
  CSReady,
  CSRunning,
  CSStopping,
  CrawlerState' #-}

instance FromText CrawlerState where
    parser = (CrawlerState' . mk) <$> takeText

instance ToText CrawlerState where
    toText (CrawlerState' ci) = original ci

-- | Represents an enum of /known/ $CrawlerState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CrawlerState where
    toEnum i = case i of
        0 -> CSReady
        1 -> CSRunning
        2 -> CSStopping
        _ -> (error . showText) $ "Unknown index for CrawlerState: " <> toText i
    fromEnum x = case x of
        CSReady -> 0
        CSRunning -> 1
        CSStopping -> 2
        CrawlerState' name -> (error . showText) $ "Unknown CrawlerState: " <> original name

-- | Represents the bounds of /known/ $CrawlerState.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CrawlerState where
    minBound = CSReady
    maxBound = CSStopping

instance Hashable     CrawlerState
instance NFData       CrawlerState
instance ToByteString CrawlerState
instance ToQuery      CrawlerState
instance ToHeader     CrawlerState

instance FromJSON CrawlerState where
    parseJSON = parseJSONText "CrawlerState"
