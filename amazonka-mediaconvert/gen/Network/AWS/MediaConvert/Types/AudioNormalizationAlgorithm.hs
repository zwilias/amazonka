{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm where

import Network.AWS.Prelude
  
-- | Audio normalization algorithm to use. 1770-1 conforms to the CALM Act specification, 1770-2 conforms to the EBU R-128 specification.
data AudioNormalizationAlgorithm = ItuBs17701
                                 | ItuBs17702
                                     deriving (Eq, Ord, Read, Show, Enum,
                                               Bounded, Data, Typeable, Generic)

instance FromText AudioNormalizationAlgorithm where
    parser = takeLowerText >>= \case
        "itu_bs_1770_1" -> pure ItuBs17701
        "itu_bs_1770_2" -> pure ItuBs17702
        e -> fromTextError $ "Failure parsing AudioNormalizationAlgorithm from value: '" <> e
           <> "'. Accepted values: itu_bs_1770_1, itu_bs_1770_2"

instance ToText AudioNormalizationAlgorithm where
    toText = \case
        ItuBs17701 -> "ITU_BS_1770_1"
        ItuBs17702 -> "ITU_BS_1770_2"

instance Hashable     AudioNormalizationAlgorithm
instance NFData       AudioNormalizationAlgorithm
instance ToByteString AudioNormalizationAlgorithm
instance ToQuery      AudioNormalizationAlgorithm
instance ToHeader     AudioNormalizationAlgorithm

instance ToJSON AudioNormalizationAlgorithm where
    toJSON = toJSONText

instance FromJSON AudioNormalizationAlgorithm where
    parseJSON = parseJSONText "AudioNormalizationAlgorithm"
