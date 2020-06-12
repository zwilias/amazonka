{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ActivitiesResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ActivitiesResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ActivityResponse
import Network.AWS.Prelude

-- | Activities for campaign.
--
-- /See:/ 'activitiesResponse' smart constructor.
newtype ActivitiesResponse = ActivitiesResponse'{_aItem
                                                 :: Maybe [ActivityResponse]}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'ActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aItem' - List of campaign activities
activitiesResponse
    :: ActivitiesResponse
activitiesResponse
  = ActivitiesResponse'{_aItem = Nothing}

-- | List of campaign activities
aItem :: Lens' ActivitiesResponse [ActivityResponse]
aItem = lens _aItem (\ s a -> s{_aItem = a}) . _Default . _Coerce

instance FromJSON ActivitiesResponse where
        parseJSON
          = withObject "ActivitiesResponse"
              (\ x ->
                 ActivitiesResponse' <$> (x .:? "Item" .!= mempty))

instance Hashable ActivitiesResponse where

instance NFData ActivitiesResponse where
