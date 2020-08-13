{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.EKSErrorCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.EKSErrorCode (
  EKSErrorCode (
    ..
    , EKSECAccessDenied
    , EKSECEniLimitReached
    , EKSECIPNotAvailable
    , EKSECInsufficientFreeAddresses
    , EKSECNodeCreationFailure
    , EKSECOperationNotPermitted
    , EKSECPodEvictionFailure
    , EKSECSecurityGroupNotFound
    , EKSECSubnetNotFound
    , EKSECUnknown
    , EKSECVPCIdNotFound
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EKSErrorCode = EKSErrorCode' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern EKSECAccessDenied :: EKSErrorCode
pattern EKSECAccessDenied = EKSErrorCode' "AccessDenied"

pattern EKSECEniLimitReached :: EKSErrorCode
pattern EKSECEniLimitReached = EKSErrorCode' "EniLimitReached"

pattern EKSECIPNotAvailable :: EKSErrorCode
pattern EKSECIPNotAvailable = EKSErrorCode' "IpNotAvailable"

pattern EKSECInsufficientFreeAddresses :: EKSErrorCode
pattern EKSECInsufficientFreeAddresses = EKSErrorCode' "InsufficientFreeAddresses"

pattern EKSECNodeCreationFailure :: EKSErrorCode
pattern EKSECNodeCreationFailure = EKSErrorCode' "NodeCreationFailure"

pattern EKSECOperationNotPermitted :: EKSErrorCode
pattern EKSECOperationNotPermitted = EKSErrorCode' "OperationNotPermitted"

pattern EKSECPodEvictionFailure :: EKSErrorCode
pattern EKSECPodEvictionFailure = EKSErrorCode' "PodEvictionFailure"

pattern EKSECSecurityGroupNotFound :: EKSErrorCode
pattern EKSECSecurityGroupNotFound = EKSErrorCode' "SecurityGroupNotFound"

pattern EKSECSubnetNotFound :: EKSErrorCode
pattern EKSECSubnetNotFound = EKSErrorCode' "SubnetNotFound"

pattern EKSECUnknown :: EKSErrorCode
pattern EKSECUnknown = EKSErrorCode' "Unknown"

pattern EKSECVPCIdNotFound :: EKSErrorCode
pattern EKSECVPCIdNotFound = EKSErrorCode' "VpcIdNotFound"

{-# COMPLETE
  EKSECAccessDenied,
  EKSECEniLimitReached,
  EKSECIPNotAvailable,
  EKSECInsufficientFreeAddresses,
  EKSECNodeCreationFailure,
  EKSECOperationNotPermitted,
  EKSECPodEvictionFailure,
  EKSECSecurityGroupNotFound,
  EKSECSubnetNotFound,
  EKSECUnknown,
  EKSECVPCIdNotFound,
  EKSErrorCode' #-}

instance FromText EKSErrorCode where
    parser = (EKSErrorCode' . mk) <$> takeText

instance ToText EKSErrorCode where
    toText (EKSErrorCode' ci) = original ci

-- | Represents an enum of /known/ $EKSErrorCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum EKSErrorCode where
    toEnum i = case i of
        0 -> EKSECAccessDenied
        1 -> EKSECEniLimitReached
        2 -> EKSECIPNotAvailable
        3 -> EKSECInsufficientFreeAddresses
        4 -> EKSECNodeCreationFailure
        5 -> EKSECOperationNotPermitted
        6 -> EKSECPodEvictionFailure
        7 -> EKSECSecurityGroupNotFound
        8 -> EKSECSubnetNotFound
        9 -> EKSECUnknown
        10 -> EKSECVPCIdNotFound
        _ -> (error . showText) $ "Unknown index for EKSErrorCode: " <> toText i
    fromEnum x = case x of
        EKSECAccessDenied -> 0
        EKSECEniLimitReached -> 1
        EKSECIPNotAvailable -> 2
        EKSECInsufficientFreeAddresses -> 3
        EKSECNodeCreationFailure -> 4
        EKSECOperationNotPermitted -> 5
        EKSECPodEvictionFailure -> 6
        EKSECSecurityGroupNotFound -> 7
        EKSECSubnetNotFound -> 8
        EKSECUnknown -> 9
        EKSECVPCIdNotFound -> 10
        EKSErrorCode' name -> (error . showText) $ "Unknown EKSErrorCode: " <> original name

-- | Represents the bounds of /known/ $EKSErrorCode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded EKSErrorCode where
    minBound = EKSECAccessDenied
    maxBound = EKSECVPCIdNotFound

instance Hashable     EKSErrorCode
instance NFData       EKSErrorCode
instance ToByteString EKSErrorCode
instance ToQuery      EKSErrorCode
instance ToHeader     EKSErrorCode

instance FromJSON EKSErrorCode where
    parseJSON = parseJSONText "EKSErrorCode"
