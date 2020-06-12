{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SendUsersMessageRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SendUsersMessageRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Prelude

-- | Send message request.
--
-- /See:/ 'sendUsersMessageRequest' smart constructor.
data SendUsersMessageRequest = SendUsersMessageRequest'{_sumrContext
                                                        ::
                                                        !(Maybe
                                                            (Map Text Text)),
                                                        _sumrUsers ::
                                                        !(Maybe
                                                            (Map Text
                                                               EndpointSendConfiguration)),
                                                        _sumrMessageConfiguration
                                                        ::
                                                        !(Maybe
                                                            DirectMessageConfiguration)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'SendUsersMessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumrContext' - A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
--
-- * 'sumrUsers' - A map of destination endpoints, with the EndpointId as the key Endpoint Message Configuration as the value.
--
-- * 'sumrMessageConfiguration' - Message configuration.
sendUsersMessageRequest
    :: SendUsersMessageRequest
sendUsersMessageRequest
  = SendUsersMessageRequest'{_sumrContext = Nothing,
                             _sumrUsers = Nothing,
                             _sumrMessageConfiguration = Nothing}

-- | A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
sumrContext :: Lens' SendUsersMessageRequest (HashMap Text Text)
sumrContext = lens _sumrContext (\ s a -> s{_sumrContext = a}) . _Default . _Map

-- | A map of destination endpoints, with the EndpointId as the key Endpoint Message Configuration as the value.
sumrUsers :: Lens' SendUsersMessageRequest (HashMap Text EndpointSendConfiguration)
sumrUsers = lens _sumrUsers (\ s a -> s{_sumrUsers = a}) . _Default . _Map

-- | Message configuration.
sumrMessageConfiguration :: Lens' SendUsersMessageRequest (Maybe DirectMessageConfiguration)
sumrMessageConfiguration = lens _sumrMessageConfiguration (\ s a -> s{_sumrMessageConfiguration = a})

instance Hashable SendUsersMessageRequest where

instance NFData SendUsersMessageRequest where

instance ToJSON SendUsersMessageRequest where
        toJSON SendUsersMessageRequest'{..}
          = object
              (catMaybes
                 [("Context" .=) <$> _sumrContext,
                  ("Users" .=) <$> _sumrUsers,
                  ("MessageConfiguration" .=) <$>
                    _sumrMessageConfiguration])
