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
-- Module      : Network.AWS.EKS.UpdateClusterConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon EKS cluster configuration. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the 'DescribeUpdate' API operation.
--
--
-- You can use this API operation to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
--
-- You can also use this API operation to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html Amazon EKS Cluster Endpoint Access Control> in the /\/Amazon EKS User Guide\/ / . 
--
-- /Important:/ At this time, you can not update the subnets or security group IDs for an existing cluster.
--
-- Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to @UPDATING@ (this status transition is eventually consistent). When the update is complete (either @Failed@ or @Successful@ ), the cluster status moves to @Active@ .
--
module Network.AWS.EKS.UpdateClusterConfig
    (
    -- * Creating a Request
      updateClusterConfig
    , UpdateClusterConfig
    -- * Request Lenses
    , uccClientRequestToken
    , uccLogging
    , uccResourcesVPCConfig
    , uccName

    -- * Destructuring the Response
    , updateClusterConfigResponse
    , UpdateClusterConfigResponse
    -- * Response Lenses
    , uccrsUpdate
    , uccrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateClusterConfig' smart constructor.
data UpdateClusterConfig = UpdateClusterConfig'{_uccClientRequestToken
                                                :: !(Maybe Text),
                                                _uccLogging :: !(Maybe Logging),
                                                _uccResourcesVPCConfig ::
                                                !(Maybe VPCConfigRequest),
                                                _uccName :: !Text}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'uccLogging' - Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
--
-- * 'uccResourcesVPCConfig' - Undocumented member.
--
-- * 'uccName' - The name of the Amazon EKS cluster to update.
updateClusterConfig
    :: Text -- ^ 'uccName'
    -> UpdateClusterConfig
updateClusterConfig pName_
  = UpdateClusterConfig'{_uccClientRequestToken =
                           Nothing,
                         _uccLogging = Nothing,
                         _uccResourcesVPCConfig = Nothing, _uccName = pName_}

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
uccClientRequestToken :: Lens' UpdateClusterConfig (Maybe Text)
uccClientRequestToken = lens _uccClientRequestToken (\ s a -> s{_uccClientRequestToken = a})

-- | Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html Amazon EKS Cluster Control Plane Logs> in the /\/Amazon EKS User Guide\/ / .
uccLogging :: Lens' UpdateClusterConfig (Maybe Logging)
uccLogging = lens _uccLogging (\ s a -> s{_uccLogging = a})

-- | Undocumented member.
uccResourcesVPCConfig :: Lens' UpdateClusterConfig (Maybe VPCConfigRequest)
uccResourcesVPCConfig = lens _uccResourcesVPCConfig (\ s a -> s{_uccResourcesVPCConfig = a})

-- | The name of the Amazon EKS cluster to update.
uccName :: Lens' UpdateClusterConfig Text
uccName = lens _uccName (\ s a -> s{_uccName = a})

instance AWSRequest UpdateClusterConfig where
        type Rs UpdateClusterConfig =
             UpdateClusterConfigResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 UpdateClusterConfigResponse' <$>
                   (x .?> "update") <*> (pure (fromEnum s)))

instance Hashable UpdateClusterConfig where

instance NFData UpdateClusterConfig where

instance ToHeaders UpdateClusterConfig where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON UpdateClusterConfig where
        toJSON UpdateClusterConfig'{..}
          = object
              (catMaybes
                 [("clientRequestToken" .=) <$>
                    _uccClientRequestToken,
                  ("logging" .=) <$> _uccLogging,
                  ("resourcesVpcConfig" .=) <$>
                    _uccResourcesVPCConfig])

instance ToPath UpdateClusterConfig where
        toPath UpdateClusterConfig'{..}
          = mconcat
              ["/clusters/", toBS _uccName, "/update-config"]

instance ToQuery UpdateClusterConfig where
        toQuery = const mempty

-- | /See:/ 'updateClusterConfigResponse' smart constructor.
data UpdateClusterConfigResponse = UpdateClusterConfigResponse'{_uccrsUpdate
                                                                ::
                                                                !(Maybe Update),
                                                                _uccrsResponseStatus
                                                                :: !Int}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'UpdateClusterConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccrsUpdate' - Undocumented member.
--
-- * 'uccrsResponseStatus' - -- | The response status code.
updateClusterConfigResponse
    :: Int -- ^ 'uccrsResponseStatus'
    -> UpdateClusterConfigResponse
updateClusterConfigResponse pResponseStatus_
  = UpdateClusterConfigResponse'{_uccrsUpdate =
                                   Nothing,
                                 _uccrsResponseStatus = pResponseStatus_}

-- | Undocumented member.
uccrsUpdate :: Lens' UpdateClusterConfigResponse (Maybe Update)
uccrsUpdate = lens _uccrsUpdate (\ s a -> s{_uccrsUpdate = a})

-- | -- | The response status code.
uccrsResponseStatus :: Lens' UpdateClusterConfigResponse Int
uccrsResponseStatus = lens _uccrsResponseStatus (\ s a -> s{_uccrsResponseStatus = a})

instance NFData UpdateClusterConfigResponse where
