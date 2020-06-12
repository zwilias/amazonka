{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.Server
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.Server where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ServerType
import Network.AWS.SMS.Types.VMServer

-- | Object representing a server
--
-- /See:/ 'server' smart constructor.
data Server = Server'{_sServerType ::
                      !(Maybe ServerType),
                      _sServerId :: !(Maybe Text),
                      _sReplicationJobTerminated :: !(Maybe Bool),
                      _sVmServer :: !(Maybe VMServer),
                      _sReplicationJobId :: !(Maybe Text)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Server' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sServerType' - Undocumented member.
--
-- * 'sServerId' - Undocumented member.
--
-- * 'sReplicationJobTerminated' - Undocumented member.
--
-- * 'sVmServer' - Undocumented member.
--
-- * 'sReplicationJobId' - Undocumented member.
server
    :: Server
server
  = Server'{_sServerType = Nothing,
            _sServerId = Nothing,
            _sReplicationJobTerminated = Nothing,
            _sVmServer = Nothing, _sReplicationJobId = Nothing}

-- | Undocumented member.
sServerType :: Lens' Server (Maybe ServerType)
sServerType = lens _sServerType (\ s a -> s{_sServerType = a})

-- | Undocumented member.
sServerId :: Lens' Server (Maybe Text)
sServerId = lens _sServerId (\ s a -> s{_sServerId = a})

-- | Undocumented member.
sReplicationJobTerminated :: Lens' Server (Maybe Bool)
sReplicationJobTerminated = lens _sReplicationJobTerminated (\ s a -> s{_sReplicationJobTerminated = a})

-- | Undocumented member.
sVmServer :: Lens' Server (Maybe VMServer)
sVmServer = lens _sVmServer (\ s a -> s{_sVmServer = a})

-- | Undocumented member.
sReplicationJobId :: Lens' Server (Maybe Text)
sReplicationJobId = lens _sReplicationJobId (\ s a -> s{_sReplicationJobId = a})

instance FromJSON Server where
        parseJSON
          = withObject "Server"
              (\ x ->
                 Server' <$>
                   (x .:? "serverType") <*> (x .:? "serverId") <*>
                     (x .:? "replicationJobTerminated")
                     <*> (x .:? "vmServer")
                     <*> (x .:? "replicationJobId"))

instance Hashable Server where

instance NFData Server where
