{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.APICacheType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppSync.Types.APICacheType where

import Network.AWS.Prelude
  
data APICacheType = R42XLARGE
                  | R44XLARGE
                  | R48XLARGE
                  | R4Large
                  | R4XLarge
                  | T2Medium
                  | T2Small
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText APICacheType where
    parser = takeLowerText >>= \case
        "r4_2xlarge" -> pure R42XLARGE
        "r4_4xlarge" -> pure R44XLARGE
        "r4_8xlarge" -> pure R48XLARGE
        "r4_large" -> pure R4Large
        "r4_xlarge" -> pure R4XLarge
        "t2_medium" -> pure T2Medium
        "t2_small" -> pure T2Small
        e -> fromTextError $ "Failure parsing APICacheType from value: '" <> e
           <> "'. Accepted values: r4_2xlarge, r4_4xlarge, r4_8xlarge, r4_large, r4_xlarge, t2_medium, t2_small"

instance ToText APICacheType where
    toText = \case
        R42XLARGE -> "R4_2XLARGE"
        R44XLARGE -> "R4_4XLARGE"
        R48XLARGE -> "R4_8XLARGE"
        R4Large -> "R4_LARGE"
        R4XLarge -> "R4_XLARGE"
        T2Medium -> "T2_MEDIUM"
        T2Small -> "T2_SMALL"

instance Hashable     APICacheType
instance NFData       APICacheType
instance ToByteString APICacheType
instance ToQuery      APICacheType
instance ToHeader     APICacheType

instance ToJSON APICacheType where
    toJSON = toJSONText

instance FromJSON APICacheType where
    parseJSON = parseJSONText "APICacheType"
