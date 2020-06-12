{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageBody
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.MessageBody where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Simple message object.
--
-- /See:/ 'messageBody' smart constructor.
data MessageBody = MessageBody'{_mbRequestId ::
                                !(Maybe Text),
                                _mbMessage :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbRequestId' - The unique message body ID.
--
-- * 'mbMessage' - The error message returned from the API.
messageBody
    :: MessageBody
messageBody
  = MessageBody'{_mbRequestId = Nothing,
                 _mbMessage = Nothing}

-- | The unique message body ID.
mbRequestId :: Lens' MessageBody (Maybe Text)
mbRequestId = lens _mbRequestId (\ s a -> s{_mbRequestId = a})

-- | The error message returned from the API.
mbMessage :: Lens' MessageBody (Maybe Text)
mbMessage = lens _mbMessage (\ s a -> s{_mbMessage = a})

instance FromJSON MessageBody where
        parseJSON
          = withObject "MessageBody"
              (\ x ->
                 MessageBody' <$>
                   (x .:? "RequestID") <*> (x .:? "Message"))

instance Hashable MessageBody where

instance NFData MessageBody where
