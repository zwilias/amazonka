{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.ViolationReason
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.ViolationReason where

import Network.AWS.Prelude
  
data ViolationReason = ResourceIncorrectWebACL
                     | ResourceMissingWebACL
                     | WebACLMissingRuleGroup
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText ViolationReason where
    parser = takeLowerText >>= \case
        "resource_incorrect_web_acl" -> pure ResourceIncorrectWebACL
        "resource_missing_web_acl" -> pure ResourceMissingWebACL
        "web_acl_missing_rule_group" -> pure WebACLMissingRuleGroup
        e -> fromTextError $ "Failure parsing ViolationReason from value: '" <> e
           <> "'. Accepted values: resource_incorrect_web_acl, resource_missing_web_acl, web_acl_missing_rule_group"

instance ToText ViolationReason where
    toText = \case
        ResourceIncorrectWebACL -> "RESOURCE_INCORRECT_WEB_ACL"
        ResourceMissingWebACL -> "RESOURCE_MISSING_WEB_ACL"
        WebACLMissingRuleGroup -> "WEB_ACL_MISSING_RULE_GROUP"

instance Hashable     ViolationReason
instance NFData       ViolationReason
instance ToByteString ViolationReason
instance ToQuery      ViolationReason
instance ToHeader     ViolationReason

instance FromJSON ViolationReason where
    parseJSON = parseJSONText "ViolationReason"
