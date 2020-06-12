{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ActionTypeEnum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.ActionTypeEnum where

import Network.AWS.Prelude
  
data ActionTypeEnum = Forward
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText ActionTypeEnum where
    parser = takeLowerText >>= \case
        "forward" -> pure Forward
        e -> fromTextError $ "Failure parsing ActionTypeEnum from value: '" <> e
           <> "'. Accepted values: forward"

instance ToText ActionTypeEnum where
    toText = \case
        Forward -> "forward"

instance Hashable     ActionTypeEnum
instance NFData       ActionTypeEnum
instance ToByteString ActionTypeEnum
instance ToQuery      ActionTypeEnum
instance ToHeader     ActionTypeEnum

instance FromXML ActionTypeEnum where
    parseXML = parseXMLText "ActionTypeEnum"
