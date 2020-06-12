{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.ServerProcess
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.ServerProcess where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's @'RuntimeConfiguration' @ .
--
--
--
-- /See:/ 'serverProcess' smart constructor.
data ServerProcess = ServerProcess'{_spParameters ::
                                    !(Maybe Text),
                                    _spLaunchPath :: !Text,
                                    _spConcurrentExecutions :: !Nat}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServerProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spParameters' - Optional list of parameters to pass to the server executable on launch.
--
-- * 'spLaunchPath' - Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances @C:\game@ , and for Linux instances @/local/game@ . A Windows game build with an executable file located at @MyGame\latest\server.exe@ must have a launch path of "@C:\game\MyGame\latest\server.exe@ ". A Linux game build with an executable file located at @MyGame/latest/server.exe@ must have a launch path of "@/local/game/MyGame/latest/server.exe@ ". 
--
-- * 'spConcurrentExecutions' - Number of server processes using this configuration to run concurrently on an instance.
serverProcess
    :: Text -- ^ 'spLaunchPath'
    -> Natural -- ^ 'spConcurrentExecutions'
    -> ServerProcess
serverProcess pLaunchPath_ pConcurrentExecutions_
  = ServerProcess'{_spParameters = Nothing,
                   _spLaunchPath = pLaunchPath_,
                   _spConcurrentExecutions =
                     _Nat # pConcurrentExecutions_}

-- | Optional list of parameters to pass to the server executable on launch.
spParameters :: Lens' ServerProcess (Maybe Text)
spParameters = lens _spParameters (\ s a -> s{_spParameters = a})

-- | Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances @C:\game@ , and for Linux instances @/local/game@ . A Windows game build with an executable file located at @MyGame\latest\server.exe@ must have a launch path of "@C:\game\MyGame\latest\server.exe@ ". A Linux game build with an executable file located at @MyGame/latest/server.exe@ must have a launch path of "@/local/game/MyGame/latest/server.exe@ ". 
spLaunchPath :: Lens' ServerProcess Text
spLaunchPath = lens _spLaunchPath (\ s a -> s{_spLaunchPath = a})

-- | Number of server processes using this configuration to run concurrently on an instance.
spConcurrentExecutions :: Lens' ServerProcess Natural
spConcurrentExecutions = lens _spConcurrentExecutions (\ s a -> s{_spConcurrentExecutions = a}) . _Nat

instance FromJSON ServerProcess where
        parseJSON
          = withObject "ServerProcess"
              (\ x ->
                 ServerProcess' <$>
                   (x .:? "Parameters") <*> (x .: "LaunchPath") <*>
                     (x .: "ConcurrentExecutions"))

instance Hashable ServerProcess where

instance NFData ServerProcess where

instance ToJSON ServerProcess where
        toJSON ServerProcess'{..}
          = object
              (catMaybes
                 [("Parameters" .=) <$> _spParameters,
                  Just ("LaunchPath" .= _spLaunchPath),
                  Just
                    ("ConcurrentExecutions" .= _spConcurrentExecutions)])
