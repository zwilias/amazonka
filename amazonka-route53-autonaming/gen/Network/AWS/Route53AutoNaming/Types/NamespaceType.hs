{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types.NamespaceType (
  NamespaceType (
    ..
    , DNSPrivate
    , DNSPublic
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NamespaceType = NamespaceType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern DNSPrivate :: NamespaceType
pattern DNSPrivate = NamespaceType' "DNS_PRIVATE"

pattern DNSPublic :: NamespaceType
pattern DNSPublic = NamespaceType' "DNS_PUBLIC"

{-# COMPLETE
  DNSPrivate,
  DNSPublic,
  NamespaceType' #-}

instance FromText NamespaceType where
    parser = (NamespaceType' . mk) <$> takeText

instance ToText NamespaceType where
    toText (NamespaceType' ci) = original ci

-- | Represents an enum of /known/ $NamespaceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum NamespaceType where
    toEnum i = case i of
        0 -> DNSPrivate
        1 -> DNSPublic
        _ -> (error . showText) $ "Unknown index for NamespaceType: " <> toText i
    fromEnum x = case x of
        DNSPrivate -> 0
        DNSPublic -> 1
        NamespaceType' name -> (error . showText) $ "Unknown NamespaceType: " <> original name

-- | Represents the bounds of /known/ $NamespaceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded NamespaceType where
    minBound = DNSPrivate
    maxBound = DNSPublic

instance Hashable     NamespaceType
instance NFData       NamespaceType
instance ToByteString NamespaceType
instance ToQuery      NamespaceType
instance ToHeader     NamespaceType

instance FromJSON NamespaceType where
    parseJSON = parseJSONText "NamespaceType"
