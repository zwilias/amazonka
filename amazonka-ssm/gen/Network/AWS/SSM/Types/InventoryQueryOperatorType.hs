{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryQueryOperatorType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InventoryQueryOperatorType (
  InventoryQueryOperatorType (
    ..
    , BeginWith
    , Equal
    , GreaterThan
    , LessThan
    , NotEqual
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InventoryQueryOperatorType = InventoryQueryOperatorType' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern BeginWith :: InventoryQueryOperatorType
pattern BeginWith = InventoryQueryOperatorType' "BeginWith"

pattern Equal :: InventoryQueryOperatorType
pattern Equal = InventoryQueryOperatorType' "Equal"

pattern GreaterThan :: InventoryQueryOperatorType
pattern GreaterThan = InventoryQueryOperatorType' "GreaterThan"

pattern LessThan :: InventoryQueryOperatorType
pattern LessThan = InventoryQueryOperatorType' "LessThan"

pattern NotEqual :: InventoryQueryOperatorType
pattern NotEqual = InventoryQueryOperatorType' "NotEqual"

{-# COMPLETE
  BeginWith,
  Equal,
  GreaterThan,
  LessThan,
  NotEqual,
  InventoryQueryOperatorType' #-}

instance FromText InventoryQueryOperatorType where
    parser = (InventoryQueryOperatorType' . mk) <$> takeText

instance ToText InventoryQueryOperatorType where
    toText (InventoryQueryOperatorType' ci) = original ci

-- | Represents an enum of /known/ $InventoryQueryOperatorType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InventoryQueryOperatorType where
    toEnum i = case i of
        0 -> BeginWith
        1 -> Equal
        2 -> GreaterThan
        3 -> LessThan
        4 -> NotEqual
        _ -> (error . showText) $ "Unknown index for InventoryQueryOperatorType: " <> toText i
    fromEnum x = case x of
        BeginWith -> 0
        Equal -> 1
        GreaterThan -> 2
        LessThan -> 3
        NotEqual -> 4
        InventoryQueryOperatorType' name -> (error . showText) $ "Unknown InventoryQueryOperatorType: " <> original name

-- | Represents the bounds of /known/ $InventoryQueryOperatorType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InventoryQueryOperatorType where
    minBound = BeginWith
    maxBound = NotEqual

instance Hashable     InventoryQueryOperatorType
instance NFData       InventoryQueryOperatorType
instance ToByteString InventoryQueryOperatorType
instance ToQuery      InventoryQueryOperatorType
instance ToHeader     InventoryQueryOperatorType

instance ToJSON InventoryQueryOperatorType where
    toJSON = toJSONText
