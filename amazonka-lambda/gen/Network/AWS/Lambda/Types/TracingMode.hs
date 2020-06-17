{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.TracingMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.TracingMode (
  TracingMode (
    ..
    , Active
    , PassThrough
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TracingMode = TracingMode' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern Active :: TracingMode
pattern Active = TracingMode' "Active"

pattern PassThrough :: TracingMode
pattern PassThrough = TracingMode' "PassThrough"

{-# COMPLETE
  Active,
  PassThrough,
  TracingMode' #-}

instance FromText TracingMode where
    parser = (TracingMode' . mk) <$> takeText

instance ToText TracingMode where
    toText (TracingMode' ci) = original ci

-- | Represents an enum of /known/ $TracingMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TracingMode where
    toEnum i = case i of
        0 -> Active
        1 -> PassThrough
        _ -> (error . showText) $ "Unknown index for TracingMode: " <> toText i
    fromEnum x = case x of
        Active -> 0
        PassThrough -> 1
        TracingMode' name -> (error . showText) $ "Unknown TracingMode: " <> original name

-- | Represents the bounds of /known/ $TracingMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TracingMode where
    minBound = Active
    maxBound = PassThrough

instance Hashable     TracingMode
instance NFData       TracingMode
instance ToByteString TracingMode
instance ToQuery      TracingMode
instance ToHeader     TracingMode

instance ToJSON TracingMode where
    toJSON = toJSONText

instance FromJSON TracingMode where
    parseJSON = parseJSONText "TracingMode"
