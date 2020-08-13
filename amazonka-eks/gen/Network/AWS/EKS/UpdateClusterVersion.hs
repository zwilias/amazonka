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
-- Module      : Network.AWS.EKS.UpdateClusterVersion
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the 'DescribeUpdate' API operation.
--
--
-- Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to @UPDATING@ (this status transition is eventually consistent). When the update is complete (either @Failed@ or @Successful@ ), the cluster status moves to @Active@ .
--
-- If your cluster has managed node groups attached to it, all of your node groups’ Kubernetes versions must match the cluster’s Kubernetes version in order to update the cluster to a new Kubernetes version.
--
module Network.AWS.EKS.UpdateClusterVersion
    (
    -- * Creating a Request
      updateClusterVersion
    , UpdateClusterVersion
    -- * Request Lenses
    , ucvClientRequestToken
    , ucvName
    , ucvVersion

    -- * Destructuring the Response
    , updateClusterVersionResponse
    , UpdateClusterVersionResponse
    -- * Response Lenses
    , ucvrsUpdate
    , ucvrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateClusterVersion' smart constructor.
data UpdateClusterVersion = UpdateClusterVersion'{_ucvClientRequestToken
                                                  :: !(Maybe Text),
                                                  _ucvName :: !Text,
                                                  _ucvVersion :: !Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateClusterVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucvClientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'ucvName' - The name of the Amazon EKS cluster to update.
--
-- * 'ucvVersion' - The desired Kubernetes version following a successful update.
updateClusterVersion
    :: Text -- ^ 'ucvName'
    -> Text -- ^ 'ucvVersion'
    -> UpdateClusterVersion
updateClusterVersion pName_ pVersion_
  = UpdateClusterVersion'{_ucvClientRequestToken =
                            Nothing,
                          _ucvName = pName_, _ucvVersion = pVersion_}

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
ucvClientRequestToken :: Lens' UpdateClusterVersion (Maybe Text)
ucvClientRequestToken = lens _ucvClientRequestToken (\ s a -> s{_ucvClientRequestToken = a})

-- | The name of the Amazon EKS cluster to update.
ucvName :: Lens' UpdateClusterVersion Text
ucvName = lens _ucvName (\ s a -> s{_ucvName = a})

-- | The desired Kubernetes version following a successful update.
ucvVersion :: Lens' UpdateClusterVersion Text
ucvVersion = lens _ucvVersion (\ s a -> s{_ucvVersion = a})

instance AWSRequest UpdateClusterVersion where
        type Rs UpdateClusterVersion =
             UpdateClusterVersionResponse
        request = postJSON eks
        response
          = receiveJSON
              (\ s h x ->
                 UpdateClusterVersionResponse' <$>
                   (x .?> "update") <*> (pure (fromEnum s)))

instance Hashable UpdateClusterVersion where

instance NFData UpdateClusterVersion where

instance ToHeaders UpdateClusterVersion where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON UpdateClusterVersion where
        toJSON UpdateClusterVersion'{..}
          = object
              (catMaybes
                 [("clientRequestToken" .=) <$>
                    _ucvClientRequestToken,
                  Just ("version" .= _ucvVersion)])

instance ToPath UpdateClusterVersion where
        toPath UpdateClusterVersion'{..}
          = mconcat ["/clusters/", toBS _ucvName, "/updates"]

instance ToQuery UpdateClusterVersion where
        toQuery = const mempty

-- | /See:/ 'updateClusterVersionResponse' smart constructor.
data UpdateClusterVersionResponse = UpdateClusterVersionResponse'{_ucvrsUpdate
                                                                  ::
                                                                  !(Maybe
                                                                      Update),
                                                                  _ucvrsResponseStatus
                                                                  :: !Int}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'UpdateClusterVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucvrsUpdate' - The full description of the specified update
--
-- * 'ucvrsResponseStatus' - -- | The response status code.
updateClusterVersionResponse
    :: Int -- ^ 'ucvrsResponseStatus'
    -> UpdateClusterVersionResponse
updateClusterVersionResponse pResponseStatus_
  = UpdateClusterVersionResponse'{_ucvrsUpdate =
                                    Nothing,
                                  _ucvrsResponseStatus = pResponseStatus_}

-- | The full description of the specified update
ucvrsUpdate :: Lens' UpdateClusterVersionResponse (Maybe Update)
ucvrsUpdate = lens _ucvrsUpdate (\ s a -> s{_ucvrsUpdate = a})

-- | -- | The response status code.
ucvrsResponseStatus :: Lens' UpdateClusterVersionResponse Int
ucvrsResponseStatus = lens _ucvrsResponseStatus (\ s a -> s{_ucvrsResponseStatus = a})

instance NFData UpdateClusterVersionResponse where
