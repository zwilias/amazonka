{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteEventStream
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteEventStream where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Request to save an EventStream.
--
-- /See:/ 'writeEventStream' smart constructor.
data WriteEventStream = WriteEventStream'{_wesDestinationStreamARN
                                          :: !(Maybe Text),
                                          _wesRoleARN :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteEventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wesDestinationStreamARN' - The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.  Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME  Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
--
-- * 'wesRoleARN' - The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
writeEventStream
    :: WriteEventStream
writeEventStream
  = WriteEventStream'{_wesDestinationStreamARN =
                        Nothing,
                      _wesRoleARN = Nothing}

-- | The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.  Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME  Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
wesDestinationStreamARN :: Lens' WriteEventStream (Maybe Text)
wesDestinationStreamARN = lens _wesDestinationStreamARN (\ s a -> s{_wesDestinationStreamARN = a})

-- | The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
wesRoleARN :: Lens' WriteEventStream (Maybe Text)
wesRoleARN = lens _wesRoleARN (\ s a -> s{_wesRoleARN = a})

instance Hashable WriteEventStream where

instance NFData WriteEventStream where

instance ToJSON WriteEventStream where
        toJSON WriteEventStream'{..}
          = object
              (catMaybes
                 [("DestinationStreamArn" .=) <$>
                    _wesDestinationStreamARN,
                  ("RoleArn" .=) <$> _wesRoleARN])
