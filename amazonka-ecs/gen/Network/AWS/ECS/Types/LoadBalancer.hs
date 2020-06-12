{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.LoadBalancer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.LoadBalancer where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on a load balancer that is used with a service.
--
--
--
-- /See:/ 'loadBalancer' smart constructor.
data LoadBalancer = LoadBalancer'{_lbLoadBalancerName
                                  :: !(Maybe Text),
                                  _lbContainerName :: !(Maybe Text),
                                  _lbTargetGroupARN :: !(Maybe Text),
                                  _lbContainerPort :: !(Maybe Int)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbLoadBalancerName' - The name of a load balancer.
--
-- * 'lbContainerName' - The name of the container (as it appears in a container definition) to associate with the load balancer.
--
-- * 'lbTargetGroupARN' - The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group associated with a service.
--
-- * 'lbContainerPort' - The port on the container to associate with the load balancer. This port must correspond to a @containerPort@ in the service's task definition. Your container instances must allow ingress traffic on the @hostPort@ of the port mapping.
loadBalancer
    :: LoadBalancer
loadBalancer
  = LoadBalancer'{_lbLoadBalancerName = Nothing,
                  _lbContainerName = Nothing,
                  _lbTargetGroupARN = Nothing,
                  _lbContainerPort = Nothing}

-- | The name of a load balancer.
lbLoadBalancerName :: Lens' LoadBalancer (Maybe Text)
lbLoadBalancerName = lens _lbLoadBalancerName (\ s a -> s{_lbLoadBalancerName = a})

-- | The name of the container (as it appears in a container definition) to associate with the load balancer.
lbContainerName :: Lens' LoadBalancer (Maybe Text)
lbContainerName = lens _lbContainerName (\ s a -> s{_lbContainerName = a})

-- | The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group associated with a service.
lbTargetGroupARN :: Lens' LoadBalancer (Maybe Text)
lbTargetGroupARN = lens _lbTargetGroupARN (\ s a -> s{_lbTargetGroupARN = a})

-- | The port on the container to associate with the load balancer. This port must correspond to a @containerPort@ in the service's task definition. Your container instances must allow ingress traffic on the @hostPort@ of the port mapping.
lbContainerPort :: Lens' LoadBalancer (Maybe Int)
lbContainerPort = lens _lbContainerPort (\ s a -> s{_lbContainerPort = a})

instance FromJSON LoadBalancer where
        parseJSON
          = withObject "LoadBalancer"
              (\ x ->
                 LoadBalancer' <$>
                   (x .:? "loadBalancerName") <*>
                     (x .:? "containerName")
                     <*> (x .:? "targetGroupArn")
                     <*> (x .:? "containerPort"))

instance Hashable LoadBalancer where

instance NFData LoadBalancer where

instance ToJSON LoadBalancer where
        toJSON LoadBalancer'{..}
          = object
              (catMaybes
                 [("loadBalancerName" .=) <$> _lbLoadBalancerName,
                  ("containerName" .=) <$> _lbContainerName,
                  ("targetGroupArn" .=) <$> _lbTargetGroupARN,
                  ("containerPort" .=) <$> _lbContainerPort])
