{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DirectMessageConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.DirectMessageConfiguration where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Prelude

-- | The message configuration.
--
-- /See:/ 'directMessageConfiguration' smart constructor.
data DirectMessageConfiguration = DirectMessageConfiguration'{_dmcAPNSMessage
                                                              ::
                                                              !(Maybe
                                                                  APNSMessage),
                                                              _dmcGCMMessage ::
                                                              !(Maybe
                                                                  GCMMessage),
                                                              _dmcDefaultMessage
                                                              ::
                                                              !(Maybe
                                                                  DefaultMessage),
                                                              _dmcADMMessage ::
                                                              !(Maybe
                                                                  ADMMessage),
                                                              _dmcSMSMessage ::
                                                              !(Maybe
                                                                  SMSMessage),
                                                              _dmcBaiduMessage
                                                              ::
                                                              !(Maybe
                                                                  BaiduMessage),
                                                              _dmcDefaultPushNotificationMessage
                                                              ::
                                                              !(Maybe
                                                                  DefaultPushNotificationMessage)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'DirectMessageConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmcAPNSMessage' - The message to APNS channels. Overrides the default push notification message.
--
-- * 'dmcGCMMessage' - The message to GCM channels. Overrides the default push notification message.
--
-- * 'dmcDefaultMessage' - The default message for all channels.
--
-- * 'dmcADMMessage' - The message to ADM channels. Overrides the default push notification message.
--
-- * 'dmcSMSMessage' - The message to SMS channels. Overrides the default message.
--
-- * 'dmcBaiduMessage' - The message to Baidu GCM channels. Overrides the default push notification message.
--
-- * 'dmcDefaultPushNotificationMessage' - The default push notification message for all push channels.
directMessageConfiguration
    :: DirectMessageConfiguration
directMessageConfiguration
  = DirectMessageConfiguration'{_dmcAPNSMessage =
                                  Nothing,
                                _dmcGCMMessage = Nothing,
                                _dmcDefaultMessage = Nothing,
                                _dmcADMMessage = Nothing,
                                _dmcSMSMessage = Nothing,
                                _dmcBaiduMessage = Nothing,
                                _dmcDefaultPushNotificationMessage = Nothing}

-- | The message to APNS channels. Overrides the default push notification message.
dmcAPNSMessage :: Lens' DirectMessageConfiguration (Maybe APNSMessage)
dmcAPNSMessage = lens _dmcAPNSMessage (\ s a -> s{_dmcAPNSMessage = a})

-- | The message to GCM channels. Overrides the default push notification message.
dmcGCMMessage :: Lens' DirectMessageConfiguration (Maybe GCMMessage)
dmcGCMMessage = lens _dmcGCMMessage (\ s a -> s{_dmcGCMMessage = a})

-- | The default message for all channels.
dmcDefaultMessage :: Lens' DirectMessageConfiguration (Maybe DefaultMessage)
dmcDefaultMessage = lens _dmcDefaultMessage (\ s a -> s{_dmcDefaultMessage = a})

-- | The message to ADM channels. Overrides the default push notification message.
dmcADMMessage :: Lens' DirectMessageConfiguration (Maybe ADMMessage)
dmcADMMessage = lens _dmcADMMessage (\ s a -> s{_dmcADMMessage = a})

-- | The message to SMS channels. Overrides the default message.
dmcSMSMessage :: Lens' DirectMessageConfiguration (Maybe SMSMessage)
dmcSMSMessage = lens _dmcSMSMessage (\ s a -> s{_dmcSMSMessage = a})

-- | The message to Baidu GCM channels. Overrides the default push notification message.
dmcBaiduMessage :: Lens' DirectMessageConfiguration (Maybe BaiduMessage)
dmcBaiduMessage = lens _dmcBaiduMessage (\ s a -> s{_dmcBaiduMessage = a})

-- | The default push notification message for all push channels.
dmcDefaultPushNotificationMessage :: Lens' DirectMessageConfiguration (Maybe DefaultPushNotificationMessage)
dmcDefaultPushNotificationMessage = lens _dmcDefaultPushNotificationMessage (\ s a -> s{_dmcDefaultPushNotificationMessage = a})

instance Hashable DirectMessageConfiguration where

instance NFData DirectMessageConfiguration where

instance ToJSON DirectMessageConfiguration where
        toJSON DirectMessageConfiguration'{..}
          = object
              (catMaybes
                 [("APNSMessage" .=) <$> _dmcAPNSMessage,
                  ("GCMMessage" .=) <$> _dmcGCMMessage,
                  ("DefaultMessage" .=) <$> _dmcDefaultMessage,
                  ("ADMMessage" .=) <$> _dmcADMMessage,
                  ("SMSMessage" .=) <$> _dmcSMSMessage,
                  ("BaiduMessage" .=) <$> _dmcBaiduMessage,
                  ("DefaultPushNotificationMessage" .=) <$>
                    _dmcDefaultPushNotificationMessage])
