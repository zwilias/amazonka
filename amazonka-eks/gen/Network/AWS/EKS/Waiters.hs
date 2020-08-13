{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeFamilies      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Waiters
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Waiters where

import Network.AWS.EKS.DescribeCluster
import Network.AWS.EKS.DescribeCluster
import Network.AWS.EKS.DescribeNodegroup
import Network.AWS.EKS.DescribeNodegroup
import Network.AWS.EKS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Waiter

-- | Polls 'Network.AWS.EKS.DescribeNodegroup' every 30 seconds until a successful state is reached. An error is returned after 40 failed checks.
nodegroupDeleted :: Wait DescribeNodegroup
nodegroupDeleted
  = Wait{_waitName = "NodegroupDeleted",
         _waitAttempts = 40, _waitDelay = 30,
         _waitAcceptors =
           [matchAll "DELETE_FAILED" AcceptFailure
              (desrsNodegroup . _Just . nStatus . _Just .
                 to toTextCI),
            matchError "ResourceNotFoundException"
              AcceptSuccess]}

-- | Polls 'Network.AWS.EKS.DescribeCluster' every 30 seconds until a successful state is reached. An error is returned after 40 failed checks.
clusterActive :: Wait DescribeCluster
clusterActive
  = Wait{_waitName = "ClusterActive",
         _waitAttempts = 40, _waitDelay = 30,
         _waitAcceptors =
           [matchAll "DELETING" AcceptFailure
              (dcrsCluster . _Just . cStatus . _Just .
                 to toTextCI),
            matchAll "FAILED" AcceptFailure
              (dcrsCluster . _Just . cStatus . _Just .
                 to toTextCI),
            matchAll "ACTIVE" AcceptSuccess
              (dcrsCluster . _Just . cStatus . _Just .
                 to toTextCI)]}

-- | Polls 'Network.AWS.EKS.DescribeCluster' every 30 seconds until a successful state is reached. An error is returned after 40 failed checks.
clusterDeleted :: Wait DescribeCluster
clusterDeleted
  = Wait{_waitName = "ClusterDeleted",
         _waitAttempts = 40, _waitDelay = 30,
         _waitAcceptors =
           [matchAll "ACTIVE" AcceptFailure
              (dcrsCluster . _Just . cStatus . _Just .
                 to toTextCI),
            matchAll "CREATING" AcceptFailure
              (dcrsCluster . _Just . cStatus . _Just .
                 to toTextCI),
            matchError "ResourceNotFoundException"
              AcceptSuccess]}

-- | Polls 'Network.AWS.EKS.DescribeNodegroup' every 30 seconds until a successful state is reached. An error is returned after 80 failed checks.
nodegroupActive :: Wait DescribeNodegroup
nodegroupActive
  = Wait{_waitName = "NodegroupActive",
         _waitAttempts = 80, _waitDelay = 30,
         _waitAcceptors =
           [matchAll "CREATE_FAILED" AcceptFailure
              (desrsNodegroup . _Just . nStatus . _Just .
                 to toTextCI),
            matchAll "ACTIVE" AcceptSuccess
              (desrsNodegroup . _Just . nStatus . _Just .
                 to toTextCI)]}
