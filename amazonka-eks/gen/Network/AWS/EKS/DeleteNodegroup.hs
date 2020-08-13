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
-- Module      : Network.AWS.EKS.DeleteNodegroup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon EKS node group for a cluster.
--
--
module Network.AWS.EKS.DeleteNodegroup
    (
    -- * Creating a Request
      deleteNodegroup
    , DeleteNodegroup
    -- * Request Lenses
    , delClusterName
    , delNodegroupName

    -- * Destructuring the Response
    , deleteNodegroupResponse
    , DeleteNodegroupResponse
    -- * Response Lenses
    , dnrsNodegroup
    , dnrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteNodegroup' smart constructor.
data DeleteNodegroup = DeleteNodegroup'{_delClusterName
                                        :: !Text,
                                        _delNodegroupName :: !Text}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteNodegroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delClusterName' - The name of the Amazon EKS cluster that is associated with your node group.
--
-- * 'delNodegroupName' - The name of the node group to delete.
deleteNodegroup
    :: Text -- ^ 'delClusterName'
    -> Text -- ^ 'delNodegroupName'
    -> DeleteNodegroup
deleteNodegroup pClusterName_ pNodegroupName_
  = DeleteNodegroup'{_delClusterName = pClusterName_,
                     _delNodegroupName = pNodegroupName_}

-- | The name of the Amazon EKS cluster that is associated with your node group.
delClusterName :: Lens' DeleteNodegroup Text
delClusterName = lens _delClusterName (\ s a -> s{_delClusterName = a})

-- | The name of the node group to delete.
delNodegroupName :: Lens' DeleteNodegroup Text
delNodegroupName = lens _delNodegroupName (\ s a -> s{_delNodegroupName = a})

instance AWSRequest DeleteNodegroup where
        type Rs DeleteNodegroup = DeleteNodegroupResponse
        request = delete eks
        response
          = receiveJSON
              (\ s h x ->
                 DeleteNodegroupResponse' <$>
                   (x .?> "nodegroup") <*> (pure (fromEnum s)))

instance Hashable DeleteNodegroup where

instance NFData DeleteNodegroup where

instance ToHeaders DeleteNodegroup where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DeleteNodegroup where
        toPath DeleteNodegroup'{..}
          = mconcat
              ["/clusters/", toBS _delClusterName, "/node-groups/",
               toBS _delNodegroupName]

instance ToQuery DeleteNodegroup where
        toQuery = const mempty

-- | /See:/ 'deleteNodegroupResponse' smart constructor.
data DeleteNodegroupResponse = DeleteNodegroupResponse'{_dnrsNodegroup
                                                        :: !(Maybe Nodegroup),
                                                        _dnrsResponseStatus ::
                                                        !Int}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'DeleteNodegroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnrsNodegroup' - The full description of your deleted node group.
--
-- * 'dnrsResponseStatus' - -- | The response status code.
deleteNodegroupResponse
    :: Int -- ^ 'dnrsResponseStatus'
    -> DeleteNodegroupResponse
deleteNodegroupResponse pResponseStatus_
  = DeleteNodegroupResponse'{_dnrsNodegroup = Nothing,
                             _dnrsResponseStatus = pResponseStatus_}

-- | The full description of your deleted node group.
dnrsNodegroup :: Lens' DeleteNodegroupResponse (Maybe Nodegroup)
dnrsNodegroup = lens _dnrsNodegroup (\ s a -> s{_dnrsNodegroup = a})

-- | -- | The response status code.
dnrsResponseStatus :: Lens' DeleteNodegroupResponse Int
dnrsResponseStatus = lens _dnrsResponseStatus (\ s a -> s{_dnrsResponseStatus = a})

instance NFData DeleteNodegroupResponse where
