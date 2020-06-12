{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.VPCPeeringAuthorization
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.VPCPeeringAuthorization where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an authorization for a VPC peering connection between the VPC for an Amazon GameLift fleet and another VPC on an account you have access to. This authorization must exist and be valid for the peering connection to be established. Authorizations are valid for 24 hours after they are issued.
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
-- /See:/ 'vpcPeeringAuthorization' smart constructor.
data VPCPeeringAuthorization = VPCPeeringAuthorization'{_vpaCreationTime
                                                        :: !(Maybe POSIX),
                                                        _vpaPeerVPCId ::
                                                        !(Maybe Text),
                                                        _vpaPeerVPCAWSAccountId
                                                        :: !(Maybe Text),
                                                        _vpaGameLiftAWSAccountId
                                                        :: !(Maybe Text),
                                                        _vpaExpirationTime ::
                                                        !(Maybe POSIX)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'VPCPeeringAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpaCreationTime' - Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'vpaPeerVPCId' - Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.
--
-- * 'vpaPeerVPCAWSAccountId' - 
--
-- * 'vpaGameLiftAWSAccountId' - Unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.
--
-- * 'vpaExpirationTime' - Time stamp indicating when this authorization expires (24 hours after issuance). Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
vpcPeeringAuthorization
    :: VPCPeeringAuthorization
vpcPeeringAuthorization
  = VPCPeeringAuthorization'{_vpaCreationTime =
                               Nothing,
                             _vpaPeerVPCId = Nothing,
                             _vpaPeerVPCAWSAccountId = Nothing,
                             _vpaGameLiftAWSAccountId = Nothing,
                             _vpaExpirationTime = Nothing}

-- | Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
vpaCreationTime :: Lens' VPCPeeringAuthorization (Maybe UTCTime)
vpaCreationTime = lens _vpaCreationTime (\ s a -> s{_vpaCreationTime = a}) . mapping _Time

-- | Unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same region where your fleet is deployed. To get VPC information, including IDs, use the Virtual Private Cloud service tools, including the VPC Dashboard in the AWS Management Console.
vpaPeerVPCId :: Lens' VPCPeeringAuthorization (Maybe Text)
vpaPeerVPCId = lens _vpaPeerVPCId (\ s a -> s{_vpaPeerVPCId = a})

-- | 
vpaPeerVPCAWSAccountId :: Lens' VPCPeeringAuthorization (Maybe Text)
vpaPeerVPCAWSAccountId = lens _vpaPeerVPCAWSAccountId (\ s a -> s{_vpaPeerVPCAWSAccountId = a})

-- | Unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.
vpaGameLiftAWSAccountId :: Lens' VPCPeeringAuthorization (Maybe Text)
vpaGameLiftAWSAccountId = lens _vpaGameLiftAWSAccountId (\ s a -> s{_vpaGameLiftAWSAccountId = a})

-- | Time stamp indicating when this authorization expires (24 hours after issuance). Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
vpaExpirationTime :: Lens' VPCPeeringAuthorization (Maybe UTCTime)
vpaExpirationTime = lens _vpaExpirationTime (\ s a -> s{_vpaExpirationTime = a}) . mapping _Time

instance FromJSON VPCPeeringAuthorization where
        parseJSON
          = withObject "VPCPeeringAuthorization"
              (\ x ->
                 VPCPeeringAuthorization' <$>
                   (x .:? "CreationTime") <*> (x .:? "PeerVpcId") <*>
                     (x .:? "PeerVpcAwsAccountId")
                     <*> (x .:? "GameLiftAwsAccountId")
                     <*> (x .:? "ExpirationTime"))

instance Hashable VPCPeeringAuthorization where

instance NFData VPCPeeringAuthorization where
