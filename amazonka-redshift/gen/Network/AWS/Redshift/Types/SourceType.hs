{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SourceType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.SourceType where

import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
  
data SourceType = Cluster
                | ClusterParameterGroup
                | ClusterSecurityGroup
                | ClusterSnapshot
                    deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                              Typeable, Generic)

instance FromText SourceType where
    parser = takeLowerText >>= \case
        "cluster" -> pure Cluster
        "cluster-parameter-group" -> pure ClusterParameterGroup
        "cluster-security-group" -> pure ClusterSecurityGroup
        "cluster-snapshot" -> pure ClusterSnapshot
        e -> fromTextError $ "Failure parsing SourceType from value: '" <> e
           <> "'. Accepted values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot"

instance ToText SourceType where
    toText = \case
        Cluster -> "cluster"
        ClusterParameterGroup -> "cluster-parameter-group"
        ClusterSecurityGroup -> "cluster-security-group"
        ClusterSnapshot -> "cluster-snapshot"

instance Hashable     SourceType
instance NFData       SourceType
instance ToByteString SourceType
instance ToQuery      SourceType
instance ToHeader     SourceType

instance FromXML SourceType where
    parseXML = parseXMLText "SourceType"
