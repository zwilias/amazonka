{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ResourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.ResourceType (
  ResourceType (
    ..
    , Disk
    , DiskSnapshot
    , Domain
    , Instance
    , InstanceSnapshot
    , KeyPair
    , LoadBalancer
    , LoadBalancerTLSCertificate
    , PeeredVPC
    , StaticIP
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Disk :: ResourceType
pattern Disk = ResourceType' "Disk"

pattern DiskSnapshot :: ResourceType
pattern DiskSnapshot = ResourceType' "DiskSnapshot"

pattern Domain :: ResourceType
pattern Domain = ResourceType' "Domain"

pattern Instance :: ResourceType
pattern Instance = ResourceType' "Instance"

pattern InstanceSnapshot :: ResourceType
pattern InstanceSnapshot = ResourceType' "InstanceSnapshot"

pattern KeyPair :: ResourceType
pattern KeyPair = ResourceType' "KeyPair"

pattern LoadBalancer :: ResourceType
pattern LoadBalancer = ResourceType' "LoadBalancer"

pattern LoadBalancerTLSCertificate :: ResourceType
pattern LoadBalancerTLSCertificate = ResourceType' "LoadBalancerTlsCertificate"

pattern PeeredVPC :: ResourceType
pattern PeeredVPC = ResourceType' "PeeredVpc"

pattern StaticIP :: ResourceType
pattern StaticIP = ResourceType' "StaticIp"

{-# COMPLETE
  Disk,
  DiskSnapshot,
  Domain,
  Instance,
  InstanceSnapshot,
  KeyPair,
  LoadBalancer,
  LoadBalancerTLSCertificate,
  PeeredVPC,
  StaticIP,
  ResourceType' #-}

instance FromText ResourceType where
    parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
    toText (ResourceType' ci) = original ci

-- | Represents an enum of /known/ $ResourceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ResourceType where
    toEnum i = case i of
        0 -> Disk
        1 -> DiskSnapshot
        2 -> Domain
        3 -> Instance
        4 -> InstanceSnapshot
        5 -> KeyPair
        6 -> LoadBalancer
        7 -> LoadBalancerTLSCertificate
        8 -> PeeredVPC
        9 -> StaticIP
        _ -> (error . showText) $ "Unknown index for ResourceType: " <> toText i
    fromEnum x = case x of
        Disk -> 0
        DiskSnapshot -> 1
        Domain -> 2
        Instance -> 3
        InstanceSnapshot -> 4
        KeyPair -> 5
        LoadBalancer -> 6
        LoadBalancerTLSCertificate -> 7
        PeeredVPC -> 8
        StaticIP -> 9
        ResourceType' name -> (error . showText) $ "Unknown ResourceType: " <> original name

-- | Represents the bounds of /known/ $ResourceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ResourceType where
    minBound = Disk
    maxBound = StaticIP

instance Hashable     ResourceType
instance NFData       ResourceType
instance ToByteString ResourceType
instance ToQuery      ResourceType
instance ToHeader     ResourceType

instance FromJSON ResourceType where
    parseJSON = parseJSONText "ResourceType"
