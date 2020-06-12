{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointMessageResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointMessageResult where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DeliveryStatus
import Network.AWS.Prelude

-- | The result from sending a message to an endpoint.
--
-- /See:/ 'endpointMessageResult' smart constructor.
data EndpointMessageResult = EndpointMessageResult'{_emrDeliveryStatus
                                                    :: !(Maybe DeliveryStatus),
                                                    _emrAddress ::
                                                    !(Maybe Text),
                                                    _emrStatusMessage ::
                                                    !(Maybe Text),
                                                    _emrUpdatedToken ::
                                                    !(Maybe Text),
                                                    _emrStatusCode ::
                                                    !(Maybe Int)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'EndpointMessageResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emrDeliveryStatus' - Delivery status of message.
--
-- * 'emrAddress' - Address that endpoint message was delivered to.
--
-- * 'emrStatusMessage' - Status message for message delivery.
--
-- * 'emrUpdatedToken' - If token was updated as part of delivery. (This is GCM Specific)
--
-- * 'emrStatusCode' - Downstream service status code.
endpointMessageResult
    :: EndpointMessageResult
endpointMessageResult
  = EndpointMessageResult'{_emrDeliveryStatus =
                             Nothing,
                           _emrAddress = Nothing, _emrStatusMessage = Nothing,
                           _emrUpdatedToken = Nothing, _emrStatusCode = Nothing}

-- | Delivery status of message.
emrDeliveryStatus :: Lens' EndpointMessageResult (Maybe DeliveryStatus)
emrDeliveryStatus = lens _emrDeliveryStatus (\ s a -> s{_emrDeliveryStatus = a})

-- | Address that endpoint message was delivered to.
emrAddress :: Lens' EndpointMessageResult (Maybe Text)
emrAddress = lens _emrAddress (\ s a -> s{_emrAddress = a})

-- | Status message for message delivery.
emrStatusMessage :: Lens' EndpointMessageResult (Maybe Text)
emrStatusMessage = lens _emrStatusMessage (\ s a -> s{_emrStatusMessage = a})

-- | If token was updated as part of delivery. (This is GCM Specific)
emrUpdatedToken :: Lens' EndpointMessageResult (Maybe Text)
emrUpdatedToken = lens _emrUpdatedToken (\ s a -> s{_emrUpdatedToken = a})

-- | Downstream service status code.
emrStatusCode :: Lens' EndpointMessageResult (Maybe Int)
emrStatusCode = lens _emrStatusCode (\ s a -> s{_emrStatusCode = a})

instance FromJSON EndpointMessageResult where
        parseJSON
          = withObject "EndpointMessageResult"
              (\ x ->
                 EndpointMessageResult' <$>
                   (x .:? "DeliveryStatus") <*> (x .:? "Address") <*>
                     (x .:? "StatusMessage")
                     <*> (x .:? "UpdatedToken")
                     <*> (x .:? "StatusCode"))

instance Hashable EndpointMessageResult where

instance NFData EndpointMessageResult where
