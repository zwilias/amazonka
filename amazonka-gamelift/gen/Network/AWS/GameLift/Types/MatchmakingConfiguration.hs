{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.MatchmakingConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.MatchmakingConfiguration where

import Network.AWS.GameLift.Types.GameProperty
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Guidelines for use with FlexMatch to match players into games. All matchmaking requests must specify a matchmaking configuration.
--
--
--
-- /See:/ 'matchmakingConfiguration' smart constructor.
data MatchmakingConfiguration = MatchmakingConfiguration'{_mcCreationTime
                                                          :: !(Maybe POSIX),
                                                          _mcGameProperties ::
                                                          !(Maybe
                                                              [GameProperty]),
                                                          _mcRuleSetName ::
                                                          !(Maybe Text),
                                                          _mcAcceptanceTimeoutSeconds
                                                          :: !(Maybe Nat),
                                                          _mcRequestTimeoutSeconds
                                                          :: !(Maybe Nat),
                                                          _mcNotificationTarget
                                                          :: !(Maybe Text),
                                                          _mcGameSessionQueueARNs
                                                          :: !(Maybe [Text]),
                                                          _mcName ::
                                                          !(Maybe Text),
                                                          _mcCustomEventData ::
                                                          !(Maybe Text),
                                                          _mcAcceptanceRequired
                                                          :: !(Maybe Bool),
                                                          _mcGameSessionData ::
                                                          !(Maybe Text),
                                                          _mcDescription ::
                                                          !(Maybe Text),
                                                          _mcAdditionalPlayerCount
                                                          :: !(Maybe Nat)}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'MatchmakingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcCreationTime' - Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'mcGameProperties' - Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 'GameSession' object with a request to start a new game session (see <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ). This information is added to the new 'GameSession' object that is created for a successful match. 
--
-- * 'mcRuleSetName' - Unique identifier for a matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule sets that are defined in the same region.
--
-- * 'mcAcceptanceTimeoutSeconds' - Length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.
--
-- * 'mcRequestTimeoutSeconds' - Maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that time out can be resubmitted as needed.
--
-- * 'mcNotificationTarget' - SNS topic ARN that is set up to receive matchmaking notifications.
--
-- * 'mcGameSessionQueueARNs' - Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session queue and uniquely identifies it. Format is @arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@ . These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any region.
--
-- * 'mcName' - Unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.
--
-- * 'mcCustomEventData' - Information to attached to all events related to the matchmaking configuration. 
--
-- * 'mcAcceptanceRequired' - Flag that determines whether or not a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.
--
-- * 'mcGameSessionData' - Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 'GameSession' object with a request to start a new game session (see <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ). This information is added to the new 'GameSession' object that is created for a successful match. 
--
-- * 'mcDescription' - Descriptive label that is associated with matchmaking configuration.
--
-- * 'mcAdditionalPlayerCount' - Number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match.
matchmakingConfiguration
    :: MatchmakingConfiguration
matchmakingConfiguration
  = MatchmakingConfiguration'{_mcCreationTime =
                                Nothing,
                              _mcGameProperties = Nothing,
                              _mcRuleSetName = Nothing,
                              _mcAcceptanceTimeoutSeconds = Nothing,
                              _mcRequestTimeoutSeconds = Nothing,
                              _mcNotificationTarget = Nothing,
                              _mcGameSessionQueueARNs = Nothing,
                              _mcName = Nothing, _mcCustomEventData = Nothing,
                              _mcAcceptanceRequired = Nothing,
                              _mcGameSessionData = Nothing,
                              _mcDescription = Nothing,
                              _mcAdditionalPlayerCount = Nothing}

-- | Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
mcCreationTime :: Lens' MatchmakingConfiguration (Maybe UTCTime)
mcCreationTime = lens _mcCreationTime (\ s a -> s{_mcCreationTime = a}) . mapping _Time

-- | Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the 'GameSession' object with a request to start a new game session (see <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ). This information is added to the new 'GameSession' object that is created for a successful match. 
mcGameProperties :: Lens' MatchmakingConfiguration [GameProperty]
mcGameProperties = lens _mcGameProperties (\ s a -> s{_mcGameProperties = a}) . _Default . _Coerce

-- | Unique identifier for a matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule sets that are defined in the same region.
mcRuleSetName :: Lens' MatchmakingConfiguration (Maybe Text)
mcRuleSetName = lens _mcRuleSetName (\ s a -> s{_mcRuleSetName = a})

-- | Length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.
mcAcceptanceTimeoutSeconds :: Lens' MatchmakingConfiguration (Maybe Natural)
mcAcceptanceTimeoutSeconds = lens _mcAcceptanceTimeoutSeconds (\ s a -> s{_mcAcceptanceTimeoutSeconds = a}) . mapping _Nat

-- | Maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that time out can be resubmitted as needed.
mcRequestTimeoutSeconds :: Lens' MatchmakingConfiguration (Maybe Natural)
mcRequestTimeoutSeconds = lens _mcRequestTimeoutSeconds (\ s a -> s{_mcRequestTimeoutSeconds = a}) . mapping _Nat

-- | SNS topic ARN that is set up to receive matchmaking notifications.
mcNotificationTarget :: Lens' MatchmakingConfiguration (Maybe Text)
mcNotificationTarget = lens _mcNotificationTarget (\ s a -> s{_mcNotificationTarget = a})

-- | Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session queue and uniquely identifies it. Format is @arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@ . These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any region.
mcGameSessionQueueARNs :: Lens' MatchmakingConfiguration [Text]
mcGameSessionQueueARNs = lens _mcGameSessionQueueARNs (\ s a -> s{_mcGameSessionQueueARNs = a}) . _Default . _Coerce

-- | Unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.
mcName :: Lens' MatchmakingConfiguration (Maybe Text)
mcName = lens _mcName (\ s a -> s{_mcName = a})

-- | Information to attached to all events related to the matchmaking configuration. 
mcCustomEventData :: Lens' MatchmakingConfiguration (Maybe Text)
mcCustomEventData = lens _mcCustomEventData (\ s a -> s{_mcCustomEventData = a})

-- | Flag that determines whether or not a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.
mcAcceptanceRequired :: Lens' MatchmakingConfiguration (Maybe Bool)
mcAcceptanceRequired = lens _mcAcceptanceRequired (\ s a -> s{_mcAcceptanceRequired = a})

-- | Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the 'GameSession' object with a request to start a new game session (see <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession Start a Game Session> ). This information is added to the new 'GameSession' object that is created for a successful match. 
mcGameSessionData :: Lens' MatchmakingConfiguration (Maybe Text)
mcGameSessionData = lens _mcGameSessionData (\ s a -> s{_mcGameSessionData = a})

-- | Descriptive label that is associated with matchmaking configuration.
mcDescription :: Lens' MatchmakingConfiguration (Maybe Text)
mcDescription = lens _mcDescription (\ s a -> s{_mcDescription = a})

-- | Number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match.
mcAdditionalPlayerCount :: Lens' MatchmakingConfiguration (Maybe Natural)
mcAdditionalPlayerCount = lens _mcAdditionalPlayerCount (\ s a -> s{_mcAdditionalPlayerCount = a}) . mapping _Nat

instance FromJSON MatchmakingConfiguration where
        parseJSON
          = withObject "MatchmakingConfiguration"
              (\ x ->
                 MatchmakingConfiguration' <$>
                   (x .:? "CreationTime") <*>
                     (x .:? "GameProperties" .!= mempty)
                     <*> (x .:? "RuleSetName")
                     <*> (x .:? "AcceptanceTimeoutSeconds")
                     <*> (x .:? "RequestTimeoutSeconds")
                     <*> (x .:? "NotificationTarget")
                     <*> (x .:? "GameSessionQueueArns" .!= mempty)
                     <*> (x .:? "Name")
                     <*> (x .:? "CustomEventData")
                     <*> (x .:? "AcceptanceRequired")
                     <*> (x .:? "GameSessionData")
                     <*> (x .:? "Description")
                     <*> (x .:? "AdditionalPlayerCount"))

instance Hashable MatchmakingConfiguration where

instance NFData MatchmakingConfiguration where
