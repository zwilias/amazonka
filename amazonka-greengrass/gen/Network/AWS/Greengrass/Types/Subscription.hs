{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Subscription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.Subscription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a subscription.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription'{_sSubject ::
                                  !(Maybe Text),
                                  _sSource :: !(Maybe Text),
                                  _sId :: !(Maybe Text),
                                  _sTarget :: !(Maybe Text)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSubject' - The subject of the message.
--
-- * 'sSource' - The source of the subscription. Can be a thing ARN, a Lambda function ARN, 'cloud' (which represents the IoT cloud), or 'GGShadowService'.
--
-- * 'sId' - The id of the subscription.
--
-- * 'sTarget' - Where the message is sent to. Can be a thing ARN, a Lambda function ARN, 'cloud' (which represents the IoT cloud), or 'GGShadowService'.
subscription
    :: Subscription
subscription
  = Subscription'{_sSubject = Nothing,
                  _sSource = Nothing, _sId = Nothing,
                  _sTarget = Nothing}

-- | The subject of the message.
sSubject :: Lens' Subscription (Maybe Text)
sSubject = lens _sSubject (\ s a -> s{_sSubject = a})

-- | The source of the subscription. Can be a thing ARN, a Lambda function ARN, 'cloud' (which represents the IoT cloud), or 'GGShadowService'.
sSource :: Lens' Subscription (Maybe Text)
sSource = lens _sSource (\ s a -> s{_sSource = a})

-- | The id of the subscription.
sId :: Lens' Subscription (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Where the message is sent to. Can be a thing ARN, a Lambda function ARN, 'cloud' (which represents the IoT cloud), or 'GGShadowService'.
sTarget :: Lens' Subscription (Maybe Text)
sTarget = lens _sTarget (\ s a -> s{_sTarget = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ x ->
                 Subscription' <$>
                   (x .:? "Subject") <*> (x .:? "Source") <*>
                     (x .:? "Id")
                     <*> (x .:? "Target"))

instance Hashable Subscription where

instance NFData Subscription where

instance ToJSON Subscription where
        toJSON Subscription'{..}
          = object
              (catMaybes
                 [("Subject" .=) <$> _sSubject,
                  ("Source" .=) <$> _sSource, ("Id" .=) <$> _sId,
                  ("Target" .=) <$> _sTarget])
