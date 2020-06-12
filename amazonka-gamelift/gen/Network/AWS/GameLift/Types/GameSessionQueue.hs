{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameSessionQueue
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.GameSessionQueue where

import Network.AWS.GameLift.Types.GameSessionQueueDestination
import Network.AWS.GameLift.Types.PlayerLatencyPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:
--
--
--     * The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. 
--
--     * The length of time that placement requests can wait in the queue before timing out. 
--
--     * A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.
--
--
--
-- Queue-related operations include:
--
--     * 'CreateGameSessionQueue' 
--
--     * 'DescribeGameSessionQueues' 
--
--     * 'UpdateGameSessionQueue' 
--
--     * 'DeleteGameSessionQueue' 
--
--
--
--
-- /See:/ 'gameSessionQueue' smart constructor.
data GameSessionQueue = GameSessionQueue'{_gsqGameSessionQueueARN
                                          :: !(Maybe Text),
                                          _gsqPlayerLatencyPolicies ::
                                          !(Maybe [PlayerLatencyPolicy]),
                                          _gsqTimeoutInSeconds :: !(Maybe Nat),
                                          _gsqDestinations ::
                                          !(Maybe
                                              [GameSessionQueueDestination]),
                                          _gsqName :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GameSessionQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsqGameSessionQueueARN' - Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session queue and uniquely identifies it. Format is @arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@ .
--
-- * 'gsqPlayerLatencyPolicies' - Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. 
--
-- * 'gsqTimeoutInSeconds' - Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a @TIMED_OUT@ status.
--
-- * 'gsqDestinations' - List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.
--
-- * 'gsqName' - Descriptive label that is associated with game session queue. Queue names must be unique within each region.
gameSessionQueue
    :: GameSessionQueue
gameSessionQueue
  = GameSessionQueue'{_gsqGameSessionQueueARN =
                        Nothing,
                      _gsqPlayerLatencyPolicies = Nothing,
                      _gsqTimeoutInSeconds = Nothing,
                      _gsqDestinations = Nothing, _gsqName = Nothing}

-- | Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session queue and uniquely identifies it. Format is @arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@ .
gsqGameSessionQueueARN :: Lens' GameSessionQueue (Maybe Text)
gsqGameSessionQueueARN = lens _gsqGameSessionQueueARN (\ s a -> s{_gsqGameSessionQueueARN = a})

-- | Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. 
gsqPlayerLatencyPolicies :: Lens' GameSessionQueue [PlayerLatencyPolicy]
gsqPlayerLatencyPolicies = lens _gsqPlayerLatencyPolicies (\ s a -> s{_gsqPlayerLatencyPolicies = a}) . _Default . _Coerce

-- | Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a @TIMED_OUT@ status.
gsqTimeoutInSeconds :: Lens' GameSessionQueue (Maybe Natural)
gsqTimeoutInSeconds = lens _gsqTimeoutInSeconds (\ s a -> s{_gsqTimeoutInSeconds = a}) . mapping _Nat

-- | List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.
gsqDestinations :: Lens' GameSessionQueue [GameSessionQueueDestination]
gsqDestinations = lens _gsqDestinations (\ s a -> s{_gsqDestinations = a}) . _Default . _Coerce

-- | Descriptive label that is associated with game session queue. Queue names must be unique within each region.
gsqName :: Lens' GameSessionQueue (Maybe Text)
gsqName = lens _gsqName (\ s a -> s{_gsqName = a})

instance FromJSON GameSessionQueue where
        parseJSON
          = withObject "GameSessionQueue"
              (\ x ->
                 GameSessionQueue' <$>
                   (x .:? "GameSessionQueueArn") <*>
                     (x .:? "PlayerLatencyPolicies" .!= mempty)
                     <*> (x .:? "TimeoutInSeconds")
                     <*> (x .:? "Destinations" .!= mempty)
                     <*> (x .:? "Name"))

instance Hashable GameSessionQueue where

instance NFData GameSessionQueue where
