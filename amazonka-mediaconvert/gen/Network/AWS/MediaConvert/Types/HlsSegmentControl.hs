{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsSegmentControl
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsSegmentControl where

import Network.AWS.Prelude
  
-- | When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
data HlsSegmentControl = SegmentedFiles
                       | SingleFile
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText HlsSegmentControl where
    parser = takeLowerText >>= \case
        "segmented_files" -> pure SegmentedFiles
        "single_file" -> pure SingleFile
        e -> fromTextError $ "Failure parsing HlsSegmentControl from value: '" <> e
           <> "'. Accepted values: segmented_files, single_file"

instance ToText HlsSegmentControl where
    toText = \case
        SegmentedFiles -> "SEGMENTED_FILES"
        SingleFile -> "SINGLE_FILE"

instance Hashable     HlsSegmentControl
instance NFData       HlsSegmentControl
instance ToByteString HlsSegmentControl
instance ToQuery      HlsSegmentControl
instance ToHeader     HlsSegmentControl

instance ToJSON HlsSegmentControl where
    toJSON = toJSONText

instance FromJSON HlsSegmentControl where
    parseJSON = parseJSONText "HlsSegmentControl"
