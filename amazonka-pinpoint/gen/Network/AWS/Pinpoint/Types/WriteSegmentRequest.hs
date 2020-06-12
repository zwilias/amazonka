{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteSegmentRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteSegmentRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Prelude

-- | Segment definition.
--
-- /See:/ 'writeSegmentRequest' smart constructor.
data WriteSegmentRequest = WriteSegmentRequest'{_wsrName
                                                :: !(Maybe Text),
                                                _wsrDimensions ::
                                                !(Maybe SegmentDimensions)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteSegmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsrName' - The name of segment
--
-- * 'wsrDimensions' - The segment dimensions attributes.
writeSegmentRequest
    :: WriteSegmentRequest
writeSegmentRequest
  = WriteSegmentRequest'{_wsrName = Nothing,
                         _wsrDimensions = Nothing}

-- | The name of segment
wsrName :: Lens' WriteSegmentRequest (Maybe Text)
wsrName = lens _wsrName (\ s a -> s{_wsrName = a})

-- | The segment dimensions attributes.
wsrDimensions :: Lens' WriteSegmentRequest (Maybe SegmentDimensions)
wsrDimensions = lens _wsrDimensions (\ s a -> s{_wsrDimensions = a})

instance Hashable WriteSegmentRequest where

instance NFData WriteSegmentRequest where

instance ToJSON WriteSegmentRequest where
        toJSON WriteSegmentRequest'{..}
          = object
              (catMaybes
                 [("Name" .=) <$> _wsrName,
                  ("Dimensions" .=) <$> _wsrDimensions])
