{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.VMServer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.VMServer where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.VMManagerType
import Network.AWS.SMS.Types.VMServerAddress

-- | Object representing a VM server
--
-- /See:/ 'vMServer' smart constructor.
data VMServer = VMServer'{_vmsVmManagerName ::
                          !(Maybe Text),
                          _vmsVmManagerType :: !(Maybe VMManagerType),
                          _vmsVmServerAddress :: !(Maybe VMServerAddress),
                          _vmsVmName :: !(Maybe Text),
                          _vmsVmPath :: !(Maybe Text)}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VMServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmsVmManagerName' - Undocumented member.
--
-- * 'vmsVmManagerType' - Undocumented member.
--
-- * 'vmsVmServerAddress' - Undocumented member.
--
-- * 'vmsVmName' - Undocumented member.
--
-- * 'vmsVmPath' - Undocumented member.
vMServer
    :: VMServer
vMServer
  = VMServer'{_vmsVmManagerName = Nothing,
              _vmsVmManagerType = Nothing,
              _vmsVmServerAddress = Nothing, _vmsVmName = Nothing,
              _vmsVmPath = Nothing}

-- | Undocumented member.
vmsVmManagerName :: Lens' VMServer (Maybe Text)
vmsVmManagerName = lens _vmsVmManagerName (\ s a -> s{_vmsVmManagerName = a})

-- | Undocumented member.
vmsVmManagerType :: Lens' VMServer (Maybe VMManagerType)
vmsVmManagerType = lens _vmsVmManagerType (\ s a -> s{_vmsVmManagerType = a})

-- | Undocumented member.
vmsVmServerAddress :: Lens' VMServer (Maybe VMServerAddress)
vmsVmServerAddress = lens _vmsVmServerAddress (\ s a -> s{_vmsVmServerAddress = a})

-- | Undocumented member.
vmsVmName :: Lens' VMServer (Maybe Text)
vmsVmName = lens _vmsVmName (\ s a -> s{_vmsVmName = a})

-- | Undocumented member.
vmsVmPath :: Lens' VMServer (Maybe Text)
vmsVmPath = lens _vmsVmPath (\ s a -> s{_vmsVmPath = a})

instance FromJSON VMServer where
        parseJSON
          = withObject "VMServer"
              (\ x ->
                 VMServer' <$>
                   (x .:? "vmManagerName") <*> (x .:? "vmManagerType")
                     <*> (x .:? "vmServerAddress")
                     <*> (x .:? "vmName")
                     <*> (x .:? "vmPath"))

instance Hashable VMServer where

instance NFData VMServer where
