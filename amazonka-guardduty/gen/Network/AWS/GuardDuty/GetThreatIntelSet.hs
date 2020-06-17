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
-- Module      : Network.AWS.GuardDuty.GetThreatIntelSet
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
module Network.AWS.GuardDuty.GetThreatIntelSet
    (
    -- * Creating a Request
      getThreatIntelSet
    , GetThreatIntelSet
    -- * Request Lenses
    , gtisThreatIntelSetId
    , gtisDetectorId

    -- * Destructuring the Response
    , getThreatIntelSetResponse
    , GetThreatIntelSetResponse
    -- * Response Lenses
    , gtisrsStatus
    , gtisrsLocation
    , gtisrsFormat
    , gtisrsName
    , gtisrsResponseStatus
    ) where

import Network.AWS.GuardDuty.Types
import Network.AWS.GuardDuty.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getThreatIntelSet' smart constructor.
data GetThreatIntelSet = GetThreatIntelSet'{_gtisThreatIntelSetId
                                            :: !Text,
                                            _gtisDetectorId :: !Text}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetThreatIntelSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisThreatIntelSetId' - The unique ID that specifies the ThreatIntelSet that you want to describe.
--
-- * 'gtisDetectorId' - The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to describe.
getThreatIntelSet
    :: Text -- ^ 'gtisThreatIntelSetId'
    -> Text -- ^ 'gtisDetectorId'
    -> GetThreatIntelSet
getThreatIntelSet pThreatIntelSetId_ pDetectorId_
  = GetThreatIntelSet'{_gtisThreatIntelSetId =
                         pThreatIntelSetId_,
                       _gtisDetectorId = pDetectorId_}

-- | The unique ID that specifies the ThreatIntelSet that you want to describe.
gtisThreatIntelSetId :: Lens' GetThreatIntelSet Text
gtisThreatIntelSetId = lens _gtisThreatIntelSetId (\ s a -> s{_gtisThreatIntelSetId = a})

-- | The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to describe.
gtisDetectorId :: Lens' GetThreatIntelSet Text
gtisDetectorId = lens _gtisDetectorId (\ s a -> s{_gtisDetectorId = a})

instance AWSRequest GetThreatIntelSet where
        type Rs GetThreatIntelSet = GetThreatIntelSetResponse
        request = get guardDuty
        response
          = receiveJSON
              (\ s h x ->
                 GetThreatIntelSetResponse' <$>
                   (x .?> "status") <*> (x .?> "location") <*>
                     (x .?> "format")
                     <*> (x .?> "name")
                     <*> (pure (fromEnum s)))

instance Hashable GetThreatIntelSet where

instance NFData GetThreatIntelSet where

instance ToHeaders GetThreatIntelSet where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath GetThreatIntelSet where
        toPath GetThreatIntelSet'{..}
          = mconcat
              ["/detector/", toBS _gtisDetectorId,
               "/threatintelset/", toBS _gtisThreatIntelSetId]

instance ToQuery GetThreatIntelSet where
        toQuery = const mempty

-- | /See:/ 'getThreatIntelSetResponse' smart constructor.
data GetThreatIntelSetResponse = GetThreatIntelSetResponse'{_gtisrsStatus
                                                            ::
                                                            !(Maybe
                                                                ThreatIntelSetStatus),
                                                            _gtisrsLocation ::
                                                            !(Maybe Text),
                                                            _gtisrsFormat ::
                                                            !(Maybe
                                                                ThreatIntelSetFormat),
                                                            _gtisrsName ::
                                                            !(Maybe Text),
                                                            _gtisrsResponseStatus
                                                            :: !Int}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'GetThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisrsStatus' - The status of threatIntelSet file uploaded.
--
-- * 'gtisrsLocation' - The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
--
-- * 'gtisrsFormat' - The format of the threatIntelSet.
--
-- * 'gtisrsName' - A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.
--
-- * 'gtisrsResponseStatus' - -- | The response status code.
getThreatIntelSetResponse
    :: Int -- ^ 'gtisrsResponseStatus'
    -> GetThreatIntelSetResponse
getThreatIntelSetResponse pResponseStatus_
  = GetThreatIntelSetResponse'{_gtisrsStatus = Nothing,
                               _gtisrsLocation = Nothing,
                               _gtisrsFormat = Nothing, _gtisrsName = Nothing,
                               _gtisrsResponseStatus = pResponseStatus_}

-- | The status of threatIntelSet file uploaded.
gtisrsStatus :: Lens' GetThreatIntelSetResponse (Maybe ThreatIntelSetStatus)
gtisrsStatus = lens _gtisrsStatus (\ s a -> s{_gtisrsStatus = a})

-- | The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
gtisrsLocation :: Lens' GetThreatIntelSetResponse (Maybe Text)
gtisrsLocation = lens _gtisrsLocation (\ s a -> s{_gtisrsLocation = a})

-- | The format of the threatIntelSet.
gtisrsFormat :: Lens' GetThreatIntelSetResponse (Maybe ThreatIntelSetFormat)
gtisrsFormat = lens _gtisrsFormat (\ s a -> s{_gtisrsFormat = a})

-- | A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.
gtisrsName :: Lens' GetThreatIntelSetResponse (Maybe Text)
gtisrsName = lens _gtisrsName (\ s a -> s{_gtisrsName = a})

-- | -- | The response status code.
gtisrsResponseStatus :: Lens' GetThreatIntelSetResponse Int
gtisrsResponseStatus = lens _gtisrsResponseStatus (\ s a -> s{_gtisrsResponseStatus = a})

instance NFData GetThreatIntelSetResponse where
