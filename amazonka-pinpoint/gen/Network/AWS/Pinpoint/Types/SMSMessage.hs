{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SMSMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SMSMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.MessageType
import Network.AWS.Prelude

-- | SMS Message.
--
-- /See:/ 'sMSMessage' smart constructor.
data SMSMessage = SMSMessage'{_smsmSubstitutions ::
                              !(Maybe (Map Text [Text])),
                              _smsmOriginationNumber :: !(Maybe Text),
                              _smsmBody :: !(Maybe Text),
                              _smsmMessageType :: !(Maybe MessageType),
                              _smsmSenderId :: !(Maybe Text)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SMSMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smsmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'smsmOriginationNumber' - The phone number that the SMS message originates from. Specify one of the dedicated long codes or short codes that you requested from AWS Support and that is assigned to your account. If this attribute is not specified, Amazon Pinpoint randomly assigns a long code.
--
-- * 'smsmBody' - The message body of the notification, the email body or the text message.
--
-- * 'smsmMessageType' - Is this a transaction priority message or lower priority.
--
-- * 'smsmSenderId' - The sender ID that is shown as the message sender on the recipient's device. Support for sender IDs varies by country or region.
sMSMessage
    :: SMSMessage
sMSMessage
  = SMSMessage'{_smsmSubstitutions = Nothing,
                _smsmOriginationNumber = Nothing,
                _smsmBody = Nothing, _smsmMessageType = Nothing,
                _smsmSenderId = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
smsmSubstitutions :: Lens' SMSMessage (HashMap Text [Text])
smsmSubstitutions = lens _smsmSubstitutions (\ s a -> s{_smsmSubstitutions = a}) . _Default . _Map

-- | The phone number that the SMS message originates from. Specify one of the dedicated long codes or short codes that you requested from AWS Support and that is assigned to your account. If this attribute is not specified, Amazon Pinpoint randomly assigns a long code.
smsmOriginationNumber :: Lens' SMSMessage (Maybe Text)
smsmOriginationNumber = lens _smsmOriginationNumber (\ s a -> s{_smsmOriginationNumber = a})

-- | The message body of the notification, the email body or the text message.
smsmBody :: Lens' SMSMessage (Maybe Text)
smsmBody = lens _smsmBody (\ s a -> s{_smsmBody = a})

-- | Is this a transaction priority message or lower priority.
smsmMessageType :: Lens' SMSMessage (Maybe MessageType)
smsmMessageType = lens _smsmMessageType (\ s a -> s{_smsmMessageType = a})

-- | The sender ID that is shown as the message sender on the recipient's device. Support for sender IDs varies by country or region.
smsmSenderId :: Lens' SMSMessage (Maybe Text)
smsmSenderId = lens _smsmSenderId (\ s a -> s{_smsmSenderId = a})

instance Hashable SMSMessage where

instance NFData SMSMessage where

instance ToJSON SMSMessage where
        toJSON SMSMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _smsmSubstitutions,
                  ("OriginationNumber" .=) <$> _smsmOriginationNumber,
                  ("Body" .=) <$> _smsmBody,
                  ("MessageType" .=) <$> _smsmMessageType,
                  ("SenderId" .=) <$> _smsmSenderId])
