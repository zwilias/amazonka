{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.EmbeddedConvert608To708 (
  EmbeddedConvert608To708 (
    ..
    , ECTDisabled
    , ECTUpconvert
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to UPCONVERT, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
data EmbeddedConvert608To708 = EmbeddedConvert608To708' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern ECTDisabled :: EmbeddedConvert608To708
pattern ECTDisabled = EmbeddedConvert608To708' "DISABLED"

pattern ECTUpconvert :: EmbeddedConvert608To708
pattern ECTUpconvert = EmbeddedConvert608To708' "UPCONVERT"

{-# COMPLETE
  ECTDisabled,
  ECTUpconvert,
  EmbeddedConvert608To708' #-}

instance FromText EmbeddedConvert608To708 where
    parser = (EmbeddedConvert608To708' . mk) <$> takeText

instance ToText EmbeddedConvert608To708 where
    toText (EmbeddedConvert608To708' ci) = original ci

-- | Represents an enum of /known/ $EmbeddedConvert608To708.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum EmbeddedConvert608To708 where
    toEnum i = case i of
        0 -> ECTDisabled
        1 -> ECTUpconvert
        _ -> (error . showText) $ "Unknown index for EmbeddedConvert608To708: " <> toText i
    fromEnum x = case x of
        ECTDisabled -> 0
        ECTUpconvert -> 1
        EmbeddedConvert608To708' name -> (error . showText) $ "Unknown EmbeddedConvert608To708: " <> original name

-- | Represents the bounds of /known/ $EmbeddedConvert608To708.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded EmbeddedConvert608To708 where
    minBound = ECTDisabled
    maxBound = ECTUpconvert

instance Hashable     EmbeddedConvert608To708
instance NFData       EmbeddedConvert608To708
instance ToByteString EmbeddedConvert608To708
instance ToQuery      EmbeddedConvert608To708
instance ToHeader     EmbeddedConvert608To708

instance ToJSON EmbeddedConvert608To708 where
    toJSON = toJSONText

instance FromJSON EmbeddedConvert608To708 where
    parseJSON = parseJSONText "EmbeddedConvert608To708"
