{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicationRule
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ReplicationRule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Destination
import Network.AWS.S3.Types.ReplicationRuleStatus
import Network.AWS.S3.Types.SourceSelectionCriteria

-- | Container for information about a particular replication rule.
--
-- /See:/ 'replicationRule' smart constructor.
data ReplicationRule = ReplicationRule'{_rrId ::
                                        !(Maybe Text),
                                        _rrSourceSelectionCriteria ::
                                        !(Maybe SourceSelectionCriteria),
                                        _rrPrefix :: !Text,
                                        _rrStatus :: !ReplicationRuleStatus,
                                        _rrDestination :: !Destination}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrId' - Unique identifier for the rule. The value cannot be longer than 255 characters.
--
-- * 'rrSourceSelectionCriteria' - Container for filters that define which source objects should be replicated.
--
-- * 'rrPrefix' - Object keyname prefix identifying one or more objects to which the rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes are not supported.
--
-- * 'rrStatus' - The rule is ignored if status is not Enabled.
--
-- * 'rrDestination' - Container for replication destination information.
replicationRule
    :: Text -- ^ 'rrPrefix'
    -> ReplicationRuleStatus -- ^ 'rrStatus'
    -> Destination -- ^ 'rrDestination'
    -> ReplicationRule
replicationRule pPrefix_ pStatus_ pDestination_
  = ReplicationRule'{_rrId = Nothing,
                     _rrSourceSelectionCriteria = Nothing,
                     _rrPrefix = pPrefix_, _rrStatus = pStatus_,
                     _rrDestination = pDestination_}

-- | Unique identifier for the rule. The value cannot be longer than 255 characters.
rrId :: Lens' ReplicationRule (Maybe Text)
rrId = lens _rrId (\ s a -> s{_rrId = a})

-- | Container for filters that define which source objects should be replicated.
rrSourceSelectionCriteria :: Lens' ReplicationRule (Maybe SourceSelectionCriteria)
rrSourceSelectionCriteria = lens _rrSourceSelectionCriteria (\ s a -> s{_rrSourceSelectionCriteria = a})

-- | Object keyname prefix identifying one or more objects to which the rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes are not supported.
rrPrefix :: Lens' ReplicationRule Text
rrPrefix = lens _rrPrefix (\ s a -> s{_rrPrefix = a})

-- | The rule is ignored if status is not Enabled.
rrStatus :: Lens' ReplicationRule ReplicationRuleStatus
rrStatus = lens _rrStatus (\ s a -> s{_rrStatus = a})

-- | Container for replication destination information.
rrDestination :: Lens' ReplicationRule Destination
rrDestination = lens _rrDestination (\ s a -> s{_rrDestination = a})

instance FromXML ReplicationRule where
        parseXML x
          = ReplicationRule' <$>
              (x .@? "ID") <*> (x .@? "SourceSelectionCriteria")
                <*> (x .@ "Prefix")
                <*> (x .@ "Status")
                <*> (x .@ "Destination")

instance Hashable ReplicationRule where

instance NFData ReplicationRule where

instance ToXML ReplicationRule where
        toXML ReplicationRule'{..}
          = mconcat
              ["ID" @= _rrId,
               "SourceSelectionCriteria" @=
                 _rrSourceSelectionCriteria,
               "Prefix" @= _rrPrefix, "Status" @= _rrStatus,
               "Destination" @= _rrDestination]
