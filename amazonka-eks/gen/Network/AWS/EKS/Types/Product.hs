{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Product (
    module Network.AWS.EKS.Types.AutoScalingGroup,
    module Network.AWS.EKS.Types.Certificate,
    module Network.AWS.EKS.Types.Cluster,
    module Network.AWS.EKS.Types.EncryptionConfig,
    module Network.AWS.EKS.Types.ErrorDetail,
    module Network.AWS.EKS.Types.FargateProfile,
    module Network.AWS.EKS.Types.FargateProfileSelector,
    module Network.AWS.EKS.Types.Identity,
    module Network.AWS.EKS.Types.Issue,
    module Network.AWS.EKS.Types.LogSetup,
    module Network.AWS.EKS.Types.Logging,
    module Network.AWS.EKS.Types.Nodegroup,
    module Network.AWS.EKS.Types.NodegroupHealth,
    module Network.AWS.EKS.Types.NodegroupResources,
    module Network.AWS.EKS.Types.NodegroupScalingConfig,
    module Network.AWS.EKS.Types.OIdC,
    module Network.AWS.EKS.Types.Provider,
    module Network.AWS.EKS.Types.RemoteAccessConfig,
    module Network.AWS.EKS.Types.Update,
    module Network.AWS.EKS.Types.UpdateLabelsPayload,
    module Network.AWS.EKS.Types.UpdateParam,
    module Network.AWS.EKS.Types.VPCConfigRequest,
    module Network.AWS.EKS.Types.VPCConfigResponse
  ) where

import Network.AWS.EKS.Types.AutoScalingGroup
import Network.AWS.EKS.Types.Certificate
import Network.AWS.EKS.Types.Cluster
import Network.AWS.EKS.Types.EncryptionConfig
import Network.AWS.EKS.Types.ErrorDetail
import Network.AWS.EKS.Types.FargateProfile
import Network.AWS.EKS.Types.FargateProfileSelector
import Network.AWS.EKS.Types.Identity
import Network.AWS.EKS.Types.Issue
import Network.AWS.EKS.Types.LogSetup
import Network.AWS.EKS.Types.Logging
import Network.AWS.EKS.Types.Nodegroup
import Network.AWS.EKS.Types.NodegroupHealth
import Network.AWS.EKS.Types.NodegroupResources
import Network.AWS.EKS.Types.NodegroupScalingConfig
import Network.AWS.EKS.Types.OIdC
import Network.AWS.EKS.Types.Provider
import Network.AWS.EKS.Types.RemoteAccessConfig
import Network.AWS.EKS.Types.Update
import Network.AWS.EKS.Types.UpdateLabelsPayload
import Network.AWS.EKS.Types.UpdateParam
import Network.AWS.EKS.Types.VPCConfigRequest
import Network.AWS.EKS.Types.VPCConfigResponse
import Network.AWS.Lens
import Network.AWS.Prelude
