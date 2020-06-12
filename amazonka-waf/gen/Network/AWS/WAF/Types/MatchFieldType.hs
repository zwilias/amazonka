{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.MatchFieldType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WAF.Types.MatchFieldType where

import Network.AWS.Prelude
  
data MatchFieldType = Body
                    | Header
                    | Method
                    | QueryString
                    | URI
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText MatchFieldType where
    parser = takeLowerText >>= \case
        "body" -> pure Body
        "header" -> pure Header
        "method" -> pure Method
        "query_string" -> pure QueryString
        "uri" -> pure URI
        e -> fromTextError $ "Failure parsing MatchFieldType from value: '" <> e
           <> "'. Accepted values: body, header, method, query_string, uri"

instance ToText MatchFieldType where
    toText = \case
        Body -> "BODY"
        Header -> "HEADER"
        Method -> "METHOD"
        QueryString -> "QUERY_STRING"
        URI -> "URI"

instance Hashable     MatchFieldType
instance NFData       MatchFieldType
instance ToByteString MatchFieldType
instance ToQuery      MatchFieldType
instance ToHeader     MatchFieldType

instance ToJSON MatchFieldType where
    toJSON = toJSONText

instance FromJSON MatchFieldType where
    parseJSON = parseJSONText "MatchFieldType"
