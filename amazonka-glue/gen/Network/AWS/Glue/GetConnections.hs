{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetConnections
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connection definitions from the Data Catalog.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetConnections
    (
    -- * Creating a Request
      getConnections
    , GetConnections
    -- * Request Lenses
    , gcsCatalogId
    , gcsNextToken
    , gcsFilter
    , gcsMaxResults

    -- * Destructuring the Response
    , getConnectionsResponse
    , GetConnectionsResponse
    -- * Response Lenses
    , gtcnnctnsrsNextToken
    , gtcnnctnsrsConnectionList
    , gtcnnctnsrsResponseStatus
    ) where

import Network.AWS.Glue.Types
import Network.AWS.Glue.Types.Product
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnections' smart constructor.
data GetConnections = GetConnections'{_gcsCatalogId
                                      :: !(Maybe Text),
                                      _gcsNextToken :: !(Maybe Text),
                                      _gcsFilter ::
                                      !(Maybe GetConnectionsFilter),
                                      _gcsMaxResults :: !(Maybe Nat)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsCatalogId' - The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.
--
-- * 'gcsNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gcsFilter' - A filter that controls which connections will be returned.
--
-- * 'gcsMaxResults' - The maximum number of connections to return in one response.
getConnections
    :: GetConnections
getConnections
  = GetConnections'{_gcsCatalogId = Nothing,
                    _gcsNextToken = Nothing, _gcsFilter = Nothing,
                    _gcsMaxResults = Nothing}

-- | The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.
gcsCatalogId :: Lens' GetConnections (Maybe Text)
gcsCatalogId = lens _gcsCatalogId (\ s a -> s{_gcsCatalogId = a})

-- | A continuation token, if this is a continuation call.
gcsNextToken :: Lens' GetConnections (Maybe Text)
gcsNextToken = lens _gcsNextToken (\ s a -> s{_gcsNextToken = a})

-- | A filter that controls which connections will be returned.
gcsFilter :: Lens' GetConnections (Maybe GetConnectionsFilter)
gcsFilter = lens _gcsFilter (\ s a -> s{_gcsFilter = a})

-- | The maximum number of connections to return in one response.
gcsMaxResults :: Lens' GetConnections (Maybe Natural)
gcsMaxResults = lens _gcsMaxResults (\ s a -> s{_gcsMaxResults = a}) . mapping _Nat

instance AWSPager GetConnections where
        page rq rs
          | stop (rs ^. gtcnnctnsrsNextToken) = Nothing
          | stop (rs ^. gtcnnctnsrsConnectionList) = Nothing
          | otherwise =
            Just $ rq &
              gcsNextToken .~ rs ^. gtcnnctnsrsNextToken

instance AWSRequest GetConnections where
        type Rs GetConnections = GetConnectionsResponse
        request = postJSON glue
        response
          = receiveJSON
              (\ s h x ->
                 GetConnectionsResponse' <$>
                   (x .?> "NextToken") <*>
                     (x .?> "ConnectionList" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable GetConnections where

instance NFData GetConnections where

instance ToHeaders GetConnections where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSGlue.GetConnections" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetConnections where
        toJSON GetConnections'{..}
          = object
              (catMaybes
                 [("CatalogId" .=) <$> _gcsCatalogId,
                  ("NextToken" .=) <$> _gcsNextToken,
                  ("Filter" .=) <$> _gcsFilter,
                  ("MaxResults" .=) <$> _gcsMaxResults])

instance ToPath GetConnections where
        toPath = const "/"

instance ToQuery GetConnections where
        toQuery = const mempty

-- | /See:/ 'getConnectionsResponse' smart constructor.
data GetConnectionsResponse = GetConnectionsResponse'{_gtcnnctnsrsNextToken
                                                      :: !(Maybe Text),
                                                      _gtcnnctnsrsConnectionList
                                                      :: !(Maybe [Connection]),
                                                      _gtcnnctnsrsResponseStatus
                                                      :: !Int}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'GetConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtcnnctnsrsNextToken' - A continuation token, if the list of connections returned does not include the last of the filtered connections.
--
-- * 'gtcnnctnsrsConnectionList' - A list of requested connection definitions.
--
-- * 'gtcnnctnsrsResponseStatus' - -- | The response status code.
getConnectionsResponse
    :: Int -- ^ 'gtcnnctnsrsResponseStatus'
    -> GetConnectionsResponse
getConnectionsResponse pResponseStatus_
  = GetConnectionsResponse'{_gtcnnctnsrsNextToken =
                              Nothing,
                            _gtcnnctnsrsConnectionList = Nothing,
                            _gtcnnctnsrsResponseStatus = pResponseStatus_}

-- | A continuation token, if the list of connections returned does not include the last of the filtered connections.
gtcnnctnsrsNextToken :: Lens' GetConnectionsResponse (Maybe Text)
gtcnnctnsrsNextToken = lens _gtcnnctnsrsNextToken (\ s a -> s{_gtcnnctnsrsNextToken = a})

-- | A list of requested connection definitions.
gtcnnctnsrsConnectionList :: Lens' GetConnectionsResponse [Connection]
gtcnnctnsrsConnectionList = lens _gtcnnctnsrsConnectionList (\ s a -> s{_gtcnnctnsrsConnectionList = a}) . _Default . _Coerce

-- | -- | The response status code.
gtcnnctnsrsResponseStatus :: Lens' GetConnectionsResponse Int
gtcnnctnsrsResponseStatus = lens _gtcnnctnsrsResponseStatus (\ s a -> s{_gtcnnctnsrsResponseStatus = a})

instance NFData GetConnectionsResponse where
