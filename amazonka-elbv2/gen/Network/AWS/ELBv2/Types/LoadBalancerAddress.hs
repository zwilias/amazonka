{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerAddress
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.LoadBalancerAddress where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a static IP address for a load balancer.
--
--
--
-- /See:/ 'loadBalancerAddress' smart constructor.
data LoadBalancerAddress = LoadBalancerAddress'{_lbaIPAddress
                                                :: !(Maybe Text),
                                                _lbaAllocationId ::
                                                !(Maybe Text)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoadBalancerAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbaIPAddress' - The static IP address.
--
-- * 'lbaAllocationId' - [Network Load Balancers] The allocation ID of the Elastic IP address.
loadBalancerAddress
    :: LoadBalancerAddress
loadBalancerAddress
  = LoadBalancerAddress'{_lbaIPAddress = Nothing,
                         _lbaAllocationId = Nothing}

-- | The static IP address.
lbaIPAddress :: Lens' LoadBalancerAddress (Maybe Text)
lbaIPAddress = lens _lbaIPAddress (\ s a -> s{_lbaIPAddress = a})

-- | [Network Load Balancers] The allocation ID of the Elastic IP address.
lbaAllocationId :: Lens' LoadBalancerAddress (Maybe Text)
lbaAllocationId = lens _lbaAllocationId (\ s a -> s{_lbaAllocationId = a})

instance FromXML LoadBalancerAddress where
        parseXML x
          = LoadBalancerAddress' <$>
              (x .@? "IpAddress") <*> (x .@? "AllocationId")

instance Hashable LoadBalancerAddress where

instance NFData LoadBalancerAddress where
