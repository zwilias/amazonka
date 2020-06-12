{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.Runtime
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.Runtime where

import Network.AWS.Prelude
  
data Runtime = DOTNETCORE1_0
             | DOTNETCORE2_0
             | GO1_x
             | JAVA8
             | NODEJS4_3
             | NODEJS4_3Edge
             | NODEJS6_10
             | NODEJS8_10
             | Nodejs
             | PYTHON2_7
             | PYTHON3_6
                 deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                           Typeable, Generic)

instance FromText Runtime where
    parser = takeLowerText >>= \case
        "dotnetcore1.0" -> pure DOTNETCORE1_0
        "dotnetcore2.0" -> pure DOTNETCORE2_0
        "go1.x" -> pure GO1_x
        "java8" -> pure JAVA8
        "nodejs4.3" -> pure NODEJS4_3
        "nodejs4.3-edge" -> pure NODEJS4_3Edge
        "nodejs6.10" -> pure NODEJS6_10
        "nodejs8.10" -> pure NODEJS8_10
        "nodejs" -> pure Nodejs
        "python2.7" -> pure PYTHON2_7
        "python3.6" -> pure PYTHON3_6
        e -> fromTextError $ "Failure parsing Runtime from value: '" <> e
           <> "'. Accepted values: dotnetcore1.0, dotnetcore2.0, go1.x, java8, nodejs4.3, nodejs4.3-edge, nodejs6.10, nodejs8.10, nodejs, python2.7, python3.6"

instance ToText Runtime where
    toText = \case
        DOTNETCORE1_0 -> "dotnetcore1.0"
        DOTNETCORE2_0 -> "dotnetcore2.0"
        GO1_x -> "go1.x"
        JAVA8 -> "java8"
        NODEJS4_3 -> "nodejs4.3"
        NODEJS4_3Edge -> "nodejs4.3-edge"
        NODEJS6_10 -> "nodejs6.10"
        NODEJS8_10 -> "nodejs8.10"
        Nodejs -> "nodejs"
        PYTHON2_7 -> "python2.7"
        PYTHON3_6 -> "python3.6"

instance Hashable     Runtime
instance NFData       Runtime
instance ToByteString Runtime
instance ToQuery      Runtime
instance ToHeader     Runtime

instance ToJSON Runtime where
    toJSON = toJSONText

instance FromJSON Runtime where
    parseJSON = parseJSONText "Runtime"
