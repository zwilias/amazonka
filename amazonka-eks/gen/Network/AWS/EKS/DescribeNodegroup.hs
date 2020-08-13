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
-- Module      : Network.AWS.EKS.DescribeNodegroup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns descriptive information about an Amazon EKS node group.
--
--
module Network.AWS.EKS.DescribeNodegroup
    (
    -- * Creating a Request
      describeNodegroup
    , DescribeNodegroup
    -- * Request Lenses
    , dnClusterName
    , dnNodegroupName

    -- * Destructuring the Response
    , describeNodegroupResponse
    , DescribeNodegroupResponse
    -- * Response Lenses
    , desrsNodegroup
    , desrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeNodegroup' smart constructor.
data DescribeNodegroup = DescribeNodegroup'{_dnClusterName
                                            :: !Text,
                                            _dnNodegroupName :: !Text}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeNodegroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnClusterName' - The name of the Amazon EKS cluster associated with the node group.
--
-- * 'dnNodegroupName' - The name of the node group to describe.
describeNodegroup
    :: Text -- ^ 'dnClusterName'
    -> Text -- ^ 'dnNodegroupName'
    -> DescribeNodegroup
describeNodegroup pClusterName_ pNodegroupName_
  = DescribeNodegroup'{_dnClusterName = pClusterName_,
                       _dnNodegroupName = pNodegroupName_}

-- | The name of the Amazon EKS cluster associated with the node group.
dnClusterName :: Lens' DescribeNodegroup Text
dnClusterName = lens _dnClusterName (\ s a -> s{_dnClusterName = a})

-- | The name of the node group to describe.
dnNodegroupName :: Lens' DescribeNodegroup Text
dnNodegroupName = lens _dnNodegroupName (\ s a -> s{_dnNodegroupName = a})

instance AWSRequest DescribeNodegroup where
        type Rs DescribeNodegroup = DescribeNodegroupResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 DescribeNodegroupResponse' <$>
                   (x .?> "nodegroup") <*> (pure (fromEnum s)))

instance Hashable DescribeNodegroup where

instance NFData DescribeNodegroup where

instance ToHeaders DescribeNodegroup where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DescribeNodegroup where
        toPath DescribeNodegroup'{..}
          = mconcat
              ["/clusters/", toBS _dnClusterName, "/node-groups/",
               toBS _dnNodegroupName]

instance ToQuery DescribeNodegroup where
        toQuery = const mempty

-- | /See:/ 'describeNodegroupResponse' smart constructor.
data DescribeNodegroupResponse = DescribeNodegroupResponse'{_desrsNodegroup
                                                            ::
                                                            !(Maybe Nodegroup),
                                                            _desrsResponseStatus
                                                            :: !Int}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'DescribeNodegroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNodegroup' - The full description of your node group.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeNodegroupResponse
    :: Int -- ^ 'desrsResponseStatus'
    -> DescribeNodegroupResponse
describeNodegroupResponse pResponseStatus_
  = DescribeNodegroupResponse'{_desrsNodegroup =
                                 Nothing,
                               _desrsResponseStatus = pResponseStatus_}

-- | The full description of your node group.
desrsNodegroup :: Lens' DescribeNodegroupResponse (Maybe Nodegroup)
desrsNodegroup = lens _desrsNodegroup (\ s a -> s{_desrsNodegroup = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeNodegroupResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\ s a -> s{_desrsResponseStatus = a})

instance NFData DescribeNodegroupResponse where
