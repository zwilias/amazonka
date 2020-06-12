{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignSmsMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignSmsMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.MessageType
import Network.AWS.Prelude

-- | SMS message configuration.
--
-- /See:/ 'campaignSmsMessage' smart constructor.
data CampaignSmsMessage = CampaignSmsMessage'{_csmBody
                                              :: !(Maybe Text),
                                              _csmMessageType ::
                                              !(Maybe MessageType),
                                              _csmSenderId :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignSmsMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmBody' - The SMS text body.
--
-- * 'csmMessageType' - Is this is a transactional SMS message, otherwise a promotional message.
--
-- * 'csmSenderId' - Sender ID of sent message.
campaignSmsMessage
    :: CampaignSmsMessage
campaignSmsMessage
  = CampaignSmsMessage'{_csmBody = Nothing,
                        _csmMessageType = Nothing, _csmSenderId = Nothing}

-- | The SMS text body.
csmBody :: Lens' CampaignSmsMessage (Maybe Text)
csmBody = lens _csmBody (\ s a -> s{_csmBody = a})

-- | Is this is a transactional SMS message, otherwise a promotional message.
csmMessageType :: Lens' CampaignSmsMessage (Maybe MessageType)
csmMessageType = lens _csmMessageType (\ s a -> s{_csmMessageType = a})

-- | Sender ID of sent message.
csmSenderId :: Lens' CampaignSmsMessage (Maybe Text)
csmSenderId = lens _csmSenderId (\ s a -> s{_csmSenderId = a})

instance FromJSON CampaignSmsMessage where
        parseJSON
          = withObject "CampaignSmsMessage"
              (\ x ->
                 CampaignSmsMessage' <$>
                   (x .:? "Body") <*> (x .:? "MessageType") <*>
                     (x .:? "SenderId"))

instance Hashable CampaignSmsMessage where

instance NFData CampaignSmsMessage where

instance ToJSON CampaignSmsMessage where
        toJSON CampaignSmsMessage'{..}
          = object
              (catMaybes
                 [("Body" .=) <$> _csmBody,
                  ("MessageType" .=) <$> _csmMessageType,
                  ("SenderId" .=) <$> _csmSenderId])
