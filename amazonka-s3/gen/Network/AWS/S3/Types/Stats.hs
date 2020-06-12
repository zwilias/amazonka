{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Stats
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Stats where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 'stats' smart constructor.
data Stats = Stats'{_sBytesReturned ::
                    !(Maybe Integer),
                    _sBytesScanned :: !(Maybe Integer),
                    _sBytesProcessed :: !(Maybe Integer)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sBytesReturned' - Total number of bytes of records payload data returned.
--
-- * 'sBytesScanned' - Total number of object bytes scanned.
--
-- * 'sBytesProcessed' - Total number of uncompressed object bytes processed.
stats
    :: Stats
stats
  = Stats'{_sBytesReturned = Nothing,
           _sBytesScanned = Nothing, _sBytesProcessed = Nothing}

-- | Total number of bytes of records payload data returned.
sBytesReturned :: Lens' Stats (Maybe Integer)
sBytesReturned = lens _sBytesReturned (\ s a -> s{_sBytesReturned = a})

-- | Total number of object bytes scanned.
sBytesScanned :: Lens' Stats (Maybe Integer)
sBytesScanned = lens _sBytesScanned (\ s a -> s{_sBytesScanned = a})

-- | Total number of uncompressed object bytes processed.
sBytesProcessed :: Lens' Stats (Maybe Integer)
sBytesProcessed = lens _sBytesProcessed (\ s a -> s{_sBytesProcessed = a})

instance FromXML Stats where
        parseXML x
          = Stats' <$>
              (x .@? "BytesReturned") <*> (x .@? "BytesScanned")
                <*> (x .@? "BytesProcessed")

instance Hashable Stats where

instance NFData Stats where
