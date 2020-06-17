{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresFramerateControl (
  ProresFramerateControl (
    ..
    , PFCInitializeFromSource
    , PFCSpecified
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Using the API, set FramerateControl to INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Using the console, do this by choosing INITIALIZE_FROM_SOURCE for Framerate.
data ProresFramerateControl = ProresFramerateControl' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern PFCInitializeFromSource :: ProresFramerateControl
pattern PFCInitializeFromSource = ProresFramerateControl' "INITIALIZE_FROM_SOURCE"

pattern PFCSpecified :: ProresFramerateControl
pattern PFCSpecified = ProresFramerateControl' "SPECIFIED"

{-# COMPLETE
  PFCInitializeFromSource,
  PFCSpecified,
  ProresFramerateControl' #-}

instance FromText ProresFramerateControl where
    parser = (ProresFramerateControl' . mk) <$> takeText

instance ToText ProresFramerateControl where
    toText (ProresFramerateControl' ci) = original ci

-- | Represents an enum of /known/ $ProresFramerateControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ProresFramerateControl where
    toEnum i = case i of
        0 -> PFCInitializeFromSource
        1 -> PFCSpecified
        _ -> (error . showText) $ "Unknown index for ProresFramerateControl: " <> toText i
    fromEnum x = case x of
        PFCInitializeFromSource -> 0
        PFCSpecified -> 1
        ProresFramerateControl' name -> (error . showText) $ "Unknown ProresFramerateControl: " <> original name

-- | Represents the bounds of /known/ $ProresFramerateControl.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ProresFramerateControl where
    minBound = PFCInitializeFromSource
    maxBound = PFCSpecified

instance Hashable     ProresFramerateControl
instance NFData       ProresFramerateControl
instance ToByteString ProresFramerateControl
instance ToQuery      ProresFramerateControl
instance ToHeader     ProresFramerateControl

instance ToJSON ProresFramerateControl where
    toJSON = toJSONText

instance FromJSON ProresFramerateControl where
    parseJSON = parseJSONText "ProresFramerateControl"
