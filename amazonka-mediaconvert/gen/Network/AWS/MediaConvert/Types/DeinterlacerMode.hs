{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DeinterlacerMode where

import Network.AWS.Prelude
  
-- | Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
data DeinterlacerMode = Adaptive
                      | Deinterlace
                      | InverseTelecine
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText DeinterlacerMode where
    parser = takeLowerText >>= \case
        "adaptive" -> pure Adaptive
        "deinterlace" -> pure Deinterlace
        "inverse_telecine" -> pure InverseTelecine
        e -> fromTextError $ "Failure parsing DeinterlacerMode from value: '" <> e
           <> "'. Accepted values: adaptive, deinterlace, inverse_telecine"

instance ToText DeinterlacerMode where
    toText = \case
        Adaptive -> "ADAPTIVE"
        Deinterlace -> "DEINTERLACE"
        InverseTelecine -> "INVERSE_TELECINE"

instance Hashable     DeinterlacerMode
instance NFData       DeinterlacerMode
instance ToByteString DeinterlacerMode
instance ToQuery      DeinterlacerMode
instance ToHeader     DeinterlacerMode

instance ToJSON DeinterlacerMode where
    toJSON = toJSONText

instance FromJSON DeinterlacerMode where
    parseJSON = parseJSONText "DeinterlacerMode"
