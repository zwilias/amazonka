{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TriggerType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.TriggerType where

import Network.AWS.Prelude
  
data TriggerType = TTConditional
                 | TTOnDemand
                 | TTScheduled
                     deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                               Typeable, Generic)

instance FromText TriggerType where
    parser = takeLowerText >>= \case
        "conditional" -> pure TTConditional
        "on_demand" -> pure TTOnDemand
        "scheduled" -> pure TTScheduled
        e -> fromTextError $ "Failure parsing TriggerType from value: '" <> e
           <> "'. Accepted values: conditional, on_demand, scheduled"

instance ToText TriggerType where
    toText = \case
        TTConditional -> "CONDITIONAL"
        TTOnDemand -> "ON_DEMAND"
        TTScheduled -> "SCHEDULED"

instance Hashable     TriggerType
instance NFData       TriggerType
instance ToByteString TriggerType
instance ToQuery      TriggerType
instance ToHeader     TriggerType

instance ToJSON TriggerType where
    toJSON = toJSONText

instance FromJSON TriggerType where
    parseJSON = parseJSONText "TriggerType"
