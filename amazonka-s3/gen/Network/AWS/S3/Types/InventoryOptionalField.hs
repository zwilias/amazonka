{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryOptionalField
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.InventoryOptionalField where

import Network.AWS.Prelude
import Network.AWS.S3.Internal
  
data InventoryOptionalField = FieldETag
                            | FieldEncryptionStatus
                            | FieldIsMultipartUploaded
                            | FieldLastModifiedDate
                            | FieldReplicationStatus
                            | FieldSize
                            | FieldStorageClass
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText InventoryOptionalField where
    parser = takeLowerText >>= \case
        "etag" -> pure FieldETag
        "encryptionstatus" -> pure FieldEncryptionStatus
        "ismultipartuploaded" -> pure FieldIsMultipartUploaded
        "lastmodifieddate" -> pure FieldLastModifiedDate
        "replicationstatus" -> pure FieldReplicationStatus
        "size" -> pure FieldSize
        "storageclass" -> pure FieldStorageClass
        e -> fromTextError $ "Failure parsing InventoryOptionalField from value: '" <> e
           <> "'. Accepted values: etag, encryptionstatus, ismultipartuploaded, lastmodifieddate, replicationstatus, size, storageclass"

instance ToText InventoryOptionalField where
    toText = \case
        FieldETag -> "ETag"
        FieldEncryptionStatus -> "EncryptionStatus"
        FieldIsMultipartUploaded -> "IsMultipartUploaded"
        FieldLastModifiedDate -> "LastModifiedDate"
        FieldReplicationStatus -> "ReplicationStatus"
        FieldSize -> "Size"
        FieldStorageClass -> "StorageClass"

instance Hashable     InventoryOptionalField
instance NFData       InventoryOptionalField
instance ToByteString InventoryOptionalField
instance ToQuery      InventoryOptionalField
instance ToHeader     InventoryOptionalField

instance FromXML InventoryOptionalField where
    parseXML = parseXMLText "InventoryOptionalField"

instance ToXML InventoryOptionalField where
    toXML = toXMLText
