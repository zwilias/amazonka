{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.ModifyEventSubscription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing Amazon Redshift event notification subscription.
--
--
module Network.AWS.Redshift.ModifyEventSubscription
    (
    -- * Creating a Request
      modifyEventSubscription
    , ModifyEventSubscription
    -- * Request Lenses
    , mesSNSTopicARN
    , mesEnabled
    , mesSourceType
    , mesSeverity
    , mesEventCategories
    , mesSourceIds
    , mesSubscriptionName

    -- * Destructuring the Response
    , modifyEventSubscriptionResponse
    , ModifyEventSubscriptionResponse
    -- * Response Lenses
    , mesrsEventSubscription
    , mesrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Redshift.Types.Product
import Network.AWS.Request
import Network.AWS.Response

-- | 
--
--
--
-- /See:/ 'modifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'{_mesSNSTopicARN
                                                        :: !(Maybe Text),
                                                        _mesEnabled ::
                                                        !(Maybe Bool),
                                                        _mesSourceType ::
                                                        !(Maybe Text),
                                                        _mesSeverity ::
                                                        !(Maybe Text),
                                                        _mesEventCategories ::
                                                        !(Maybe [Text]),
                                                        _mesSourceIds ::
                                                        !(Maybe [Text]),
                                                        _mesSubscriptionName ::
                                                        !Text}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'ModifyEventSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mesSNSTopicARN' - The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.
--
-- * 'mesEnabled' - A Boolean value indicating if the subscription is enabled. @true@ indicates the subscription is enabled 
--
-- * 'mesSourceType' - The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs. Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.
--
-- * 'mesSeverity' - Specifies the Amazon Redshift event severity to be published by the event notification subscription. Values: ERROR, INFO
--
-- * 'mesEventCategories' - Specifies the Amazon Redshift event categories to be published by the event notification subscription. Values: Configuration, Management, Monitoring, Security
--
-- * 'mesSourceIds' - A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified. Example: my-cluster-1, my-cluster-2 Example: my-snapshot-20131010
--
-- * 'mesSubscriptionName' - The name of the modified Amazon Redshift event notification subscription.
modifyEventSubscription
    :: Text -- ^ 'mesSubscriptionName'
    -> ModifyEventSubscription
modifyEventSubscription pSubscriptionName_
  = ModifyEventSubscription'{_mesSNSTopicARN = Nothing,
                             _mesEnabled = Nothing, _mesSourceType = Nothing,
                             _mesSeverity = Nothing,
                             _mesEventCategories = Nothing,
                             _mesSourceIds = Nothing,
                             _mesSubscriptionName = pSubscriptionName_}

-- | The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.
mesSNSTopicARN :: Lens' ModifyEventSubscription (Maybe Text)
mesSNSTopicARN = lens _mesSNSTopicARN (\ s a -> s{_mesSNSTopicARN = a})

-- | A Boolean value indicating if the subscription is enabled. @true@ indicates the subscription is enabled 
mesEnabled :: Lens' ModifyEventSubscription (Maybe Bool)
mesEnabled = lens _mesEnabled (\ s a -> s{_mesEnabled = a})

-- | The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs. Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.
mesSourceType :: Lens' ModifyEventSubscription (Maybe Text)
mesSourceType = lens _mesSourceType (\ s a -> s{_mesSourceType = a})

-- | Specifies the Amazon Redshift event severity to be published by the event notification subscription. Values: ERROR, INFO
mesSeverity :: Lens' ModifyEventSubscription (Maybe Text)
mesSeverity = lens _mesSeverity (\ s a -> s{_mesSeverity = a})

-- | Specifies the Amazon Redshift event categories to be published by the event notification subscription. Values: Configuration, Management, Monitoring, Security
mesEventCategories :: Lens' ModifyEventSubscription [Text]
mesEventCategories = lens _mesEventCategories (\ s a -> s{_mesEventCategories = a}) . _Default . _Coerce

-- | A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified. Example: my-cluster-1, my-cluster-2 Example: my-snapshot-20131010
mesSourceIds :: Lens' ModifyEventSubscription [Text]
mesSourceIds = lens _mesSourceIds (\ s a -> s{_mesSourceIds = a}) . _Default . _Coerce

-- | The name of the modified Amazon Redshift event notification subscription.
mesSubscriptionName :: Lens' ModifyEventSubscription Text
mesSubscriptionName = lens _mesSubscriptionName (\ s a -> s{_mesSubscriptionName = a})

instance AWSRequest ModifyEventSubscription where
        type Rs ModifyEventSubscription =
             ModifyEventSubscriptionResponse
        request = postQuery redshift
        response
          = receiveXMLWrapper "ModifyEventSubscriptionResult"
              (\ s h x ->
                 ModifyEventSubscriptionResponse' <$>
                   (x .@? "EventSubscription") <*> (pure (fromEnum s)))

instance Hashable ModifyEventSubscription where

instance NFData ModifyEventSubscription where

instance ToHeaders ModifyEventSubscription where
        toHeaders = const mempty

instance ToPath ModifyEventSubscription where
        toPath = const "/"

instance ToQuery ModifyEventSubscription where
        toQuery ModifyEventSubscription'{..}
          = mconcat
              ["Action" =:
                 ("ModifyEventSubscription" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "SnsTopicArn" =: _mesSNSTopicARN,
               "Enabled" =: _mesEnabled,
               "SourceType" =: _mesSourceType,
               "Severity" =: _mesSeverity,
               "EventCategories" =:
                 toQuery
                   (toQueryList "EventCategory" <$>
                      _mesEventCategories),
               "SourceIds" =:
                 toQuery (toQueryList "SourceId" <$> _mesSourceIds),
               "SubscriptionName" =: _mesSubscriptionName]

-- | /See:/ 'modifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'{_mesrsEventSubscription
                                                                        ::
                                                                        !(Maybe
                                                                            EventSubscription),
                                                                        _mesrsResponseStatus
                                                                        :: !Int}
                                         deriving (Eq, Read, Show, Data,
                                                   Typeable, Generic)

-- | Creates a value of 'ModifyEventSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mesrsEventSubscription' - Undocumented member.
--
-- * 'mesrsResponseStatus' - -- | The response status code.
modifyEventSubscriptionResponse
    :: Int -- ^ 'mesrsResponseStatus'
    -> ModifyEventSubscriptionResponse
modifyEventSubscriptionResponse pResponseStatus_
  = ModifyEventSubscriptionResponse'{_mesrsEventSubscription
                                       = Nothing,
                                     _mesrsResponseStatus = pResponseStatus_}

-- | Undocumented member.
mesrsEventSubscription :: Lens' ModifyEventSubscriptionResponse (Maybe EventSubscription)
mesrsEventSubscription = lens _mesrsEventSubscription (\ s a -> s{_mesrsEventSubscription = a})

-- | -- | The response status code.
mesrsResponseStatus :: Lens' ModifyEventSubscriptionResponse Int
mesrsResponseStatus = lens _mesrsResponseStatus (\ s a -> s{_mesrsResponseStatus = a})

instance NFData ModifyEventSubscriptionResponse where
