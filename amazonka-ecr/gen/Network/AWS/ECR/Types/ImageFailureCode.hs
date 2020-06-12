{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageFailureCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types.ImageFailureCode where

import Network.AWS.Prelude
  
data ImageFailureCode = ImageNotFound
                      | ImageTagDoesNotMatchDigest
                      | InvalidImageDigest
                      | InvalidImageTag
                      | MissingDigestAndTag
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText ImageFailureCode where
    parser = takeLowerText >>= \case
        "imagenotfound" -> pure ImageNotFound
        "imagetagdoesnotmatchdigest" -> pure ImageTagDoesNotMatchDigest
        "invalidimagedigest" -> pure InvalidImageDigest
        "invalidimagetag" -> pure InvalidImageTag
        "missingdigestandtag" -> pure MissingDigestAndTag
        e -> fromTextError $ "Failure parsing ImageFailureCode from value: '" <> e
           <> "'. Accepted values: imagenotfound, imagetagdoesnotmatchdigest, invalidimagedigest, invalidimagetag, missingdigestandtag"

instance ToText ImageFailureCode where
    toText = \case
        ImageNotFound -> "ImageNotFound"
        ImageTagDoesNotMatchDigest -> "ImageTagDoesNotMatchDigest"
        InvalidImageDigest -> "InvalidImageDigest"
        InvalidImageTag -> "InvalidImageTag"
        MissingDigestAndTag -> "MissingDigestAndTag"

instance Hashable     ImageFailureCode
instance NFData       ImageFailureCode
instance ToByteString ImageFailureCode
instance ToQuery      ImageFailureCode
instance ToHeader     ImageFailureCode

instance FromJSON ImageFailureCode where
    parseJSON = parseJSONText "ImageFailureCode"
