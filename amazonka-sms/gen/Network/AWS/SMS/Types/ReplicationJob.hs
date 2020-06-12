{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationJob
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ReplicationJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.LicenseType
import Network.AWS.SMS.Types.ReplicationJobState
import Network.AWS.SMS.Types.ReplicationRun
import Network.AWS.SMS.Types.ServerType
import Network.AWS.SMS.Types.VMServer

-- | Object representing a Replication Job
--
-- /See:/ 'replicationJob' smart constructor.
data ReplicationJob = ReplicationJob'{_rjFrequency ::
                                      !(Maybe Int),
                                      _rjState :: !(Maybe ReplicationJobState),
                                      _rjServerType :: !(Maybe ServerType),
                                      _rjServerId :: !(Maybe Text),
                                      _rjLicenseType :: !(Maybe LicenseType),
                                      _rjRoleName :: !(Maybe Text),
                                      _rjVmServer :: !(Maybe VMServer),
                                      _rjReplicationJobId :: !(Maybe Text),
                                      _rjReplicationRunList ::
                                      !(Maybe [ReplicationRun]),
                                      _rjNextReplicationRunStartTime ::
                                      !(Maybe POSIX),
                                      _rjStatusMessage :: !(Maybe Text),
                                      _rjLatestAMIId :: !(Maybe Text),
                                      _rjSeedReplicationTime :: !(Maybe POSIX),
                                      _rjDescription :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjFrequency' - Undocumented member.
--
-- * 'rjState' - Undocumented member.
--
-- * 'rjServerType' - Undocumented member.
--
-- * 'rjServerId' - Undocumented member.
--
-- * 'rjLicenseType' - Undocumented member.
--
-- * 'rjRoleName' - Undocumented member.
--
-- * 'rjVmServer' - Undocumented member.
--
-- * 'rjReplicationJobId' - Undocumented member.
--
-- * 'rjReplicationRunList' - Undocumented member.
--
-- * 'rjNextReplicationRunStartTime' - Undocumented member.
--
-- * 'rjStatusMessage' - Undocumented member.
--
-- * 'rjLatestAMIId' - Undocumented member.
--
-- * 'rjSeedReplicationTime' - Undocumented member.
--
-- * 'rjDescription' - Undocumented member.
replicationJob
    :: ReplicationJob
replicationJob
  = ReplicationJob'{_rjFrequency = Nothing,
                    _rjState = Nothing, _rjServerType = Nothing,
                    _rjServerId = Nothing, _rjLicenseType = Nothing,
                    _rjRoleName = Nothing, _rjVmServer = Nothing,
                    _rjReplicationJobId = Nothing,
                    _rjReplicationRunList = Nothing,
                    _rjNextReplicationRunStartTime = Nothing,
                    _rjStatusMessage = Nothing, _rjLatestAMIId = Nothing,
                    _rjSeedReplicationTime = Nothing,
                    _rjDescription = Nothing}

-- | Undocumented member.
rjFrequency :: Lens' ReplicationJob (Maybe Int)
rjFrequency = lens _rjFrequency (\ s a -> s{_rjFrequency = a})

-- | Undocumented member.
rjState :: Lens' ReplicationJob (Maybe ReplicationJobState)
rjState = lens _rjState (\ s a -> s{_rjState = a})

-- | Undocumented member.
rjServerType :: Lens' ReplicationJob (Maybe ServerType)
rjServerType = lens _rjServerType (\ s a -> s{_rjServerType = a})

-- | Undocumented member.
rjServerId :: Lens' ReplicationJob (Maybe Text)
rjServerId = lens _rjServerId (\ s a -> s{_rjServerId = a})

-- | Undocumented member.
rjLicenseType :: Lens' ReplicationJob (Maybe LicenseType)
rjLicenseType = lens _rjLicenseType (\ s a -> s{_rjLicenseType = a})

-- | Undocumented member.
rjRoleName :: Lens' ReplicationJob (Maybe Text)
rjRoleName = lens _rjRoleName (\ s a -> s{_rjRoleName = a})

-- | Undocumented member.
rjVmServer :: Lens' ReplicationJob (Maybe VMServer)
rjVmServer = lens _rjVmServer (\ s a -> s{_rjVmServer = a})

-- | Undocumented member.
rjReplicationJobId :: Lens' ReplicationJob (Maybe Text)
rjReplicationJobId = lens _rjReplicationJobId (\ s a -> s{_rjReplicationJobId = a})

-- | Undocumented member.
rjReplicationRunList :: Lens' ReplicationJob [ReplicationRun]
rjReplicationRunList = lens _rjReplicationRunList (\ s a -> s{_rjReplicationRunList = a}) . _Default . _Coerce

-- | Undocumented member.
rjNextReplicationRunStartTime :: Lens' ReplicationJob (Maybe UTCTime)
rjNextReplicationRunStartTime = lens _rjNextReplicationRunStartTime (\ s a -> s{_rjNextReplicationRunStartTime = a}) . mapping _Time

-- | Undocumented member.
rjStatusMessage :: Lens' ReplicationJob (Maybe Text)
rjStatusMessage = lens _rjStatusMessage (\ s a -> s{_rjStatusMessage = a})

-- | Undocumented member.
rjLatestAMIId :: Lens' ReplicationJob (Maybe Text)
rjLatestAMIId = lens _rjLatestAMIId (\ s a -> s{_rjLatestAMIId = a})

-- | Undocumented member.
rjSeedReplicationTime :: Lens' ReplicationJob (Maybe UTCTime)
rjSeedReplicationTime = lens _rjSeedReplicationTime (\ s a -> s{_rjSeedReplicationTime = a}) . mapping _Time

-- | Undocumented member.
rjDescription :: Lens' ReplicationJob (Maybe Text)
rjDescription = lens _rjDescription (\ s a -> s{_rjDescription = a})

instance FromJSON ReplicationJob where
        parseJSON
          = withObject "ReplicationJob"
              (\ x ->
                 ReplicationJob' <$>
                   (x .:? "frequency") <*> (x .:? "state") <*>
                     (x .:? "serverType")
                     <*> (x .:? "serverId")
                     <*> (x .:? "licenseType")
                     <*> (x .:? "roleName")
                     <*> (x .:? "vmServer")
                     <*> (x .:? "replicationJobId")
                     <*> (x .:? "replicationRunList" .!= mempty)
                     <*> (x .:? "nextReplicationRunStartTime")
                     <*> (x .:? "statusMessage")
                     <*> (x .:? "latestAmiId")
                     <*> (x .:? "seedReplicationTime")
                     <*> (x .:? "description"))

instance Hashable ReplicationJob where

instance NFData ReplicationJob where
