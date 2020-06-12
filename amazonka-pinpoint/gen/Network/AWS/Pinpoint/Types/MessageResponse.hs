{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.MessageResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Prelude

-- | Send message response.
--
-- /See:/ 'messageResponse' smart constructor.
data MessageResponse = MessageResponse'{_mRequestId
                                        :: !(Maybe Text),
                                        _mResult ::
                                        !(Maybe (Map Text MessageResult)),
                                        _mApplicationId :: !(Maybe Text),
                                        _mEndpointResult ::
                                        !(Maybe
                                            (Map Text EndpointMessageResult))}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRequestId' - Original request Id for which this message was delivered.
--
-- * 'mResult' - A map containing a multi part response for each address, with the address as the key(Email address, phone number or push token) and the result as the value.
--
-- * 'mApplicationId' - Application id of the message.
--
-- * 'mEndpointResult' - A map containing a multi part response for each address, with the endpointId as the key and the result as the value.
messageResponse
    :: MessageResponse
messageResponse
  = MessageResponse'{_mRequestId = Nothing,
                     _mResult = Nothing, _mApplicationId = Nothing,
                     _mEndpointResult = Nothing}

-- | Original request Id for which this message was delivered.
mRequestId :: Lens' MessageResponse (Maybe Text)
mRequestId = lens _mRequestId (\ s a -> s{_mRequestId = a})

-- | A map containing a multi part response for each address, with the address as the key(Email address, phone number or push token) and the result as the value.
mResult :: Lens' MessageResponse (HashMap Text MessageResult)
mResult = lens _mResult (\ s a -> s{_mResult = a}) . _Default . _Map

-- | Application id of the message.
mApplicationId :: Lens' MessageResponse (Maybe Text)
mApplicationId = lens _mApplicationId (\ s a -> s{_mApplicationId = a})

-- | A map containing a multi part response for each address, with the endpointId as the key and the result as the value.
mEndpointResult :: Lens' MessageResponse (HashMap Text EndpointMessageResult)
mEndpointResult = lens _mEndpointResult (\ s a -> s{_mEndpointResult = a}) . _Default . _Map

instance FromJSON MessageResponse where
        parseJSON
          = withObject "MessageResponse"
              (\ x ->
                 MessageResponse' <$>
                   (x .:? "RequestId") <*> (x .:? "Result" .!= mempty)
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "EndpointResult" .!= mempty))

instance Hashable MessageResponse where

instance NFData MessageResponse where
