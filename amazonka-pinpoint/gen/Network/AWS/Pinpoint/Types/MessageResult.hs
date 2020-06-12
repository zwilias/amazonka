{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.MessageResult where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DeliveryStatus
import Network.AWS.Prelude

-- | The result from sending a message to an address.
--
-- /See:/ 'messageResult' smart constructor.
data MessageResult = MessageResult'{_mrDeliveryStatus
                                    :: !(Maybe DeliveryStatus),
                                    _mrStatusMessage :: !(Maybe Text),
                                    _mrUpdatedToken :: !(Maybe Text),
                                    _mrStatusCode :: !(Maybe Int)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrDeliveryStatus' - Delivery status of message.
--
-- * 'mrStatusMessage' - Status message for message delivery.
--
-- * 'mrUpdatedToken' - If token was updated as part of delivery. (This is GCM Specific)
--
-- * 'mrStatusCode' - Downstream service status code.
messageResult
    :: MessageResult
messageResult
  = MessageResult'{_mrDeliveryStatus = Nothing,
                   _mrStatusMessage = Nothing,
                   _mrUpdatedToken = Nothing, _mrStatusCode = Nothing}

-- | Delivery status of message.
mrDeliveryStatus :: Lens' MessageResult (Maybe DeliveryStatus)
mrDeliveryStatus = lens _mrDeliveryStatus (\ s a -> s{_mrDeliveryStatus = a})

-- | Status message for message delivery.
mrStatusMessage :: Lens' MessageResult (Maybe Text)
mrStatusMessage = lens _mrStatusMessage (\ s a -> s{_mrStatusMessage = a})

-- | If token was updated as part of delivery. (This is GCM Specific)
mrUpdatedToken :: Lens' MessageResult (Maybe Text)
mrUpdatedToken = lens _mrUpdatedToken (\ s a -> s{_mrUpdatedToken = a})

-- | Downstream service status code.
mrStatusCode :: Lens' MessageResult (Maybe Int)
mrStatusCode = lens _mrStatusCode (\ s a -> s{_mrStatusCode = a})

instance FromJSON MessageResult where
        parseJSON
          = withObject "MessageResult"
              (\ x ->
                 MessageResult' <$>
                   (x .:? "DeliveryStatus") <*> (x .:? "StatusMessage")
                     <*> (x .:? "UpdatedToken")
                     <*> (x .:? "StatusCode"))

instance Hashable MessageResult where

instance NFData MessageResult where
