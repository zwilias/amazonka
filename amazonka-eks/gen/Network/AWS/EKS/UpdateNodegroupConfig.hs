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
-- Module      : Network.AWS.EKS.UpdateNodegroupConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon EKS managed node group configuration. Your node group continues to function during the update. The response output includes an update ID that you can use to track the status of your node group update with the 'DescribeUpdate' API operation. Currently you can update the Kubernetes labels for a node group or the scaling configuration.
--
--
module Network.AWS.EKS.UpdateNodegroupConfig
    (
    -- * Creating a Request
      updateNodegroupConfig
    , UpdateNodegroupConfig
    -- * Request Lenses
    , uncScalingConfig
    , uncLabels
    , uncClientRequestToken
    , uncClusterName
    , uncNodegroupName

    -- * Destructuring the Response
    , updateNodegroupConfigResponse
    , UpdateNodegroupConfigResponse
    -- * Response Lenses
    , uncrsUpdate
    , uncrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateNodegroupConfig' smart constructor.
data UpdateNodegroupConfig = UpdateNodegroupConfig'{_uncScalingConfig
                                                    ::
                                                    !(Maybe
                                                        NodegroupScalingConfig),
                                                    _uncLabels ::
                                                    !(Maybe
                                                        UpdateLabelsPayload),
                                                    _uncClientRequestToken ::
                                                    !(Maybe Text),
                                                    _uncClusterName :: !Text,
                                                    _uncNodegroupName :: !Text}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'UpdateNodegroupConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uncScalingConfig' - The scaling configuration details for the Auto Scaling group after the update.
--
-- * 'uncLabels' - The Kubernetes labels to be applied to the nodes in the node group after the update.
--
-- * 'uncClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'uncClusterName' - The name of the Amazon EKS cluster that the managed node group resides in.
--
-- * 'uncNodegroupName' - The name of the managed node group to update.
updateNodegroupConfig
    :: Text -- ^ 'uncClusterName'
    -> Text -- ^ 'uncNodegroupName'
    -> UpdateNodegroupConfig
updateNodegroupConfig pClusterName_ pNodegroupName_
  = UpdateNodegroupConfig'{_uncScalingConfig = Nothing,
                           _uncLabels = Nothing,
                           _uncClientRequestToken = Nothing,
                           _uncClusterName = pClusterName_,
                           _uncNodegroupName = pNodegroupName_}

-- | The scaling configuration details for the Auto Scaling group after the update.
uncScalingConfig :: Lens' UpdateNodegroupConfig (Maybe NodegroupScalingConfig)
uncScalingConfig = lens _uncScalingConfig (\ s a -> s{_uncScalingConfig = a})

-- | The Kubernetes labels to be applied to the nodes in the node group after the update.
uncLabels :: Lens' UpdateNodegroupConfig (Maybe UpdateLabelsPayload)
uncLabels = lens _uncLabels (\ s a -> s{_uncLabels = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
uncClientRequestToken :: Lens' UpdateNodegroupConfig (Maybe Text)
uncClientRequestToken = lens _uncClientRequestToken (\ s a -> s{_uncClientRequestToken = a})

-- | The name of the Amazon EKS cluster that the managed node group resides in.
uncClusterName :: Lens' UpdateNodegroupConfig Text
uncClusterName = lens _uncClusterName (\ s a -> s{_uncClusterName = a})

-- | The name of the managed node group to update.
uncNodegroupName :: Lens' UpdateNodegroupConfig Text
uncNodegroupName = lens _uncNodegroupName (\ s a -> s{_uncNodegroupName = a})

instance AWSRequest UpdateNodegroupConfig where
        type Rs UpdateNodegroupConfig =
             UpdateNodegroupConfigResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 UpdateNodegroupConfigResponse' <$>
                   (x .?> "update") <*> (pure (fromEnum s)))

instance Hashable UpdateNodegroupConfig where

instance NFData UpdateNodegroupConfig where

instance ToHeaders UpdateNodegroupConfig where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON UpdateNodegroupConfig where
        toJSON UpdateNodegroupConfig'{..}
          = object
              (catMaybes
                 [("scalingConfig" .=) <$> _uncScalingConfig,
                  ("labels" .=) <$> _uncLabels,
                  ("clientRequestToken" .=) <$>
                    _uncClientRequestToken])

instance ToPath UpdateNodegroupConfig where
        toPath UpdateNodegroupConfig'{..}
          = mconcat
              ["/clusters/", toBS _uncClusterName, "/node-groups/",
               toBS _uncNodegroupName, "/update-config"]

instance ToQuery UpdateNodegroupConfig where
        toQuery = const mempty

-- | /See:/ 'updateNodegroupConfigResponse' smart constructor.
data UpdateNodegroupConfigResponse = UpdateNodegroupConfigResponse'{_uncrsUpdate
                                                                    ::
                                                                    !(Maybe
                                                                        Update),
                                                                    _uncrsResponseStatus
                                                                    :: !Int}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'UpdateNodegroupConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uncrsUpdate' - Undocumented member.
--
-- * 'uncrsResponseStatus' - -- | The response status code.
updateNodegroupConfigResponse
    :: Int -- ^ 'uncrsResponseStatus'
    -> UpdateNodegroupConfigResponse
updateNodegroupConfigResponse pResponseStatus_
  = UpdateNodegroupConfigResponse'{_uncrsUpdate =
                                     Nothing,
                                   _uncrsResponseStatus = pResponseStatus_}

-- | Undocumented member.
uncrsUpdate :: Lens' UpdateNodegroupConfigResponse (Maybe Update)
uncrsUpdate = lens _uncrsUpdate (\ s a -> s{_uncrsUpdate = a})

-- | -- | The response status code.
uncrsResponseStatus :: Lens' UpdateNodegroupConfigResponse Int
uncrsResponseStatus = lens _uncrsResponseStatus (\ s a -> s{_uncrsResponseStatus = a})

instance NFData UpdateNodegroupConfigResponse where
