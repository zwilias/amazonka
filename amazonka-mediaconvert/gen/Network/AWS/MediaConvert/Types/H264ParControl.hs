{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264ParControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264ParControl (
  H264ParControl (
    ..
    , HPCInitializeFromSource
    , HPCSpecified
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
data H264ParControl = H264ParControl' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern HPCInitializeFromSource :: H264ParControl
pattern HPCInitializeFromSource = H264ParControl' "INITIALIZE_FROM_SOURCE"

pattern HPCSpecified :: H264ParControl
pattern HPCSpecified = H264ParControl' "SPECIFIED"

{-# COMPLETE
  HPCInitializeFromSource,
  HPCSpecified,
  H264ParControl' #-}

instance FromText H264ParControl where
    parser = (H264ParControl' . mk) <$> takeText

instance ToText H264ParControl where
    toText (H264ParControl' ci) = original ci

-- | Represents an enum of /known/ $H264ParControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264ParControl where
    toEnum i = case i of
        0 -> HPCInitializeFromSource
        1 -> HPCSpecified
        _ -> (error . showText) $ "Unknown index for H264ParControl: " <> toText i
    fromEnum x = case x of
        HPCInitializeFromSource -> 0
        HPCSpecified -> 1
        H264ParControl' name -> (error . showText) $ "Unknown H264ParControl: " <> original name

-- | Represents the bounds of /known/ $H264ParControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264ParControl where
    minBound = HPCInitializeFromSource
    maxBound = HPCSpecified

instance Hashable     H264ParControl
instance NFData       H264ParControl
instance ToByteString H264ParControl
instance ToQuery      H264ParControl
instance ToHeader     H264ParControl

instance ToJSON H264ParControl where
    toJSON = toJSONText

instance FromJSON H264ParControl where
    parseJSON = parseJSONText "H264ParControl"
