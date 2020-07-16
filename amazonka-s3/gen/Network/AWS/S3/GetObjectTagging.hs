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
-- Module      : Network.AWS.S3.GetObjectTagging
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the tag-set of an object.
module Network.AWS.S3.GetObjectTagging
    (
    -- * Creating a Request
      getObjectTagging
    , GetObjectTagging
    -- * Request Lenses
    , gtobjcttggngVersionId
    , gtobjcttggngBucket
    , gtobjcttggngKey

    -- * Destructuring the Response
    , getObjectTaggingResponse
    , GetObjectTaggingResponse
    -- * Response Lenses
    , gotrsVersionId
    , gotrsResponseStatus
    , gotrsTagSet
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types
import Network.AWS.S3.Types.Product

-- | /See:/ 'getObjectTagging' smart constructor.
data GetObjectTagging = GetObjectTagging'{_gtobjcttggngVersionId
                                          :: !(Maybe ObjectVersionId),
                                          _gtobjcttggngBucket :: !BucketName,
                                          _gtobjcttggngKey :: !ObjectKey}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObjectTagging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtobjcttggngVersionId' - Undocumented member.
--
-- * 'gtobjcttggngBucket' - Undocumented member.
--
-- * 'gtobjcttggngKey' - Undocumented member.
getObjectTagging
    :: BucketName -- ^ 'gtobjcttggngBucket'
    -> ObjectKey -- ^ 'gtobjcttggngKey'
    -> GetObjectTagging
getObjectTagging pBucket_ pKey_
  = GetObjectTagging'{_gtobjcttggngVersionId = Nothing,
                      _gtobjcttggngBucket = pBucket_,
                      _gtobjcttggngKey = pKey_}

-- | Undocumented member.
gtobjcttggngVersionId :: Lens' GetObjectTagging (Maybe ObjectVersionId)
gtobjcttggngVersionId = lens _gtobjcttggngVersionId (\ s a -> s{_gtobjcttggngVersionId = a})

-- | Undocumented member.
gtobjcttggngBucket :: Lens' GetObjectTagging BucketName
gtobjcttggngBucket = lens _gtobjcttggngBucket (\ s a -> s{_gtobjcttggngBucket = a})

-- | Undocumented member.
gtobjcttggngKey :: Lens' GetObjectTagging ObjectKey
gtobjcttggngKey = lens _gtobjcttggngKey (\ s a -> s{_gtobjcttggngKey = a})

instance AWSRequest GetObjectTagging where
        type Rs GetObjectTagging = GetObjectTaggingResponse
        request = get s3
        response
          = receiveXML
              (\ s h x ->
                 GetObjectTaggingResponse' <$>
                   (h .#? "x-amz-version-id") <*> (pure (fromEnum s))
                     <*>
                     (x .@? "TagSet" .!@ mempty >>= parseXMLList "Tag"))

instance Hashable GetObjectTagging where

instance NFData GetObjectTagging where

instance ToHeaders GetObjectTagging where
        toHeaders = const mempty

instance ToPath GetObjectTagging where
        toPath GetObjectTagging'{..}
          = mconcat
              ["/", toBS _gtobjcttggngBucket, "/",
               toBS _gtobjcttggngKey]

instance ToQuery GetObjectTagging where
        toQuery GetObjectTagging'{..}
          = mconcat
              ["versionId" =: _gtobjcttggngVersionId, "tagging"]

-- | /See:/ 'getObjectTaggingResponse' smart constructor.
data GetObjectTaggingResponse = GetObjectTaggingResponse'{_gotrsVersionId
                                                          ::
                                                          !(Maybe
                                                              ObjectVersionId),
                                                          _gotrsResponseStatus
                                                          :: !Int,
                                                          _gotrsTagSet ::
                                                          ![Tag]}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'GetObjectTaggingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotrsVersionId' - Undocumented member.
--
-- * 'gotrsResponseStatus' - -- | The response status code.
--
-- * 'gotrsTagSet' - Undocumented member.
getObjectTaggingResponse
    :: Int -- ^ 'gotrsResponseStatus'
    -> GetObjectTaggingResponse
getObjectTaggingResponse pResponseStatus_
  = GetObjectTaggingResponse'{_gotrsVersionId =
                                Nothing,
                              _gotrsResponseStatus = pResponseStatus_,
                              _gotrsTagSet = mempty}

-- | Undocumented member.
gotrsVersionId :: Lens' GetObjectTaggingResponse (Maybe ObjectVersionId)
gotrsVersionId = lens _gotrsVersionId (\ s a -> s{_gotrsVersionId = a})

-- | -- | The response status code.
gotrsResponseStatus :: Lens' GetObjectTaggingResponse Int
gotrsResponseStatus = lens _gotrsResponseStatus (\ s a -> s{_gotrsResponseStatus = a})

-- | Undocumented member.
gotrsTagSet :: Lens' GetObjectTaggingResponse [Tag]
gotrsTagSet = lens _gotrsTagSet (\ s a -> s{_gotrsTagSet = a}) . _Coerce

instance NFData GetObjectTaggingResponse where
