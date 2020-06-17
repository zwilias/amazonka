{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.WAF.Types.MatchFieldType (
  MatchFieldType (
    ..
    , Body
    , Header
    , Method
    , QueryString
    , URI
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MatchFieldType = MatchFieldType' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Body :: MatchFieldType
pattern Body = MatchFieldType' "BODY"

pattern Header :: MatchFieldType
pattern Header = MatchFieldType' "HEADER"

pattern Method :: MatchFieldType
pattern Method = MatchFieldType' "METHOD"

pattern QueryString :: MatchFieldType
pattern QueryString = MatchFieldType' "QUERY_STRING"

pattern URI :: MatchFieldType
pattern URI = MatchFieldType' "URI"

{-# COMPLETE
  Body,
  Header,
  Method,
  QueryString,
  URI,
  MatchFieldType' #-}

instance FromText MatchFieldType where
    parser = (MatchFieldType' . mk) <$> takeText

instance ToText MatchFieldType where
    toText (MatchFieldType' ci) = original ci

-- | Represents an enum of /known/ $MatchFieldType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum MatchFieldType where
    toEnum i = case i of
        0 -> Body
        1 -> Header
        2 -> Method
        3 -> QueryString
        4 -> URI
        _ -> (error . showText) $ "Unknown index for MatchFieldType: " <> toText i
    fromEnum x = case x of
        Body -> 0
        Header -> 1
        Method -> 2
        QueryString -> 3
        URI -> 4
        MatchFieldType' name -> (error . showText) $ "Unknown MatchFieldType: " <> original name

-- | Represents the bounds of /known/ $MatchFieldType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded MatchFieldType where
    minBound = Body
    maxBound = URI

instance Hashable     MatchFieldType
instance NFData       MatchFieldType
instance ToByteString MatchFieldType
instance ToQuery      MatchFieldType
instance ToHeader     MatchFieldType

instance ToJSON MatchFieldType where
    toJSON = toJSONText

instance FromJSON MatchFieldType where
    parseJSON = parseJSONText "MatchFieldType"
