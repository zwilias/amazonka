{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ExecutionMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.ExecutionMode (
  ExecutionMode (
    ..
    , Auto
    , Interactive
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionMode = ExecutionMode' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Auto :: ExecutionMode
pattern Auto = ExecutionMode' "Auto"

pattern Interactive :: ExecutionMode
pattern Interactive = ExecutionMode' "Interactive"

{-# COMPLETE
  Auto,
  Interactive,
  ExecutionMode' #-}

instance FromText ExecutionMode where
    parser = (ExecutionMode' . mk) <$> takeText

instance ToText ExecutionMode where
    toText (ExecutionMode' ci) = original ci

-- | Represents an enum of /known/ $ExecutionMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ExecutionMode where
    toEnum i = case i of
        0 -> Auto
        1 -> Interactive
        _ -> (error . showText) $ "Unknown index for ExecutionMode: " <> toText i
    fromEnum x = case x of
        Auto -> 0
        Interactive -> 1
        ExecutionMode' name -> (error . showText) $ "Unknown ExecutionMode: " <> original name

-- | Represents the bounds of /known/ $ExecutionMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ExecutionMode where
    minBound = Auto
    maxBound = Interactive

instance Hashable     ExecutionMode
instance NFData       ExecutionMode
instance ToByteString ExecutionMode
instance ToQuery      ExecutionMode
instance ToHeader     ExecutionMode

instance ToJSON ExecutionMode where
    toJSON = toJSONText

instance FromJSON ExecutionMode where
    parseJSON = parseJSONText "ExecutionMode"
