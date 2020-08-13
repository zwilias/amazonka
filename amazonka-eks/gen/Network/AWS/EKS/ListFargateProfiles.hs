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
-- Module      : Network.AWS.EKS.ListFargateProfiles
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the AWS Fargate profiles associated with the specified cluster in your AWS account in the specified Region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EKS.ListFargateProfiles
    (
    -- * Creating a Request
      listFargateProfiles
    , ListFargateProfiles
    -- * Request Lenses
    , lfpNextToken
    , lfpMaxResults
    , lfpClusterName

    -- * Destructuring the Response
    , listFargateProfilesResponse
    , ListFargateProfilesResponse
    -- * Response Lenses
    , lfprsNextToken
    , lfprsFargateProfileNames
    , lfprsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFargateProfiles' smart constructor.
data ListFargateProfiles = ListFargateProfiles'{_lfpNextToken
                                                :: !(Maybe Text),
                                                _lfpMaxResults :: !(Maybe Nat),
                                                _lfpClusterName :: !Text}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFargateProfiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfpNextToken' - The @nextToken@ value returned from a previous paginated @ListFargateProfiles@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
--
-- * 'lfpMaxResults' - The maximum number of Fargate profile results returned by @ListFargateProfiles@ in paginated output. When you use this parameter, @ListFargateProfiles@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListFargateProfiles@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListFargateProfiles@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'lfpClusterName' - The name of the Amazon EKS cluster that you would like to listFargate profiles in.
listFargateProfiles
    :: Text -- ^ 'lfpClusterName'
    -> ListFargateProfiles
listFargateProfiles pClusterName_
  = ListFargateProfiles'{_lfpNextToken = Nothing,
                         _lfpMaxResults = Nothing,
                         _lfpClusterName = pClusterName_}

-- | The @nextToken@ value returned from a previous paginated @ListFargateProfiles@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
lfpNextToken :: Lens' ListFargateProfiles (Maybe Text)
lfpNextToken = lens _lfpNextToken (\ s a -> s{_lfpNextToken = a})

-- | The maximum number of Fargate profile results returned by @ListFargateProfiles@ in paginated output. When you use this parameter, @ListFargateProfiles@ returns only @maxResults@ results in a single page along with a @nextToken@ response element. You can see the remaining results of the initial request by sending another @ListFargateProfiles@ request with the returned @nextToken@ value. This value can be between 1 and 100. If you don't use this parameter, @ListFargateProfiles@ returns up to 100 results and a @nextToken@ value if applicable.
lfpMaxResults :: Lens' ListFargateProfiles (Maybe Natural)
lfpMaxResults = lens _lfpMaxResults (\ s a -> s{_lfpMaxResults = a}) . mapping _Nat

-- | The name of the Amazon EKS cluster that you would like to listFargate profiles in.
lfpClusterName :: Lens' ListFargateProfiles Text
lfpClusterName = lens _lfpClusterName (\ s a -> s{_lfpClusterName = a})

instance AWSPager ListFargateProfiles where
        page rq rs
          | stop (rs ^. lfprsNextToken) = Nothing
          | stop (rs ^. lfprsFargateProfileNames) = Nothing
          | otherwise =
            Just $ rq & lfpNextToken .~ rs ^. lfprsNextToken

instance AWSRequest ListFargateProfiles where
        type Rs ListFargateProfiles =
             ListFargateProfilesResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 ListFargateProfilesResponse' <$>
                   (x .?> "nextToken") <*>
                     (x .?> "fargateProfileNames" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable ListFargateProfiles where

instance NFData ListFargateProfiles where

instance ToHeaders ListFargateProfiles where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath ListFargateProfiles where
        toPath ListFargateProfiles'{..}
          = mconcat
              ["/clusters/", toBS _lfpClusterName,
               "/fargate-profiles"]

instance ToQuery ListFargateProfiles where
        toQuery ListFargateProfiles'{..}
          = mconcat
              ["nextToken" =: _lfpNextToken,
               "maxResults" =: _lfpMaxResults]

-- | /See:/ 'listFargateProfilesResponse' smart constructor.
data ListFargateProfilesResponse = ListFargateProfilesResponse'{_lfprsNextToken
                                                                ::
                                                                !(Maybe Text),
                                                                _lfprsFargateProfileNames
                                                                ::
                                                                !(Maybe [Text]),
                                                                _lfprsResponseStatus
                                                                :: !Int}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'ListFargateProfilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfprsNextToken' - The @nextToken@ value to include in a future @ListFargateProfiles@ request. When the results of a @ListFargateProfiles@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lfprsFargateProfileNames' - A list of all of the Fargate profiles associated with the specified cluster.
--
-- * 'lfprsResponseStatus' - -- | The response status code.
listFargateProfilesResponse
    :: Int -- ^ 'lfprsResponseStatus'
    -> ListFargateProfilesResponse
listFargateProfilesResponse pResponseStatus_
  = ListFargateProfilesResponse'{_lfprsNextToken =
                                   Nothing,
                                 _lfprsFargateProfileNames = Nothing,
                                 _lfprsResponseStatus = pResponseStatus_}

-- | The @nextToken@ value to include in a future @ListFargateProfiles@ request. When the results of a @ListFargateProfiles@ request exceed @maxResults@ , you can use this value to retrieve the next page of results. This value is @null@ when there are no more results to return.
lfprsNextToken :: Lens' ListFargateProfilesResponse (Maybe Text)
lfprsNextToken = lens _lfprsNextToken (\ s a -> s{_lfprsNextToken = a})

-- | A list of all of the Fargate profiles associated with the specified cluster.
lfprsFargateProfileNames :: Lens' ListFargateProfilesResponse [Text]
lfprsFargateProfileNames = lens _lfprsFargateProfileNames (\ s a -> s{_lfprsFargateProfileNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lfprsResponseStatus :: Lens' ListFargateProfilesResponse Int
lfprsResponseStatus = lens _lfprsResponseStatus (\ s a -> s{_lfprsResponseStatus = a})

instance NFData ListFargateProfilesResponse where
