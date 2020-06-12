{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.FileSourceConvert608To708
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.FileSourceConvert608To708 where

import Network.AWS.Prelude
  
-- | If set to UPCONVERT, 608 caption data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
data FileSourceConvert608To708 = FSCTDisabled
                               | FSCTUpconvert
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText FileSourceConvert608To708 where
    parser = takeLowerText >>= \case
        "disabled" -> pure FSCTDisabled
        "upconvert" -> pure FSCTUpconvert
        e -> fromTextError $ "Failure parsing FileSourceConvert608To708 from value: '" <> e
           <> "'. Accepted values: disabled, upconvert"

instance ToText FileSourceConvert608To708 where
    toText = \case
        FSCTDisabled -> "DISABLED"
        FSCTUpconvert -> "UPCONVERT"

instance Hashable     FileSourceConvert608To708
instance NFData       FileSourceConvert608To708
instance ToByteString FileSourceConvert608To708
instance ToQuery      FileSourceConvert608To708
instance ToHeader     FileSourceConvert608To708

instance ToJSON FileSourceConvert608To708 where
    toJSON = toJSONText

instance FromJSON FileSourceConvert608To708 where
    parseJSON = parseJSONText "FileSourceConvert608To708"
