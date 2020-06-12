{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.StorageClassAnalysis
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.StorageClassAnalysis where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.StorageClassAnalysisDataExport

-- | /See:/ 'storageClassAnalysis' smart constructor.
newtype StorageClassAnalysis = StorageClassAnalysis'{_scaDataExport
                                                     ::
                                                     Maybe
                                                       StorageClassAnalysisDataExport}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'StorageClassAnalysis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scaDataExport' - A container used to describe how data related to the storage class analysis should be exported.
storageClassAnalysis
    :: StorageClassAnalysis
storageClassAnalysis
  = StorageClassAnalysis'{_scaDataExport = Nothing}

-- | A container used to describe how data related to the storage class analysis should be exported.
scaDataExport :: Lens' StorageClassAnalysis (Maybe StorageClassAnalysisDataExport)
scaDataExport = lens _scaDataExport (\ s a -> s{_scaDataExport = a})

instance FromXML StorageClassAnalysis where
        parseXML x
          = StorageClassAnalysis' <$> (x .@? "DataExport")

instance Hashable StorageClassAnalysis where

instance NFData StorageClassAnalysis where

instance ToXML StorageClassAnalysis where
        toXML StorageClassAnalysis'{..}
          = mconcat ["DataExport" @= _scaDataExport]
