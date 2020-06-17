{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ProtocolEnum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.ProtocolEnum (
  ProtocolEnum (
    ..
    , HTTP
    , HTTPS
    , TCP
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtocolEnum = ProtocolEnum' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern HTTP :: ProtocolEnum
pattern HTTP = ProtocolEnum' "HTTP"

pattern HTTPS :: ProtocolEnum
pattern HTTPS = ProtocolEnum' "HTTPS"

pattern TCP :: ProtocolEnum
pattern TCP = ProtocolEnum' "TCP"

{-# COMPLETE
  HTTP,
  HTTPS,
  TCP,
  ProtocolEnum' #-}

instance FromText ProtocolEnum where
    parser = (ProtocolEnum' . mk) <$> takeText

instance ToText ProtocolEnum where
    toText (ProtocolEnum' ci) = original ci

-- | Represents an enum of /known/ $ProtocolEnum.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ProtocolEnum where
    toEnum i = case i of
        0 -> HTTP
        1 -> HTTPS
        2 -> TCP
        _ -> (error . showText) $ "Unknown index for ProtocolEnum: " <> toText i
    fromEnum x = case x of
        HTTP -> 0
        HTTPS -> 1
        TCP -> 2
        ProtocolEnum' name -> (error . showText) $ "Unknown ProtocolEnum: " <> original name

-- | Represents the bounds of /known/ $ProtocolEnum.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ProtocolEnum where
    minBound = HTTP
    maxBound = TCP

instance Hashable     ProtocolEnum
instance NFData       ProtocolEnum
instance ToByteString ProtocolEnum
instance ToQuery      ProtocolEnum
instance ToHeader     ProtocolEnum

instance FromXML ProtocolEnum where
    parseXML = parseXMLText "ProtocolEnum"
