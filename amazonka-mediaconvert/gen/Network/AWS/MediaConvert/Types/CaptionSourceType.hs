{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionSourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionSourceType (
  CaptionSourceType (
    ..
    , CSTAncillary
    , CSTDvbSub
    , CSTEmbedded
    , CSTNullSource
    , CSTScc
    , CSTSrt
    , CSTStl
    , CSTTeletext
    , CSTTtml
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
data CaptionSourceType = CaptionSourceType' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern CSTAncillary :: CaptionSourceType
pattern CSTAncillary = CaptionSourceType' "ANCILLARY"

pattern CSTDvbSub :: CaptionSourceType
pattern CSTDvbSub = CaptionSourceType' "DVB_SUB"

pattern CSTEmbedded :: CaptionSourceType
pattern CSTEmbedded = CaptionSourceType' "EMBEDDED"

pattern CSTNullSource :: CaptionSourceType
pattern CSTNullSource = CaptionSourceType' "NULL_SOURCE"

pattern CSTScc :: CaptionSourceType
pattern CSTScc = CaptionSourceType' "SCC"

pattern CSTSrt :: CaptionSourceType
pattern CSTSrt = CaptionSourceType' "SRT"

pattern CSTStl :: CaptionSourceType
pattern CSTStl = CaptionSourceType' "STL"

pattern CSTTeletext :: CaptionSourceType
pattern CSTTeletext = CaptionSourceType' "TELETEXT"

pattern CSTTtml :: CaptionSourceType
pattern CSTTtml = CaptionSourceType' "TTML"

{-# COMPLETE
  CSTAncillary,
  CSTDvbSub,
  CSTEmbedded,
  CSTNullSource,
  CSTScc,
  CSTSrt,
  CSTStl,
  CSTTeletext,
  CSTTtml,
  CaptionSourceType' #-}

instance FromText CaptionSourceType where
    parser = (CaptionSourceType' . mk) <$> takeText

instance ToText CaptionSourceType where
    toText (CaptionSourceType' ci) = original ci

-- | Represents an enum of /known/ $CaptionSourceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CaptionSourceType where
    toEnum i = case i of
        0 -> CSTAncillary
        1 -> CSTDvbSub
        2 -> CSTEmbedded
        3 -> CSTNullSource
        4 -> CSTScc
        5 -> CSTSrt
        6 -> CSTStl
        7 -> CSTTeletext
        8 -> CSTTtml
        _ -> (error . showText) $ "Unknown index for CaptionSourceType: " <> toText i
    fromEnum x = case x of
        CSTAncillary -> 0
        CSTDvbSub -> 1
        CSTEmbedded -> 2
        CSTNullSource -> 3
        CSTScc -> 4
        CSTSrt -> 5
        CSTStl -> 6
        CSTTeletext -> 7
        CSTTtml -> 8
        CaptionSourceType' name -> (error . showText) $ "Unknown CaptionSourceType: " <> original name

-- | Represents the bounds of /known/ $CaptionSourceType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CaptionSourceType where
    minBound = CSTAncillary
    maxBound = CSTTtml

instance Hashable     CaptionSourceType
instance NFData       CaptionSourceType
instance ToByteString CaptionSourceType
instance ToQuery      CaptionSourceType
instance ToHeader     CaptionSourceType

instance ToJSON CaptionSourceType where
    toJSON = toJSONText

instance FromJSON CaptionSourceType where
    parseJSON = parseJSONText "CaptionSourceType"
