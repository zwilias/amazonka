{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.CommandFilterKey (
  CommandFilterKey (
    ..
    , CommandInvokedAfter
    , CommandInvokedBefore
    , CommandStatus
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommandFilterKey = CommandFilterKey' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern CommandInvokedAfter :: CommandFilterKey
pattern CommandInvokedAfter = CommandFilterKey' "InvokedAfter"

pattern CommandInvokedBefore :: CommandFilterKey
pattern CommandInvokedBefore = CommandFilterKey' "InvokedBefore"

pattern CommandStatus :: CommandFilterKey
pattern CommandStatus = CommandFilterKey' "Status"

{-# COMPLETE
  CommandInvokedAfter,
  CommandInvokedBefore,
  CommandStatus,
  CommandFilterKey' #-}

instance FromText CommandFilterKey where
    parser = (CommandFilterKey' . mk) <$> takeText

instance ToText CommandFilterKey where
    toText (CommandFilterKey' ci) = original ci

-- | Represents an enum of /known/ $CommandFilterKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CommandFilterKey where
    toEnum i = case i of
        0 -> CommandInvokedAfter
        1 -> CommandInvokedBefore
        2 -> CommandStatus
        _ -> (error . showText) $ "Unknown index for CommandFilterKey: " <> toText i
    fromEnum x = case x of
        CommandInvokedAfter -> 0
        CommandInvokedBefore -> 1
        CommandStatus -> 2
        CommandFilterKey' name -> (error . showText) $ "Unknown CommandFilterKey: " <> original name

-- | Represents the bounds of /known/ $CommandFilterKey.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CommandFilterKey where
    minBound = CommandInvokedAfter
    maxBound = CommandStatus

instance Hashable     CommandFilterKey
instance NFData       CommandFilterKey
instance ToByteString CommandFilterKey
instance ToQuery      CommandFilterKey
instance ToHeader     CommandFilterKey

instance ToJSON CommandFilterKey where
    toJSON = toJSONText
