{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.OperationType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.OperationType (
  OperationType (
    ..
    , AllocateStaticIP
    , AttachDisk
    , AttachInstancesToLoadBalancer
    , AttachLoadBalancerTLSCertificate
    , AttachStaticIP
    , CloseInstancePublicPorts
    , CreateDisk
    , CreateDiskFromSnapshot
    , CreateDiskSnapshot
    , CreateDomain
    , CreateInstance
    , CreateInstanceSnapshot
    , CreateInstancesFromSnapshot
    , CreateLoadBalancer
    , CreateLoadBalancerTLSCertificate
    , DeleteDisk
    , DeleteDiskSnapshot
    , DeleteDomain
    , DeleteDomainEntry
    , DeleteInstance
    , DeleteInstanceSnapshot
    , DeleteLoadBalancer
    , DeleteLoadBalancerTLSCertificate
    , DetachDisk
    , DetachInstancesFromLoadBalancer
    , DetachStaticIP
    , OpenInstancePublicPorts
    , PutInstancePublicPorts
    , RebootInstance
    , ReleaseStaticIP
    , StartInstance
    , StopInstance
    , UpdateDomainEntry
    , UpdateLoadBalancerAttribute
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationType = OperationType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern AllocateStaticIP :: OperationType
pattern AllocateStaticIP = OperationType' "AllocateStaticIp"

pattern AttachDisk :: OperationType
pattern AttachDisk = OperationType' "AttachDisk"

pattern AttachInstancesToLoadBalancer :: OperationType
pattern AttachInstancesToLoadBalancer = OperationType' "AttachInstancesToLoadBalancer"

pattern AttachLoadBalancerTLSCertificate :: OperationType
pattern AttachLoadBalancerTLSCertificate = OperationType' "AttachLoadBalancerTlsCertificate"

pattern AttachStaticIP :: OperationType
pattern AttachStaticIP = OperationType' "AttachStaticIp"

pattern CloseInstancePublicPorts :: OperationType
pattern CloseInstancePublicPorts = OperationType' "CloseInstancePublicPorts"

pattern CreateDisk :: OperationType
pattern CreateDisk = OperationType' "CreateDisk"

pattern CreateDiskFromSnapshot :: OperationType
pattern CreateDiskFromSnapshot = OperationType' "CreateDiskFromSnapshot"

pattern CreateDiskSnapshot :: OperationType
pattern CreateDiskSnapshot = OperationType' "CreateDiskSnapshot"

pattern CreateDomain :: OperationType
pattern CreateDomain = OperationType' "CreateDomain"

pattern CreateInstance :: OperationType
pattern CreateInstance = OperationType' "CreateInstance"

pattern CreateInstanceSnapshot :: OperationType
pattern CreateInstanceSnapshot = OperationType' "CreateInstanceSnapshot"

pattern CreateInstancesFromSnapshot :: OperationType
pattern CreateInstancesFromSnapshot = OperationType' "CreateInstancesFromSnapshot"

pattern CreateLoadBalancer :: OperationType
pattern CreateLoadBalancer = OperationType' "CreateLoadBalancer"

pattern CreateLoadBalancerTLSCertificate :: OperationType
pattern CreateLoadBalancerTLSCertificate = OperationType' "CreateLoadBalancerTlsCertificate"

pattern DeleteDisk :: OperationType
pattern DeleteDisk = OperationType' "DeleteDisk"

pattern DeleteDiskSnapshot :: OperationType
pattern DeleteDiskSnapshot = OperationType' "DeleteDiskSnapshot"

pattern DeleteDomain :: OperationType
pattern DeleteDomain = OperationType' "DeleteDomain"

pattern DeleteDomainEntry :: OperationType
pattern DeleteDomainEntry = OperationType' "DeleteDomainEntry"

pattern DeleteInstance :: OperationType
pattern DeleteInstance = OperationType' "DeleteInstance"

pattern DeleteInstanceSnapshot :: OperationType
pattern DeleteInstanceSnapshot = OperationType' "DeleteInstanceSnapshot"

pattern DeleteLoadBalancer :: OperationType
pattern DeleteLoadBalancer = OperationType' "DeleteLoadBalancer"

pattern DeleteLoadBalancerTLSCertificate :: OperationType
pattern DeleteLoadBalancerTLSCertificate = OperationType' "DeleteLoadBalancerTlsCertificate"

pattern DetachDisk :: OperationType
pattern DetachDisk = OperationType' "DetachDisk"

pattern DetachInstancesFromLoadBalancer :: OperationType
pattern DetachInstancesFromLoadBalancer = OperationType' "DetachInstancesFromLoadBalancer"

pattern DetachStaticIP :: OperationType
pattern DetachStaticIP = OperationType' "DetachStaticIp"

pattern OpenInstancePublicPorts :: OperationType
pattern OpenInstancePublicPorts = OperationType' "OpenInstancePublicPorts"

pattern PutInstancePublicPorts :: OperationType
pattern PutInstancePublicPorts = OperationType' "PutInstancePublicPorts"

pattern RebootInstance :: OperationType
pattern RebootInstance = OperationType' "RebootInstance"

pattern ReleaseStaticIP :: OperationType
pattern ReleaseStaticIP = OperationType' "ReleaseStaticIp"

pattern StartInstance :: OperationType
pattern StartInstance = OperationType' "StartInstance"

pattern StopInstance :: OperationType
pattern StopInstance = OperationType' "StopInstance"

pattern UpdateDomainEntry :: OperationType
pattern UpdateDomainEntry = OperationType' "UpdateDomainEntry"

pattern UpdateLoadBalancerAttribute :: OperationType
pattern UpdateLoadBalancerAttribute = OperationType' "UpdateLoadBalancerAttribute"

{-# COMPLETE
  AllocateStaticIP,
  AttachDisk,
  AttachInstancesToLoadBalancer,
  AttachLoadBalancerTLSCertificate,
  AttachStaticIP,
  CloseInstancePublicPorts,
  CreateDisk,
  CreateDiskFromSnapshot,
  CreateDiskSnapshot,
  CreateDomain,
  CreateInstance,
  CreateInstanceSnapshot,
  CreateInstancesFromSnapshot,
  CreateLoadBalancer,
  CreateLoadBalancerTLSCertificate,
  DeleteDisk,
  DeleteDiskSnapshot,
  DeleteDomain,
  DeleteDomainEntry,
  DeleteInstance,
  DeleteInstanceSnapshot,
  DeleteLoadBalancer,
  DeleteLoadBalancerTLSCertificate,
  DetachDisk,
  DetachInstancesFromLoadBalancer,
  DetachStaticIP,
  OpenInstancePublicPorts,
  PutInstancePublicPorts,
  RebootInstance,
  ReleaseStaticIP,
  StartInstance,
  StopInstance,
  UpdateDomainEntry,
  UpdateLoadBalancerAttribute,
  OperationType' #-}

instance FromText OperationType where
    parser = (OperationType' . mk) <$> takeText

instance ToText OperationType where
    toText (OperationType' ci) = original ci

-- | Represents an enum of /known/ $OperationType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum OperationType where
    toEnum i = case i of
        0 -> AllocateStaticIP
        1 -> AttachDisk
        2 -> AttachInstancesToLoadBalancer
        3 -> AttachLoadBalancerTLSCertificate
        4 -> AttachStaticIP
        5 -> CloseInstancePublicPorts
        6 -> CreateDisk
        7 -> CreateDiskFromSnapshot
        8 -> CreateDiskSnapshot
        9 -> CreateDomain
        10 -> CreateInstance
        11 -> CreateInstanceSnapshot
        12 -> CreateInstancesFromSnapshot
        13 -> CreateLoadBalancer
        14 -> CreateLoadBalancerTLSCertificate
        15 -> DeleteDisk
        16 -> DeleteDiskSnapshot
        17 -> DeleteDomain
        18 -> DeleteDomainEntry
        19 -> DeleteInstance
        20 -> DeleteInstanceSnapshot
        21 -> DeleteLoadBalancer
        22 -> DeleteLoadBalancerTLSCertificate
        23 -> DetachDisk
        24 -> DetachInstancesFromLoadBalancer
        25 -> DetachStaticIP
        26 -> OpenInstancePublicPorts
        27 -> PutInstancePublicPorts
        28 -> RebootInstance
        29 -> ReleaseStaticIP
        30 -> StartInstance
        31 -> StopInstance
        32 -> UpdateDomainEntry
        33 -> UpdateLoadBalancerAttribute
        _ -> (error . showText) $ "Unknown index for OperationType: " <> toText i
    fromEnum x = case x of
        AllocateStaticIP -> 0
        AttachDisk -> 1
        AttachInstancesToLoadBalancer -> 2
        AttachLoadBalancerTLSCertificate -> 3
        AttachStaticIP -> 4
        CloseInstancePublicPorts -> 5
        CreateDisk -> 6
        CreateDiskFromSnapshot -> 7
        CreateDiskSnapshot -> 8
        CreateDomain -> 9
        CreateInstance -> 10
        CreateInstanceSnapshot -> 11
        CreateInstancesFromSnapshot -> 12
        CreateLoadBalancer -> 13
        CreateLoadBalancerTLSCertificate -> 14
        DeleteDisk -> 15
        DeleteDiskSnapshot -> 16
        DeleteDomain -> 17
        DeleteDomainEntry -> 18
        DeleteInstance -> 19
        DeleteInstanceSnapshot -> 20
        DeleteLoadBalancer -> 21
        DeleteLoadBalancerTLSCertificate -> 22
        DetachDisk -> 23
        DetachInstancesFromLoadBalancer -> 24
        DetachStaticIP -> 25
        OpenInstancePublicPorts -> 26
        PutInstancePublicPorts -> 27
        RebootInstance -> 28
        ReleaseStaticIP -> 29
        StartInstance -> 30
        StopInstance -> 31
        UpdateDomainEntry -> 32
        UpdateLoadBalancerAttribute -> 33
        OperationType' name -> (error . showText) $ "Unknown OperationType: " <> original name

-- | Represents the bounds of /known/ $OperationType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded OperationType where
    minBound = AllocateStaticIP
    maxBound = UpdateLoadBalancerAttribute

instance Hashable     OperationType
instance NFData       OperationType
instance ToByteString OperationType
instance ToQuery      OperationType
instance ToHeader     OperationType

instance FromJSON OperationType where
    parseJSON = parseJSONText "OperationType"
