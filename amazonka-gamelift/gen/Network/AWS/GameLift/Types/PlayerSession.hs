{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.PlayerSession
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.PlayerSession where

import Network.AWS.GameLift.Types.PlayerSessionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties describing a player session. Player session objects are created either by creating a player session for a specific game session, or as part of a game session placement. A player session represents either a player reservation for a game session (status @RESERVED@ ) or actual player activity in a game session (status @ACTIVE@ ). A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.
--
--
-- When a player disconnects, the player session status changes to @COMPLETED@ . Once the session ends, the player session object is retained for 30 days and then removed.
--
-- Player-session-related operations include:
--
--     * 'CreatePlayerSession' 
--
--     * 'CreatePlayerSessions' 
--
--     * 'DescribePlayerSessions' 
--
--     * Game session placements
--
--     * 'StartGameSessionPlacement' 
--
--     * 'DescribeGameSessionPlacement' 
--
--     * 'StopGameSessionPlacement' 
--
--
--
--
--
--
-- /See:/ 'playerSession' smart constructor.
data PlayerSession = PlayerSession'{_psCreationTime
                                    :: !(Maybe POSIX),
                                    _psStatus :: !(Maybe PlayerSessionStatus),
                                    _psIPAddress :: !(Maybe Text),
                                    _psGameSessionId :: !(Maybe Text),
                                    _psTerminationTime :: !(Maybe POSIX),
                                    _psPlayerSessionId :: !(Maybe Text),
                                    _psFleetId :: !(Maybe Text),
                                    _psPlayerData :: !(Maybe Text),
                                    _psPlayerId :: !(Maybe Text),
                                    _psPort :: !(Maybe Nat)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlayerSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psCreationTime' - Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'psStatus' - Current status of the player session. Possible player session statuses include the following:     * __RESERVED__ -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.      * __ACTIVE__ -- The player has been validated by the server process and is currently connected.     * __COMPLETED__ -- The player connection has been dropped.     * __TIMEDOUT__ -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).
--
-- * 'psIPAddress' - IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
--
-- * 'psGameSessionId' - Unique identifier for the game session that the player session is connected to.
--
-- * 'psTerminationTime' - Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'psPlayerSessionId' - Unique identifier for a player session.
--
-- * 'psFleetId' - Unique identifier for a fleet that the player's game session is running on.
--
-- * 'psPlayerData' - Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. 
--
-- * 'psPlayerId' - Unique identifier for a player that is associated with this player session.
--
-- * 'psPort' - Port number for the game session. To connect to a Amazon GameLift server process, an app needs both the IP address and port number.
playerSession
    :: PlayerSession
playerSession
  = PlayerSession'{_psCreationTime = Nothing,
                   _psStatus = Nothing, _psIPAddress = Nothing,
                   _psGameSessionId = Nothing,
                   _psTerminationTime = Nothing,
                   _psPlayerSessionId = Nothing, _psFleetId = Nothing,
                   _psPlayerData = Nothing, _psPlayerId = Nothing,
                   _psPort = Nothing}

-- | Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
psCreationTime :: Lens' PlayerSession (Maybe UTCTime)
psCreationTime = lens _psCreationTime (\ s a -> s{_psCreationTime = a}) . mapping _Time

-- | Current status of the player session. Possible player session statuses include the following:     * __RESERVED__ -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.      * __ACTIVE__ -- The player has been validated by the server process and is currently connected.     * __COMPLETED__ -- The player connection has been dropped.     * __TIMEDOUT__ -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).
psStatus :: Lens' PlayerSession (Maybe PlayerSessionStatus)
psStatus = lens _psStatus (\ s a -> s{_psStatus = a})

-- | IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
psIPAddress :: Lens' PlayerSession (Maybe Text)
psIPAddress = lens _psIPAddress (\ s a -> s{_psIPAddress = a})

-- | Unique identifier for the game session that the player session is connected to.
psGameSessionId :: Lens' PlayerSession (Maybe Text)
psGameSessionId = lens _psGameSessionId (\ s a -> s{_psGameSessionId = a})

-- | Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
psTerminationTime :: Lens' PlayerSession (Maybe UTCTime)
psTerminationTime = lens _psTerminationTime (\ s a -> s{_psTerminationTime = a}) . mapping _Time

-- | Unique identifier for a player session.
psPlayerSessionId :: Lens' PlayerSession (Maybe Text)
psPlayerSessionId = lens _psPlayerSessionId (\ s a -> s{_psPlayerSessionId = a})

-- | Unique identifier for a fleet that the player's game session is running on.
psFleetId :: Lens' PlayerSession (Maybe Text)
psFleetId = lens _psFleetId (\ s a -> s{_psFleetId = a})

-- | Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. 
psPlayerData :: Lens' PlayerSession (Maybe Text)
psPlayerData = lens _psPlayerData (\ s a -> s{_psPlayerData = a})

-- | Unique identifier for a player that is associated with this player session.
psPlayerId :: Lens' PlayerSession (Maybe Text)
psPlayerId = lens _psPlayerId (\ s a -> s{_psPlayerId = a})

-- | Port number for the game session. To connect to a Amazon GameLift server process, an app needs both the IP address and port number.
psPort :: Lens' PlayerSession (Maybe Natural)
psPort = lens _psPort (\ s a -> s{_psPort = a}) . mapping _Nat

instance FromJSON PlayerSession where
        parseJSON
          = withObject "PlayerSession"
              (\ x ->
                 PlayerSession' <$>
                   (x .:? "CreationTime") <*> (x .:? "Status") <*>
                     (x .:? "IpAddress")
                     <*> (x .:? "GameSessionId")
                     <*> (x .:? "TerminationTime")
                     <*> (x .:? "PlayerSessionId")
                     <*> (x .:? "FleetId")
                     <*> (x .:? "PlayerData")
                     <*> (x .:? "PlayerId")
                     <*> (x .:? "Port"))

instance Hashable PlayerSession where

instance NFData PlayerSession where
