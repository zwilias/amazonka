{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicationConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.ReplicationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ReplicationRule

-- | Container for replication rules. You can add as many as 1,000 rules. Total replication configuration size can be up to 2 MB.
--
-- /See:/ 'replicationConfiguration' smart constructor.
data ReplicationConfiguration = ReplicationConfiguration'{_rcRole
                                                          :: !Text,
                                                          _rcRules ::
                                                          ![ReplicationRule]}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'ReplicationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRole' - Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when replicating the objects.
--
-- * 'rcRules' - Container for information about a particular replication rule. Replication configuration must have at least one rule and can contain up to 1,000 rules.
replicationConfiguration
    :: Text -- ^ 'rcRole'
    -> ReplicationConfiguration
replicationConfiguration pRole_
  = ReplicationConfiguration'{_rcRole = pRole_,
                              _rcRules = mempty}

-- | Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when replicating the objects.
rcRole :: Lens' ReplicationConfiguration Text
rcRole = lens _rcRole (\ s a -> s{_rcRole = a})

-- | Container for information about a particular replication rule. Replication configuration must have at least one rule and can contain up to 1,000 rules.
rcRules :: Lens' ReplicationConfiguration [ReplicationRule]
rcRules = lens _rcRules (\ s a -> s{_rcRules = a}) . _Coerce

instance FromXML ReplicationConfiguration where
        parseXML x
          = ReplicationConfiguration' <$>
              (x .@ "Role") <*> (parseXMLList "Rule" x)

instance Hashable ReplicationConfiguration where

instance NFData ReplicationConfiguration where

instance ToXML ReplicationConfiguration where
        toXML ReplicationConfiguration'{..}
          = mconcat
              ["Role" @= _rcRole, toXMLList "Rule" _rcRules]
