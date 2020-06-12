{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SendUsersMessageResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SendUsersMessageResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Prelude

-- | User send message response.
--
-- /See:/ 'sendUsersMessageResponse' smart constructor.
data SendUsersMessageResponse = SendUsersMessageResponse'{_sumRequestId
                                                          :: !(Maybe Text),
                                                          _sumResult ::
                                                          !(Maybe
                                                              (Map Text
                                                                 (Map Text
                                                                    EndpointMessageResult))),
                                                          _sumApplicationId ::
                                                          !(Maybe Text)}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'SendUsersMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumRequestId' - Original request Id for which this message was delivered.
--
-- * 'sumResult' - A map containing of UserId to Map of EndpointId to Endpoint Message Result.
--
-- * 'sumApplicationId' - Application id of the message.
sendUsersMessageResponse
    :: SendUsersMessageResponse
sendUsersMessageResponse
  = SendUsersMessageResponse'{_sumRequestId = Nothing,
                              _sumResult = Nothing, _sumApplicationId = Nothing}

-- | Original request Id for which this message was delivered.
sumRequestId :: Lens' SendUsersMessageResponse (Maybe Text)
sumRequestId = lens _sumRequestId (\ s a -> s{_sumRequestId = a})

-- | A map containing of UserId to Map of EndpointId to Endpoint Message Result.
sumResult :: Lens' SendUsersMessageResponse (HashMap Text (HashMap Text EndpointMessageResult))
sumResult = lens _sumResult (\ s a -> s{_sumResult = a}) . _Default . _Map

-- | Application id of the message.
sumApplicationId :: Lens' SendUsersMessageResponse (Maybe Text)
sumApplicationId = lens _sumApplicationId (\ s a -> s{_sumApplicationId = a})

instance FromJSON SendUsersMessageResponse where
        parseJSON
          = withObject "SendUsersMessageResponse"
              (\ x ->
                 SendUsersMessageResponse' <$>
                   (x .:? "RequestId") <*> (x .:? "Result" .!= mempty)
                     <*> (x .:? "ApplicationId"))

instance Hashable SendUsersMessageResponse where

instance NFData SendUsersMessageResponse where
