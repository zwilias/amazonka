{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.SanitizationWarningReason
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MQ.Types.SanitizationWarningReason where

import Network.AWS.Prelude
  
-- | The reason for which the XML elements or attributes were sanitized. Possible values: DISALLOWED_ELEMENT_REMOVED, DISALLOWED_ATTRIBUTE_REMOVED, INVALID_ATTRIBUTE_VALUE_REMOVED DISALLOWED_ELEMENT_REMOVED shows that the provided element isn't allowed and has been removed. DISALLOWED_ATTRIBUTE_REMOVED shows that the provided attribute isn't allowed and has been removed. INVALID_ATTRIBUTE_VALUE_REMOVED shows that the provided value for the attribute isn't allowed and has been removed.
data SanitizationWarningReason = DisallowedAttributeRemoved
                               | DisallowedElementRemoved
                               | InvalidAttributeValueRemoved
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText SanitizationWarningReason where
    parser = takeLowerText >>= \case
        "disallowed_attribute_removed" -> pure DisallowedAttributeRemoved
        "disallowed_element_removed" -> pure DisallowedElementRemoved
        "invalid_attribute_value_removed" -> pure InvalidAttributeValueRemoved
        e -> fromTextError $ "Failure parsing SanitizationWarningReason from value: '" <> e
           <> "'. Accepted values: disallowed_attribute_removed, disallowed_element_removed, invalid_attribute_value_removed"

instance ToText SanitizationWarningReason where
    toText = \case
        DisallowedAttributeRemoved -> "DISALLOWED_ATTRIBUTE_REMOVED"
        DisallowedElementRemoved -> "DISALLOWED_ELEMENT_REMOVED"
        InvalidAttributeValueRemoved -> "INVALID_ATTRIBUTE_VALUE_REMOVED"

instance Hashable     SanitizationWarningReason
instance NFData       SanitizationWarningReason
instance ToByteString SanitizationWarningReason
instance ToQuery      SanitizationWarningReason
instance ToHeader     SanitizationWarningReason

instance FromJSON SanitizationWarningReason where
    parseJSON = parseJSONText "SanitizationWarningReason"
