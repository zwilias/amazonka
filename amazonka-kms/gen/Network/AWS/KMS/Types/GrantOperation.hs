{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.KMS.Types.GrantOperation (
  GrantOperation (
    ..
    , CreateGrant
    , Decrypt
    , DescribeKey
    , Encrypt
    , GenerateDataKey
    , GenerateDataKeyWithoutPlaintext
    , ReEncryptFrom
    , ReEncryptTo
    , RetireGrant
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GrantOperation = GrantOperation' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern CreateGrant :: GrantOperation
pattern CreateGrant = GrantOperation' "CreateGrant"

pattern Decrypt :: GrantOperation
pattern Decrypt = GrantOperation' "Decrypt"

pattern DescribeKey :: GrantOperation
pattern DescribeKey = GrantOperation' "DescribeKey"

pattern Encrypt :: GrantOperation
pattern Encrypt = GrantOperation' "Encrypt"

pattern GenerateDataKey :: GrantOperation
pattern GenerateDataKey = GrantOperation' "GenerateDataKey"

pattern GenerateDataKeyWithoutPlaintext :: GrantOperation
pattern GenerateDataKeyWithoutPlaintext = GrantOperation' "GenerateDataKeyWithoutPlaintext"

pattern ReEncryptFrom :: GrantOperation
pattern ReEncryptFrom = GrantOperation' "ReEncryptFrom"

pattern ReEncryptTo :: GrantOperation
pattern ReEncryptTo = GrantOperation' "ReEncryptTo"

pattern RetireGrant :: GrantOperation
pattern RetireGrant = GrantOperation' "RetireGrant"

{-# COMPLETE
  CreateGrant,
  Decrypt,
  DescribeKey,
  Encrypt,
  GenerateDataKey,
  GenerateDataKeyWithoutPlaintext,
  ReEncryptFrom,
  ReEncryptTo,
  RetireGrant,
  GrantOperation' #-}

instance FromText GrantOperation where
    parser = (GrantOperation' . mk) <$> takeText

instance ToText GrantOperation where
    toText (GrantOperation' ci) = original ci

-- | Represents an enum of /known/ $GrantOperation.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum GrantOperation where
    toEnum i = case i of
        0 -> CreateGrant
        1 -> Decrypt
        2 -> DescribeKey
        3 -> Encrypt
        4 -> GenerateDataKey
        5 -> GenerateDataKeyWithoutPlaintext
        6 -> ReEncryptFrom
        7 -> ReEncryptTo
        8 -> RetireGrant
        _ -> (error . showText) $ "Unknown index for GrantOperation: " <> toText i
    fromEnum x = case x of
        CreateGrant -> 0
        Decrypt -> 1
        DescribeKey -> 2
        Encrypt -> 3
        GenerateDataKey -> 4
        GenerateDataKeyWithoutPlaintext -> 5
        ReEncryptFrom -> 6
        ReEncryptTo -> 7
        RetireGrant -> 8
        GrantOperation' name -> (error . showText) $ "Unknown GrantOperation: " <> original name

-- | Represents the bounds of /known/ $GrantOperation.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded GrantOperation where
    minBound = CreateGrant
    maxBound = RetireGrant

instance Hashable     GrantOperation
instance NFData       GrantOperation
instance ToByteString GrantOperation
instance ToQuery      GrantOperation
instance ToHeader     GrantOperation

instance ToJSON GrantOperation where
    toJSON = toJSONText

instance FromJSON GrantOperation where
    parseJSON = parseJSONText "GrantOperation"
