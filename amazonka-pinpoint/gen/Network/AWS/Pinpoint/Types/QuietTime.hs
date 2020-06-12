{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.QuietTime
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.QuietTime where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Quiet Time
--
-- /See:/ 'quietTime' smart constructor.
data QuietTime = QuietTime'{_qtStart ::
                            !(Maybe Text),
                            _qtEnd :: !(Maybe Text)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QuietTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtStart' - The default start time for quiet time in ISO 8601 format.
--
-- * 'qtEnd' - The default end time for quiet time in ISO 8601 format.
quietTime
    :: QuietTime
quietTime
  = QuietTime'{_qtStart = Nothing, _qtEnd = Nothing}

-- | The default start time for quiet time in ISO 8601 format.
qtStart :: Lens' QuietTime (Maybe Text)
qtStart = lens _qtStart (\ s a -> s{_qtStart = a})

-- | The default end time for quiet time in ISO 8601 format.
qtEnd :: Lens' QuietTime (Maybe Text)
qtEnd = lens _qtEnd (\ s a -> s{_qtEnd = a})

instance FromJSON QuietTime where
        parseJSON
          = withObject "QuietTime"
              (\ x ->
                 QuietTime' <$> (x .:? "Start") <*> (x .:? "End"))

instance Hashable QuietTime where

instance NFData QuietTime where

instance ToJSON QuietTime where
        toJSON QuietTime'{..}
          = object
              (catMaybes
                 [("Start" .=) <$> _qtStart, ("End" .=) <$> _qtEnd])
