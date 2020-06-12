{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildPhaseType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.BuildPhaseType where

import Network.AWS.Prelude
  
data BuildPhaseType = Build
                    | Completed
                    | DownloadSource
                    | Finalizing
                    | Install
                    | PostBuild
                    | PreBuild
                    | Provisioning
                    | Queued
                    | Submitted
                    | UploadArtifacts
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText BuildPhaseType where
    parser = takeLowerText >>= \case
        "build" -> pure Build
        "completed" -> pure Completed
        "download_source" -> pure DownloadSource
        "finalizing" -> pure Finalizing
        "install" -> pure Install
        "post_build" -> pure PostBuild
        "pre_build" -> pure PreBuild
        "provisioning" -> pure Provisioning
        "queued" -> pure Queued
        "submitted" -> pure Submitted
        "upload_artifacts" -> pure UploadArtifacts
        e -> fromTextError $ "Failure parsing BuildPhaseType from value: '" <> e
           <> "'. Accepted values: build, completed, download_source, finalizing, install, post_build, pre_build, provisioning, queued, submitted, upload_artifacts"

instance ToText BuildPhaseType where
    toText = \case
        Build -> "BUILD"
        Completed -> "COMPLETED"
        DownloadSource -> "DOWNLOAD_SOURCE"
        Finalizing -> "FINALIZING"
        Install -> "INSTALL"
        PostBuild -> "POST_BUILD"
        PreBuild -> "PRE_BUILD"
        Provisioning -> "PROVISIONING"
        Queued -> "QUEUED"
        Submitted -> "SUBMITTED"
        UploadArtifacts -> "UPLOAD_ARTIFACTS"

instance Hashable     BuildPhaseType
instance NFData       BuildPhaseType
instance ToByteString BuildPhaseType
instance ToQuery      BuildPhaseType
instance ToHeader     BuildPhaseType

instance FromJSON BuildPhaseType where
    parseJSON = parseJSONText "BuildPhaseType"
