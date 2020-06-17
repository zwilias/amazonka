{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.XRay.Types.Product (
    module Network.AWS.XRay.Types.Alias,
    module Network.AWS.XRay.Types.AnnotationValue,
    module Network.AWS.XRay.Types.BackendConnectionErrors,
    module Network.AWS.XRay.Types.Edge,
    module Network.AWS.XRay.Types.EdgeStatistics,
    module Network.AWS.XRay.Types.EncryptionConfig,
    module Network.AWS.XRay.Types.ErrorStatistics,
    module Network.AWS.XRay.Types.FaultStatistics,
    module Network.AWS.XRay.Types.HTTP,
    module Network.AWS.XRay.Types.HistogramEntry,
    module Network.AWS.XRay.Types.Segment,
    module Network.AWS.XRay.Types.ServiceId,
    module Network.AWS.XRay.Types.ServiceInfo,
    module Network.AWS.XRay.Types.ServiceStatistics,
    module Network.AWS.XRay.Types.TelemetryRecord,
    module Network.AWS.XRay.Types.Trace,
    module Network.AWS.XRay.Types.TraceSummary,
    module Network.AWS.XRay.Types.TraceUser,
    module Network.AWS.XRay.Types.UnprocessedTraceSegment,
    module Network.AWS.XRay.Types.ValueWithServiceIds
  ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.Alias
import Network.AWS.XRay.Types.AnnotationValue
import Network.AWS.XRay.Types.BackendConnectionErrors
import Network.AWS.XRay.Types.Edge
import Network.AWS.XRay.Types.EdgeStatistics
import Network.AWS.XRay.Types.EncryptionConfig
import Network.AWS.XRay.Types.ErrorStatistics
import Network.AWS.XRay.Types.FaultStatistics
import Network.AWS.XRay.Types.HTTP
import Network.AWS.XRay.Types.HistogramEntry
import Network.AWS.XRay.Types.Segment
import Network.AWS.XRay.Types.ServiceId
import Network.AWS.XRay.Types.ServiceInfo
import Network.AWS.XRay.Types.ServiceStatistics
import Network.AWS.XRay.Types.TelemetryRecord
import Network.AWS.XRay.Types.Trace
import Network.AWS.XRay.Types.TraceSummary
import Network.AWS.XRay.Types.TraceUser
import Network.AWS.XRay.Types.UnprocessedTraceSegment
import Network.AWS.XRay.Types.ValueWithServiceIds
