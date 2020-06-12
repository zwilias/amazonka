{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.Lightsail.Types.ResourceType where

import Network.AWS.Prelude
  
data ResourceType = Disk
                  | DiskSnapshot
                  | Domain
                  | Instance
                  | InstanceSnapshot
                  | KeyPair
                  | LoadBalancer
                  | LoadBalancerTLSCertificate
                  | PeeredVPC
                  | StaticIP
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText ResourceType where
    parser = takeLowerText >>= \case
        "disk" -> pure Disk
        "disksnapshot" -> pure DiskSnapshot
        "domain" -> pure Domain
        "instance" -> pure Instance
        "instancesnapshot" -> pure InstanceSnapshot
        "keypair" -> pure KeyPair
        "loadbalancer" -> pure LoadBalancer
        "loadbalancertlscertificate" -> pure LoadBalancerTLSCertificate
        "peeredvpc" -> pure PeeredVPC
        "staticip" -> pure StaticIP
        e -> fromTextError $ "Failure parsing ResourceType from value: '" <> e
           <> "'. Accepted values: disk, disksnapshot, domain, instance, instancesnapshot, keypair, loadbalancer, loadbalancertlscertificate, peeredvpc, staticip"

instance ToText ResourceType where
    toText = \case
        Disk -> "Disk"
        DiskSnapshot -> "DiskSnapshot"
        Domain -> "Domain"
        Instance -> "Instance"
        InstanceSnapshot -> "InstanceSnapshot"
        KeyPair -> "KeyPair"
        LoadBalancer -> "LoadBalancer"
        LoadBalancerTLSCertificate -> "LoadBalancerTlsCertificate"
        PeeredVPC -> "PeeredVpc"
        StaticIP -> "StaticIp"

instance Hashable     ResourceType
instance NFData       ResourceType
instance ToByteString ResourceType
instance ToQuery      ResourceType
instance ToHeader     ResourceType

instance FromJSON ResourceType where
    parseJSON = parseJSONText "ResourceType"
