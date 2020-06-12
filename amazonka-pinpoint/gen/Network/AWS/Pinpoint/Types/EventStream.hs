{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EventStream
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EventStream where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Model for an event publishing subscription export.
--
-- /See:/ 'eventStream' smart constructor.
data EventStream = EventStream'{_esLastUpdatedBy ::
                                !(Maybe Text),
                                _esLastModifiedDate :: !(Maybe Text),
                                _esDestinationStreamARN :: !(Maybe Text),
                                _esApplicationId :: !(Maybe Text),
                                _esExternalId :: !(Maybe Text),
                                _esRoleARN :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esLastUpdatedBy' - The IAM user who last modified the event stream.
--
-- * 'esLastModifiedDate' - The date the event stream was last updated in ISO 8601 format.
--
-- * 'esDestinationStreamARN' - The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.  Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME  Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
--
-- * 'esApplicationId' - The ID of the application from which events should be published.
--
-- * 'esExternalId' - DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
--
-- * 'esRoleARN' - The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
eventStream
    :: EventStream
eventStream
  = EventStream'{_esLastUpdatedBy = Nothing,
                 _esLastModifiedDate = Nothing,
                 _esDestinationStreamARN = Nothing,
                 _esApplicationId = Nothing, _esExternalId = Nothing,
                 _esRoleARN = Nothing}

-- | The IAM user who last modified the event stream.
esLastUpdatedBy :: Lens' EventStream (Maybe Text)
esLastUpdatedBy = lens _esLastUpdatedBy (\ s a -> s{_esLastUpdatedBy = a})

-- | The date the event stream was last updated in ISO 8601 format.
esLastModifiedDate :: Lens' EventStream (Maybe Text)
esLastModifiedDate = lens _esLastModifiedDate (\ s a -> s{_esLastModifiedDate = a})

-- | The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.  Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME  Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
esDestinationStreamARN :: Lens' EventStream (Maybe Text)
esDestinationStreamARN = lens _esDestinationStreamARN (\ s a -> s{_esDestinationStreamARN = a})

-- | The ID of the application from which events should be published.
esApplicationId :: Lens' EventStream (Maybe Text)
esApplicationId = lens _esApplicationId (\ s a -> s{_esApplicationId = a})

-- | DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
esExternalId :: Lens' EventStream (Maybe Text)
esExternalId = lens _esExternalId (\ s a -> s{_esExternalId = a})

-- | The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
esRoleARN :: Lens' EventStream (Maybe Text)
esRoleARN = lens _esRoleARN (\ s a -> s{_esRoleARN = a})

instance FromJSON EventStream where
        parseJSON
          = withObject "EventStream"
              (\ x ->
                 EventStream' <$>
                   (x .:? "LastUpdatedBy") <*>
                     (x .:? "LastModifiedDate")
                     <*> (x .:? "DestinationStreamArn")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "ExternalId")
                     <*> (x .:? "RoleArn"))

instance Hashable EventStream where

instance NFData EventStream where
