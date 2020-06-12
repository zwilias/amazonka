{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameSessionQueueDestination
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.GameSessionQueueDestination where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. 
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
-- /See:/ 'gameSessionQueueDestination' smart constructor.
newtype GameSessionQueueDestination = GameSessionQueueDestination'{_gsqdDestinationARN
                                                                   ::
                                                                   Maybe Text}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'GameSessionQueueDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsqdDestinationARN' - Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs, which include a fleet ID or alias ID and a region name, provide a unique identifier across all regions. 
gameSessionQueueDestination
    :: GameSessionQueueDestination
gameSessionQueueDestination
  = GameSessionQueueDestination'{_gsqdDestinationARN =
                                   Nothing}

-- | Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs, which include a fleet ID or alias ID and a region name, provide a unique identifier across all regions. 
gsqdDestinationARN :: Lens' GameSessionQueueDestination (Maybe Text)
gsqdDestinationARN = lens _gsqdDestinationARN (\ s a -> s{_gsqdDestinationARN = a})

instance FromJSON GameSessionQueueDestination where
        parseJSON
          = withObject "GameSessionQueueDestination"
              (\ x ->
                 GameSessionQueueDestination' <$>
                   (x .:? "DestinationArn"))

instance Hashable GameSessionQueueDestination where

instance NFData GameSessionQueueDestination where

instance ToJSON GameSessionQueueDestination where
        toJSON GameSessionQueueDestination'{..}
          = object
              (catMaybes
                 [("DestinationArn" .=) <$> _gsqdDestinationARN])
