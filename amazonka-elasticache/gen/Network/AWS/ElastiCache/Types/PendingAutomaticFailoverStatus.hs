{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus where

import Network.AWS.Prelude
  
data PendingAutomaticFailoverStatus = Disabled
                                    | Enabled
                                        deriving (Eq, Ord, Read, Show, Enum,
                                                  Bounded, Data, Typeable,
                                                  Generic)

instance FromText PendingAutomaticFailoverStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure Disabled
        "enabled" -> pure Enabled
        e -> fromTextError $ "Failure parsing PendingAutomaticFailoverStatus from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText PendingAutomaticFailoverStatus where
    toText = \case
        Disabled -> "disabled"
        Enabled -> "enabled"

instance Hashable     PendingAutomaticFailoverStatus
instance NFData       PendingAutomaticFailoverStatus
instance ToByteString PendingAutomaticFailoverStatus
instance ToQuery      PendingAutomaticFailoverStatus
instance ToHeader     PendingAutomaticFailoverStatus

instance FromXML PendingAutomaticFailoverStatus where
    parseXML = parseXMLText "PendingAutomaticFailoverStatus"
