{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameProperty
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.GameProperty where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Set of key-value pairs that contain information about a game session. When included in a game session request, these properties communicate details to be used when setting up the new game session, such as to specify a game mode, level, or map. Game properties are passed to the game server process when initiating a new game session; the server process uses the properties as appropriate. For more information, see the <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create Amazon GameLift Developer Guide> .
--
--
--
-- /See:/ 'gameProperty' smart constructor.
data GameProperty = GameProperty'{_gpKey :: !Text,
                                  _gpValue :: !Text}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GameProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpKey' - Game property identifier.
--
-- * 'gpValue' - Game property value.
gameProperty
    :: Text -- ^ 'gpKey'
    -> Text -- ^ 'gpValue'
    -> GameProperty
gameProperty pKey_ pValue_
  = GameProperty'{_gpKey = pKey_, _gpValue = pValue_}

-- | Game property identifier.
gpKey :: Lens' GameProperty Text
gpKey = lens _gpKey (\ s a -> s{_gpKey = a})

-- | Game property value.
gpValue :: Lens' GameProperty Text
gpValue = lens _gpValue (\ s a -> s{_gpValue = a})

instance FromJSON GameProperty where
        parseJSON
          = withObject "GameProperty"
              (\ x ->
                 GameProperty' <$> (x .: "Key") <*> (x .: "Value"))

instance Hashable GameProperty where

instance NFData GameProperty where

instance ToJSON GameProperty where
        toJSON GameProperty'{..}
          = object
              (catMaybes
                 [Just ("Key" .= _gpKey), Just ("Value" .= _gpValue)])
