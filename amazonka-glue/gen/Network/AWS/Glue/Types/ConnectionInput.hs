{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionInput
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.ConnectionInput where

import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure used to specify a connection to create or update.
--
--
--
-- /See:/ 'connectionInput' smart constructor.
data ConnectionInput = ConnectionInput'{_ciMatchCriteria
                                        :: !(Maybe [Text]),
                                        _ciPhysicalConnectionRequirements ::
                                        !(Maybe PhysicalConnectionRequirements),
                                        _ciDescription :: !(Maybe Text),
                                        _ciName :: !Text,
                                        _ciConnectionType :: !ConnectionType,
                                        _ciConnectionProperties ::
                                        !(Map ConnectionPropertyKey Text)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConnectionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciMatchCriteria' - A list of criteria that can be used in selecting this connection.
--
-- * 'ciPhysicalConnectionRequirements' - A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.
--
-- * 'ciDescription' - Description of the connection.
--
-- * 'ciName' - The name of the connection.
--
-- * 'ciConnectionType' - The type of the connection. Currently, only JDBC is supported; SFTP is not supported.
--
-- * 'ciConnectionProperties' - A list of key-value pairs used as parameters for this connection.
connectionInput
    :: Text -- ^ 'ciName'
    -> ConnectionType -- ^ 'ciConnectionType'
    -> ConnectionInput
connectionInput pName_ pConnectionType_
  = ConnectionInput'{_ciMatchCriteria = Nothing,
                     _ciPhysicalConnectionRequirements = Nothing,
                     _ciDescription = Nothing, _ciName = pName_,
                     _ciConnectionType = pConnectionType_,
                     _ciConnectionProperties = mempty}

-- | A list of criteria that can be used in selecting this connection.
ciMatchCriteria :: Lens' ConnectionInput [Text]
ciMatchCriteria = lens _ciMatchCriteria (\ s a -> s{_ciMatchCriteria = a}) . _Default . _Coerce

-- | A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.
ciPhysicalConnectionRequirements :: Lens' ConnectionInput (Maybe PhysicalConnectionRequirements)
ciPhysicalConnectionRequirements = lens _ciPhysicalConnectionRequirements (\ s a -> s{_ciPhysicalConnectionRequirements = a})

-- | Description of the connection.
ciDescription :: Lens' ConnectionInput (Maybe Text)
ciDescription = lens _ciDescription (\ s a -> s{_ciDescription = a})

-- | The name of the connection.
ciName :: Lens' ConnectionInput Text
ciName = lens _ciName (\ s a -> s{_ciName = a})

-- | The type of the connection. Currently, only JDBC is supported; SFTP is not supported.
ciConnectionType :: Lens' ConnectionInput ConnectionType
ciConnectionType = lens _ciConnectionType (\ s a -> s{_ciConnectionType = a})

-- | A list of key-value pairs used as parameters for this connection.
ciConnectionProperties :: Lens' ConnectionInput (HashMap ConnectionPropertyKey Text)
ciConnectionProperties = lens _ciConnectionProperties (\ s a -> s{_ciConnectionProperties = a}) . _Map

instance Hashable ConnectionInput where

instance NFData ConnectionInput where

instance ToJSON ConnectionInput where
        toJSON ConnectionInput'{..}
          = object
              (catMaybes
                 [("MatchCriteria" .=) <$> _ciMatchCriteria,
                  ("PhysicalConnectionRequirements" .=) <$>
                    _ciPhysicalConnectionRequirements,
                  ("Description" .=) <$> _ciDescription,
                  Just ("Name" .= _ciName),
                  Just ("ConnectionType" .= _ciConnectionType),
                  Just
                    ("ConnectionProperties" .= _ciConnectionProperties)])
