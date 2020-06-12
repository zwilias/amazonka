{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchFilterKey
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.PatchFilterKey where

import Network.AWS.Prelude
  
data PatchFilterKey = Classification
                    | MsrcSeverity
                    | PatchId
                    | Priority
                    | Product
                    | Section
                    | Severity
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText PatchFilterKey where
    parser = takeLowerText >>= \case
        "classification" -> pure Classification
        "msrc_severity" -> pure MsrcSeverity
        "patch_id" -> pure PatchId
        "priority" -> pure Priority
        "product" -> pure Product
        "section" -> pure Section
        "severity" -> pure Severity
        e -> fromTextError $ "Failure parsing PatchFilterKey from value: '" <> e
           <> "'. Accepted values: classification, msrc_severity, patch_id, priority, product, section, severity"

instance ToText PatchFilterKey where
    toText = \case
        Classification -> "CLASSIFICATION"
        MsrcSeverity -> "MSRC_SEVERITY"
        PatchId -> "PATCH_ID"
        Priority -> "PRIORITY"
        Product -> "PRODUCT"
        Section -> "SECTION"
        Severity -> "SEVERITY"

instance Hashable     PatchFilterKey
instance NFData       PatchFilterKey
instance ToByteString PatchFilterKey
instance ToQuery      PatchFilterKey
instance ToHeader     PatchFilterKey

instance ToJSON PatchFilterKey where
    toJSON = toJSONText

instance FromJSON PatchFilterKey where
    parseJSON = parseJSONText "PatchFilterKey"
