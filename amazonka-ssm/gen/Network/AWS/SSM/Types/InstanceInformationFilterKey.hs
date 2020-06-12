{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstanceInformationFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InstanceInformationFilterKey where

import Network.AWS.Prelude
  
data InstanceInformationFilterKey = IIFKActivationIds
                                  | IIFKAgentVersion
                                  | IIFKAssociationStatus
                                  | IIFKIAMRole
                                  | IIFKInstanceIds
                                  | IIFKPingStatus
                                  | IIFKPlatformTypes
                                  | IIFKResourceType
                                      deriving (Eq, Ord, Read, Show, Enum,
                                                Bounded, Data, Typeable,
                                                Generic)

instance FromText InstanceInformationFilterKey where
    parser = takeLowerText >>= \case
        "activationids" -> pure IIFKActivationIds
        "agentversion" -> pure IIFKAgentVersion
        "associationstatus" -> pure IIFKAssociationStatus
        "iamrole" -> pure IIFKIAMRole
        "instanceids" -> pure IIFKInstanceIds
        "pingstatus" -> pure IIFKPingStatus
        "platformtypes" -> pure IIFKPlatformTypes
        "resourcetype" -> pure IIFKResourceType
        e -> fromTextError $ "Failure parsing InstanceInformationFilterKey from value: '" <> e
           <> "'. Accepted values: activationids, agentversion, associationstatus, iamrole, instanceids, pingstatus, platformtypes, resourcetype"

instance ToText InstanceInformationFilterKey where
    toText = \case
        IIFKActivationIds -> "ActivationIds"
        IIFKAgentVersion -> "AgentVersion"
        IIFKAssociationStatus -> "AssociationStatus"
        IIFKIAMRole -> "IamRole"
        IIFKInstanceIds -> "InstanceIds"
        IIFKPingStatus -> "PingStatus"
        IIFKPlatformTypes -> "PlatformTypes"
        IIFKResourceType -> "ResourceType"

instance Hashable     InstanceInformationFilterKey
instance NFData       InstanceInformationFilterKey
instance ToByteString InstanceInformationFilterKey
instance ToQuery      InstanceInformationFilterKey
instance ToHeader     InstanceInformationFilterKey

instance ToJSON InstanceInformationFilterKey where
    toJSON = toJSONText
