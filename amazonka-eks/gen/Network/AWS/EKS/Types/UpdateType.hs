{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.UpdateType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.UpdateType (
  UpdateType (
    ..
    , ConfigUpdate
    , EndpointAccessUpdate
    , LoggingUpdate
    , VersionUpdate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateType = UpdateType' (CI Text)
                    deriving (Eq, Ord, Read, Show, Data, Typeable,
                              Generic)

pattern ConfigUpdate :: UpdateType
pattern ConfigUpdate = UpdateType' "ConfigUpdate"

pattern EndpointAccessUpdate :: UpdateType
pattern EndpointAccessUpdate = UpdateType' "EndpointAccessUpdate"

pattern LoggingUpdate :: UpdateType
pattern LoggingUpdate = UpdateType' "LoggingUpdate"

pattern VersionUpdate :: UpdateType
pattern VersionUpdate = UpdateType' "VersionUpdate"

{-# COMPLETE
  ConfigUpdate,
  EndpointAccessUpdate,
  LoggingUpdate,
  VersionUpdate,
  UpdateType' #-}

instance FromText UpdateType where
    parser = (UpdateType' . mk) <$> takeText

instance ToText UpdateType where
    toText (UpdateType' ci) = original ci

-- | Represents an enum of /known/ $UpdateType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum UpdateType where
    toEnum i = case i of
        0 -> ConfigUpdate
        1 -> EndpointAccessUpdate
        2 -> LoggingUpdate
        3 -> VersionUpdate
        _ -> (error . showText) $ "Unknown index for UpdateType: " <> toText i
    fromEnum x = case x of
        ConfigUpdate -> 0
        EndpointAccessUpdate -> 1
        LoggingUpdate -> 2
        VersionUpdate -> 3
        UpdateType' name -> (error . showText) $ "Unknown UpdateType: " <> original name

-- | Represents the bounds of /known/ $UpdateType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded UpdateType where
    minBound = ConfigUpdate
    maxBound = VersionUpdate

instance Hashable     UpdateType
instance NFData       UpdateType
instance ToByteString UpdateType
instance ToQuery      UpdateType
instance ToHeader     UpdateType

instance FromJSON UpdateType where
    parseJSON = parseJSONText "UpdateType"
