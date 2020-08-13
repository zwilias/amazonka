{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.NodegroupIssueCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.NodegroupIssueCode (
  NodegroupIssueCode (
    ..
    , AccessDenied
    , AsgInstanceLaunchFailures
    , AutoScalingGroupInvalidConfiguration
    , AutoScalingGroupNotFound
    , EC2LaunchTemplateNotFound
    , EC2LaunchTemplateVersionMismatch
    , EC2SecurityGroupDeletionFailure
    , EC2SecurityGroupNotFound
    , EC2SubnetInvalidConfiguration
    , EC2SubnetNotFound
    , IAMInstanceProfileNotFound
    , IAMLimitExceeded
    , IAMNodeRoleNotFound
    , InstanceLimitExceeded
    , InsufficientFreeAddresses
    , InternalFailure
    , NodeCreationFailure
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NodegroupIssueCode = NodegroupIssueCode' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern AccessDenied :: NodegroupIssueCode
pattern AccessDenied = NodegroupIssueCode' "AccessDenied"

pattern AsgInstanceLaunchFailures :: NodegroupIssueCode
pattern AsgInstanceLaunchFailures = NodegroupIssueCode' "AsgInstanceLaunchFailures"

pattern AutoScalingGroupInvalidConfiguration :: NodegroupIssueCode
pattern AutoScalingGroupInvalidConfiguration = NodegroupIssueCode' "AutoScalingGroupInvalidConfiguration"

pattern AutoScalingGroupNotFound :: NodegroupIssueCode
pattern AutoScalingGroupNotFound = NodegroupIssueCode' "AutoScalingGroupNotFound"

pattern EC2LaunchTemplateNotFound :: NodegroupIssueCode
pattern EC2LaunchTemplateNotFound = NodegroupIssueCode' "Ec2LaunchTemplateNotFound"

pattern EC2LaunchTemplateVersionMismatch :: NodegroupIssueCode
pattern EC2LaunchTemplateVersionMismatch = NodegroupIssueCode' "Ec2LaunchTemplateVersionMismatch"

pattern EC2SecurityGroupDeletionFailure :: NodegroupIssueCode
pattern EC2SecurityGroupDeletionFailure = NodegroupIssueCode' "Ec2SecurityGroupDeletionFailure"

pattern EC2SecurityGroupNotFound :: NodegroupIssueCode
pattern EC2SecurityGroupNotFound = NodegroupIssueCode' "Ec2SecurityGroupNotFound"

pattern EC2SubnetInvalidConfiguration :: NodegroupIssueCode
pattern EC2SubnetInvalidConfiguration = NodegroupIssueCode' "Ec2SubnetInvalidConfiguration"

pattern EC2SubnetNotFound :: NodegroupIssueCode
pattern EC2SubnetNotFound = NodegroupIssueCode' "Ec2SubnetNotFound"

pattern IAMInstanceProfileNotFound :: NodegroupIssueCode
pattern IAMInstanceProfileNotFound = NodegroupIssueCode' "IamInstanceProfileNotFound"

pattern IAMLimitExceeded :: NodegroupIssueCode
pattern IAMLimitExceeded = NodegroupIssueCode' "IamLimitExceeded"

pattern IAMNodeRoleNotFound :: NodegroupIssueCode
pattern IAMNodeRoleNotFound = NodegroupIssueCode' "IamNodeRoleNotFound"

pattern InstanceLimitExceeded :: NodegroupIssueCode
pattern InstanceLimitExceeded = NodegroupIssueCode' "InstanceLimitExceeded"

pattern InsufficientFreeAddresses :: NodegroupIssueCode
pattern InsufficientFreeAddresses = NodegroupIssueCode' "InsufficientFreeAddresses"

pattern InternalFailure :: NodegroupIssueCode
pattern InternalFailure = NodegroupIssueCode' "InternalFailure"

pattern NodeCreationFailure :: NodegroupIssueCode
pattern NodeCreationFailure = NodegroupIssueCode' "NodeCreationFailure"

{-# COMPLETE
  AccessDenied,
  AsgInstanceLaunchFailures,
  AutoScalingGroupInvalidConfiguration,
  AutoScalingGroupNotFound,
  EC2LaunchTemplateNotFound,
  EC2LaunchTemplateVersionMismatch,
  EC2SecurityGroupDeletionFailure,
  EC2SecurityGroupNotFound,
  EC2SubnetInvalidConfiguration,
  EC2SubnetNotFound,
  IAMInstanceProfileNotFound,
  IAMLimitExceeded,
  IAMNodeRoleNotFound,
  InstanceLimitExceeded,
  InsufficientFreeAddresses,
  InternalFailure,
  NodeCreationFailure,
  NodegroupIssueCode' #-}

instance FromText NodegroupIssueCode where
    parser = (NodegroupIssueCode' . mk) <$> takeText

instance ToText NodegroupIssueCode where
    toText (NodegroupIssueCode' ci) = original ci

-- | Represents an enum of /known/ $NodegroupIssueCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum NodegroupIssueCode where
    toEnum i = case i of
        0 -> AccessDenied
        1 -> AsgInstanceLaunchFailures
        2 -> AutoScalingGroupInvalidConfiguration
        3 -> AutoScalingGroupNotFound
        4 -> EC2LaunchTemplateNotFound
        5 -> EC2LaunchTemplateVersionMismatch
        6 -> EC2SecurityGroupDeletionFailure
        7 -> EC2SecurityGroupNotFound
        8 -> EC2SubnetInvalidConfiguration
        9 -> EC2SubnetNotFound
        10 -> IAMInstanceProfileNotFound
        11 -> IAMLimitExceeded
        12 -> IAMNodeRoleNotFound
        13 -> InstanceLimitExceeded
        14 -> InsufficientFreeAddresses
        15 -> InternalFailure
        16 -> NodeCreationFailure
        _ -> (error . showText) $ "Unknown index for NodegroupIssueCode: " <> toText i
    fromEnum x = case x of
        AccessDenied -> 0
        AsgInstanceLaunchFailures -> 1
        AutoScalingGroupInvalidConfiguration -> 2
        AutoScalingGroupNotFound -> 3
        EC2LaunchTemplateNotFound -> 4
        EC2LaunchTemplateVersionMismatch -> 5
        EC2SecurityGroupDeletionFailure -> 6
        EC2SecurityGroupNotFound -> 7
        EC2SubnetInvalidConfiguration -> 8
        EC2SubnetNotFound -> 9
        IAMInstanceProfileNotFound -> 10
        IAMLimitExceeded -> 11
        IAMNodeRoleNotFound -> 12
        InstanceLimitExceeded -> 13
        InsufficientFreeAddresses -> 14
        InternalFailure -> 15
        NodeCreationFailure -> 16
        NodegroupIssueCode' name -> (error . showText) $ "Unknown NodegroupIssueCode: " <> original name

-- | Represents the bounds of /known/ $NodegroupIssueCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded NodegroupIssueCode where
    minBound = AccessDenied
    maxBound = NodeCreationFailure

instance Hashable     NodegroupIssueCode
instance NFData       NodegroupIssueCode
instance ToByteString NodegroupIssueCode
instance ToQuery      NodegroupIssueCode
instance ToHeader     NodegroupIssueCode

instance FromJSON NodegroupIssueCode where
    parseJSON = parseJSONText "NodegroupIssueCode"
