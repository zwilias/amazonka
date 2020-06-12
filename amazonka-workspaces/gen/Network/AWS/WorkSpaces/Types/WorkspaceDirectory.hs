{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceDirectory
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkSpaces.Types.WorkspaceDirectory where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties
import Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
import Network.AWS.WorkSpaces.Types.WorkspaceDirectoryType

-- | Information about an AWS Directory Service directory for use with Amazon WorkSpaces.
--
--
--
-- /See:/ 'workspaceDirectory' smart constructor.
data WorkspaceDirectory = WorkspaceDirectory'{_wdRegistrationCode
                                              :: !(Maybe Text),
                                              _wdIAMRoleId :: !(Maybe Text),
                                              _wdDirectoryId :: !(Maybe Text),
                                              _wdState ::
                                              !(Maybe WorkspaceDirectoryState),
                                              _wdCustomerUserName ::
                                              !(Maybe Text),
                                              _wdSubnetIds :: !(Maybe [Text]),
                                              _wdIpGroupIds :: !(Maybe [Text]),
                                              _wdAlias :: !(Maybe Text),
                                              _wdWorkspaceSecurityGroupId ::
                                              !(Maybe Text),
                                              _wdDirectoryType ::
                                              !(Maybe WorkspaceDirectoryType),
                                              _wdWorkspaceCreationProperties ::
                                              !(Maybe
                                                  DefaultWorkspaceCreationProperties),
                                              _wdDNSIPAddresses ::
                                              !(Maybe [Text]),
                                              _wdDirectoryName :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WorkspaceDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wdRegistrationCode' - The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
--
-- * 'wdIAMRoleId' - The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
--
-- * 'wdDirectoryId' - The directory identifier.
--
-- * 'wdState' - The state of the directory's registration with Amazon WorkSpaces
--
-- * 'wdCustomerUserName' - The user name for the service account.
--
-- * 'wdSubnetIds' - The identifiers of the subnets used with the directory.
--
-- * 'wdIpGroupIds' - The identifiers of the IP access control groups associated with the directory.
--
-- * 'wdAlias' - The directory alias.
--
-- * 'wdWorkspaceSecurityGroupId' - The identifier of the security group that is assigned to new WorkSpaces.
--
-- * 'wdDirectoryType' - The directory type.
--
-- * 'wdWorkspaceCreationProperties' - The default creation properties for all WorkSpaces in the directory.
--
-- * 'wdDNSIPAddresses' - The IP addresses of the DNS servers for the directory.
--
-- * 'wdDirectoryName' - The name of the directory.
workspaceDirectory
    :: WorkspaceDirectory
workspaceDirectory
  = WorkspaceDirectory'{_wdRegistrationCode = Nothing,
                        _wdIAMRoleId = Nothing, _wdDirectoryId = Nothing,
                        _wdState = Nothing, _wdCustomerUserName = Nothing,
                        _wdSubnetIds = Nothing, _wdIpGroupIds = Nothing,
                        _wdAlias = Nothing,
                        _wdWorkspaceSecurityGroupId = Nothing,
                        _wdDirectoryType = Nothing,
                        _wdWorkspaceCreationProperties = Nothing,
                        _wdDNSIPAddresses = Nothing,
                        _wdDirectoryName = Nothing}

-- | The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
wdRegistrationCode :: Lens' WorkspaceDirectory (Maybe Text)
wdRegistrationCode = lens _wdRegistrationCode (\ s a -> s{_wdRegistrationCode = a})

-- | The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
wdIAMRoleId :: Lens' WorkspaceDirectory (Maybe Text)
wdIAMRoleId = lens _wdIAMRoleId (\ s a -> s{_wdIAMRoleId = a})

-- | The directory identifier.
wdDirectoryId :: Lens' WorkspaceDirectory (Maybe Text)
wdDirectoryId = lens _wdDirectoryId (\ s a -> s{_wdDirectoryId = a})

-- | The state of the directory's registration with Amazon WorkSpaces
wdState :: Lens' WorkspaceDirectory (Maybe WorkspaceDirectoryState)
wdState = lens _wdState (\ s a -> s{_wdState = a})

-- | The user name for the service account.
wdCustomerUserName :: Lens' WorkspaceDirectory (Maybe Text)
wdCustomerUserName = lens _wdCustomerUserName (\ s a -> s{_wdCustomerUserName = a})

-- | The identifiers of the subnets used with the directory.
wdSubnetIds :: Lens' WorkspaceDirectory [Text]
wdSubnetIds = lens _wdSubnetIds (\ s a -> s{_wdSubnetIds = a}) . _Default . _Coerce

-- | The identifiers of the IP access control groups associated with the directory.
wdIpGroupIds :: Lens' WorkspaceDirectory [Text]
wdIpGroupIds = lens _wdIpGroupIds (\ s a -> s{_wdIpGroupIds = a}) . _Default . _Coerce

-- | The directory alias.
wdAlias :: Lens' WorkspaceDirectory (Maybe Text)
wdAlias = lens _wdAlias (\ s a -> s{_wdAlias = a})

-- | The identifier of the security group that is assigned to new WorkSpaces.
wdWorkspaceSecurityGroupId :: Lens' WorkspaceDirectory (Maybe Text)
wdWorkspaceSecurityGroupId = lens _wdWorkspaceSecurityGroupId (\ s a -> s{_wdWorkspaceSecurityGroupId = a})

-- | The directory type.
wdDirectoryType :: Lens' WorkspaceDirectory (Maybe WorkspaceDirectoryType)
wdDirectoryType = lens _wdDirectoryType (\ s a -> s{_wdDirectoryType = a})

-- | The default creation properties for all WorkSpaces in the directory.
wdWorkspaceCreationProperties :: Lens' WorkspaceDirectory (Maybe DefaultWorkspaceCreationProperties)
wdWorkspaceCreationProperties = lens _wdWorkspaceCreationProperties (\ s a -> s{_wdWorkspaceCreationProperties = a})

-- | The IP addresses of the DNS servers for the directory.
wdDNSIPAddresses :: Lens' WorkspaceDirectory [Text]
wdDNSIPAddresses = lens _wdDNSIPAddresses (\ s a -> s{_wdDNSIPAddresses = a}) . _Default . _Coerce

-- | The name of the directory.
wdDirectoryName :: Lens' WorkspaceDirectory (Maybe Text)
wdDirectoryName = lens _wdDirectoryName (\ s a -> s{_wdDirectoryName = a})

instance FromJSON WorkspaceDirectory where
        parseJSON
          = withObject "WorkspaceDirectory"
              (\ x ->
                 WorkspaceDirectory' <$>
                   (x .:? "RegistrationCode") <*> (x .:? "IamRoleId")
                     <*> (x .:? "DirectoryId")
                     <*> (x .:? "State")
                     <*> (x .:? "CustomerUserName")
                     <*> (x .:? "SubnetIds" .!= mempty)
                     <*> (x .:? "ipGroupIds" .!= mempty)
                     <*> (x .:? "Alias")
                     <*> (x .:? "WorkspaceSecurityGroupId")
                     <*> (x .:? "DirectoryType")
                     <*> (x .:? "WorkspaceCreationProperties")
                     <*> (x .:? "DnsIpAddresses" .!= mempty)
                     <*> (x .:? "DirectoryName"))

instance Hashable WorkspaceDirectory where

instance NFData WorkspaceDirectory where
