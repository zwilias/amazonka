{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.Disk
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.Disk where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'disk' smart constructor.
data Disk = Disk'{_dDiskAllocationResource ::
                  !(Maybe Text),
                  _dDiskAllocationType :: !(Maybe Text),
                  _dDiskNode :: !(Maybe Text),
                  _dDiskPath :: !(Maybe Text),
                  _dDiskSizeInBytes :: !(Maybe Integer),
                  _dDiskStatus :: !(Maybe Text),
                  _dDiskId :: !(Maybe Text)}
              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDiskAllocationResource' - Undocumented member.
--
-- * 'dDiskAllocationType' - Undocumented member.
--
-- * 'dDiskNode' - Undocumented member.
--
-- * 'dDiskPath' - Undocumented member.
--
-- * 'dDiskSizeInBytes' - Undocumented member.
--
-- * 'dDiskStatus' - Undocumented member.
--
-- * 'dDiskId' - Undocumented member.
disk
    :: Disk
disk
  = Disk'{_dDiskAllocationResource = Nothing,
          _dDiskAllocationType = Nothing, _dDiskNode = Nothing,
          _dDiskPath = Nothing, _dDiskSizeInBytes = Nothing,
          _dDiskStatus = Nothing, _dDiskId = Nothing}

-- | Undocumented member.
dDiskAllocationResource :: Lens' Disk (Maybe Text)
dDiskAllocationResource = lens _dDiskAllocationResource (\ s a -> s{_dDiskAllocationResource = a})

-- | Undocumented member.
dDiskAllocationType :: Lens' Disk (Maybe Text)
dDiskAllocationType = lens _dDiskAllocationType (\ s a -> s{_dDiskAllocationType = a})

-- | Undocumented member.
dDiskNode :: Lens' Disk (Maybe Text)
dDiskNode = lens _dDiskNode (\ s a -> s{_dDiskNode = a})

-- | Undocumented member.
dDiskPath :: Lens' Disk (Maybe Text)
dDiskPath = lens _dDiskPath (\ s a -> s{_dDiskPath = a})

-- | Undocumented member.
dDiskSizeInBytes :: Lens' Disk (Maybe Integer)
dDiskSizeInBytes = lens _dDiskSizeInBytes (\ s a -> s{_dDiskSizeInBytes = a})

-- | Undocumented member.
dDiskStatus :: Lens' Disk (Maybe Text)
dDiskStatus = lens _dDiskStatus (\ s a -> s{_dDiskStatus = a})

-- | Undocumented member.
dDiskId :: Lens' Disk (Maybe Text)
dDiskId = lens _dDiskId (\ s a -> s{_dDiskId = a})

instance FromJSON Disk where
        parseJSON
          = withObject "Disk"
              (\ x ->
                 Disk' <$>
                   (x .:? "DiskAllocationResource") <*>
                     (x .:? "DiskAllocationType")
                     <*> (x .:? "DiskNode")
                     <*> (x .:? "DiskPath")
                     <*> (x .:? "DiskSizeInBytes")
                     <*> (x .:? "DiskStatus")
                     <*> (x .:? "DiskId"))

instance Hashable Disk where

instance NFData Disk where
