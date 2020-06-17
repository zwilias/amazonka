{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2FramerateControl (
  Mpeg2FramerateControl (
    ..
    , MFCInitializeFromSource
    , MFCSpecified
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data Mpeg2FramerateControl = Mpeg2FramerateControl' (CI
                                                       Text)
                               deriving (Eq, Ord, Read, Show, Data, Typeable,
                                         Generic)

pattern MFCInitializeFromSource :: Mpeg2FramerateControl
pattern MFCInitializeFromSource = Mpeg2FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern MFCSpecified :: Mpeg2FramerateControl
pattern MFCSpecified = Mpeg2FramerateControl' "SPECIFIED"

{-# COMPLETE
  MFCInitializeFromSource,
  MFCSpecified,
  Mpeg2FramerateControl' #-}

instance FromText Mpeg2FramerateControl where
    parser = (Mpeg2FramerateControl' . mk) <$> takeText

instance ToText Mpeg2FramerateControl where
    toText (Mpeg2FramerateControl' ci) = original ci

-- | Represents an enum of /known/ $Mpeg2FramerateControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Mpeg2FramerateControl where
    toEnum i = case i of
        0 -> MFCInitializeFromSource
        1 -> MFCSpecified
        _ -> (error . showText) $ "Unknown index for Mpeg2FramerateControl: " <> toText i
    fromEnum x = case x of
        MFCInitializeFromSource -> 0
        MFCSpecified -> 1
        Mpeg2FramerateControl' name -> (error . showText) $ "Unknown Mpeg2FramerateControl: " <> original name

-- | Represents the bounds of /known/ $Mpeg2FramerateControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Mpeg2FramerateControl where
    minBound = MFCInitializeFromSource
    maxBound = MFCSpecified

instance Hashable     Mpeg2FramerateControl
instance NFData       Mpeg2FramerateControl
instance ToByteString Mpeg2FramerateControl
instance ToQuery      Mpeg2FramerateControl
instance ToHeader     Mpeg2FramerateControl

instance ToJSON Mpeg2FramerateControl where
    toJSON = toJSONText

instance FromJSON Mpeg2FramerateControl where
    parseJSON = parseJSONText "Mpeg2FramerateControl"
