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
-- Module      : Network.AWS.EKS.DescribeUpdate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group.
--
--
-- When the status of the update is @Succeeded@ , the update is complete. If an update fails, the status is @Failed@ , and an error detail explains the reason for the failure.
--
module Network.AWS.EKS.DescribeUpdate
    (
    -- * Creating a Request
      describeUpdate
    , DescribeUpdate
    -- * Request Lenses
    , duNodegroupName
    , duName
    , duUpdateId

    -- * Destructuring the Response
    , describeUpdateResponse
    , DescribeUpdateResponse
    -- * Response Lenses
    , dursUpdate
    , dursResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUpdate' smart constructor.
data DescribeUpdate = DescribeUpdate'{_duNodegroupName
                                      :: !(Maybe Text),
                                      _duName :: !Text, _duUpdateId :: !Text}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duNodegroupName' - The name of the Amazon EKS node group associated with the update.
--
-- * 'duName' - The name of the Amazon EKS cluster associated with the update.
--
-- * 'duUpdateId' - The ID of the update to describe.
describeUpdate
    :: Text -- ^ 'duName'
    -> Text -- ^ 'duUpdateId'
    -> DescribeUpdate
describeUpdate pName_ pUpdateId_
  = DescribeUpdate'{_duNodegroupName = Nothing,
                    _duName = pName_, _duUpdateId = pUpdateId_}

-- | The name of the Amazon EKS node group associated with the update.
duNodegroupName :: Lens' DescribeUpdate (Maybe Text)
duNodegroupName = lens _duNodegroupName (\ s a -> s{_duNodegroupName = a})

-- | The name of the Amazon EKS cluster associated with the update.
duName :: Lens' DescribeUpdate Text
duName = lens _duName (\ s a -> s{_duName = a})

-- | The ID of the update to describe.
duUpdateId :: Lens' DescribeUpdate Text
duUpdateId = lens _duUpdateId (\ s a -> s{_duUpdateId = a})

instance AWSRequest DescribeUpdate where
        type Rs DescribeUpdate = DescribeUpdateResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 DescribeUpdateResponse' <$>
                   (x .?> "update") <*> (pure (fromEnum s)))

instance Hashable DescribeUpdate where

instance NFData DescribeUpdate where

instance ToHeaders DescribeUpdate where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DescribeUpdate where
        toPath DescribeUpdate'{..}
          = mconcat
              ["/clusters/", toBS _duName, "/updates/",
               toBS _duUpdateId]

instance ToQuery DescribeUpdate where
        toQuery DescribeUpdate'{..}
          = mconcat ["nodegroupName" =: _duNodegroupName]

-- | /See:/ 'describeUpdateResponse' smart constructor.
data DescribeUpdateResponse = DescribeUpdateResponse'{_dursUpdate
                                                      :: !(Maybe Update),
                                                      _dursResponseStatus ::
                                                      !Int}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'DescribeUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dursUpdate' - The full description of the specified update.
--
-- * 'dursResponseStatus' - -- | The response status code.
describeUpdateResponse
    :: Int -- ^ 'dursResponseStatus'
    -> DescribeUpdateResponse
describeUpdateResponse pResponseStatus_
  = DescribeUpdateResponse'{_dursUpdate = Nothing,
                            _dursResponseStatus = pResponseStatus_}

-- | The full description of the specified update.
dursUpdate :: Lens' DescribeUpdateResponse (Maybe Update)
dursUpdate = lens _dursUpdate (\ s a -> s{_dursUpdate = a})

-- | -- | The response status code.
dursResponseStatus :: Lens' DescribeUpdateResponse Int
dursResponseStatus = lens _dursResponseStatus (\ s a -> s{_dursResponseStatus = a})

instance NFData DescribeUpdateResponse where
