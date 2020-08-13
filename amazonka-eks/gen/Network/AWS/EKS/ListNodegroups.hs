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
-- Module      : Network.AWS.EKS.ListNodegroups
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Amazon EKS managed node groups associated with the specified cluster in your AWS account in the specified Region. Self-managed node groups are not listed.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EKS.ListNodegroups
    (
    -- * Creating a Request
      listNodegroups
    , ListNodegroups
    -- * Request Lenses
    , lnNextToken
    , lnMaxResults
    , lnClusterName

    -- * Destructuring the Response
    , listNodegroupsResponse
    , ListNodegroupsResponse
    -- * Response Lenses
    , lnrsNodegroups
    , lnrsNextToken
    , lnrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listNodegroups' smart constructor.
data ListNodegroups = ListNodegroups'{_lnNextToken ::
                                      !(Maybe Text),
                                      _lnMaxResults :: !(Maybe Nat),
                                      _lnClusterName :: !Text}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListNodegroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnNextToken' - The @nextToken@ value returned from a previous paginated @ListNodegroups@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
--
-- * 'lnMaxResults' - The maximum number of node group results returned by @ListNodegroups@ in paginated output. When you use this parameter, @ListNodegroups@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListNodegroups@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListNodegroups@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'lnClusterName' - The name of the Amazon EKS cluster that you would like to list node groups in.
listNodegroups
    :: Text -- ^ 'lnClusterName'
    -> ListNodegroups
listNodegroups pClusterName_
  = ListNodegroups'{_lnNextToken = Nothing,
                    _lnMaxResults = Nothing,
                    _lnClusterName = pClusterName_}

-- | The @nextToken@ value returned from a previous paginated @ListNodegroups@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
lnNextToken :: Lens' ListNodegroups (Maybe Text)
lnNextToken = lens _lnNextToken (\ s a -> s{_lnNextToken = a})

-- | The maximum number of node group results returned by @ListNodegroups@ in paginated output. When you use this parameter, @ListNodegroups@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListNodegroups@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListNodegroups@ returns up to 100 results and a @nextToken@ value if applicable.
lnMaxResults :: Lens' ListNodegroups (Maybe Natural)
lnMaxResults = lens _lnMaxResults (\ s a -> s{_lnMaxResults = a}) . mapping _Nat

-- | The name of the Amazon EKS cluster that you would like to list node groups in.
lnClusterName :: Lens' ListNodegroups Text
lnClusterName = lens _lnClusterName (\ s a -> s{_lnClusterName = a})

instance AWSPager ListNodegroups where
        page rq rs
          | stop (rs ^. lnrsNextToken) = Nothing
          | stop (rs ^. lnrsNodegroups) = Nothing
          | otherwise =
            Just $ rq & lnNextToken .~ rs ^. lnrsNextToken

instance AWSRequest ListNodegroups where
        type Rs ListNodegroups = ListNodegroupsResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 ListNodegroupsResponse' <$>
                   (x .?> "nodegroups" .!@ mempty) <*>
                     (x .?> "nextToken")
                     <*> (pure (fromEnum s)))

instance Hashable ListNodegroups where

instance NFData ListNodegroups where

instance ToHeaders ListNodegroups where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath ListNodegroups where
        toPath ListNodegroups'{..}
          = mconcat
              ["/clusters/", toBS _lnClusterName, "/node-groups"]

instance ToQuery ListNodegroups where
        toQuery ListNodegroups'{..}
          = mconcat
              ["nextToken" =: _lnNextToken,
               "maxResults" =: _lnMaxResults]

-- | /See:/ 'listNodegroupsResponse' smart constructor.
data ListNodegroupsResponse = ListNodegroupsResponse'{_lnrsNodegroups
                                                      :: !(Maybe [Text]),
                                                      _lnrsNextToken ::
                                                      !(Maybe Text),
                                                      _lnrsResponseStatus ::
                                                      !Int}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'ListNodegroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrsNodegroups' - A list of all of the node groups associated with the specified cluster.
--
-- * 'lnrsNextToken' - The @nextToken@ value to include in a future @ListNodegroups@ request. When the results of a @ListNodegroups@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lnrsResponseStatus' - -- | The response status code.
listNodegroupsResponse
    :: Int -- ^ 'lnrsResponseStatus'
    -> ListNodegroupsResponse
listNodegroupsResponse pResponseStatus_
  = ListNodegroupsResponse'{_lnrsNodegroups = Nothing,
                            _lnrsNextToken = Nothing,
                            _lnrsResponseStatus = pResponseStatus_}

-- | A list of all of the node groups associated with the specified cluster.
lnrsNodegroups :: Lens' ListNodegroupsResponse [Text]
lnrsNodegroups = lens _lnrsNodegroups (\ s a -> s{_lnrsNodegroups = a}) . _Default . _Coerce

-- | The @nextToken@ value to include in a future @ListNodegroups@ request. When the results of a @ListNodegroups@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
lnrsNextToken :: Lens' ListNodegroupsResponse (Maybe Text)
lnrsNextToken = lens _lnrsNextToken (\ s a -> s{_lnrsNextToken = a})

-- | -- | The response status code.
lnrsResponseStatus :: Lens' ListNodegroupsResponse Int
lnrsResponseStatus = lens _lnrsResponseStatus (\ s a -> s{_lnrsResponseStatus = a})

instance NFData ListNodegroupsResponse where
