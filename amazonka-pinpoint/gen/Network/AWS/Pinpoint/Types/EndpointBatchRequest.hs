{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointBatchRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointBatchRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointBatchItem
import Network.AWS.Prelude

-- | Endpoint batch update request.
--
-- /See:/ 'endpointBatchRequest' smart constructor.
newtype EndpointBatchRequest = EndpointBatchRequest'{_ebrItem
                                                     ::
                                                     Maybe [EndpointBatchItem]}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'EndpointBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebrItem' - List of items to update. Maximum 100 items
endpointBatchRequest
    :: EndpointBatchRequest
endpointBatchRequest
  = EndpointBatchRequest'{_ebrItem = Nothing}

-- | List of items to update. Maximum 100 items
ebrItem :: Lens' EndpointBatchRequest [EndpointBatchItem]
ebrItem = lens _ebrItem (\ s a -> s{_ebrItem = a}) . _Default . _Coerce

instance Hashable EndpointBatchRequest where

instance NFData EndpointBatchRequest where

instance ToJSON EndpointBatchRequest where
        toJSON EndpointBatchRequest'{..}
          = object (catMaybes [("Item" .=) <$> _ebrItem])
