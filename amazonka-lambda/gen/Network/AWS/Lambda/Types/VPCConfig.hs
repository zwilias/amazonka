{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.VPCConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.VPCConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.
--
--
--
-- /See:/ 'vpcConfig' smart constructor.
data VPCConfig = VPCConfig'{_vpccSecurityGroupIds ::
                            !(Maybe [Text]),
                            _vpccSubnetIds :: !(Maybe [Text])}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpccSecurityGroupIds' - A list of one or more security groups IDs in your VPC.
--
-- * 'vpccSubnetIds' - A list of one or more subnet IDs in your VPC.
vpcConfig
    :: VPCConfig
vpcConfig
  = VPCConfig'{_vpccSecurityGroupIds = Nothing,
               _vpccSubnetIds = Nothing}

-- | A list of one or more security groups IDs in your VPC.
vpccSecurityGroupIds :: Lens' VPCConfig [Text]
vpccSecurityGroupIds = lens _vpccSecurityGroupIds (\ s a -> s{_vpccSecurityGroupIds = a}) . _Default . _Coerce

-- | A list of one or more subnet IDs in your VPC.
vpccSubnetIds :: Lens' VPCConfig [Text]
vpccSubnetIds = lens _vpccSubnetIds (\ s a -> s{_vpccSubnetIds = a}) . _Default . _Coerce

instance Hashable VPCConfig where

instance NFData VPCConfig where

instance ToJSON VPCConfig where
        toJSON VPCConfig'{..}
          = object
              (catMaybes
                 [("SecurityGroupIds" .=) <$> _vpccSecurityGroupIds,
                  ("SubnetIds" .=) <$> _vpccSubnetIds])
