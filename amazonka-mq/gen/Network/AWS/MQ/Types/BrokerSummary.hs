{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MQ.Types.BrokerSummary where

import Network.AWS.Lens
import Network.AWS.MQ.Types.BrokerState
import Network.AWS.MQ.Types.DeploymentMode
import Network.AWS.Prelude

-- | The Amazon Resource Name (ARN) of the broker.
--
-- /See:/ 'brokerSummary' smart constructor.
data BrokerSummary = BrokerSummary'{_bsBrokerName ::
                                    !(Maybe Text),
                                    _bsBrokerState :: !(Maybe BrokerState),
                                    _bsDeploymentMode ::
                                    !(Maybe DeploymentMode),
                                    _bsBrokerId :: !(Maybe Text),
                                    _bsBrokerARN :: !(Maybe Text),
                                    _bsHostInstanceType :: !(Maybe Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BrokerSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsBrokerName' - The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
--
-- * 'bsBrokerState' - The status of the broker. Possible values: CREATION_IN_PROGRESS, CREATION_FAILED, DELETION_IN_PROGRESS, RUNNING, REBOOT_IN_PROGRESS
--
-- * 'bsDeploymentMode' - Required. The deployment mode of the broker. Possible values: SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ SINGLE_INSTANCE creates a single-instance broker in a single Availability Zone. ACTIVE_STANDBY_MULTI_AZ creates an active/standby broker for high availability.
--
-- * 'bsBrokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- * 'bsBrokerARN' - The Amazon Resource Name (ARN) of the broker.
--
-- * 'bsHostInstanceType' - The broker's instance type. Possible values: mq.t2.micro, mq.m4.large
brokerSummary
    :: BrokerSummary
brokerSummary
  = BrokerSummary'{_bsBrokerName = Nothing,
                   _bsBrokerState = Nothing,
                   _bsDeploymentMode = Nothing, _bsBrokerId = Nothing,
                   _bsBrokerARN = Nothing,
                   _bsHostInstanceType = Nothing}

-- | The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
bsBrokerName :: Lens' BrokerSummary (Maybe Text)
bsBrokerName = lens _bsBrokerName (\ s a -> s{_bsBrokerName = a})

-- | The status of the broker. Possible values: CREATION_IN_PROGRESS, CREATION_FAILED, DELETION_IN_PROGRESS, RUNNING, REBOOT_IN_PROGRESS
bsBrokerState :: Lens' BrokerSummary (Maybe BrokerState)
bsBrokerState = lens _bsBrokerState (\ s a -> s{_bsBrokerState = a})

-- | Required. The deployment mode of the broker. Possible values: SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ SINGLE_INSTANCE creates a single-instance broker in a single Availability Zone. ACTIVE_STANDBY_MULTI_AZ creates an active/standby broker for high availability.
bsDeploymentMode :: Lens' BrokerSummary (Maybe DeploymentMode)
bsDeploymentMode = lens _bsDeploymentMode (\ s a -> s{_bsDeploymentMode = a})

-- | The unique ID that Amazon MQ generates for the broker.
bsBrokerId :: Lens' BrokerSummary (Maybe Text)
bsBrokerId = lens _bsBrokerId (\ s a -> s{_bsBrokerId = a})

-- | The Amazon Resource Name (ARN) of the broker.
bsBrokerARN :: Lens' BrokerSummary (Maybe Text)
bsBrokerARN = lens _bsBrokerARN (\ s a -> s{_bsBrokerARN = a})

-- | The broker's instance type. Possible values: mq.t2.micro, mq.m4.large
bsHostInstanceType :: Lens' BrokerSummary (Maybe Text)
bsHostInstanceType = lens _bsHostInstanceType (\ s a -> s{_bsHostInstanceType = a})

instance FromJSON BrokerSummary where
        parseJSON
          = withObject "BrokerSummary"
              (\ x ->
                 BrokerSummary' <$>
                   (x .:? "brokerName") <*> (x .:? "brokerState") <*>
                     (x .:? "deploymentMode")
                     <*> (x .:? "brokerId")
                     <*> (x .:? "brokerArn")
                     <*> (x .:? "hostInstanceType"))

instance Hashable BrokerSummary where

instance NFData BrokerSummary where
