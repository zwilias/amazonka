{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentLocation
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SegmentLocation where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Prelude

-- | Segment location dimensions
--
-- /See:/ 'segmentLocation' smart constructor.
newtype SegmentLocation = SegmentLocation'{_slCountry
                                           :: Maybe SetDimension}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slCountry' - The country filter according to ISO 3166-1 Alpha-2 codes.
segmentLocation
    :: SegmentLocation
segmentLocation
  = SegmentLocation'{_slCountry = Nothing}

-- | The country filter according to ISO 3166-1 Alpha-2 codes.
slCountry :: Lens' SegmentLocation (Maybe SetDimension)
slCountry = lens _slCountry (\ s a -> s{_slCountry = a})

instance FromJSON SegmentLocation where
        parseJSON
          = withObject "SegmentLocation"
              (\ x -> SegmentLocation' <$> (x .:? "Country"))

instance Hashable SegmentLocation where

instance NFData SegmentLocation where

instance ToJSON SegmentLocation where
        toJSON SegmentLocation'{..}
          = object (catMaybes [("Country" .=) <$> _slCountry])
