{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.AbortIncompleteMultipartUpload
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.AbortIncompleteMultipartUpload where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Specifies the days since the initiation of an Incomplete Multipart Upload that Lifecycle will wait before permanently removing all parts of the upload.
--
-- /See:/ 'abortIncompleteMultipartUpload' smart constructor.
newtype AbortIncompleteMultipartUpload = AbortIncompleteMultipartUpload'{_aimuDaysAfterInitiation
                                                                         ::
                                                                         Maybe
                                                                           Int}
                                           deriving (Eq, Read, Show, Data,
                                                     Typeable, Generic)

-- | Creates a value of 'AbortIncompleteMultipartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aimuDaysAfterInitiation' - Indicates the number of days that must pass since initiation for Lifecycle to abort an Incomplete Multipart Upload.
abortIncompleteMultipartUpload
    :: AbortIncompleteMultipartUpload
abortIncompleteMultipartUpload
  = AbortIncompleteMultipartUpload'{_aimuDaysAfterInitiation
                                      = Nothing}

-- | Indicates the number of days that must pass since initiation for Lifecycle to abort an Incomplete Multipart Upload.
aimuDaysAfterInitiation :: Lens' AbortIncompleteMultipartUpload (Maybe Int)
aimuDaysAfterInitiation = lens _aimuDaysAfterInitiation (\ s a -> s{_aimuDaysAfterInitiation = a})

instance FromXML AbortIncompleteMultipartUpload where
        parseXML x
          = AbortIncompleteMultipartUpload' <$>
              (x .@? "DaysAfterInitiation")

instance Hashable AbortIncompleteMultipartUpload
         where

instance NFData AbortIncompleteMultipartUpload where

instance ToXML AbortIncompleteMultipartUpload where
        toXML AbortIncompleteMultipartUpload'{..}
          = mconcat
              ["DaysAfterInitiation" @= _aimuDaysAfterInitiation]
