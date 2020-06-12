{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchComplianceDataState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.PatchComplianceDataState where

import Network.AWS.Prelude
  
data PatchComplianceDataState = Failed
                              | Installed
                              | InstalledOther
                              | Missing
                              | NotApplicable
                                  deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                            Data, Typeable, Generic)

instance FromText PatchComplianceDataState where
    parser = takeLowerText >>= \case
        "failed" -> pure Failed
        "installed" -> pure Installed
        "installed_other" -> pure InstalledOther
        "missing" -> pure Missing
        "not_applicable" -> pure NotApplicable
        e -> fromTextError $ "Failure parsing PatchComplianceDataState from value: '" <> e
           <> "'. Accepted values: failed, installed, installed_other, missing, not_applicable"

instance ToText PatchComplianceDataState where
    toText = \case
        Failed -> "FAILED"
        Installed -> "INSTALLED"
        InstalledOther -> "INSTALLED_OTHER"
        Missing -> "MISSING"
        NotApplicable -> "NOT_APPLICABLE"

instance Hashable     PatchComplianceDataState
instance NFData       PatchComplianceDataState
instance ToByteString PatchComplianceDataState
instance ToQuery      PatchComplianceDataState
instance ToHeader     PatchComplianceDataState

instance FromJSON PatchComplianceDataState where
    parseJSON = parseJSONText "PatchComplianceDataState"
