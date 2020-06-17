{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputDeblockFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InputDeblockFilter (
  InputDeblockFilter (
    ..
    , Disabled
    , Enabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manaully controllable for MPEG2 and uncompressed video inputs.
data InputDeblockFilter = InputDeblockFilter' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern Disabled :: InputDeblockFilter
pattern Disabled = InputDeblockFilter' "DISABLED"

pattern Enabled :: InputDeblockFilter
pattern Enabled = InputDeblockFilter' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  InputDeblockFilter' #-}

instance FromText InputDeblockFilter where
    parser = (InputDeblockFilter' . mk) <$> takeText

instance ToText InputDeblockFilter where
    toText (InputDeblockFilter' ci) = original ci

-- | Represents an enum of /known/ $InputDeblockFilter.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InputDeblockFilter where
    toEnum i = case i of
        0 -> Disabled
        1 -> Enabled
        _ -> (error . showText) $ "Unknown index for InputDeblockFilter: " <> toText i
    fromEnum x = case x of
        Disabled -> 0
        Enabled -> 1
        InputDeblockFilter' name -> (error . showText) $ "Unknown InputDeblockFilter: " <> original name

-- | Represents the bounds of /known/ $InputDeblockFilter.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InputDeblockFilter where
    minBound = Disabled
    maxBound = Enabled

instance Hashable     InputDeblockFilter
instance NFData       InputDeblockFilter
instance ToByteString InputDeblockFilter
instance ToQuery      InputDeblockFilter
instance ToHeader     InputDeblockFilter

instance ToJSON InputDeblockFilter where
    toJSON = toJSONText

instance FromJSON InputDeblockFilter where
    parseJSON = parseJSONText "InputDeblockFilter"
