{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.AccelerateConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.AccelerateConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.BucketAccelerateStatus

-- | /See:/ 'accelerateConfiguration' smart constructor.
newtype AccelerateConfiguration = AccelerateConfiguration'{_acStatus
                                                           ::
                                                           Maybe
                                                             BucketAccelerateStatus}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'AccelerateConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acStatus' - The accelerate configuration of the bucket.
accelerateConfiguration
    :: AccelerateConfiguration
accelerateConfiguration
  = AccelerateConfiguration'{_acStatus = Nothing}

-- | The accelerate configuration of the bucket.
acStatus :: Lens' AccelerateConfiguration (Maybe BucketAccelerateStatus)
acStatus = lens _acStatus (\ s a -> s{_acStatus = a})

instance Hashable AccelerateConfiguration where

instance NFData AccelerateConfiguration where

instance ToXML AccelerateConfiguration where
        toXML AccelerateConfiguration'{..}
          = mconcat ["Status" @= _acStatus]
