{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.MessageConfiguration where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignEmailMessage
import Network.AWS.Pinpoint.Types.CampaignSmsMessage
import Network.AWS.Pinpoint.Types.Message
import Network.AWS.Prelude

-- | Message configuration for a campaign.
--
-- /See:/ 'messageConfiguration' smart constructor.
data MessageConfiguration = MessageConfiguration'{_mcAPNSMessage
                                                  :: !(Maybe Message),
                                                  _mcGCMMessage ::
                                                  !(Maybe Message),
                                                  _mcDefaultMessage ::
                                                  !(Maybe Message),
                                                  _mcADMMessage ::
                                                  !(Maybe Message),
                                                  _mcSMSMessage ::
                                                  !(Maybe CampaignSmsMessage),
                                                  _mcEmailMessage ::
                                                  !(Maybe CampaignEmailMessage),
                                                  _mcBaiduMessage ::
                                                  !(Maybe Message)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcAPNSMessage' - The message that the campaign delivers to APNS channels. Overrides the default message.
--
-- * 'mcGCMMessage' - The message that the campaign delivers to GCM channels. Overrides the default message.
--
-- * 'mcDefaultMessage' - The default message for all channels.
--
-- * 'mcADMMessage' - The message that the campaign delivers to ADM channels. Overrides the default message.
--
-- * 'mcSMSMessage' - The SMS message configuration.
--
-- * 'mcEmailMessage' - The email message configuration.
--
-- * 'mcBaiduMessage' - The message that the campaign delivers to Baidu channels. Overrides the default message.
messageConfiguration
    :: MessageConfiguration
messageConfiguration
  = MessageConfiguration'{_mcAPNSMessage = Nothing,
                          _mcGCMMessage = Nothing, _mcDefaultMessage = Nothing,
                          _mcADMMessage = Nothing, _mcSMSMessage = Nothing,
                          _mcEmailMessage = Nothing, _mcBaiduMessage = Nothing}

-- | The message that the campaign delivers to APNS channels. Overrides the default message.
mcAPNSMessage :: Lens' MessageConfiguration (Maybe Message)
mcAPNSMessage = lens _mcAPNSMessage (\ s a -> s{_mcAPNSMessage = a})

-- | The message that the campaign delivers to GCM channels. Overrides the default message.
mcGCMMessage :: Lens' MessageConfiguration (Maybe Message)
mcGCMMessage = lens _mcGCMMessage (\ s a -> s{_mcGCMMessage = a})

-- | The default message for all channels.
mcDefaultMessage :: Lens' MessageConfiguration (Maybe Message)
mcDefaultMessage = lens _mcDefaultMessage (\ s a -> s{_mcDefaultMessage = a})

-- | The message that the campaign delivers to ADM channels. Overrides the default message.
mcADMMessage :: Lens' MessageConfiguration (Maybe Message)
mcADMMessage = lens _mcADMMessage (\ s a -> s{_mcADMMessage = a})

-- | The SMS message configuration.
mcSMSMessage :: Lens' MessageConfiguration (Maybe CampaignSmsMessage)
mcSMSMessage = lens _mcSMSMessage (\ s a -> s{_mcSMSMessage = a})

-- | The email message configuration.
mcEmailMessage :: Lens' MessageConfiguration (Maybe CampaignEmailMessage)
mcEmailMessage = lens _mcEmailMessage (\ s a -> s{_mcEmailMessage = a})

-- | The message that the campaign delivers to Baidu channels. Overrides the default message.
mcBaiduMessage :: Lens' MessageConfiguration (Maybe Message)
mcBaiduMessage = lens _mcBaiduMessage (\ s a -> s{_mcBaiduMessage = a})

instance FromJSON MessageConfiguration where
        parseJSON
          = withObject "MessageConfiguration"
              (\ x ->
                 MessageConfiguration' <$>
                   (x .:? "APNSMessage") <*> (x .:? "GCMMessage") <*>
                     (x .:? "DefaultMessage")
                     <*> (x .:? "ADMMessage")
                     <*> (x .:? "SMSMessage")
                     <*> (x .:? "EmailMessage")
                     <*> (x .:? "BaiduMessage"))

instance Hashable MessageConfiguration where

instance NFData MessageConfiguration where

instance ToJSON MessageConfiguration where
        toJSON MessageConfiguration'{..}
          = object
              (catMaybes
                 [("APNSMessage" .=) <$> _mcAPNSMessage,
                  ("GCMMessage" .=) <$> _mcGCMMessage,
                  ("DefaultMessage" .=) <$> _mcDefaultMessage,
                  ("ADMMessage" .=) <$> _mcADMMessage,
                  ("SMSMessage" .=) <$> _mcSMSMessage,
                  ("EmailMessage" .=) <$> _mcEmailMessage,
                  ("BaiduMessage" .=) <$> _mcBaiduMessage])
