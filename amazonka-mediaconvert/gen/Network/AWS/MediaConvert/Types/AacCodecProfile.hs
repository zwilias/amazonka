{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacCodecProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AacCodecProfile where

import Network.AWS.Prelude
  
-- | AAC Profile.
data AacCodecProfile = HEV1
                     | HEV2
                     | LC
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText AacCodecProfile where
    parser = takeLowerText >>= \case
        "hev1" -> pure HEV1
        "hev2" -> pure HEV2
        "lc" -> pure LC
        e -> fromTextError $ "Failure parsing AacCodecProfile from value: '" <> e
           <> "'. Accepted values: hev1, hev2, lc"

instance ToText AacCodecProfile where
    toText = \case
        HEV1 -> "HEV1"
        HEV2 -> "HEV2"
        LC -> "LC"

instance Hashable     AacCodecProfile
instance NFData       AacCodecProfile
instance ToByteString AacCodecProfile
instance ToQuery      AacCodecProfile
instance ToHeader     AacCodecProfile

instance ToJSON AacCodecProfile where
    toJSON = toJSONText

instance FromJSON AacCodecProfile where
    parseJSON = parseJSONText "AacCodecProfile"
