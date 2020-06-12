{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelector where

import Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.TimestampRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the time stamp range and time stamp origin of a range of fragments.
--
--
--
-- /See:/ 'fragmentSelector' smart constructor.
data FragmentSelector = FragmentSelector'{_fsFragmentSelectorType
                                          :: !FragmentSelectorType,
                                          _fsTimestampRange :: !TimestampRange}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FragmentSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsFragmentSelectorType' - The origin of the time stamps to use (Server or Producer).
--
-- * 'fsTimestampRange' - The range of time stamps to return.
fragmentSelector
    :: FragmentSelectorType -- ^ 'fsFragmentSelectorType'
    -> TimestampRange -- ^ 'fsTimestampRange'
    -> FragmentSelector
fragmentSelector pFragmentSelectorType_
  pTimestampRange_
  = FragmentSelector'{_fsFragmentSelectorType =
                        pFragmentSelectorType_,
                      _fsTimestampRange = pTimestampRange_}

-- | The origin of the time stamps to use (Server or Producer).
fsFragmentSelectorType :: Lens' FragmentSelector FragmentSelectorType
fsFragmentSelectorType = lens _fsFragmentSelectorType (\ s a -> s{_fsFragmentSelectorType = a})

-- | The range of time stamps to return.
fsTimestampRange :: Lens' FragmentSelector TimestampRange
fsTimestampRange = lens _fsTimestampRange (\ s a -> s{_fsTimestampRange = a})

instance Hashable FragmentSelector where

instance NFData FragmentSelector where

instance ToJSON FragmentSelector where
        toJSON FragmentSelector'{..}
          = object
              (catMaybes
                 [Just
                    ("FragmentSelectorType" .= _fsFragmentSelectorType),
                  Just ("TimestampRange" .= _fsTimestampRange)])
