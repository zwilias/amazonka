{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.MessageRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.AddressConfiguration
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Prelude

-- | Send message request.
--
-- /See:/ 'messageRequest' smart constructor.
data MessageRequest = MessageRequest'{_mrContext ::
                                      !(Maybe (Map Text Text)),
                                      _mrAddresses ::
                                      !(Maybe (Map Text AddressConfiguration)),
                                      _mrEndpoints ::
                                      !(Maybe
                                          (Map Text EndpointSendConfiguration)),
                                      _mrMessageConfiguration ::
                                      !(Maybe DirectMessageConfiguration)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrContext' - A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
--
-- * 'mrAddresses' - A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
--
-- * 'mrEndpoints' - A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
--
-- * 'mrMessageConfiguration' - Message configuration.
messageRequest
    :: MessageRequest
messageRequest
  = MessageRequest'{_mrContext = Nothing,
                    _mrAddresses = Nothing, _mrEndpoints = Nothing,
                    _mrMessageConfiguration = Nothing}

-- | A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
mrContext :: Lens' MessageRequest (HashMap Text Text)
mrContext = lens _mrContext (\ s a -> s{_mrContext = a}) . _Default . _Map

-- | A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
mrAddresses :: Lens' MessageRequest (HashMap Text AddressConfiguration)
mrAddresses = lens _mrAddresses (\ s a -> s{_mrAddresses = a}) . _Default . _Map

-- | A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
mrEndpoints :: Lens' MessageRequest (HashMap Text EndpointSendConfiguration)
mrEndpoints = lens _mrEndpoints (\ s a -> s{_mrEndpoints = a}) . _Default . _Map

-- | Message configuration.
mrMessageConfiguration :: Lens' MessageRequest (Maybe DirectMessageConfiguration)
mrMessageConfiguration = lens _mrMessageConfiguration (\ s a -> s{_mrMessageConfiguration = a})

instance Hashable MessageRequest where

instance NFData MessageRequest where

instance ToJSON MessageRequest where
        toJSON MessageRequest'{..}
          = object
              (catMaybes
                 [("Context" .=) <$> _mrContext,
                  ("Addresses" .=) <$> _mrAddresses,
                  ("Endpoints" .=) <$> _mrEndpoints,
                  ("MessageConfiguration" .=) <$>
                    _mrMessageConfiguration])
