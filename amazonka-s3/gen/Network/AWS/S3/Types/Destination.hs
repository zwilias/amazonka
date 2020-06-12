{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Destination
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Destination where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.AccessControlTranslation
import Network.AWS.S3.Types.EncryptionConfiguration
import Network.AWS.S3.Types.StorageClass

-- | Container for replication destination information.
--
-- /See:/ 'destination' smart constructor.
data Destination = Destination'{_dAccessControlTranslation
                                :: !(Maybe AccessControlTranslation),
                                _dAccount :: !(Maybe Text),
                                _dStorageClass :: !(Maybe StorageClass),
                                _dEncryptionConfiguration ::
                                !(Maybe EncryptionConfiguration),
                                _dBucket :: !BucketName}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAccessControlTranslation' - Container for information regarding the access control for replicas.
--
-- * 'dAccount' - Account ID of the destination bucket. Currently this is only being verified if Access Control Translation is enabled
--
-- * 'dStorageClass' - The class of storage used to store the object.
--
-- * 'dEncryptionConfiguration' - Container for information regarding encryption based configuration for replicas.
--
-- * 'dBucket' - Amazon resource name (ARN) of the bucket where you want Amazon S3 to store replicas of the object identified by the rule.
destination
    :: BucketName -- ^ 'dBucket'
    -> Destination
destination pBucket_
  = Destination'{_dAccessControlTranslation = Nothing,
                 _dAccount = Nothing, _dStorageClass = Nothing,
                 _dEncryptionConfiguration = Nothing,
                 _dBucket = pBucket_}

-- | Container for information regarding the access control for replicas.
dAccessControlTranslation :: Lens' Destination (Maybe AccessControlTranslation)
dAccessControlTranslation = lens _dAccessControlTranslation (\ s a -> s{_dAccessControlTranslation = a})

-- | Account ID of the destination bucket. Currently this is only being verified if Access Control Translation is enabled
dAccount :: Lens' Destination (Maybe Text)
dAccount = lens _dAccount (\ s a -> s{_dAccount = a})

-- | The class of storage used to store the object.
dStorageClass :: Lens' Destination (Maybe StorageClass)
dStorageClass = lens _dStorageClass (\ s a -> s{_dStorageClass = a})

-- | Container for information regarding encryption based configuration for replicas.
dEncryptionConfiguration :: Lens' Destination (Maybe EncryptionConfiguration)
dEncryptionConfiguration = lens _dEncryptionConfiguration (\ s a -> s{_dEncryptionConfiguration = a})

-- | Amazon resource name (ARN) of the bucket where you want Amazon S3 to store replicas of the object identified by the rule.
dBucket :: Lens' Destination BucketName
dBucket = lens _dBucket (\ s a -> s{_dBucket = a})

instance FromXML Destination where
        parseXML x
          = Destination' <$>
              (x .@? "AccessControlTranslation") <*>
                (x .@? "Account")
                <*> (x .@? "StorageClass")
                <*> (x .@? "EncryptionConfiguration")
                <*> (x .@ "Bucket")

instance Hashable Destination where

instance NFData Destination where

instance ToXML Destination where
        toXML Destination'{..}
          = mconcat
              ["AccessControlTranslation" @=
                 _dAccessControlTranslation,
               "Account" @= _dAccount,
               "StorageClass" @= _dStorageClass,
               "EncryptionConfiguration" @=
                 _dEncryptionConfiguration,
               "Bucket" @= _dBucket]
