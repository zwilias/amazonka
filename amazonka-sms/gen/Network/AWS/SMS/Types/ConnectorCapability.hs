{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ConnectorCapability
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ConnectorCapability where

import Network.AWS.Prelude
  
-- | Capabilities for a Connector
data ConnectorCapability = CCVsphere
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText ConnectorCapability where
    parser = takeLowerText >>= \case
        "vsphere" -> pure CCVsphere
        e -> fromTextError $ "Failure parsing ConnectorCapability from value: '" <> e
           <> "'. Accepted values: vsphere"

instance ToText ConnectorCapability where
    toText = \case
        CCVsphere -> "VSPHERE"

instance Hashable     ConnectorCapability
instance NFData       ConnectorCapability
instance ToByteString ConnectorCapability
instance ToQuery      ConnectorCapability
instance ToHeader     ConnectorCapability

instance FromJSON ConnectorCapability where
    parseJSON = parseJSONText "ConnectorCapability"
