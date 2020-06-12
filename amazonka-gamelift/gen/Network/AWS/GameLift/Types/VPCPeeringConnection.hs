{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.VPCPeeringConnection
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.VPCPeeringConnection where

import Network.AWS.GameLift.Types.VPCPeeringConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a peering connection between a VPC on one of your AWS accounts and the VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a pending connection that has not yet been established.
--
--
-- VPC peering connection operations include:
--
--     * 'CreateVpcPeeringAuthorization' 
--
--     * 'DescribeVpcPeeringAuthorizations' 
--
--     * 'DeleteVpcPeeringAuthorization' 
--
--     * 'CreateVpcPeeringConnection' 
--
--     * 'DescribeVpcPeeringConnections' 
--
--     * 'DeleteVpcPeeringConnection' 
--
--
--
--
-- /See:/ 'vpcPeeringConnection' smart constructor.
data VPCPeeringConnection = VPCPeeringConnection'{_vpcVPCPeeringConnectionId
                                                  :: !(Maybe Text),
                                                  _vpcStatus ::
                                                  !(Maybe
                                                      VPCPeeringConnectionStatus),
                                                  _vpcPeerVPCId ::
                                                  !(Maybe Text),
                                                  _vpcIPV4CidrBlock ::
                                                  !(Maybe Text),
                                                  _vpcGameLiftVPCId ::
                                                  !(Maybe Text),
                                                  _vpcFleetId :: !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCPeeringConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpcVPCPeeringConnectionId' - Unique identifier that is automatically assigned to the connection record. This ID is referenced in VPC peering connection events, and is used when deleting a connection with 'DeleteVpcPeeringConnection' . 
--
-- * 'vpcStatus' - Object that contains status information about the connection. Status indicates if a connection is pending, successful, or failed.
--
-- * 'vpcPeerVPCId' - Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.
--
-- * 'vpcIPV4CidrBlock' - CIDR block of IPv4 addresses assigned to the VPC peering connection for the GameLift VPC. The peered VPC also has an IPv4 CIDR block associated with it; these blocks cannot overlap or the peering connection cannot be created. 
--
-- * 'vpcGameLiftVPCId' - Unique identifier for the VPC that contains the Amazon GameLift fleet for this connection. This VPC is managed by Amazon GameLift and does not appear in your AWS account. 
--
-- * 'vpcFleetId' - Unique identifier for a fleet. This ID determines the ID of the Amazon GameLift VPC for your fleet.
vpcPeeringConnection
    :: VPCPeeringConnection
vpcPeeringConnection
  = VPCPeeringConnection'{_vpcVPCPeeringConnectionId =
                            Nothing,
                          _vpcStatus = Nothing, _vpcPeerVPCId = Nothing,
                          _vpcIPV4CidrBlock = Nothing,
                          _vpcGameLiftVPCId = Nothing, _vpcFleetId = Nothing}

-- | Unique identifier that is automatically assigned to the connection record. This ID is referenced in VPC peering connection events, and is used when deleting a connection with 'DeleteVpcPeeringConnection' . 
vpcVPCPeeringConnectionId :: Lens' VPCPeeringConnection (Maybe Text)
vpcVPCPeeringConnectionId = lens _vpcVPCPeeringConnectionId (\ s a -> s{_vpcVPCPeeringConnectionId = a})

-- | Object that contains status information about the connection. Status indicates if a connection is pending, successful, or failed.
vpcStatus :: Lens' VPCPeeringConnection (Maybe VPCPeeringConnectionStatus)
vpcStatus = lens _vpcStatus (\ s a -> s{_vpcStatus = a})

-- | Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.
vpcPeerVPCId :: Lens' VPCPeeringConnection (Maybe Text)
vpcPeerVPCId = lens _vpcPeerVPCId (\ s a -> s{_vpcPeerVPCId = a})

-- | CIDR block of IPv4 addresses assigned to the VPC peering connection for the GameLift VPC. The peered VPC also has an IPv4 CIDR block associated with it; these blocks cannot overlap or the peering connection cannot be created. 
vpcIPV4CidrBlock :: Lens' VPCPeeringConnection (Maybe Text)
vpcIPV4CidrBlock = lens _vpcIPV4CidrBlock (\ s a -> s{_vpcIPV4CidrBlock = a})

-- | Unique identifier for the VPC that contains the Amazon GameLift fleet for this connection. This VPC is managed by Amazon GameLift and does not appear in your AWS account. 
vpcGameLiftVPCId :: Lens' VPCPeeringConnection (Maybe Text)
vpcGameLiftVPCId = lens _vpcGameLiftVPCId (\ s a -> s{_vpcGameLiftVPCId = a})

-- | Unique identifier for a fleet. This ID determines the ID of the Amazon GameLift VPC for your fleet.
vpcFleetId :: Lens' VPCPeeringConnection (Maybe Text)
vpcFleetId = lens _vpcFleetId (\ s a -> s{_vpcFleetId = a})

instance FromJSON VPCPeeringConnection where
        parseJSON
          = withObject "VPCPeeringConnection"
              (\ x ->
                 VPCPeeringConnection' <$>
                   (x .:? "VpcPeeringConnectionId") <*> (x .:? "Status")
                     <*> (x .:? "PeerVpcId")
                     <*> (x .:? "IpV4CidrBlock")
                     <*> (x .:? "GameLiftVpcId")
                     <*> (x .:? "FleetId"))

instance Hashable VPCPeeringConnection where

instance NFData VPCPeeringConnection where
