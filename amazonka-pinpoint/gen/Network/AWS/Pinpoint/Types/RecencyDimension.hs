{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.RecencyDimension
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.RecencyDimension where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Duration
import Network.AWS.Pinpoint.Types.RecencyType
import Network.AWS.Prelude

-- | Define how a segment based on recency of use.
--
-- /See:/ 'recencyDimension' smart constructor.
data RecencyDimension = RecencyDimension'{_rdRecencyType
                                          :: !(Maybe RecencyType),
                                          _rdDuration :: !(Maybe Duration)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RecencyDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRecencyType' - The recency dimension type: ACTIVE - Users who have used your app within the specified duration are included in the segment. INACTIVE - Users who have not used your app within the specified duration are included in the segment.
--
-- * 'rdDuration' - The length of time during which users have been active or inactive with your app. Valid values: HR_24, DAY_7, DAY_14, DAY_30
recencyDimension
    :: RecencyDimension
recencyDimension
  = RecencyDimension'{_rdRecencyType = Nothing,
                      _rdDuration = Nothing}

-- | The recency dimension type: ACTIVE - Users who have used your app within the specified duration are included in the segment. INACTIVE - Users who have not used your app within the specified duration are included in the segment.
rdRecencyType :: Lens' RecencyDimension (Maybe RecencyType)
rdRecencyType = lens _rdRecencyType (\ s a -> s{_rdRecencyType = a})

-- | The length of time during which users have been active or inactive with your app. Valid values: HR_24, DAY_7, DAY_14, DAY_30
rdDuration :: Lens' RecencyDimension (Maybe Duration)
rdDuration = lens _rdDuration (\ s a -> s{_rdDuration = a})

instance FromJSON RecencyDimension where
        parseJSON
          = withObject "RecencyDimension"
              (\ x ->
                 RecencyDimension' <$>
                   (x .:? "RecencyType") <*> (x .:? "Duration"))

instance Hashable RecencyDimension where

instance NFData RecencyDimension where

instance ToJSON RecencyDimension where
        toJSON RecencyDimension'{..}
          = object
              (catMaybes
                 [("RecencyType" .=) <$> _rdRecencyType,
                  ("Duration" .=) <$> _rdDuration])
