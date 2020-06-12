{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about defaults used to create a WorkSpace.
--
--
--
-- /See:/ 'defaultWorkspaceCreationProperties' smart constructor.
data DefaultWorkspaceCreationProperties = DefaultWorkspaceCreationProperties'{_dwcpCustomSecurityGroupId
                                                                              ::
                                                                              !(Maybe
                                                                                  Text),
                                                                              _dwcpUserEnabledAsLocalAdministrator
                                                                              ::
                                                                              !(Maybe
                                                                                  Bool),
                                                                              _dwcpEnableWorkDocs
                                                                              ::
                                                                              !(Maybe
                                                                                  Bool),
                                                                              _dwcpEnableInternetAccess
                                                                              ::
                                                                              !(Maybe
                                                                                  Bool),
                                                                              _dwcpDefaultOu
                                                                              ::
                                                                              !(Maybe
                                                                                  Text)}
                                            deriving (Eq, Read, Show, Data,
                                                      Typeable, Generic)

-- | Creates a value of 'DefaultWorkspaceCreationProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwcpCustomSecurityGroupId' - The identifier of any security groups to apply to WorkSpaces when they are created.
--
-- * 'dwcpUserEnabledAsLocalAdministrator' - Indicates whether the WorkSpace user is an administrator on the WorkSpace.
--
-- * 'dwcpEnableWorkDocs' - Indicates whether the directory is enabled for Amazon WorkDocs.
--
-- * 'dwcpEnableInternetAccess' - The public IP address to attach to all WorkSpaces that are created or rebuilt.
--
-- * 'dwcpDefaultOu' - The organizational unit (OU) in the directory for the WorkSpace machine accounts.
defaultWorkspaceCreationProperties
    :: DefaultWorkspaceCreationProperties
defaultWorkspaceCreationProperties
  = DefaultWorkspaceCreationProperties'{_dwcpCustomSecurityGroupId
                                          = Nothing,
                                        _dwcpUserEnabledAsLocalAdministrator =
                                          Nothing,
                                        _dwcpEnableWorkDocs = Nothing,
                                        _dwcpEnableInternetAccess = Nothing,
                                        _dwcpDefaultOu = Nothing}

-- | The identifier of any security groups to apply to WorkSpaces when they are created.
dwcpCustomSecurityGroupId :: Lens' DefaultWorkspaceCreationProperties (Maybe Text)
dwcpCustomSecurityGroupId = lens _dwcpCustomSecurityGroupId (\ s a -> s{_dwcpCustomSecurityGroupId = a})

-- | Indicates whether the WorkSpace user is an administrator on the WorkSpace.
dwcpUserEnabledAsLocalAdministrator :: Lens' DefaultWorkspaceCreationProperties (Maybe Bool)
dwcpUserEnabledAsLocalAdministrator = lens _dwcpUserEnabledAsLocalAdministrator (\ s a -> s{_dwcpUserEnabledAsLocalAdministrator = a})

-- | Indicates whether the directory is enabled for Amazon WorkDocs.
dwcpEnableWorkDocs :: Lens' DefaultWorkspaceCreationProperties (Maybe Bool)
dwcpEnableWorkDocs = lens _dwcpEnableWorkDocs (\ s a -> s{_dwcpEnableWorkDocs = a})

-- | The public IP address to attach to all WorkSpaces that are created or rebuilt.
dwcpEnableInternetAccess :: Lens' DefaultWorkspaceCreationProperties (Maybe Bool)
dwcpEnableInternetAccess = lens _dwcpEnableInternetAccess (\ s a -> s{_dwcpEnableInternetAccess = a})

-- | The organizational unit (OU) in the directory for the WorkSpace machine accounts.
dwcpDefaultOu :: Lens' DefaultWorkspaceCreationProperties (Maybe Text)
dwcpDefaultOu = lens _dwcpDefaultOu (\ s a -> s{_dwcpDefaultOu = a})

instance FromJSON DefaultWorkspaceCreationProperties
         where
        parseJSON
          = withObject "DefaultWorkspaceCreationProperties"
              (\ x ->
                 DefaultWorkspaceCreationProperties' <$>
                   (x .:? "CustomSecurityGroupId") <*>
                     (x .:? "UserEnabledAsLocalAdministrator")
                     <*> (x .:? "EnableWorkDocs")
                     <*> (x .:? "EnableInternetAccess")
                     <*> (x .:? "DefaultOu"))

instance Hashable DefaultWorkspaceCreationProperties
         where

instance NFData DefaultWorkspaceCreationProperties
         where
