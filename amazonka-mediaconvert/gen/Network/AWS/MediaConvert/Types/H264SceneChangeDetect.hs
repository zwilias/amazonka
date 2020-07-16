{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264SceneChangeDetect
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264SceneChangeDetect (
  H264SceneChangeDetect (
    ..
    , H264ScnChngDtctDisabled
    , H264ScnChngDtctEnabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Scene change detection (inserts I-frames on scene changes).
data H264SceneChangeDetect = H264SceneChangeDetect' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern H264ScnChngDtctDisabled :: H264SceneChangeDetect
pattern H264ScnChngDtctDisabled = H264SceneChangeDetect' "DISABLED"

pattern H264ScnChngDtctEnabled :: H264SceneChangeDetect
pattern H264ScnChngDtctEnabled = H264SceneChangeDetect' "ENABLED"

{-# COMPLETE
  H264ScnChngDtctDisabled,
  H264ScnChngDtctEnabled,
  H264SceneChangeDetect' #-}

instance FromText H264SceneChangeDetect where
    parser = (H264SceneChangeDetect' . mk) <$> takeText

instance ToText H264SceneChangeDetect where
    toText (H264SceneChangeDetect' ci) = original ci

-- | Represents an enum of /known/ $H264SceneChangeDetect.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264SceneChangeDetect where
    toEnum i = case i of
        0 -> H264ScnChngDtctDisabled
        1 -> H264ScnChngDtctEnabled
        _ -> (error . showText) $ "Unknown index for H264SceneChangeDetect: " <> toText i
    fromEnum x = case x of
        H264ScnChngDtctDisabled -> 0
        H264ScnChngDtctEnabled -> 1
        H264SceneChangeDetect' name -> (error . showText) $ "Unknown H264SceneChangeDetect: " <> original name

-- | Represents the bounds of /known/ $H264SceneChangeDetect.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264SceneChangeDetect where
    minBound = H264ScnChngDtctDisabled
    maxBound = H264ScnChngDtctEnabled

instance Hashable     H264SceneChangeDetect
instance NFData       H264SceneChangeDetect
instance ToByteString H264SceneChangeDetect
instance ToQuery      H264SceneChangeDetect
instance ToHeader     H264SceneChangeDetect

instance ToJSON H264SceneChangeDetect where
    toJSON = toJSONText

instance FromJSON H264SceneChangeDetect where
    parseJSON = parseJSONText "H264SceneChangeDetect"
