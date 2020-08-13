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
-- Module      : Network.AWS.EKS.ListClusters
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Amazon EKS clusters in your AWS account in the specified Region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EKS.ListClusters
    (
    -- * Creating a Request
      listClusters
    , ListClusters
    -- * Request Lenses
    , lcNextToken
    , lcMaxResults

    -- * Destructuring the Response
    , listClustersResponse
    , ListClustersResponse
    -- * Response Lenses
    , lcrsNextToken
    , lcrsClusters
    , lcrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listClusters' smart constructor.
data ListClusters = ListClusters'{_lcNextToken ::
                                  !(Maybe Text),
                                  _lcMaxResults :: !(Maybe Nat)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - The @nextToken@ value returned from a previous paginated @ListClusters@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
--
-- * 'lcMaxResults' - The maximum number of cluster results returned by @ListClusters@ in paginated output. When you use this parameter, @ListClusters@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListClusters@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListClusters@ returns up to 100 results and a @nextToken@ value if applicable.
listClusters
    :: ListClusters
listClusters
  = ListClusters'{_lcNextToken = Nothing,
                  _lcMaxResults = Nothing}

-- | The @nextToken@ value returned from a previous paginated @ListClusters@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
lcNextToken :: Lens' ListClusters (Maybe Text)
lcNextToken = lens _lcNextToken (\ s a -> s{_lcNextToken = a})

-- | The maximum number of cluster results returned by @ListClusters@ in paginated output. When you use this parameter, @ListClusters@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListClusters@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListClusters@ returns up to 100 results and a @nextToken@ value if applicable.
lcMaxResults :: Lens' ListClusters (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\ s a -> s{_lcMaxResults = a}) . mapping _Nat

instance AWSPager ListClusters where
        page rq rs
          | stop (rs ^. lcrsNextToken) = Nothing
          | stop (rs ^. lcrsClusters) = Nothing
          | otherwise =
            Just $ rq & lcNextToken .~ rs ^. lcrsNextToken

instance AWSRequest ListClusters where
        type Rs ListClusters = ListClustersResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 ListClustersResponse' <$>
                   (x .?> "nextToken") <*> (x .?> "clusters" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable ListClusters where

instance NFData ListClusters where

instance ToHeaders ListClusters where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath ListClusters where
        toPath = const "/clusters"

instance ToQuery ListClusters where
        toQuery ListClusters'{..}
          = mconcat
              ["nextToken" =: _lcNextToken,
               "maxResults" =: _lcMaxResults]

-- | /See:/ 'listClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse'{_lcrsNextToken
                                                  :: !(Maybe Text),
                                                  _lcrsClusters ::
                                                  !(Maybe [Text]),
                                                  _lcrsResponseStatus :: !Int}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrsNextToken' - The @nextToken@ value to include in a future @ListClusters@ request. When the results of a @ListClusters@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lcrsClusters' - A list of all of the clusters for your account in the specified Region.
--
-- * 'lcrsResponseStatus' - -- | The response status code.
listClustersResponse
    :: Int -- ^ 'lcrsResponseStatus'
    -> ListClustersResponse
listClustersResponse pResponseStatus_
  = ListClustersResponse'{_lcrsNextToken = Nothing,
                          _lcrsClusters = Nothing,
                          _lcrsResponseStatus = pResponseStatus_}

-- | The @nextToken@ value to include in a future @ListClusters@ request. When the results of a @ListClusters@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
lcrsNextToken :: Lens' ListClustersResponse (Maybe Text)
lcrsNextToken = lens _lcrsNextToken (\ s a -> s{_lcrsNextToken = a})

-- | A list of all of the clusters for your account in the specified Region.
lcrsClusters :: Lens' ListClustersResponse [Text]
lcrsClusters = lens _lcrsClusters (\ s a -> s{_lcrsClusters = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrsResponseStatus :: Lens' ListClustersResponse Int
lcrsResponseStatus = lens _lcrsResponseStatus (\ s a -> s{_lcrsResponseStatus = a})

instance NFData ListClustersResponse where
