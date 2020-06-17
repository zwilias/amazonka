{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Syntax
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2Syntax (
  Mpeg2Syntax (
    ..
    , MSD10
    , MSDefault
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).
data Mpeg2Syntax = Mpeg2Syntax' (CI Text)
                     deriving (Eq, Ord, Read, Show, Data, Typeable,
                               Generic)

pattern MSD10 :: Mpeg2Syntax
pattern MSD10 = Mpeg2Syntax' "D_10"

pattern MSDefault :: Mpeg2Syntax
pattern MSDefault = Mpeg2Syntax' "DEFAULT"

{-# COMPLETE
  MSD10,
  MSDefault,
  Mpeg2Syntax' #-}

instance FromText Mpeg2Syntax where
    parser = (Mpeg2Syntax' . mk) <$> takeText

instance ToText Mpeg2Syntax where
    toText (Mpeg2Syntax' ci) = original ci

-- | Represents an enum of /known/ $Mpeg2Syntax.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Mpeg2Syntax where
    toEnum i = case i of
        0 -> MSD10
        1 -> MSDefault
        _ -> (error . showText) $ "Unknown index for Mpeg2Syntax: " <> toText i
    fromEnum x = case x of
        MSD10 -> 0
        MSDefault -> 1
        Mpeg2Syntax' name -> (error . showText) $ "Unknown Mpeg2Syntax: " <> original name

-- | Represents the bounds of /known/ $Mpeg2Syntax.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Mpeg2Syntax where
    minBound = MSD10
    maxBound = MSDefault

instance Hashable     Mpeg2Syntax
instance NFData       Mpeg2Syntax
instance ToByteString Mpeg2Syntax
instance ToQuery      Mpeg2Syntax
instance ToHeader     Mpeg2Syntax

instance ToJSON Mpeg2Syntax where
    toJSON = toJSONText

instance FromJSON Mpeg2Syntax where
    parseJSON = parseJSONText "Mpeg2Syntax"
