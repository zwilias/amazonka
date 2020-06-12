{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor where

import Network.AWS.Prelude
  
-- | Specifies the color of the rectangle behind the captions.
--
-- All burn-in and DVB-Sub font settings must match.
data DvbSubtitleBackgroundColor = DSBCBlack
                                | DSBCNone
                                | DSBCWhite
                                    deriving (Eq, Ord, Read, Show, Enum,
                                              Bounded, Data, Typeable, Generic)

instance FromText DvbSubtitleBackgroundColor where
    parser = takeLowerText >>= \case
        "black" -> pure DSBCBlack
        "none" -> pure DSBCNone
        "white" -> pure DSBCWhite
        e -> fromTextError $ "Failure parsing DvbSubtitleBackgroundColor from value: '" <> e
           <> "'. Accepted values: black, none, white"

instance ToText DvbSubtitleBackgroundColor where
    toText = \case
        DSBCBlack -> "BLACK"
        DSBCNone -> "NONE"
        DSBCWhite -> "WHITE"

instance Hashable     DvbSubtitleBackgroundColor
instance NFData       DvbSubtitleBackgroundColor
instance ToByteString DvbSubtitleBackgroundColor
instance ToQuery      DvbSubtitleBackgroundColor
instance ToHeader     DvbSubtitleBackgroundColor

instance ToJSON DvbSubtitleBackgroundColor where
    toJSON = toJSONText

instance FromJSON DvbSubtitleBackgroundColor where
    parseJSON = parseJSONText "DvbSubtitleBackgroundColor"
