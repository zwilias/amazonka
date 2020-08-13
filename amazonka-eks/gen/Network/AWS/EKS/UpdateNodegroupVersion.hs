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
-- Module      : Network.AWS.EKS.UpdateNodegroupVersion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Kubernetes version or AMI version of an Amazon EKS managed node group.
--
--
-- You can update to the latest available AMI version of a node group's current Kubernetes version by not specifying a Kubernetes version in the request. You can update to the latest AMI version of your cluster's current Kubernetes version by specifying your cluster's Kubernetes version in the request. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions> in the /Amazon EKS User Guide/ .
--
-- You cannot roll back a node group to an earlier Kubernetes version or AMI version.
--
-- When a node in a managed node group is terminated due to a scaling action or update, the pods in that node are drained first. Amazon EKS attempts to drain the nodes gracefully and will fail if it is unable to do so. You can @force@ the update if Amazon EKS is unable to drain the nodes as a result of a pod disruption budget issue.
--
module Network.AWS.EKS.UpdateNodegroupVersion
    (
    -- * Creating a Request
      updateNodegroupVersion
    , UpdateNodegroupVersion
    -- * Request Lenses
    , unvForce
    , unvReleaseVersion
    , unvVersion
    , unvClientRequestToken
    , unvClusterName
    , unvNodegroupName

    -- * Destructuring the Response
    , updateNodegroupVersionResponse
    , UpdateNodegroupVersionResponse
    -- * Response Lenses
    , unvrsUpdate
    , unvrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateNodegroupVersion' smart constructor.
data UpdateNodegroupVersion = UpdateNodegroupVersion'{_unvForce
                                                      :: !(Maybe Bool),
                                                      _unvReleaseVersion ::
                                                      !(Maybe Text),
                                                      _unvVersion ::
                                                      !(Maybe Text),
                                                      _unvClientRequestToken ::
                                                      !(Maybe Text),
                                                      _unvClusterName :: !Text,
                                                      _unvNodegroupName ::
                                                      !Text}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'UpdateNodegroupVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unvForce' - Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue. If an update fails because pods could not be drained, you can force the update after it fails to terminate the old node whether or not any pods are running on the node.
--
-- * 'unvReleaseVersion' - The AMI version of the Amazon EKS-optimized AMI to use for the update. By default, the latest available AMI version for the node group's Kubernetes version is used. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions > in the /Amazon EKS User Guide/ .
--
-- * 'unvVersion' - The Kubernetes version to update to. If no version is specified, then the Kubernetes version of the node group does not change. You can specify the Kubernetes version of the cluster to update the node group to the latest AMI version of the cluster's Kubernetes version.
--
-- * 'unvClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'unvClusterName' - The name of the Amazon EKS cluster that is associated with the managed node group to update.
--
-- * 'unvNodegroupName' - The name of the managed node group to update.
updateNodegroupVersion
    :: Text -- ^ 'unvClusterName'
    -> Text -- ^ 'unvNodegroupName'
    -> UpdateNodegroupVersion
updateNodegroupVersion pClusterName_ pNodegroupName_
  = UpdateNodegroupVersion'{_unvForce = Nothing,
                            _unvReleaseVersion = Nothing, _unvVersion = Nothing,
                            _unvClientRequestToken = Nothing,
                            _unvClusterName = pClusterName_,
                            _unvNodegroupName = pNodegroupName_}

-- | Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue. If an update fails because pods could not be drained, you can force the update after it fails to terminate the old node whether or not any pods are running on the node.
unvForce :: Lens' UpdateNodegroupVersion (Maybe Bool)
unvForce = lens _unvForce (\ s a -> s{_unvForce = a})

-- | The AMI version of the Amazon EKS-optimized AMI to use for the update. By default, the latest available AMI version for the node group's Kubernetes version is used. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html Amazon EKS-Optimized Linux AMI Versions > in the /Amazon EKS User Guide/ .
unvReleaseVersion :: Lens' UpdateNodegroupVersion (Maybe Text)
unvReleaseVersion = lens _unvReleaseVersion (\ s a -> s{_unvReleaseVersion = a})

-- | The Kubernetes version to update to. If no version is specified, then the Kubernetes version of the node group does not change. You can specify the Kubernetes version of the cluster to update the node group to the latest AMI version of the cluster's Kubernetes version.
unvVersion :: Lens' UpdateNodegroupVersion (Maybe Text)
unvVersion = lens _unvVersion (\ s a -> s{_unvVersion = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
unvClientRequestToken :: Lens' UpdateNodegroupVersion (Maybe Text)
unvClientRequestToken = lens _unvClientRequestToken (\ s a -> s{_unvClientRequestToken = a})

-- | The name of the Amazon EKS cluster that is associated with the managed node group to update.
unvClusterName :: Lens' UpdateNodegroupVersion Text
unvClusterName = lens _unvClusterName (\ s a -> s{_unvClusterName = a})

-- | The name of the managed node group to update.
unvNodegroupName :: Lens' UpdateNodegroupVersion Text
unvNodegroupName = lens _unvNodegroupName (\ s a -> s{_unvNodegroupName = a})

instance AWSRequest UpdateNodegroupVersion where
        type Rs UpdateNodegroupVersion =
             UpdateNodegroupVersionResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 UpdateNodegroupVersionResponse' <$>
                   (x .?> "update") <*> (pure (fromEnum s)))

instance Hashable UpdateNodegroupVersion where

instance NFData UpdateNodegroupVersion where

instance ToHeaders UpdateNodegroupVersion where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON UpdateNodegroupVersion where
        toJSON UpdateNodegroupVersion'{..}
          = object
              (catMaybes
                 [("force" .=) <$> _unvForce,
                  ("releaseVersion" .=) <$> _unvReleaseVersion,
                  ("version" .=) <$> _unvVersion,
                  ("clientRequestToken" .=) <$>
                    _unvClientRequestToken])

instance ToPath UpdateNodegroupVersion where
        toPath UpdateNodegroupVersion'{..}
          = mconcat
              ["/clusters/", toBS _unvClusterName, "/node-groups/",
               toBS _unvNodegroupName, "/update-version"]

instance ToQuery UpdateNodegroupVersion where
        toQuery = const mempty

-- | /See:/ 'updateNodegroupVersionResponse' smart constructor.
data UpdateNodegroupVersionResponse = UpdateNodegroupVersionResponse'{_unvrsUpdate
                                                                      ::
                                                                      !(Maybe
                                                                          Update),
                                                                      _unvrsResponseStatus
                                                                      :: !Int}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'UpdateNodegroupVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unvrsUpdate' - Undocumented member.
--
-- * 'unvrsResponseStatus' - -- | The response status code.
updateNodegroupVersionResponse
    :: Int -- ^ 'unvrsResponseStatus'
    -> UpdateNodegroupVersionResponse
updateNodegroupVersionResponse pResponseStatus_
  = UpdateNodegroupVersionResponse'{_unvrsUpdate =
                                      Nothing,
                                    _unvrsResponseStatus = pResponseStatus_}

-- | Undocumented member.
unvrsUpdate :: Lens' UpdateNodegroupVersionResponse (Maybe Update)
unvrsUpdate = lens _unvrsUpdate (\ s a -> s{_unvrsUpdate = a})

-- | -- | The response status code.
unvrsResponseStatus :: Lens' UpdateNodegroupVersionResponse Int
unvrsResponseStatus = lens _unvrsResponseStatus (\ s a -> s{_unvrsResponseStatus = a})

instance NFData UpdateNodegroupVersionResponse where
