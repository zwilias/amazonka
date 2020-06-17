{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.Product (
    module Network.AWS.SageMaker.Types.AlgorithmSpecification,
    module Network.AWS.SageMaker.Types.Channel,
    module Network.AWS.SageMaker.Types.ContainerDefinition,
    module Network.AWS.SageMaker.Types.DataSource,
    module Network.AWS.SageMaker.Types.DesiredWeightAndCapacity,
    module Network.AWS.SageMaker.Types.EndpointConfigSummary,
    module Network.AWS.SageMaker.Types.EndpointSummary,
    module Network.AWS.SageMaker.Types.ModelArtifacts,
    module Network.AWS.SageMaker.Types.ModelSummary,
    module Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSummary,
    module Network.AWS.SageMaker.Types.NotebookInstanceLifecycleHook,
    module Network.AWS.SageMaker.Types.NotebookInstanceSummary,
    module Network.AWS.SageMaker.Types.OutputDataConfig,
    module Network.AWS.SageMaker.Types.ProductionVariant,
    module Network.AWS.SageMaker.Types.ProductionVariantSummary,
    module Network.AWS.SageMaker.Types.ResourceConfig,
    module Network.AWS.SageMaker.Types.S3DataSource,
    module Network.AWS.SageMaker.Types.StoppingCondition,
    module Network.AWS.SageMaker.Types.Tag,
    module Network.AWS.SageMaker.Types.TrainingJobSummary,
    module Network.AWS.SageMaker.Types.VPCConfig
  ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AlgorithmSpecification
import Network.AWS.SageMaker.Types.Channel
import Network.AWS.SageMaker.Types.ContainerDefinition
import Network.AWS.SageMaker.Types.DataSource
import Network.AWS.SageMaker.Types.DesiredWeightAndCapacity
import Network.AWS.SageMaker.Types.EndpointConfigSummary
import Network.AWS.SageMaker.Types.EndpointSummary
import Network.AWS.SageMaker.Types.ModelArtifacts
import Network.AWS.SageMaker.Types.ModelSummary
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSummary
import Network.AWS.SageMaker.Types.NotebookInstanceLifecycleHook
import Network.AWS.SageMaker.Types.NotebookInstanceSummary
import Network.AWS.SageMaker.Types.OutputDataConfig
import Network.AWS.SageMaker.Types.ProductionVariant
import Network.AWS.SageMaker.Types.ProductionVariantSummary
import Network.AWS.SageMaker.Types.ResourceConfig
import Network.AWS.SageMaker.Types.S3DataSource
import Network.AWS.SageMaker.Types.StoppingCondition
import Network.AWS.SageMaker.Types.Tag
import Network.AWS.SageMaker.Types.TrainingJobSummary
import Network.AWS.SageMaker.Types.VPCConfig
