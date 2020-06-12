{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.Action
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.Action where

import Network.AWS.IoT.Types.CloudwatchAlarmAction
import Network.AWS.IoT.Types.CloudwatchMetricAction
import Network.AWS.IoT.Types.DynamoDBAction
import Network.AWS.IoT.Types.DynamoDBv2Action
import Network.AWS.IoT.Types.ElasticsearchAction
import Network.AWS.IoT.Types.FirehoseAction
import Network.AWS.IoT.Types.IotAnalyticsAction
import Network.AWS.IoT.Types.KinesisAction
import Network.AWS.IoT.Types.LambdaAction
import Network.AWS.IoT.Types.RepublishAction
import Network.AWS.IoT.Types.S3Action
import Network.AWS.IoT.Types.SNSAction
import Network.AWS.IoT.Types.SalesforceAction
import Network.AWS.IoT.Types.SqsAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the actions associated with a rule.
--
--
--
-- /See:/ 'action' smart constructor.
data Action = Action'{_aCloudwatchMetric ::
                      !(Maybe CloudwatchMetricAction),
                      _aDynamoDBv2 :: !(Maybe DynamoDBv2Action),
                      _aCloudwatchAlarm :: !(Maybe CloudwatchAlarmAction),
                      _aSns :: !(Maybe SNSAction),
                      _aDynamoDB :: !(Maybe DynamoDBAction),
                      _aFirehose :: !(Maybe FirehoseAction),
                      _aIotAnalytics :: !(Maybe IotAnalyticsAction),
                      _aLambda :: !(Maybe LambdaAction),
                      _aSalesforce :: !(Maybe SalesforceAction),
                      _aKinesis :: !(Maybe KinesisAction),
                      _aS3 :: !(Maybe S3Action),
                      _aElasticsearch :: !(Maybe ElasticsearchAction),
                      _aRepublish :: !(Maybe RepublishAction),
                      _aSqs :: !(Maybe SqsAction)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCloudwatchMetric' - Capture a CloudWatch metric.
--
-- * 'aDynamoDBv2' - Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.
--
-- * 'aCloudwatchAlarm' - Change the state of a CloudWatch alarm.
--
-- * 'aSns' - Publish to an Amazon SNS topic.
--
-- * 'aDynamoDB' - Write to a DynamoDB table.
--
-- * 'aFirehose' - Write to an Amazon Kinesis Firehose stream.
--
-- * 'aIotAnalytics' - Sends message data to an AWS IoT Analytics channel.
--
-- * 'aLambda' - Invoke a Lambda function.
--
-- * 'aSalesforce' - Send a message to a Salesforce IoT Cloud Input Stream.
--
-- * 'aKinesis' - Write data to an Amazon Kinesis stream.
--
-- * 'aS3' - Write to an Amazon S3 bucket.
--
-- * 'aElasticsearch' - Write data to an Amazon Elasticsearch Service domain.
--
-- * 'aRepublish' - Publish to another MQTT topic.
--
-- * 'aSqs' - Publish to an Amazon SQS queue.
action
    :: Action
action
  = Action'{_aCloudwatchMetric = Nothing,
            _aDynamoDBv2 = Nothing, _aCloudwatchAlarm = Nothing,
            _aSns = Nothing, _aDynamoDB = Nothing,
            _aFirehose = Nothing, _aIotAnalytics = Nothing,
            _aLambda = Nothing, _aSalesforce = Nothing,
            _aKinesis = Nothing, _aS3 = Nothing,
            _aElasticsearch = Nothing, _aRepublish = Nothing,
            _aSqs = Nothing}

-- | Capture a CloudWatch metric.
aCloudwatchMetric :: Lens' Action (Maybe CloudwatchMetricAction)
aCloudwatchMetric = lens _aCloudwatchMetric (\ s a -> s{_aCloudwatchMetric = a})

-- | Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.
aDynamoDBv2 :: Lens' Action (Maybe DynamoDBv2Action)
aDynamoDBv2 = lens _aDynamoDBv2 (\ s a -> s{_aDynamoDBv2 = a})

-- | Change the state of a CloudWatch alarm.
aCloudwatchAlarm :: Lens' Action (Maybe CloudwatchAlarmAction)
aCloudwatchAlarm = lens _aCloudwatchAlarm (\ s a -> s{_aCloudwatchAlarm = a})

-- | Publish to an Amazon SNS topic.
aSns :: Lens' Action (Maybe SNSAction)
aSns = lens _aSns (\ s a -> s{_aSns = a})

-- | Write to a DynamoDB table.
aDynamoDB :: Lens' Action (Maybe DynamoDBAction)
aDynamoDB = lens _aDynamoDB (\ s a -> s{_aDynamoDB = a})

-- | Write to an Amazon Kinesis Firehose stream.
aFirehose :: Lens' Action (Maybe FirehoseAction)
aFirehose = lens _aFirehose (\ s a -> s{_aFirehose = a})

-- | Sends message data to an AWS IoT Analytics channel.
aIotAnalytics :: Lens' Action (Maybe IotAnalyticsAction)
aIotAnalytics = lens _aIotAnalytics (\ s a -> s{_aIotAnalytics = a})

-- | Invoke a Lambda function.
aLambda :: Lens' Action (Maybe LambdaAction)
aLambda = lens _aLambda (\ s a -> s{_aLambda = a})

-- | Send a message to a Salesforce IoT Cloud Input Stream.
aSalesforce :: Lens' Action (Maybe SalesforceAction)
aSalesforce = lens _aSalesforce (\ s a -> s{_aSalesforce = a})

-- | Write data to an Amazon Kinesis stream.
aKinesis :: Lens' Action (Maybe KinesisAction)
aKinesis = lens _aKinesis (\ s a -> s{_aKinesis = a})

-- | Write to an Amazon S3 bucket.
aS3 :: Lens' Action (Maybe S3Action)
aS3 = lens _aS3 (\ s a -> s{_aS3 = a})

-- | Write data to an Amazon Elasticsearch Service domain.
aElasticsearch :: Lens' Action (Maybe ElasticsearchAction)
aElasticsearch = lens _aElasticsearch (\ s a -> s{_aElasticsearch = a})

-- | Publish to another MQTT topic.
aRepublish :: Lens' Action (Maybe RepublishAction)
aRepublish = lens _aRepublish (\ s a -> s{_aRepublish = a})

-- | Publish to an Amazon SQS queue.
aSqs :: Lens' Action (Maybe SqsAction)
aSqs = lens _aSqs (\ s a -> s{_aSqs = a})

instance FromJSON Action where
        parseJSON
          = withObject "Action"
              (\ x ->
                 Action' <$>
                   (x .:? "cloudwatchMetric") <*> (x .:? "dynamoDBv2")
                     <*> (x .:? "cloudwatchAlarm")
                     <*> (x .:? "sns")
                     <*> (x .:? "dynamoDB")
                     <*> (x .:? "firehose")
                     <*> (x .:? "iotAnalytics")
                     <*> (x .:? "lambda")
                     <*> (x .:? "salesforce")
                     <*> (x .:? "kinesis")
                     <*> (x .:? "s3")
                     <*> (x .:? "elasticsearch")
                     <*> (x .:? "republish")
                     <*> (x .:? "sqs"))

instance Hashable Action where

instance NFData Action where

instance ToJSON Action where
        toJSON Action'{..}
          = object
              (catMaybes
                 [("cloudwatchMetric" .=) <$> _aCloudwatchMetric,
                  ("dynamoDBv2" .=) <$> _aDynamoDBv2,
                  ("cloudwatchAlarm" .=) <$> _aCloudwatchAlarm,
                  ("sns" .=) <$> _aSns, ("dynamoDB" .=) <$> _aDynamoDB,
                  ("firehose" .=) <$> _aFirehose,
                  ("iotAnalytics" .=) <$> _aIotAnalytics,
                  ("lambda" .=) <$> _aLambda,
                  ("salesforce" .=) <$> _aSalesforce,
                  ("kinesis" .=) <$> _aKinesis, ("s3" .=) <$> _aS3,
                  ("elasticsearch" .=) <$> _aElasticsearch,
                  ("republish" .=) <$> _aRepublish,
                  ("sqs" .=) <$> _aSqs])
