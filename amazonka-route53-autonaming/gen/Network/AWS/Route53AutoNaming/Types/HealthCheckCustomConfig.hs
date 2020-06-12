{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'healthCheckCustomConfig' smart constructor.
newtype HealthCheckCustomConfig = HealthCheckCustomConfig'{_hcccFailureThreshold
                                                           :: Maybe Nat}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'HealthCheckCustomConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcccFailureThreshold' - Undocumented member.
healthCheckCustomConfig
    :: HealthCheckCustomConfig
healthCheckCustomConfig
  = HealthCheckCustomConfig'{_hcccFailureThreshold =
                               Nothing}

-- | Undocumented member.
hcccFailureThreshold :: Lens' HealthCheckCustomConfig (Maybe Natural)
hcccFailureThreshold = lens _hcccFailureThreshold (\ s a -> s{_hcccFailureThreshold = a}) . mapping _Nat

instance FromJSON HealthCheckCustomConfig where
        parseJSON
          = withObject "HealthCheckCustomConfig"
              (\ x ->
                 HealthCheckCustomConfig' <$>
                   (x .:? "FailureThreshold"))

instance Hashable HealthCheckCustomConfig where

instance NFData HealthCheckCustomConfig where

instance ToJSON HealthCheckCustomConfig where
        toJSON HealthCheckCustomConfig'{..}
          = object
              (catMaybes
                 [("FailureThreshold" .=) <$> _hcccFailureThreshold])
