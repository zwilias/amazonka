{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.Lightsail.Types.OperationType where

import Network.AWS.Prelude
  
data OperationType = AllocateStaticIP
                   | AttachDisk
                   | AttachInstancesToLoadBalancer
                   | AttachLoadBalancerTLSCertificate
                   | AttachStaticIP
                   | CloseInstancePublicPorts
                   | CreateDisk
                   | CreateDiskFromSnapshot
                   | CreateDiskSnapshot
                   | CreateDomain
                   | CreateInstance
                   | CreateInstanceSnapshot
                   | CreateInstancesFromSnapshot
                   | CreateLoadBalancer
                   | CreateLoadBalancerTLSCertificate
                   | DeleteDisk
                   | DeleteDiskSnapshot
                   | DeleteDomain
                   | DeleteDomainEntry
                   | DeleteInstance
                   | DeleteInstanceSnapshot
                   | DeleteLoadBalancer
                   | DeleteLoadBalancerTLSCertificate
                   | DetachDisk
                   | DetachInstancesFromLoadBalancer
                   | DetachStaticIP
                   | OpenInstancePublicPorts
                   | PutInstancePublicPorts
                   | RebootInstance
                   | ReleaseStaticIP
                   | StartInstance
                   | StopInstance
                   | UpdateDomainEntry
                   | UpdateLoadBalancerAttribute
                       deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                 Typeable, Generic)

instance FromText OperationType where
    parser = takeLowerText >>= \case
        "allocatestaticip" -> pure AllocateStaticIP
        "attachdisk" -> pure AttachDisk
        "attachinstancestoloadbalancer" -> pure AttachInstancesToLoadBalancer
        "attachloadbalancertlscertificate" -> pure AttachLoadBalancerTLSCertificate
        "attachstaticip" -> pure AttachStaticIP
        "closeinstancepublicports" -> pure CloseInstancePublicPorts
        "createdisk" -> pure CreateDisk
        "creatediskfromsnapshot" -> pure CreateDiskFromSnapshot
        "createdisksnapshot" -> pure CreateDiskSnapshot
        "createdomain" -> pure CreateDomain
        "createinstance" -> pure CreateInstance
        "createinstancesnapshot" -> pure CreateInstanceSnapshot
        "createinstancesfromsnapshot" -> pure CreateInstancesFromSnapshot
        "createloadbalancer" -> pure CreateLoadBalancer
        "createloadbalancertlscertificate" -> pure CreateLoadBalancerTLSCertificate
        "deletedisk" -> pure DeleteDisk
        "deletedisksnapshot" -> pure DeleteDiskSnapshot
        "deletedomain" -> pure DeleteDomain
        "deletedomainentry" -> pure DeleteDomainEntry
        "deleteinstance" -> pure DeleteInstance
        "deleteinstancesnapshot" -> pure DeleteInstanceSnapshot
        "deleteloadbalancer" -> pure DeleteLoadBalancer
        "deleteloadbalancertlscertificate" -> pure DeleteLoadBalancerTLSCertificate
        "detachdisk" -> pure DetachDisk
        "detachinstancesfromloadbalancer" -> pure DetachInstancesFromLoadBalancer
        "detachstaticip" -> pure DetachStaticIP
        "openinstancepublicports" -> pure OpenInstancePublicPorts
        "putinstancepublicports" -> pure PutInstancePublicPorts
        "rebootinstance" -> pure RebootInstance
        "releasestaticip" -> pure ReleaseStaticIP
        "startinstance" -> pure StartInstance
        "stopinstance" -> pure StopInstance
        "updatedomainentry" -> pure UpdateDomainEntry
        "updateloadbalancerattribute" -> pure UpdateLoadBalancerAttribute
        e -> fromTextError $ "Failure parsing OperationType from value: '" <> e
           <> "'. Accepted values: allocatestaticip, attachdisk, attachinstancestoloadbalancer, attachloadbalancertlscertificate, attachstaticip, closeinstancepublicports, createdisk, creatediskfromsnapshot, createdisksnapshot, createdomain, createinstance, createinstancesnapshot, createinstancesfromsnapshot, createloadbalancer, createloadbalancertlscertificate, deletedisk, deletedisksnapshot, deletedomain, deletedomainentry, deleteinstance, deleteinstancesnapshot, deleteloadbalancer, deleteloadbalancertlscertificate, detachdisk, detachinstancesfromloadbalancer, detachstaticip, openinstancepublicports, putinstancepublicports, rebootinstance, releasestaticip, startinstance, stopinstance, updatedomainentry, updateloadbalancerattribute"

instance ToText OperationType where
    toText = \case
        AllocateStaticIP -> "AllocateStaticIp"
        AttachDisk -> "AttachDisk"
        AttachInstancesToLoadBalancer -> "AttachInstancesToLoadBalancer"
        AttachLoadBalancerTLSCertificate -> "AttachLoadBalancerTlsCertificate"
        AttachStaticIP -> "AttachStaticIp"
        CloseInstancePublicPorts -> "CloseInstancePublicPorts"
        CreateDisk -> "CreateDisk"
        CreateDiskFromSnapshot -> "CreateDiskFromSnapshot"
        CreateDiskSnapshot -> "CreateDiskSnapshot"
        CreateDomain -> "CreateDomain"
        CreateInstance -> "CreateInstance"
        CreateInstanceSnapshot -> "CreateInstanceSnapshot"
        CreateInstancesFromSnapshot -> "CreateInstancesFromSnapshot"
        CreateLoadBalancer -> "CreateLoadBalancer"
        CreateLoadBalancerTLSCertificate -> "CreateLoadBalancerTlsCertificate"
        DeleteDisk -> "DeleteDisk"
        DeleteDiskSnapshot -> "DeleteDiskSnapshot"
        DeleteDomain -> "DeleteDomain"
        DeleteDomainEntry -> "DeleteDomainEntry"
        DeleteInstance -> "DeleteInstance"
        DeleteInstanceSnapshot -> "DeleteInstanceSnapshot"
        DeleteLoadBalancer -> "DeleteLoadBalancer"
        DeleteLoadBalancerTLSCertificate -> "DeleteLoadBalancerTlsCertificate"
        DetachDisk -> "DetachDisk"
        DetachInstancesFromLoadBalancer -> "DetachInstancesFromLoadBalancer"
        DetachStaticIP -> "DetachStaticIp"
        OpenInstancePublicPorts -> "OpenInstancePublicPorts"
        PutInstancePublicPorts -> "PutInstancePublicPorts"
        RebootInstance -> "RebootInstance"
        ReleaseStaticIP -> "ReleaseStaticIp"
        StartInstance -> "StartInstance"
        StopInstance -> "StopInstance"
        UpdateDomainEntry -> "UpdateDomainEntry"
        UpdateLoadBalancerAttribute -> "UpdateLoadBalancerAttribute"

instance Hashable     OperationType
instance NFData       OperationType
instance ToByteString OperationType
instance ToQuery      OperationType
instance ToHeader     OperationType

instance FromJSON OperationType where
    parseJSON = parseJSONText "OperationType"
