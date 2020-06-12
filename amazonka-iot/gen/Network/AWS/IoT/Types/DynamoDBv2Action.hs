{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DynamoDBv2Action
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.DynamoDBv2Action where

import Network.AWS.IoT.Types.PutItemInput
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an action to write to a DynamoDB table.
--
--
-- This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.
--
--
-- /See:/ 'dynamoDBv2Action' smart constructor.
data DynamoDBv2Action = DynamoDBv2Action'{_ddaPutItem
                                          :: !(Maybe PutItemInput),
                                          _ddaRoleARN :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DynamoDBv2Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddaPutItem' - Specifies the DynamoDB table to which the message data will be written. For example: @{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }@  Each attribute in the message payload will be written to a separate column in the DynamoDB database.
--
-- * 'ddaRoleARN' - The ARN of the IAM role that grants access to the DynamoDB table.
dynamoDBv2Action
    :: DynamoDBv2Action
dynamoDBv2Action
  = DynamoDBv2Action'{_ddaPutItem = Nothing,
                      _ddaRoleARN = Nothing}

-- | Specifies the DynamoDB table to which the message data will be written. For example: @{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }@  Each attribute in the message payload will be written to a separate column in the DynamoDB database.
ddaPutItem :: Lens' DynamoDBv2Action (Maybe PutItemInput)
ddaPutItem = lens _ddaPutItem (\ s a -> s{_ddaPutItem = a})

-- | The ARN of the IAM role that grants access to the DynamoDB table.
ddaRoleARN :: Lens' DynamoDBv2Action (Maybe Text)
ddaRoleARN = lens _ddaRoleARN (\ s a -> s{_ddaRoleARN = a})

instance FromJSON DynamoDBv2Action where
        parseJSON
          = withObject "DynamoDBv2Action"
              (\ x ->
                 DynamoDBv2Action' <$>
                   (x .:? "putItem") <*> (x .:? "roleArn"))

instance Hashable DynamoDBv2Action where

instance NFData DynamoDBv2Action where

instance ToJSON DynamoDBv2Action where
        toJSON DynamoDBv2Action'{..}
          = object
              (catMaybes
                 [("putItem" .=) <$> _ddaPutItem,
                  ("roleArn" .=) <$> _ddaRoleARN])
