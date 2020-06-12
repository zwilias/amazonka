{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.NoncurrentVersionExpiration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.NoncurrentVersionExpiration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
--
-- /See:/ 'noncurrentVersionExpiration' smart constructor.
newtype NoncurrentVersionExpiration = NoncurrentVersionExpiration'{_nveNoncurrentDays
                                                                   :: Int}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'NoncurrentVersionExpiration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nveNoncurrentDays' - <http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html How Amazon S3 Calculates When an Object Became Noncurrent> 
noncurrentVersionExpiration
    :: Int -- ^ 'nveNoncurrentDays'
    -> NoncurrentVersionExpiration
noncurrentVersionExpiration pNoncurrentDays_
  = NoncurrentVersionExpiration'{_nveNoncurrentDays =
                                   pNoncurrentDays_}

-- | <http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html How Amazon S3 Calculates When an Object Became Noncurrent> 
nveNoncurrentDays :: Lens' NoncurrentVersionExpiration Int
nveNoncurrentDays = lens _nveNoncurrentDays (\ s a -> s{_nveNoncurrentDays = a})

instance FromXML NoncurrentVersionExpiration where
        parseXML x
          = NoncurrentVersionExpiration' <$>
              (x .@ "NoncurrentDays")

instance Hashable NoncurrentVersionExpiration where

instance NFData NoncurrentVersionExpiration where

instance ToXML NoncurrentVersionExpiration where
        toXML NoncurrentVersionExpiration'{..}
          = mconcat ["NoncurrentDays" @= _nveNoncurrentDays]
