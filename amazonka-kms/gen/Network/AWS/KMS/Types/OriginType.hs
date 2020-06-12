{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.OriginType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KMS.Types.OriginType where

import Network.AWS.Prelude
  
data OriginType = AWSKMS
                | External
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText OriginType where
    parser = takeLowerText >>= \case
        "aws_kms" -> pure AWSKMS
        "external" -> pure External
        e -> fromTextError $ "Failure parsing OriginType from value: '" <> e
           <> "'. Accepted values: aws_kms, external"

instance ToText OriginType where
    toText = \case
        AWSKMS -> "AWS_KMS"
        External -> "EXTERNAL"

instance Hashable     OriginType
instance NFData       OriginType
instance ToByteString OriginType
instance ToQuery      OriginType
instance ToHeader     OriginType

instance ToJSON OriginType where
    toJSON = toJSONText

instance FromJSON OriginType where
    parseJSON = parseJSONText "OriginType"
