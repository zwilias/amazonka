{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.SMS.Types.ServerCatalogStatus (
  ServerCatalogStatus (
    ..
    , Available
    , Deleted
    , Expired
    , Importing
    , NotImported
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Status of Server catalog
data ServerCatalogStatus = ServerCatalogStatus' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Available :: ServerCatalogStatus
pattern Available = ServerCatalogStatus' "AVAILABLE"

pattern Deleted :: ServerCatalogStatus
pattern Deleted = ServerCatalogStatus' "DELETED"

pattern Expired :: ServerCatalogStatus
pattern Expired = ServerCatalogStatus' "EXPIRED"

pattern Importing :: ServerCatalogStatus
pattern Importing = ServerCatalogStatus' "IMPORTING"

pattern NotImported :: ServerCatalogStatus
pattern NotImported = ServerCatalogStatus' "NOT_IMPORTED"

{-# COMPLETE
  Available,
  Deleted,
  Expired,
  Importing,
  NotImported,
  ServerCatalogStatus' #-}

instance FromText ServerCatalogStatus where
    parser = (ServerCatalogStatus' . mk) <$> takeText

instance ToText ServerCatalogStatus where
    toText (ServerCatalogStatus' ci) = original ci

-- | Represents an enum of /known/ $ServerCatalogStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ServerCatalogStatus where
    toEnum i = case i of
        0 -> Available
        1 -> Deleted
        2 -> Expired
        3 -> Importing
        4 -> NotImported
        _ -> (error . showText) $ "Unknown index for ServerCatalogStatus: " <> toText i
    fromEnum x = case x of
        Available -> 0
        Deleted -> 1
        Expired -> 2
        Importing -> 3
        NotImported -> 4
        ServerCatalogStatus' name -> (error . showText) $ "Unknown ServerCatalogStatus: " <> original name

-- | Represents the bounds of /known/ $ServerCatalogStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ServerCatalogStatus where
    minBound = Available
    maxBound = NotImported

instance Hashable     ServerCatalogStatus
instance NFData       ServerCatalogStatus
instance ToByteString ServerCatalogStatus
instance ToQuery      ServerCatalogStatus
instance ToHeader     ServerCatalogStatus

instance FromJSON ServerCatalogStatus where
    parseJSON = parseJSONText "ServerCatalogStatus"
