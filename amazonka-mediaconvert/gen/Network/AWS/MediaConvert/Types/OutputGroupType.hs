{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.OutputGroupType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.OutputGroupType where

import Network.AWS.Prelude
  
-- | Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming)
data OutputGroupType = DashIsoGroupSettings
                     | FileGroupSettings
                     | HlsGroupSettings
                     | MsSmoothGroupSettings
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText OutputGroupType where
    parser = takeLowerText >>= \case
        "dash_iso_group_settings" -> pure DashIsoGroupSettings
        "file_group_settings" -> pure FileGroupSettings
        "hls_group_settings" -> pure HlsGroupSettings
        "ms_smooth_group_settings" -> pure MsSmoothGroupSettings
        e -> fromTextError $ "Failure parsing OutputGroupType from value: '" <> e
           <> "'. Accepted values: dash_iso_group_settings, file_group_settings, hls_group_settings, ms_smooth_group_settings"

instance ToText OutputGroupType where
    toText = \case
        DashIsoGroupSettings -> "DASH_ISO_GROUP_SETTINGS"
        FileGroupSettings -> "FILE_GROUP_SETTINGS"
        HlsGroupSettings -> "HLS_GROUP_SETTINGS"
        MsSmoothGroupSettings -> "MS_SMOOTH_GROUP_SETTINGS"

instance Hashable     OutputGroupType
instance NFData       OutputGroupType
instance ToByteString OutputGroupType
instance ToQuery      OutputGroupType
instance ToHeader     OutputGroupType

instance ToJSON OutputGroupType where
    toJSON = toJSONText

instance FromJSON OutputGroupType where
    parseJSON = parseJSONText "OutputGroupType"
