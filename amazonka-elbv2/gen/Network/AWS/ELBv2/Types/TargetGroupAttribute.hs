{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetGroupAttribute
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.TargetGroupAttribute where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a target group attribute.
--
--
--
-- /See:/ 'targetGroupAttribute' smart constructor.
data TargetGroupAttribute = TargetGroupAttribute'{_tgaValue
                                                  :: !(Maybe Text),
                                                  _tgaKey :: !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetGroupAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgaValue' - The value of the attribute.
--
-- * 'tgaKey' - The name of the attribute.     * @deregistration_delay.timeout_seconds@ - The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from @draining@ to @unused@ . The range is 0-3600 seconds. The default value is 300 seconds.     * @proxy_protocol_v2.enabled@ - [Network Load Balancers] Indicates whether Proxy Protocol version 2 is enabled.     * @stickiness.enabled@ - [Application Load Balancers] Indicates whether sticky sessions are enabled. The value is @true@ or @false@ .     * @stickiness.type@ - [Application Load Balancers] The type of sticky sessions. The possible value is @lb_cookie@ .     * @stickiness.lb_cookie.duration_seconds@ - [Application Load Balancers] The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).
targetGroupAttribute
    :: TargetGroupAttribute
targetGroupAttribute
  = TargetGroupAttribute'{_tgaValue = Nothing,
                          _tgaKey = Nothing}

-- | The value of the attribute.
tgaValue :: Lens' TargetGroupAttribute (Maybe Text)
tgaValue = lens _tgaValue (\ s a -> s{_tgaValue = a})

-- | The name of the attribute.     * @deregistration_delay.timeout_seconds@ - The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from @draining@ to @unused@ . The range is 0-3600 seconds. The default value is 300 seconds.     * @proxy_protocol_v2.enabled@ - [Network Load Balancers] Indicates whether Proxy Protocol version 2 is enabled.     * @stickiness.enabled@ - [Application Load Balancers] Indicates whether sticky sessions are enabled. The value is @true@ or @false@ .     * @stickiness.type@ - [Application Load Balancers] The type of sticky sessions. The possible value is @lb_cookie@ .     * @stickiness.lb_cookie.duration_seconds@ - [Application Load Balancers] The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).
tgaKey :: Lens' TargetGroupAttribute (Maybe Text)
tgaKey = lens _tgaKey (\ s a -> s{_tgaKey = a})

instance FromXML TargetGroupAttribute where
        parseXML x
          = TargetGroupAttribute' <$>
              (x .@? "Value") <*> (x .@? "Key")

instance Hashable TargetGroupAttribute where

instance NFData TargetGroupAttribute where

instance ToQuery TargetGroupAttribute where
        toQuery TargetGroupAttribute'{..}
          = mconcat ["Value" =: _tgaValue, "Key" =: _tgaKey]
