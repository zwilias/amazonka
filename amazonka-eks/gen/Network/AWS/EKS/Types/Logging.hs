{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Logging
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Logging where

import Network.AWS.EKS.Types.LogSetup
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the logging configuration for resources in your cluster.
--
--
--
-- /See:/ 'logging' smart constructor.
newtype Logging = Logging'{_lClusterLogging ::
                           Maybe [LogSetup]}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Logging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lClusterLogging' - The cluster control plane logging configuration for your cluster.
logging
    :: Logging
logging = Logging'{_lClusterLogging = Nothing}

-- | The cluster control plane logging configuration for your cluster.
lClusterLogging :: Lens' Logging [LogSetup]
lClusterLogging = lens _lClusterLogging (\ s a -> s{_lClusterLogging = a}) . _Default . _Coerce

instance FromJSON Logging where
        parseJSON
          = withObject "Logging"
              (\ x ->
                 Logging' <$> (x .:? "clusterLogging" .!= mempty))

instance Hashable Logging where

instance NFData Logging where

instance ToJSON Logging where
        toJSON Logging'{..}
          = object
              (catMaybes
                 [("clusterLogging" .=) <$> _lClusterLogging])
