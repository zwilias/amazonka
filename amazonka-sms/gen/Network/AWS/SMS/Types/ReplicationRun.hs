{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationRun
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ReplicationRun where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ReplicationRunState
import Network.AWS.SMS.Types.ReplicationRunType

-- | Object representing a Replication Run
--
-- /See:/ 'replicationRun' smart constructor.
data ReplicationRun = ReplicationRun'{_rrState ::
                                      !(Maybe ReplicationRunState),
                                      _rrReplicationRunId :: !(Maybe Text),
                                      _rrScheduledStartTime :: !(Maybe POSIX),
                                      _rrStatusMessage :: !(Maybe Text),
                                      _rrCompletedTime :: !(Maybe POSIX),
                                      _rrAmiId :: !(Maybe Text),
                                      _rrType :: !(Maybe ReplicationRunType),
                                      _rrDescription :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrState' - Undocumented member.
--
-- * 'rrReplicationRunId' - Undocumented member.
--
-- * 'rrScheduledStartTime' - Undocumented member.
--
-- * 'rrStatusMessage' - Undocumented member.
--
-- * 'rrCompletedTime' - Undocumented member.
--
-- * 'rrAmiId' - Undocumented member.
--
-- * 'rrType' - Undocumented member.
--
-- * 'rrDescription' - Undocumented member.
replicationRun
    :: ReplicationRun
replicationRun
  = ReplicationRun'{_rrState = Nothing,
                    _rrReplicationRunId = Nothing,
                    _rrScheduledStartTime = Nothing,
                    _rrStatusMessage = Nothing,
                    _rrCompletedTime = Nothing, _rrAmiId = Nothing,
                    _rrType = Nothing, _rrDescription = Nothing}

-- | Undocumented member.
rrState :: Lens' ReplicationRun (Maybe ReplicationRunState)
rrState = lens _rrState (\ s a -> s{_rrState = a})

-- | Undocumented member.
rrReplicationRunId :: Lens' ReplicationRun (Maybe Text)
rrReplicationRunId = lens _rrReplicationRunId (\ s a -> s{_rrReplicationRunId = a})

-- | Undocumented member.
rrScheduledStartTime :: Lens' ReplicationRun (Maybe UTCTime)
rrScheduledStartTime = lens _rrScheduledStartTime (\ s a -> s{_rrScheduledStartTime = a}) . mapping _Time

-- | Undocumented member.
rrStatusMessage :: Lens' ReplicationRun (Maybe Text)
rrStatusMessage = lens _rrStatusMessage (\ s a -> s{_rrStatusMessage = a})

-- | Undocumented member.
rrCompletedTime :: Lens' ReplicationRun (Maybe UTCTime)
rrCompletedTime = lens _rrCompletedTime (\ s a -> s{_rrCompletedTime = a}) . mapping _Time

-- | Undocumented member.
rrAmiId :: Lens' ReplicationRun (Maybe Text)
rrAmiId = lens _rrAmiId (\ s a -> s{_rrAmiId = a})

-- | Undocumented member.
rrType :: Lens' ReplicationRun (Maybe ReplicationRunType)
rrType = lens _rrType (\ s a -> s{_rrType = a})

-- | Undocumented member.
rrDescription :: Lens' ReplicationRun (Maybe Text)
rrDescription = lens _rrDescription (\ s a -> s{_rrDescription = a})

instance FromJSON ReplicationRun where
        parseJSON
          = withObject "ReplicationRun"
              (\ x ->
                 ReplicationRun' <$>
                   (x .:? "state") <*> (x .:? "replicationRunId") <*>
                     (x .:? "scheduledStartTime")
                     <*> (x .:? "statusMessage")
                     <*> (x .:? "completedTime")
                     <*> (x .:? "amiId")
                     <*> (x .:? "type")
                     <*> (x .:? "description"))

instance Hashable ReplicationRun where

instance NFData ReplicationRun where
