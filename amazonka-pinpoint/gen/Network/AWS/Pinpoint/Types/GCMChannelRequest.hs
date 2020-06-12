{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.GCMChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.GCMChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Google Cloud Messaging credentials
--
-- /See:/ 'gcmChannelRequest' smart constructor.
data GCMChannelRequest = GCMChannelRequest'{_gcrAPIKey
                                            :: !(Maybe Text),
                                            _gcrEnabled :: !(Maybe Bool)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GCMChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrAPIKey' - Platform credential API key from Google.
--
-- * 'gcrEnabled' - If the channel is enabled for sending messages.
gcmChannelRequest
    :: GCMChannelRequest
gcmChannelRequest
  = GCMChannelRequest'{_gcrAPIKey = Nothing,
                       _gcrEnabled = Nothing}

-- | Platform credential API key from Google.
gcrAPIKey :: Lens' GCMChannelRequest (Maybe Text)
gcrAPIKey = lens _gcrAPIKey (\ s a -> s{_gcrAPIKey = a})

-- | If the channel is enabled for sending messages.
gcrEnabled :: Lens' GCMChannelRequest (Maybe Bool)
gcrEnabled = lens _gcrEnabled (\ s a -> s{_gcrEnabled = a})

instance Hashable GCMChannelRequest where

instance NFData GCMChannelRequest where

instance ToJSON GCMChannelRequest where
        toJSON GCMChannelRequest'{..}
          = object
              (catMaybes
                 [("ApiKey" .=) <$> _gcrAPIKey,
                  ("Enabled" .=) <$> _gcrEnabled])
