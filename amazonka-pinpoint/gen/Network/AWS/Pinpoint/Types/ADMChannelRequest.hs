{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ADMChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Amazon Device Messaging channel definition.
--
-- /See:/ 'aDMChannelRequest' smart constructor.
data ADMChannelRequest = ADMChannelRequest'{_admcrClientId
                                            :: !(Maybe Text),
                                            _admcrClientSecret :: !(Maybe Text),
                                            _admcrEnabled :: !(Maybe Bool)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admcrClientId' - Client ID as gotten from Amazon
--
-- * 'admcrClientSecret' - Client secret as gotten from Amazon
--
-- * 'admcrEnabled' - If the channel is enabled for sending messages.
aDMChannelRequest
    :: ADMChannelRequest
aDMChannelRequest
  = ADMChannelRequest'{_admcrClientId = Nothing,
                       _admcrClientSecret = Nothing,
                       _admcrEnabled = Nothing}

-- | Client ID as gotten from Amazon
admcrClientId :: Lens' ADMChannelRequest (Maybe Text)
admcrClientId = lens _admcrClientId (\ s a -> s{_admcrClientId = a})

-- | Client secret as gotten from Amazon
admcrClientSecret :: Lens' ADMChannelRequest (Maybe Text)
admcrClientSecret = lens _admcrClientSecret (\ s a -> s{_admcrClientSecret = a})

-- | If the channel is enabled for sending messages.
admcrEnabled :: Lens' ADMChannelRequest (Maybe Bool)
admcrEnabled = lens _admcrEnabled (\ s a -> s{_admcrEnabled = a})

instance Hashable ADMChannelRequest where

instance NFData ADMChannelRequest where

instance ToJSON ADMChannelRequest where
        toJSON ADMChannelRequest'{..}
          = object
              (catMaybes
                 [("ClientId" .=) <$> _admcrClientId,
                  ("ClientSecret" .=) <$> _admcrClientSecret,
                  ("Enabled" .=) <$> _admcrEnabled])
