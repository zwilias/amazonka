{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameSessionConnectionInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.GameSessionConnectionInfo where

import Network.AWS.GameLift.Types.MatchedPlayerSession
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Connection information for the new game session that is created with matchmaking. (with 'StartMatchmaking' ). Once a match is set, the FlexMatch engine places the match and creates a new game session for it. This information, including the game session endpoint and player sessions for each player in the original matchmaking request, is added to the 'MatchmakingTicket' , which can be retrieved by calling 'DescribeMatchmaking' .
--
--
--
-- /See:/ 'gameSessionConnectionInfo' smart constructor.
data GameSessionConnectionInfo = GameSessionConnectionInfo'{_gsciMatchedPlayerSessions
                                                            ::
                                                            !(Maybe
                                                                [MatchedPlayerSession]),
                                                            _gsciIPAddress ::
                                                            !(Maybe Text),
                                                            _gsciGameSessionARN
                                                            :: !(Maybe Text),
                                                            _gsciPort ::
                                                            !(Maybe Nat)}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'GameSessionConnectionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsciMatchedPlayerSessions' - Collection of player session IDs, one for each player ID that was included in the original matchmaking request. 
--
-- * 'gsciIPAddress' - IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
--
-- * 'gsciGameSessionARN' - Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session and uniquely identifies it.
--
-- * 'gsciPort' - Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
gameSessionConnectionInfo
    :: GameSessionConnectionInfo
gameSessionConnectionInfo
  = GameSessionConnectionInfo'{_gsciMatchedPlayerSessions
                                 = Nothing,
                               _gsciIPAddress = Nothing,
                               _gsciGameSessionARN = Nothing,
                               _gsciPort = Nothing}

-- | Collection of player session IDs, one for each player ID that was included in the original matchmaking request. 
gsciMatchedPlayerSessions :: Lens' GameSessionConnectionInfo [MatchedPlayerSession]
gsciMatchedPlayerSessions = lens _gsciMatchedPlayerSessions (\ s a -> s{_gsciMatchedPlayerSessions = a}) . _Default . _Coerce

-- | IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
gsciIPAddress :: Lens' GameSessionConnectionInfo (Maybe Text)
gsciIPAddress = lens _gsciIPAddress (\ s a -> s{_gsciIPAddress = a})

-- | Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) that is assigned to a game session and uniquely identifies it.
gsciGameSessionARN :: Lens' GameSessionConnectionInfo (Maybe Text)
gsciGameSessionARN = lens _gsciGameSessionARN (\ s a -> s{_gsciGameSessionARN = a})

-- | Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.
gsciPort :: Lens' GameSessionConnectionInfo (Maybe Natural)
gsciPort = lens _gsciPort (\ s a -> s{_gsciPort = a}) . mapping _Nat

instance FromJSON GameSessionConnectionInfo where
        parseJSON
          = withObject "GameSessionConnectionInfo"
              (\ x ->
                 GameSessionConnectionInfo' <$>
                   (x .:? "MatchedPlayerSessions" .!= mempty) <*>
                     (x .:? "IpAddress")
                     <*> (x .:? "GameSessionArn")
                     <*> (x .:? "Port"))

instance Hashable GameSessionConnectionInfo where

instance NFData GameSessionConnectionInfo where
