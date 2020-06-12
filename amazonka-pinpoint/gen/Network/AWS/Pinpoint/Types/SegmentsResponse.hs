{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentsResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SegmentsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SegmentResponse
import Network.AWS.Prelude

-- | Segments in your account.
--
-- /See:/ 'segmentsResponse' smart constructor.
data SegmentsResponse = SegmentsResponse'{_sNextToken
                                          :: !(Maybe Text),
                                          _sItem :: !(Maybe [SegmentResponse])}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextToken' - An identifier used to retrieve the next page of results. The token is null if no additional pages exist.
--
-- * 'sItem' - The list of segments.
segmentsResponse
    :: SegmentsResponse
segmentsResponse
  = SegmentsResponse'{_sNextToken = Nothing,
                      _sItem = Nothing}

-- | An identifier used to retrieve the next page of results. The token is null if no additional pages exist.
sNextToken :: Lens' SegmentsResponse (Maybe Text)
sNextToken = lens _sNextToken (\ s a -> s{_sNextToken = a})

-- | The list of segments.
sItem :: Lens' SegmentsResponse [SegmentResponse]
sItem = lens _sItem (\ s a -> s{_sItem = a}) . _Default . _Coerce

instance FromJSON SegmentsResponse where
        parseJSON
          = withObject "SegmentsResponse"
              (\ x ->
                 SegmentsResponse' <$>
                   (x .:? "NextToken") <*> (x .:? "Item" .!= mempty))

instance Hashable SegmentsResponse where

instance NFData SegmentsResponse where
