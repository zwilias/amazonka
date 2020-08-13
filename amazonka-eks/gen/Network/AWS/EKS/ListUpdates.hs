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
-- Module      : Network.AWS.EKS.ListUpdates
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the updates associated with an Amazon EKS cluster or managed node group in your AWS account, in the specified Region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EKS.ListUpdates
    (
    -- * Creating a Request
      listUpdates
    , ListUpdates
    -- * Request Lenses
    , luNextToken
    , luNodegroupName
    , luMaxResults
    , luName

    -- * Destructuring the Response
    , listUpdatesResponse
    , ListUpdatesResponse
    -- * Response Lenses
    , lursNextToken
    , lursUpdateIds
    , lursResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listUpdates' smart constructor.
data ListUpdates = ListUpdates'{_luNextToken ::
                                !(Maybe Text),
                                _luNodegroupName :: !(Maybe Text),
                                _luMaxResults :: !(Maybe Nat), _luName :: !Text}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUpdates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luNextToken' - The @nextToken@ value returned from a previous paginated @ListUpdates@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
--
-- * 'luNodegroupName' - The name of the Amazon EKS managed node group to list updates for.
--
-- * 'luMaxResults' - The maximum number of update results returned by @ListUpdates@ in paginated output. When you use this parameter, @ListUpdates@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListUpdates@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListUpdates@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'luName' - The name of the Amazon EKS cluster to list updates for.
listUpdates
    :: Text -- ^ 'luName'
    -> ListUpdates
listUpdates pName_
  = ListUpdates'{_luNextToken = Nothing,
                 _luNodegroupName = Nothing, _luMaxResults = Nothing,
                 _luName = pName_}

-- | The @nextToken@ value returned from a previous paginated @ListUpdates@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
luNextToken :: Lens' ListUpdates (Maybe Text)
luNextToken = lens _luNextToken (\ s a -> s{_luNextToken = a})

-- | The name of the Amazon EKS managed node group to list updates for.
luNodegroupName :: Lens' ListUpdates (Maybe Text)
luNodegroupName = lens _luNodegroupName (\ s a -> s{_luNodegroupName = a})

-- | The maximum number of update results returned by @ListUpdates@ in paginated output. When you use this parameter, @ListUpdates@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListUpdates@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListUpdates@ returns up to 100 results and a @nextToken@ value if applicable.
luMaxResults :: Lens' ListUpdates (Maybe Natural)
luMaxResults = lens _luMaxResults (\ s a -> s{_luMaxResults = a}) . mapping _Nat

-- | The name of the Amazon EKS cluster to list updates for.
luName :: Lens' ListUpdates Text
luName = lens _luName (\ s a -> s{_luName = a})

instance AWSPager ListUpdates where
        page rq rs
          | stop (rs ^. lursNextToken) = Nothing
          | stop (rs ^. lursUpdateIds) = Nothing
          | otherwise =
            Just $ rq & luNextToken .~ rs ^. lursNextToken

instance AWSRequest ListUpdates where
        type Rs ListUpdates = ListUpdatesResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 ListUpdatesResponse' <$>
                   (x .?> "nextToken") <*>
                     (x .?> "updateIds" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable ListUpdates where

instance NFData ListUpdates where

instance ToHeaders ListUpdates where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath ListUpdates where
        toPath ListUpdates'{..}
          = mconcat ["/clusters/", toBS _luName, "/updates"]

instance ToQuery ListUpdates where
        toQuery ListUpdates'{..}
          = mconcat
              ["nextToken" =: _luNextToken,
               "nodegroupName" =: _luNodegroupName,
               "maxResults" =: _luMaxResults]

-- | /See:/ 'listUpdatesResponse' smart constructor.
data ListUpdatesResponse = ListUpdatesResponse'{_lursNextToken
                                                :: !(Maybe Text),
                                                _lursUpdateIds ::
                                                !(Maybe [Text]),
                                                _lursResponseStatus :: !Int}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUpdatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lursNextToken' - The @nextToken@ value to include in a future @ListUpdates@ request. When the results of a @ListUpdates@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lursUpdateIds' - A list of all the updates for the specified cluster and Region.
--
-- * 'lursResponseStatus' - -- | The response status code.
listUpdatesResponse
    :: Int -- ^ 'lursResponseStatus'
    -> ListUpdatesResponse
listUpdatesResponse pResponseStatus_
  = ListUpdatesResponse'{_lursNextToken = Nothing,
                         _lursUpdateIds = Nothing,
                         _lursResponseStatus = pResponseStatus_}

-- | The @nextToken@ value to include in a future @ListUpdates@ request. When the results of a @ListUpdates@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
lursNextToken :: Lens' ListUpdatesResponse (Maybe Text)
lursNextToken = lens _lursNextToken (\ s a -> s{_lursNextToken = a})

-- | A list of all the updates for the specified cluster and Region.
lursUpdateIds :: Lens' ListUpdatesResponse [Text]
lursUpdateIds = lens _lursUpdateIds (\ s a -> s{_lursUpdateIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lursResponseStatus :: Lens' ListUpdatesResponse Int
lursResponseStatus = lens _lursResponseStatus (\ s a -> s{_lursResponseStatus = a})

instance NFData ListUpdatesResponse where
