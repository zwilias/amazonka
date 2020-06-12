{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerCatalogStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ServerCatalogStatus where

import Network.AWS.Prelude
  
-- | Status of Server catalog
data ServerCatalogStatus = Available
                         | Deleted
                         | Expired
                         | Importing
                         | NotImported
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText ServerCatalogStatus where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "deleted" -> pure Deleted
        "expired" -> pure Expired
        "importing" -> pure Importing
        "not_imported" -> pure NotImported
        e -> fromTextError $ "Failure parsing ServerCatalogStatus from value: '" <> e
           <> "'. Accepted values: available, deleted, expired, importing, not_imported"

instance ToText ServerCatalogStatus where
    toText = \case
        Available -> "AVAILABLE"
        Deleted -> "DELETED"
        Expired -> "EXPIRED"
        Importing -> "IMPORTING"
        NotImported -> "NOT_IMPORTED"

instance Hashable     ServerCatalogStatus
instance NFData       ServerCatalogStatus
instance ToByteString ServerCatalogStatus
instance ToQuery      ServerCatalogStatus
instance ToHeader     ServerCatalogStatus

instance FromJSON ServerCatalogStatus where
    parseJSON = parseJSONText "ServerCatalogStatus"
