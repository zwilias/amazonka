{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryAggregator
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InventoryAggregator where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the inventory type and attribute for the aggregation execution.
--
--
--
-- /See:/ 'inventoryAggregator' smart constructor.
data InventoryAggregator = InventoryAggregator'{_iaAggregators
                                                ::
                                                !(Maybe
                                                    (List1
                                                       InventoryAggregator)),
                                                _iaExpression :: !(Maybe Text)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InventoryAggregator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaAggregators' - Nested aggregators to further refine aggregation for an inventory type.
--
-- * 'iaExpression' - The inventory type and attribute name for aggregation.
inventoryAggregator
    :: InventoryAggregator
inventoryAggregator
  = InventoryAggregator'{_iaAggregators = Nothing,
                         _iaExpression = Nothing}

-- | Nested aggregators to further refine aggregation for an inventory type.
iaAggregators :: Lens' InventoryAggregator (Maybe (NonEmpty InventoryAggregator))
iaAggregators = lens _iaAggregators (\ s a -> s{_iaAggregators = a}) . mapping _List1

-- | The inventory type and attribute name for aggregation.
iaExpression :: Lens' InventoryAggregator (Maybe Text)
iaExpression = lens _iaExpression (\ s a -> s{_iaExpression = a})

instance Hashable InventoryAggregator where

instance NFData InventoryAggregator where

instance ToJSON InventoryAggregator where
        toJSON InventoryAggregator'{..}
          = object
              (catMaybes
                 [("Aggregators" .=) <$> _iaAggregators,
                  ("Expression" .=) <$> _iaExpression])
