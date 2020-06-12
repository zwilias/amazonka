{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.EncryptionConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.EncryptionConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Container for information regarding encryption based configuration for replicas.
--
-- /See:/ 'encryptionConfiguration' smart constructor.
newtype EncryptionConfiguration = EncryptionConfiguration'{_ecReplicaKMSKeyId
                                                           :: Maybe Text}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'EncryptionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecReplicaKMSKeyId' - The id of the KMS key used to encrypt the replica object.
encryptionConfiguration
    :: EncryptionConfiguration
encryptionConfiguration
  = EncryptionConfiguration'{_ecReplicaKMSKeyId =
                               Nothing}

-- | The id of the KMS key used to encrypt the replica object.
ecReplicaKMSKeyId :: Lens' EncryptionConfiguration (Maybe Text)
ecReplicaKMSKeyId = lens _ecReplicaKMSKeyId (\ s a -> s{_ecReplicaKMSKeyId = a})

instance FromXML EncryptionConfiguration where
        parseXML x
          = EncryptionConfiguration' <$>
              (x .@? "ReplicaKmsKeyID")

instance Hashable EncryptionConfiguration where

instance NFData EncryptionConfiguration where

instance ToXML EncryptionConfiguration where
        toXML EncryptionConfiguration'{..}
          = mconcat ["ReplicaKmsKeyID" @= _ecReplicaKMSKeyId]
