{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EventSourceMappingConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.EventSourceMappingConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes mapping between an Amazon Kinesis stream and a Lambda function.
--
--
--
-- /See:/ 'eventSourceMappingConfiguration' smart constructor.
data EventSourceMappingConfiguration = EventSourceMappingConfiguration'{_esmcEventSourceARN
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcState
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcFunctionARN
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcUUId
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcLastProcessingResult
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcBatchSize
                                                                        ::
                                                                        !(Maybe
                                                                            Nat),
                                                                        _esmcStateTransitionReason
                                                                        ::
                                                                        !(Maybe
                                                                            Text),
                                                                        _esmcLastModified
                                                                        ::
                                                                        !(Maybe
                                                                            POSIX)}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'EventSourceMappingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esmcEventSourceARN' - The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the source of events.
--
-- * 'esmcState' - The state of the event source mapping. It can be @Creating@ , @Enabled@ , @Disabled@ , @Enabling@ , @Disabling@ , @Updating@ , or @Deleting@ .
--
-- * 'esmcFunctionARN' - The Lambda function to invoke when AWS Lambda detects an event on the stream.
--
-- * 'esmcUUId' - The AWS Lambda assigned opaque identifier for the mapping.
--
-- * 'esmcLastProcessingResult' - The result of the last AWS Lambda invocation of your Lambda function.
--
-- * 'esmcBatchSize' - The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.
--
-- * 'esmcStateTransitionReason' - The reason the event source mapping is in its current state. It is either user-requested or an AWS Lambda-initiated state transition.
--
-- * 'esmcLastModified' - The UTC time string indicating the last time the event mapping was updated.
eventSourceMappingConfiguration
    :: EventSourceMappingConfiguration
eventSourceMappingConfiguration
  = EventSourceMappingConfiguration'{_esmcEventSourceARN
                                       = Nothing,
                                     _esmcState = Nothing,
                                     _esmcFunctionARN = Nothing,
                                     _esmcUUId = Nothing,
                                     _esmcLastProcessingResult = Nothing,
                                     _esmcBatchSize = Nothing,
                                     _esmcStateTransitionReason = Nothing,
                                     _esmcLastModified = Nothing}

-- | The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the source of events.
esmcEventSourceARN :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcEventSourceARN = lens _esmcEventSourceARN (\ s a -> s{_esmcEventSourceARN = a})

-- | The state of the event source mapping. It can be @Creating@ , @Enabled@ , @Disabled@ , @Enabling@ , @Disabling@ , @Updating@ , or @Deleting@ .
esmcState :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcState = lens _esmcState (\ s a -> s{_esmcState = a})

-- | The Lambda function to invoke when AWS Lambda detects an event on the stream.
esmcFunctionARN :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcFunctionARN = lens _esmcFunctionARN (\ s a -> s{_esmcFunctionARN = a})

-- | The AWS Lambda assigned opaque identifier for the mapping.
esmcUUId :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcUUId = lens _esmcUUId (\ s a -> s{_esmcUUId = a})

-- | The result of the last AWS Lambda invocation of your Lambda function.
esmcLastProcessingResult :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcLastProcessingResult = lens _esmcLastProcessingResult (\ s a -> s{_esmcLastProcessingResult = a})

-- | The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.
esmcBatchSize :: Lens' EventSourceMappingConfiguration (Maybe Natural)
esmcBatchSize = lens _esmcBatchSize (\ s a -> s{_esmcBatchSize = a}) . mapping _Nat

-- | The reason the event source mapping is in its current state. It is either user-requested or an AWS Lambda-initiated state transition.
esmcStateTransitionReason :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcStateTransitionReason = lens _esmcStateTransitionReason (\ s a -> s{_esmcStateTransitionReason = a})

-- | The UTC time string indicating the last time the event mapping was updated.
esmcLastModified :: Lens' EventSourceMappingConfiguration (Maybe UTCTime)
esmcLastModified = lens _esmcLastModified (\ s a -> s{_esmcLastModified = a}) . mapping _Time

instance FromJSON EventSourceMappingConfiguration
         where
        parseJSON
          = withObject "EventSourceMappingConfiguration"
              (\ x ->
                 EventSourceMappingConfiguration' <$>
                   (x .:? "EventSourceArn") <*> (x .:? "State") <*>
                     (x .:? "FunctionArn")
                     <*> (x .:? "UUID")
                     <*> (x .:? "LastProcessingResult")
                     <*> (x .:? "BatchSize")
                     <*> (x .:? "StateTransitionReason")
                     <*> (x .:? "LastModified"))

instance Hashable EventSourceMappingConfiguration
         where

instance NFData EventSourceMappingConfiguration where
