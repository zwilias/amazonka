{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.SecurityServiceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.FMS.Types.SecurityServiceType where

import Network.AWS.Prelude
  
data SecurityServiceType = Waf
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText SecurityServiceType where
    parser = takeLowerText >>= \case
        "waf" -> pure Waf
        e -> fromTextError $ "Failure parsing SecurityServiceType from value: '" <> e
           <> "'. Accepted values: waf"

instance ToText SecurityServiceType where
    toText = \case
        Waf -> "WAF"

instance Hashable     SecurityServiceType
instance NFData       SecurityServiceType
instance ToByteString SecurityServiceType
instance ToQuery      SecurityServiceType
instance ToHeader     SecurityServiceType

instance ToJSON SecurityServiceType where
    toJSON = toJSONText

instance FromJSON SecurityServiceType where
    parseJSON = parseJSONText "SecurityServiceType"
