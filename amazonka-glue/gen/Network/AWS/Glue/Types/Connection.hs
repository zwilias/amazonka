{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Connection
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Connection where

import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a connection to a data source.
--
--
--
-- /See:/ 'connection' smart constructor.
data Connection = Connection'{_conCreationTime ::
                              !(Maybe POSIX),
                              _conLastUpdatedBy :: !(Maybe Text),
                              _conConnectionProperties ::
                              !(Maybe (Map ConnectionPropertyKey Text)),
                              _conLastUpdatedTime :: !(Maybe POSIX),
                              _conMatchCriteria :: !(Maybe [Text]),
                              _conPhysicalConnectionRequirements ::
                              !(Maybe PhysicalConnectionRequirements),
                              _conName :: !(Maybe Text),
                              _conDescription :: !(Maybe Text),
                              _conConnectionType :: !(Maybe ConnectionType)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conCreationTime' - The time this connection definition was created.
--
-- * 'conLastUpdatedBy' - The user, group or role that last updated this connection definition.
--
-- * 'conConnectionProperties' - A list of key-value pairs used as parameters for this connection.
--
-- * 'conLastUpdatedTime' - The last time this connection definition was updated.
--
-- * 'conMatchCriteria' - A list of criteria that can be used in selecting this connection.
--
-- * 'conPhysicalConnectionRequirements' - A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.
--
-- * 'conName' - The name of the connection definition.
--
-- * 'conDescription' - Description of the connection.
--
-- * 'conConnectionType' - The type of the connection. Currently, only JDBC is supported; SFTP is not supported.
connection
    :: Connection
connection
  = Connection'{_conCreationTime = Nothing,
                _conLastUpdatedBy = Nothing,
                _conConnectionProperties = Nothing,
                _conLastUpdatedTime = Nothing,
                _conMatchCriteria = Nothing,
                _conPhysicalConnectionRequirements = Nothing,
                _conName = Nothing, _conDescription = Nothing,
                _conConnectionType = Nothing}

-- | The time this connection definition was created.
conCreationTime :: Lens' Connection (Maybe UTCTime)
conCreationTime = lens _conCreationTime (\ s a -> s{_conCreationTime = a}) . mapping _Time

-- | The user, group or role that last updated this connection definition.
conLastUpdatedBy :: Lens' Connection (Maybe Text)
conLastUpdatedBy = lens _conLastUpdatedBy (\ s a -> s{_conLastUpdatedBy = a})

-- | A list of key-value pairs used as parameters for this connection.
conConnectionProperties :: Lens' Connection (HashMap ConnectionPropertyKey Text)
conConnectionProperties = lens _conConnectionProperties (\ s a -> s{_conConnectionProperties = a}) . _Default . _Map

-- | The last time this connection definition was updated.
conLastUpdatedTime :: Lens' Connection (Maybe UTCTime)
conLastUpdatedTime = lens _conLastUpdatedTime (\ s a -> s{_conLastUpdatedTime = a}) . mapping _Time

-- | A list of criteria that can be used in selecting this connection.
conMatchCriteria :: Lens' Connection [Text]
conMatchCriteria = lens _conMatchCriteria (\ s a -> s{_conMatchCriteria = a}) . _Default . _Coerce

-- | A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.
conPhysicalConnectionRequirements :: Lens' Connection (Maybe PhysicalConnectionRequirements)
conPhysicalConnectionRequirements = lens _conPhysicalConnectionRequirements (\ s a -> s{_conPhysicalConnectionRequirements = a})

-- | The name of the connection definition.
conName :: Lens' Connection (Maybe Text)
conName = lens _conName (\ s a -> s{_conName = a})

-- | Description of the connection.
conDescription :: Lens' Connection (Maybe Text)
conDescription = lens _conDescription (\ s a -> s{_conDescription = a})

-- | The type of the connection. Currently, only JDBC is supported; SFTP is not supported.
conConnectionType :: Lens' Connection (Maybe ConnectionType)
conConnectionType = lens _conConnectionType (\ s a -> s{_conConnectionType = a})

instance FromJSON Connection where
        parseJSON
          = withObject "Connection"
              (\ x ->
                 Connection' <$>
                   (x .:? "CreationTime") <*> (x .:? "LastUpdatedBy")
                     <*> (x .:? "ConnectionProperties" .!= mempty)
                     <*> (x .:? "LastUpdatedTime")
                     <*> (x .:? "MatchCriteria" .!= mempty)
                     <*> (x .:? "PhysicalConnectionRequirements")
                     <*> (x .:? "Name")
                     <*> (x .:? "Description")
                     <*> (x .:? "ConnectionType"))

instance Hashable Connection where

instance NFData Connection where
