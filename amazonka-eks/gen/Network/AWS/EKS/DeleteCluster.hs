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
-- Module      : Network.AWS.EKS.DeleteCluster
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the Amazon EKS cluster control plane.
--
--
-- If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html Deleting a Cluster> in the /Amazon EKS User Guide/ .
--
-- If you have managed node groups or Fargate profiles attached to the cluster, you must delete them first. For more information, see 'DeleteNodegroup' and 'DeleteFargateProfile' .
--
module Network.AWS.EKS.DeleteCluster
    (
    -- * Creating a Request
      deleteCluster
    , DeleteCluster
    -- * Request Lenses
    , dName

    -- * Destructuring the Response
    , deleteClusterResponse
    , DeleteClusterResponse
    -- * Response Lenses
    , drsCluster
    , drsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCluster' smart constructor.
newtype DeleteCluster = DeleteCluster'{_dName ::
                                       Text}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dName' - The name of the cluster to delete.
deleteCluster
    :: Text -- ^ 'dName'
    -> DeleteCluster
deleteCluster pName_
  = DeleteCluster'{_dName = pName_}

-- | The name of the cluster to delete.
dName :: Lens' DeleteCluster Text
dName = lens _dName (\ s a -> s{_dName = a})

instance AWSRequest DeleteCluster where
        type Rs DeleteCluster = DeleteClusterResponse
        request = delete eks
        response
          = receiveJSON
              (\ s h x ->
                 DeleteClusterResponse' <$>
                   (x .?> "cluster") <*> (pure (fromEnum s)))

instance Hashable DeleteCluster where

instance NFData DeleteCluster where

instance ToHeaders DeleteCluster where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DeleteCluster where
        toPath DeleteCluster'{..}
          = mconcat ["/clusters/", toBS _dName]

instance ToQuery DeleteCluster where
        toQuery = const mempty

-- | /See:/ 'deleteClusterResponse' smart constructor.
data DeleteClusterResponse = DeleteClusterResponse'{_drsCluster
                                                    :: !(Maybe Cluster),
                                                    _drsResponseStatus :: !Int}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'DeleteClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsCluster' - The full description of the cluster to delete.
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteClusterResponse
    :: Int -- ^ 'drsResponseStatus'
    -> DeleteClusterResponse
deleteClusterResponse pResponseStatus_
  = DeleteClusterResponse'{_drsCluster = Nothing,
                           _drsResponseStatus = pResponseStatus_}

-- | The full description of the cluster to delete.
drsCluster :: Lens' DeleteClusterResponse (Maybe Cluster)
drsCluster = lens _drsCluster (\ s a -> s{_drsCluster = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteClusterResponse Int
drsResponseStatus = lens _drsResponseStatus (\ s a -> s{_drsResponseStatus = a})

instance NFData DeleteClusterResponse where
