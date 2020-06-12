{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.Connector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.Connector where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ConnectorCapability
import Network.AWS.SMS.Types.ConnectorStatus
import Network.AWS.SMS.Types.VMManagerType

-- | Object representing a Connector
--
-- /See:/ 'connector' smart constructor.
data Connector = Connector'{_cStatus ::
                            !(Maybe ConnectorStatus),
                            _cVmManagerName :: !(Maybe Text),
                            _cIpAddress :: !(Maybe Text),
                            _cVmManagerId :: !(Maybe Text),
                            _cVmManagerType :: !(Maybe VMManagerType),
                            _cConnectorId :: !(Maybe Text),
                            _cAssociatedOn :: !(Maybe POSIX),
                            _cMacAddress :: !(Maybe Text),
                            _cVersion :: !(Maybe Text),
                            _cCapabilityList :: !(Maybe [ConnectorCapability])}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Connector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus' - Undocumented member.
--
-- * 'cVmManagerName' - Undocumented member.
--
-- * 'cIpAddress' - Undocumented member.
--
-- * 'cVmManagerId' - Undocumented member.
--
-- * 'cVmManagerType' - Undocumented member.
--
-- * 'cConnectorId' - Undocumented member.
--
-- * 'cAssociatedOn' - Undocumented member.
--
-- * 'cMacAddress' - Undocumented member.
--
-- * 'cVersion' - Undocumented member.
--
-- * 'cCapabilityList' - Undocumented member.
connector
    :: Connector
connector
  = Connector'{_cStatus = Nothing,
               _cVmManagerName = Nothing, _cIpAddress = Nothing,
               _cVmManagerId = Nothing, _cVmManagerType = Nothing,
               _cConnectorId = Nothing, _cAssociatedOn = Nothing,
               _cMacAddress = Nothing, _cVersion = Nothing,
               _cCapabilityList = Nothing}

-- | Undocumented member.
cStatus :: Lens' Connector (Maybe ConnectorStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Undocumented member.
cVmManagerName :: Lens' Connector (Maybe Text)
cVmManagerName = lens _cVmManagerName (\ s a -> s{_cVmManagerName = a})

-- | Undocumented member.
cIpAddress :: Lens' Connector (Maybe Text)
cIpAddress = lens _cIpAddress (\ s a -> s{_cIpAddress = a})

-- | Undocumented member.
cVmManagerId :: Lens' Connector (Maybe Text)
cVmManagerId = lens _cVmManagerId (\ s a -> s{_cVmManagerId = a})

-- | Undocumented member.
cVmManagerType :: Lens' Connector (Maybe VMManagerType)
cVmManagerType = lens _cVmManagerType (\ s a -> s{_cVmManagerType = a})

-- | Undocumented member.
cConnectorId :: Lens' Connector (Maybe Text)
cConnectorId = lens _cConnectorId (\ s a -> s{_cConnectorId = a})

-- | Undocumented member.
cAssociatedOn :: Lens' Connector (Maybe UTCTime)
cAssociatedOn = lens _cAssociatedOn (\ s a -> s{_cAssociatedOn = a}) . mapping _Time

-- | Undocumented member.
cMacAddress :: Lens' Connector (Maybe Text)
cMacAddress = lens _cMacAddress (\ s a -> s{_cMacAddress = a})

-- | Undocumented member.
cVersion :: Lens' Connector (Maybe Text)
cVersion = lens _cVersion (\ s a -> s{_cVersion = a})

-- | Undocumented member.
cCapabilityList :: Lens' Connector [ConnectorCapability]
cCapabilityList = lens _cCapabilityList (\ s a -> s{_cCapabilityList = a}) . _Default . _Coerce

instance FromJSON Connector where
        parseJSON
          = withObject "Connector"
              (\ x ->
                 Connector' <$>
                   (x .:? "status") <*> (x .:? "vmManagerName") <*>
                     (x .:? "ipAddress")
                     <*> (x .:? "vmManagerId")
                     <*> (x .:? "vmManagerType")
                     <*> (x .:? "connectorId")
                     <*> (x .:? "associatedOn")
                     <*> (x .:? "macAddress")
                     <*> (x .:? "version")
                     <*> (x .:? "capabilityList" .!= mempty))

instance Hashable Connector where

instance NFData Connector where
