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
-- Module      : Network.AWS.Lightsail.GetDisks
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all block storage disks in your AWS account and region.
--
--
-- If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
--
module Network.AWS.Lightsail.GetDisks
    (
    -- * Creating a Request
      getDisks
    , GetDisks
    -- * Request Lenses
    , gPageToken

    -- * Destructuring the Response
    , getDisksResponse
    , GetDisksResponse
    -- * Response Lenses
    , gtdsksrsNextPageToken
    , gtdsksrsDisks
    , gtdsksrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Lightsail.Types.Product
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDisks' smart constructor.
newtype GetDisks = GetDisks'{_gPageToken ::
                             Maybe Text}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDisks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPageToken' - A token used for advancing to the next page of results from your GetDisks request.
getDisks
    :: GetDisks
getDisks = GetDisks'{_gPageToken = Nothing}

-- | A token used for advancing to the next page of results from your GetDisks request.
gPageToken :: Lens' GetDisks (Maybe Text)
gPageToken = lens _gPageToken (\ s a -> s{_gPageToken = a})

instance AWSRequest GetDisks where
        type Rs GetDisks = GetDisksResponse
        request = postJSON lightsail
        response
          = receiveJSON
              (\ s h x ->
                 GetDisksResponse' <$>
                   (x .?> "nextPageToken") <*>
                     (x .?> "disks" .!@ mempty)
                     <*> (pure (fromEnum s)))

instance Hashable GetDisks where

instance NFData GetDisks where

instance ToHeaders GetDisks where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("Lightsail_20161128.GetDisks" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetDisks where
        toJSON GetDisks'{..}
          = object
              (catMaybes [("pageToken" .=) <$> _gPageToken])

instance ToPath GetDisks where
        toPath = const "/"

instance ToQuery GetDisks where
        toQuery = const mempty

-- | /See:/ 'getDisksResponse' smart constructor.
data GetDisksResponse = GetDisksResponse'{_gtdsksrsNextPageToken
                                          :: !(Maybe Text),
                                          _gtdsksrsDisks :: !(Maybe [Disk]),
                                          _gtdsksrsResponseStatus :: !Int}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDisksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtdsksrsNextPageToken' - A token used for advancing to the next page of results from your GetDisks request.
--
-- * 'gtdsksrsDisks' - An array of objects containing information about all block storage disks.
--
-- * 'gtdsksrsResponseStatus' - -- | The response status code.
getDisksResponse
    :: Int -- ^ 'gtdsksrsResponseStatus'
    -> GetDisksResponse
getDisksResponse pResponseStatus_
  = GetDisksResponse'{_gtdsksrsNextPageToken = Nothing,
                      _gtdsksrsDisks = Nothing,
                      _gtdsksrsResponseStatus = pResponseStatus_}

-- | A token used for advancing to the next page of results from your GetDisks request.
gtdsksrsNextPageToken :: Lens' GetDisksResponse (Maybe Text)
gtdsksrsNextPageToken = lens _gtdsksrsNextPageToken (\ s a -> s{_gtdsksrsNextPageToken = a})

-- | An array of objects containing information about all block storage disks.
gtdsksrsDisks :: Lens' GetDisksResponse [Disk]
gtdsksrsDisks = lens _gtdsksrsDisks (\ s a -> s{_gtdsksrsDisks = a}) . _Default . _Coerce

-- | -- | The response status code.
gtdsksrsResponseStatus :: Lens' GetDisksResponse Int
gtdsksrsResponseStatus = lens _gtdsksrsResponseStatus (\ s a -> s{_gtdsksrsResponseStatus = a})

instance NFData GetDisksResponse where
