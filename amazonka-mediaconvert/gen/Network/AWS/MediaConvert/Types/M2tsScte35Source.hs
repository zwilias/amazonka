{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsScte35Source
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.M2tsScte35Source (
  M2tsScte35Source (
    ..
    , MSSNone
    , MSSPassthrough
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
data M2tsScte35Source = M2tsScte35Source' (CI Text)
                          deriving (Eq, Ord, Read, Show, Data, Typeable,
                                    Generic)

pattern MSSNone :: M2tsScte35Source
pattern MSSNone = M2tsScte35Source' "NONE"

pattern MSSPassthrough :: M2tsScte35Source
pattern MSSPassthrough = M2tsScte35Source' "PASSTHROUGH"

{-# COMPLETE
  MSSNone,
  MSSPassthrough,
  M2tsScte35Source' #-}

instance FromText M2tsScte35Source where
    parser = (M2tsScte35Source' . mk) <$> takeText

instance ToText M2tsScte35Source where
    toText (M2tsScte35Source' ci) = original ci

-- | Represents an enum of /known/ $M2tsScte35Source.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum M2tsScte35Source where
    toEnum i = case i of
        0 -> MSSNone
        1 -> MSSPassthrough
        _ -> (error . showText) $ "Unknown index for M2tsScte35Source: " <> toText i
    fromEnum x = case x of
        MSSNone -> 0
        MSSPassthrough -> 1
        M2tsScte35Source' name -> (error . showText) $ "Unknown M2tsScte35Source: " <> original name

-- | Represents the bounds of /known/ $M2tsScte35Source.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded M2tsScte35Source where
    minBound = MSSNone
    maxBound = MSSPassthrough

instance Hashable     M2tsScte35Source
instance NFData       M2tsScte35Source
instance ToByteString M2tsScte35Source
instance ToQuery      M2tsScte35Source
instance ToHeader     M2tsScte35Source

instance ToJSON M2tsScte35Source where
    toJSON = toJSONText

instance FromJSON M2tsScte35Source where
    parseJSON = parseJSONText "M2tsScte35Source"
