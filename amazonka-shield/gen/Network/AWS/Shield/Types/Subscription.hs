{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.Subscription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Shield.Types.Subscription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the AWS Shield Advanced subscription for an account.
--
--
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription'{_sTimeCommitmentInSeconds
                                  :: !(Maybe Nat),
                                  _sStartTime :: !(Maybe POSIX)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTimeCommitmentInSeconds' - The length, in seconds, of the AWS Shield Advanced subscription for the account.
--
-- * 'sStartTime' - The start time of the subscription, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
subscription
    :: Subscription
subscription
  = Subscription'{_sTimeCommitmentInSeconds = Nothing,
                  _sStartTime = Nothing}

-- | The length, in seconds, of the AWS Shield Advanced subscription for the account.
sTimeCommitmentInSeconds :: Lens' Subscription (Maybe Natural)
sTimeCommitmentInSeconds = lens _sTimeCommitmentInSeconds (\ s a -> s{_sTimeCommitmentInSeconds = a}) . mapping _Nat

-- | The start time of the subscription, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
sStartTime :: Lens' Subscription (Maybe UTCTime)
sStartTime = lens _sStartTime (\ s a -> s{_sStartTime = a}) . mapping _Time

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ x ->
                 Subscription' <$>
                   (x .:? "TimeCommitmentInSeconds") <*>
                     (x .:? "StartTime"))

instance Hashable Subscription where

instance NFData Subscription where
