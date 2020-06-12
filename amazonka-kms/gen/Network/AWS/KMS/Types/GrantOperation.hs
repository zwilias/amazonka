{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.GrantOperation
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KMS.Types.GrantOperation where

import Network.AWS.Prelude
  
data GrantOperation = CreateGrant
                    | Decrypt
                    | DescribeKey
                    | Encrypt
                    | GenerateDataKey
                    | GenerateDataKeyWithoutPlaintext
                    | ReEncryptFrom
                    | ReEncryptTo
                    | RetireGrant
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText GrantOperation where
    parser = takeLowerText >>= \case
        "creategrant" -> pure CreateGrant
        "decrypt" -> pure Decrypt
        "describekey" -> pure DescribeKey
        "encrypt" -> pure Encrypt
        "generatedatakey" -> pure GenerateDataKey
        "generatedatakeywithoutplaintext" -> pure GenerateDataKeyWithoutPlaintext
        "reencryptfrom" -> pure ReEncryptFrom
        "reencryptto" -> pure ReEncryptTo
        "retiregrant" -> pure RetireGrant
        e -> fromTextError $ "Failure parsing GrantOperation from value: '" <> e
           <> "'. Accepted values: creategrant, decrypt, describekey, encrypt, generatedatakey, generatedatakeywithoutplaintext, reencryptfrom, reencryptto, retiregrant"

instance ToText GrantOperation where
    toText = \case
        CreateGrant -> "CreateGrant"
        Decrypt -> "Decrypt"
        DescribeKey -> "DescribeKey"
        Encrypt -> "Encrypt"
        GenerateDataKey -> "GenerateDataKey"
        GenerateDataKeyWithoutPlaintext -> "GenerateDataKeyWithoutPlaintext"
        ReEncryptFrom -> "ReEncryptFrom"
        ReEncryptTo -> "ReEncryptTo"
        RetireGrant -> "RetireGrant"

instance Hashable     GrantOperation
instance NFData       GrantOperation
instance ToByteString GrantOperation
instance ToQuery      GrantOperation
instance ToHeader     GrantOperation

instance ToJSON GrantOperation where
    toJSON = toJSONText

instance FromJSON GrantOperation where
    parseJSON = parseJSONText "GrantOperation"
