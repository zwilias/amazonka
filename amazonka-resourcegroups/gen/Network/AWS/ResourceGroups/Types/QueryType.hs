{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.QueryType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ResourceGroups.Types.QueryType (
  QueryType (
    ..
    , TagFilters10
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueryType = QueryType' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern TagFilters10 :: QueryType
pattern TagFilters10 = QueryType' "TAG_FILTERS_1_0"

{-# COMPLETE
  TagFilters10,
  QueryType' #-}

instance FromText QueryType where
    parser = (QueryType' . mk) <$> takeText

instance ToText QueryType where
    toText (QueryType' ci) = original ci

-- | Represents an enum of /known/ $QueryType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum QueryType where
    toEnum i = case i of
        0 -> TagFilters10
        _ -> (error . showText) $ "Unknown index for QueryType: " <> toText i
    fromEnum x = case x of
        TagFilters10 -> 0
        QueryType' name -> (error . showText) $ "Unknown QueryType: " <> original name

-- | Represents the bounds of /known/ $QueryType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded QueryType where
    minBound = TagFilters10
    maxBound = TagFilters10

instance Hashable     QueryType
instance NFData       QueryType
instance ToByteString QueryType
instance ToQuery      QueryType
instance ToHeader     QueryType

instance ToJSON QueryType where
    toJSON = toJSONText

instance FromJSON QueryType where
    parseJSON = parseJSONText "QueryType"
