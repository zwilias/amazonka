{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.FMS.Types.ViolationReason (
  ViolationReason (
    ..
    , ResourceIncorrectWebACL
    , ResourceMissingWebACL
    , WebACLMissingRuleGroup
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ViolationReason = ViolationReason' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern ResourceIncorrectWebACL :: ViolationReason
pattern ResourceIncorrectWebACL = ViolationReason' "RESOURCE_INCORRECT_WEB_ACL"

pattern ResourceMissingWebACL :: ViolationReason
pattern ResourceMissingWebACL = ViolationReason' "RESOURCE_MISSING_WEB_ACL"

pattern WebACLMissingRuleGroup :: ViolationReason
pattern WebACLMissingRuleGroup = ViolationReason' "WEB_ACL_MISSING_RULE_GROUP"

{-# COMPLETE
  ResourceIncorrectWebACL,
  ResourceMissingWebACL,
  WebACLMissingRuleGroup,
  ViolationReason' #-}

instance FromText ViolationReason where
    parser = (ViolationReason' . mk) <$> takeText

instance ToText ViolationReason where
    toText (ViolationReason' ci) = original ci

-- | Represents an enum of /known/ $ViolationReason.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ViolationReason where
    toEnum i = case i of
        0 -> ResourceIncorrectWebACL
        1 -> ResourceMissingWebACL
        2 -> WebACLMissingRuleGroup
        _ -> (error . showText) $ "Unknown index for ViolationReason: " <> toText i
    fromEnum x = case x of
        ResourceIncorrectWebACL -> 0
        ResourceMissingWebACL -> 1
        WebACLMissingRuleGroup -> 2
        ViolationReason' name -> (error . showText) $ "Unknown ViolationReason: " <> original name

-- | Represents the bounds of /known/ $ViolationReason.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ViolationReason where
    minBound = ResourceIncorrectWebACL
    maxBound = WebACLMissingRuleGroup

instance Hashable     ViolationReason
instance NFData       ViolationReason
instance ToByteString ViolationReason
instance ToQuery      ViolationReason
instance ToHeader     ViolationReason

instance FromJSON ViolationReason where
    parseJSON = parseJSONText "ViolationReason"
