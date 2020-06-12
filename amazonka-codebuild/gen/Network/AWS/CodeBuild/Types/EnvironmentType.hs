{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.EnvironmentType where

import Network.AWS.Prelude
  
data EnvironmentType = ArmContainer
                     | LinuxContainer
                     | LinuxGpuContainer
                     | WindowsContainer
                         deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                   Typeable, Generic)

instance FromText EnvironmentType where
    parser = takeLowerText >>= \case
        "arm_container" -> pure ArmContainer
        "linux_container" -> pure LinuxContainer
        "linux_gpu_container" -> pure LinuxGpuContainer
        "windows_container" -> pure WindowsContainer
        e -> fromTextError $ "Failure parsing EnvironmentType from value: '" <> e
           <> "'. Accepted values: arm_container, linux_container, linux_gpu_container, windows_container"

instance ToText EnvironmentType where
    toText = \case
        ArmContainer -> "ARM_CONTAINER"
        LinuxContainer -> "LINUX_CONTAINER"
        LinuxGpuContainer -> "LINUX_GPU_CONTAINER"
        WindowsContainer -> "WINDOWS_CONTAINER"

instance Hashable     EnvironmentType
instance NFData       EnvironmentType
instance ToByteString EnvironmentType
instance ToQuery      EnvironmentType
instance ToHeader     EnvironmentType

instance ToJSON EnvironmentType where
    toJSON = toJSONText

instance FromJSON EnvironmentType where
    parseJSON = parseJSONText "EnvironmentType"
