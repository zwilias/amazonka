{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Lambda.Types.Runtime (
  Runtime (
    ..
    , DOTNETCORE1_0
    , DOTNETCORE2_0
    , GO1_x
    , JAVA8
    , NODEJS4_3
    , NODEJS4_3Edge
    , NODEJS6_10
    , NODEJS8_10
    , Nodejs
    , PYTHON2_7
    , PYTHON3_6
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Runtime = Runtime' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern DOTNETCORE1_0 :: Runtime
pattern DOTNETCORE1_0 = Runtime' "dotnetcore1.0"

pattern DOTNETCORE2_0 :: Runtime
pattern DOTNETCORE2_0 = Runtime' "dotnetcore2.0"

pattern GO1_x :: Runtime
pattern GO1_x = Runtime' "go1.x"

pattern JAVA8 :: Runtime
pattern JAVA8 = Runtime' "java8"

pattern NODEJS4_3 :: Runtime
pattern NODEJS4_3 = Runtime' "nodejs4.3"

pattern NODEJS4_3Edge :: Runtime
pattern NODEJS4_3Edge = Runtime' "nodejs4.3-edge"

pattern NODEJS6_10 :: Runtime
pattern NODEJS6_10 = Runtime' "nodejs6.10"

pattern NODEJS8_10 :: Runtime
pattern NODEJS8_10 = Runtime' "nodejs8.10"

pattern Nodejs :: Runtime
pattern Nodejs = Runtime' "nodejs"

pattern PYTHON2_7 :: Runtime
pattern PYTHON2_7 = Runtime' "python2.7"

pattern PYTHON3_6 :: Runtime
pattern PYTHON3_6 = Runtime' "python3.6"

{-# COMPLETE
  DOTNETCORE1_0,
  DOTNETCORE2_0,
  GO1_x,
  JAVA8,
  NODEJS4_3,
  NODEJS4_3Edge,
  NODEJS6_10,
  NODEJS8_10,
  Nodejs,
  PYTHON2_7,
  PYTHON3_6,
  Runtime' #-}

instance FromText Runtime where
    parser = (Runtime' . mk) <$> takeText

instance ToText Runtime where
    toText (Runtime' ci) = original ci

-- | Represents an enum of /known/ $Runtime.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Runtime where
    toEnum i = case i of
        0 -> DOTNETCORE1_0
        1 -> DOTNETCORE2_0
        2 -> GO1_x
        3 -> JAVA8
        4 -> NODEJS4_3
        5 -> NODEJS4_3Edge
        6 -> NODEJS6_10
        7 -> NODEJS8_10
        8 -> Nodejs
        9 -> PYTHON2_7
        10 -> PYTHON3_6
        _ -> (error . showText) $ "Unknown index for Runtime: " <> toText i
    fromEnum x = case x of
        DOTNETCORE1_0 -> 0
        DOTNETCORE2_0 -> 1
        GO1_x -> 2
        JAVA8 -> 3
        NODEJS4_3 -> 4
        NODEJS4_3Edge -> 5
        NODEJS6_10 -> 6
        NODEJS8_10 -> 7
        Nodejs -> 8
        PYTHON2_7 -> 9
        PYTHON3_6 -> 10
        Runtime' name -> (error . showText) $ "Unknown Runtime: " <> original name

-- | Represents the bounds of /known/ $Runtime.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Runtime where
    minBound = DOTNETCORE1_0
    maxBound = PYTHON3_6

instance Hashable     Runtime
instance NFData       Runtime
instance ToByteString Runtime
instance ToQuery      Runtime
instance ToHeader     Runtime

instance ToJSON Runtime where
    toJSON = toJSONText

instance FromJSON Runtime where
    parseJSON = parseJSONText "Runtime"
