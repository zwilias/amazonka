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
-- Module      : Network.AWS.EKS.DescribeCluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns descriptive information about an Amazon EKS cluster.
--
--
-- The API server endpoint and certificate authority data returned by this operation are required for @kubelet@ and @kubectl@ to communicate with your Kubernetes API server. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html Create a kubeconfig for Amazon EKS> .
--
module Network.AWS.EKS.DescribeCluster
    (
    -- * Creating a Request
      describeCluster
    , DescribeCluster
    -- * Request Lenses
    , dcName

    -- * Destructuring the Response
    , describeClusterResponse
    , DescribeClusterResponse
    -- * Response Lenses
    , dcrsCluster
    , dcrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCluster' smart constructor.
newtype DescribeCluster = DescribeCluster'{_dcName ::
                                           Text}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcName' - The name of the cluster to describe.
describeCluster
    :: Text -- ^ 'dcName'
    -> DescribeCluster
describeCluster pName_
  = DescribeCluster'{_dcName = pName_}

-- | The name of the cluster to describe.
dcName :: Lens' DescribeCluster Text
dcName = lens _dcName (\ s a -> s{_dcName = a})

instance AWSRequest DescribeCluster where
        type Rs DescribeCluster = DescribeClusterResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 DescribeClusterResponse' <$>
                   (x .?> "cluster") <*> (pure (fromEnum s)))

instance Hashable DescribeCluster where

instance NFData DescribeCluster where

instance ToHeaders DescribeCluster where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DescribeCluster where
        toPath DescribeCluster'{..}
          = mconcat ["/clusters/", toBS _dcName]

instance ToQuery DescribeCluster where
        toQuery = const mempty

-- | /See:/ 'describeClusterResponse' smart constructor.
data DescribeClusterResponse = DescribeClusterResponse'{_dcrsCluster
                                                        :: !(Maybe Cluster),
                                                        _dcrsResponseStatus ::
                                                        !Int}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'DescribeClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrsCluster' - The full description of your specified cluster.
--
-- * 'dcrsResponseStatus' - -- | The response status code.
describeClusterResponse
    :: Int -- ^ 'dcrsResponseStatus'
    -> DescribeClusterResponse
describeClusterResponse pResponseStatus_
  = DescribeClusterResponse'{_dcrsCluster = Nothing,
                             _dcrsResponseStatus = pResponseStatus_}

-- | The full description of your specified cluster.
dcrsCluster :: Lens' DescribeClusterResponse (Maybe Cluster)
dcrsCluster = lens _dcrsCluster (\ s a -> s{_dcrsCluster = a})

-- | -- | The response status code.
dcrsResponseStatus :: Lens' DescribeClusterResponse Int
dcrsResponseStatus = lens _dcrsResponseStatus (\ s a -> s{_dcrsResponseStatus = a})

instance NFData DescribeClusterResponse where
