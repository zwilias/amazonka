{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.DiskState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.DiskState where

import Network.AWS.Prelude
  
data DiskState = Available
               | Error'
               | InUse
               | Pending
               | Unknown
                   deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                             Typeable, Generic)

instance FromText DiskState where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "error" -> pure Error'
        "in-use" -> pure InUse
        "pending" -> pure Pending
        "unknown" -> pure Unknown
        e -> fromTextError $ "Failure parsing DiskState from value: '" <> e
           <> "'. Accepted values: available, error, in-use, pending, unknown"

instance ToText DiskState where
    toText = \case
        Available -> "available"
        Error' -> "error"
        InUse -> "in-use"
        Pending -> "pending"
        Unknown -> "unknown"

instance Hashable     DiskState
instance NFData       DiskState
instance ToByteString DiskState
instance ToQuery      DiskState
instance ToHeader     DiskState

instance FromJSON DiskState where
    parseJSON = parseJSONText "DiskState"
